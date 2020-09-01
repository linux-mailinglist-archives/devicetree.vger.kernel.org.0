Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E20572596AB
	for <lists+devicetree@lfdr.de>; Tue,  1 Sep 2020 18:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731565AbgIAQFj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Sep 2020 12:05:39 -0400
Received: from lhrrgout.huawei.com ([185.176.76.210]:2728 "EHLO huawei.com"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S1731519AbgIAQFf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 1 Sep 2020 12:05:35 -0400
Received: from lhreml710-chm.china.huawei.com (unknown [172.18.7.107])
        by Forcepoint Email with ESMTP id 523AA170988C8A8774D3;
        Tue,  1 Sep 2020 17:05:31 +0100 (IST)
Received: from localhost (10.52.122.233) by lhreml710-chm.china.huawei.com
 (10.201.108.61) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256) id 15.1.1913.5; Tue, 1 Sep 2020
 17:05:30 +0100
Date:   Tue, 1 Sep 2020 17:03:54 +0100
From:   Jonathan Cameron <Jonathan.Cameron@Huawei.com>
To:     Sudeep Holla <sudeep.holla@arm.com>
CC:     <linux-arm-kernel@lists.infradead.org>,
        <devicetree@vger.kernel.org>, "Will Deacon" <will@kernel.org>,
        <pratikp@quicinc.com>, <tsoni@quicinc.com>,
        <kernel-team@android.com>
Subject: Re: [PATCH 1/9] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20200901170354.0000309a@Huawei.com>
In-Reply-To: <20200829170923.29949-2-sudeep.holla@arm.com>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
        <20200829170923.29949-2-sudeep.holla@arm.com>
Organization: Huawei Technologies Research and Development (UK) Ltd.
X-Mailer: Claws Mail 3.17.4 (GTK+ 2.24.32; i686-w64-mingw32)
MIME-Version: 1.0
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit
X-Originating-IP: [10.52.122.233]
X-ClientProxiedBy: lhreml710-chm.china.huawei.com (10.201.108.61) To
 lhreml710-chm.china.huawei.com (10.201.108.61)
X-CFilter-Loop: Reflected
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 29 Aug 2020 18:09:15 +0100
Sudeep Holla <sudeep.holla@arm.com> wrote:

> From: Will Deacon <will@kernel.org>
> 
> Add devicetree bindings for a FF-A-compliant hypervisor, its partitions
> and their memory regions. The naming is ludicrous but also not by fault.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> (sudeep.holla: Dropped PSA from name and elsewhere as it seem to have
>  disappeared mysteriously just before the final release)
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>

As I was reading this out of curiosity...

I'm far from a yaml expert but a few things in line.

> ---
>  .../devicetree/bindings/arm/arm,ffa.yaml      | 102 ++++++++++++++++++
>  .../reserved-memory/arm,ffa-memory.yaml       |  71 ++++++++++++
>  2 files changed, 173 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
>  create mode 100644 Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> new file mode 100644
> index 000000000000..668a5995fcab
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> @@ -0,0 +1,102 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/arm,ffa.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Arm Firmware Framework for Arm v8-A
> +
> +maintainers:
> +  - Will Deacon <will@kernel.org>
> +
> +description: |
> +  Firmware frameworks implementing partition setup according to the FF-A
> +  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
> +  Framework for Arm v8-A") [0] must provide a "manifest and image" for each
> +  partition to the "partition manager" so that the partition execution contexts
> +  can be initialised.
> +
> +  In the case of a virtual FFA instance, the manifest and image details can be
> +  passed to the hypervisor (e.g. Linux KVM) using this binding.
> +
> +  [0] https://developer.arm.com/docs/den0077/latest
> +
> +properties:
> +  $nodename:
> +    const: ffa_hyp
> +
> +  compatible:
> +    oneOf:
> +      - const: arm,ffa-1.0-hypervisor

As below, would enum be more appropriate here?

> +
> +  memory-region:
> +    $ref: '/schemas/types.yaml#/definitions/phandle'
> +    description: |
> +      A phandle to the reserved memory region [1] to be used by the hypervisor.
> +      The reserved memory region must be compatible with
> +      "arm,ffa-1.0-hypervisor-memory-region".
> +
> +      [1] Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> +
> +patternProperties:
> +  "^ffa_partition[0-9]+$":
> +    type: object
> +    description: One or more child nodes, each describing an FFA partition.
> +    properties:
> +      $nodename:
> +        const: ffa_partition
> +
> +      compatible:
> +        oneOf:
enum?
> +          - const: arm,ffa-1.0-partition
> +
> +      uuid:
> +        $ref: '/schemas/types.yaml#definitions/string'
> +        description: |
> +          The 128-bit UUID [2] of the service implemented by this partition.
> +
> +          [2] https://tools.ietf.org/html/rfc4122

