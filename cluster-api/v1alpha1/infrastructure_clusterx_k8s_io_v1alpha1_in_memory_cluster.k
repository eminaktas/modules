"""
This file was generated by the KCL auto-gen tool. DO NOT EDIT.
Editing this file might prove futile when you re-run the KCL auto-gen generate command.
"""
import k8s.apimachinery.pkg.apis.meta.v1


schema InMemoryCluster:
    """
    InMemoryCluster is the schema for the in-memory cluster API.

    Attributes
    ----------
    apiVersion : str, default is "infrastructure.cluster.x-k8s.io/v1alpha1", required
        APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
    kind : str, default is "InMemoryCluster", required
        Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    metadata : v1.ObjectMeta, default is Undefined, optional
        metadata
    spec : InfrastructureClusterxK8sIoV1alpha1InMemoryClusterSpec, default is Undefined, optional
        spec
    status : InfrastructureClusterxK8sIoV1alpha1InMemoryClusterStatus, default is Undefined, optional
        status
    """


    apiVersion: "infrastructure.cluster.x-k8s.io/v1alpha1" = "infrastructure.cluster.x-k8s.io/v1alpha1"

    kind: "InMemoryCluster" = "InMemoryCluster"

    metadata?: v1.ObjectMeta

    spec?: InfrastructureClusterxK8sIoV1alpha1InMemoryClusterSpec

    status?: InfrastructureClusterxK8sIoV1alpha1InMemoryClusterStatus


schema InfrastructureClusterxK8sIoV1alpha1InMemoryClusterSpec:
    """
    InMemoryClusterSpec defines the desired state of the InMemoryCluster.

    Attributes
    ----------
    controlPlaneEndpoint : InfrastructureClusterxK8sIoV1alpha1InMemoryClusterSpecControlPlaneEndpoint, default is Undefined, optional
        control plane endpoint
    """


    controlPlaneEndpoint?: InfrastructureClusterxK8sIoV1alpha1InMemoryClusterSpecControlPlaneEndpoint


schema InfrastructureClusterxK8sIoV1alpha1InMemoryClusterSpecControlPlaneEndpoint:
    """
    ControlPlaneEndpoint represents the endpoint used to communicate with the control plane.

    Attributes
    ----------
    host : str, default is Undefined, required
        Host is the hostname on which the API server is serving.
    port : int, default is Undefined, required
        Port is the port on which the API server is serving.
        Defaults to 6443 if not set.
    """


    host: str

    port: int


schema InfrastructureClusterxK8sIoV1alpha1InMemoryClusterStatus:
    """
    InMemoryClusterStatus defines the observed state of the InMemoryCluster.

    Attributes
    ----------
    conditions : [InfrastructureClusterxK8sIoV1alpha1InMemoryClusterStatusConditionsItems0], default is Undefined, optional
        Conditions defines current service state of the InMemoryCluster.
    ready : bool, default is Undefined, optional
        Ready denotes that the in-memory cluster (infrastructure) is ready.
    """


    conditions?: [InfrastructureClusterxK8sIoV1alpha1InMemoryClusterStatusConditionsItems0]

    ready?: bool


schema InfrastructureClusterxK8sIoV1alpha1InMemoryClusterStatusConditionsItems0:
    """
    Condition defines an observation of a Cluster API resource operational state.

    Attributes
    ----------
    lastTransitionTime : str, default is Undefined, required
        Last time the condition transitioned from one status to another.
        This should be when the underlying condition changed. If that is not known, then using the time when
        the API field changed is acceptable.
    message : str, default is Undefined, optional
        A human readable message indicating details about the transition.
        This field may be empty.
    reason : str, default is Undefined, optional
        The reason for the condition's last transition in CamelCase.
        The specific API may choose whether or not this field is considered a guaranteed API.
        This field may not be empty.
    severity : str, default is Undefined, optional
        Severity provides an explicit classification of Reason code, so the users or machines can immediately
        understand the current situation and act accordingly.
        The Severity field MUST be set only when Status=False.
    status : str, default is Undefined, required
        Status of the condition, one of True, False, Unknown.
    $type : str, default is Undefined, required
        Type of condition in CamelCase or in foo.example.com/CamelCase.
        Many .condition.type values are consistent across resources like Available, but because arbitrary conditions
        can be useful (see .node.status.conditions), the ability to deconflict is important.
    """


    lastTransitionTime: str

    message?: str

    reason?: str

    severity?: str

    status: str

    $type: str