Feels like we should be able to better type wise than a string for this but
maybe not... Doesn't seem to be much in the way of precedence.


> +
> +      nr-exec-ctxs:
> +        $ref: '/schemas/types.yaml#/definitions/uint32'
> +        description: |
> +          The number of virtual CPUs to instantiate for this partition.
> +
> +      exec-state:
> +        description: The execution state in which to execute the partition.
> +        oneOf:
> +          - const: "AArch64"
> +          - const: "AArch32"
> +
> +      entry-point:
> +        $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
> +        description: |
> +          The entry address of the partition specified as an Intermediate
> +          Physical Address (IPA) encoded according to the '#address-cells'
> +          property.
> +
> +      memory-region:
> +        $ref: '/schemas/types.yaml#/definitions/phandle-array'
> +        description: |
> +          A list of phandles to FFA reserved memory regions [3] for this
> +          partition.
> +
> +          [3] Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    ffa_hyp {
> +        compatible = "arm,ffa-1.0-hypervisor";
> +        memory-region = <&ffa_hyp_reserved>;
> +
> +        ffa_partition0 {
> +            compatible = "arm,ffa-1.0-partition";
> +            uuid = "12345678-9abc-def0-1234-56789abcdef0";
> +            nr-exec-ctxs = <2>;
> +            exec-state = "AArch64";
> +            entry-point = <0x80000>;
> +            memory-region = <&ffa_reserved0 &ffa_reserved1>;
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml b/Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
> new file mode 100644
> index 000000000000..5335e07abcfc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: GPL-2.0
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/reserved-memory/arm,ffa-memory.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Memory Region for Arm Firmware Framework for Arm v8-A
> +
> +maintainers:
> +  - Will Deacon <will@kernel.org>
> +
> +description: |
> +  This binding allows a FF-A implementation to describe the normal memory
> +  regions of a partition [1] to a hypervisor according to [2].
> +
> +  The physical address range reserved for the partition can be specified as a
> +  static allocation using the 'reg' property or as a dynamic allocation using
> +  the 'size' property. If both properties are omitted, then the hypervisor can
> +  allocate physical memory for the partition however it sees fit.
> +
> +  [1] Documentation/devicetree/bindings/arm/arm,ffa.yaml
> +  [2] Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> +
> +properties:
> +  $nodename:
> +    pattern: "^ffa_mem(@[0-9a-f]+)?$"
> +
> +  compatible:
> +    oneOf:
> +      - const: arm,ffa-1.0-partition-memory-region

If there is just element and it is const why not just?
  compatible:
    const: ....

I guess it sort of future proofs you for later variants...
However in that case, it would be more common to use

  compatible:
    enum:
      - arm,ffa...

which is more restrictive but doesn't seem like you need the complexity of
oneOf and it's handling of sub schemas here.




> +
> +  ipa-range:
> +    $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
> +    description: |
> +      The Intermediate Physical Address (IPA) range (encoded in the same way as
> +      a 'reg' property) at which to map the physical memory. If the IPA range is
> +      larger than the physical memory region then the region is mapped starting
> +      at the base of the IPA range.
> +
> +  read-only:
> +    type: boolean
> +    description: |
> +      (static allocation only) The memory region has been pre-populated
> +      by the firmware framework and must be mapped without write permission
> +      at stage 2.
> +
> +  non-executable:
> +    type: boolean
> +    description: |
> +      The memory region must be mapped without execute permission at stage 2.
> +
> +
> +required:
> +  - compatible
> +
> +# The "reserved-memory" binding defines additional properties.
> +additionalProperties: true
> +
> +examples:
> +  - |
> +    reserved-memory {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        ffa_reserved0: ffa_mem@100000000 {
> +            compatible = "arm,ffa-1.0-partition-memory-region";
> +            reg = <0x1 0x0 0x0 0x04000000>;          // 64M @ 1GB

Isn't that at 4GB?

> +            ipa-range = <0x0 0x0 0x0 0x04000000>;    // 64M @ 0x0
> +            read-only;
> +        };
> +    };


