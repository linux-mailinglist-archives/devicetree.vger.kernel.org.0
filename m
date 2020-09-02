Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F06425B65C
	for <lists+devicetree@lfdr.de>; Thu,  3 Sep 2020 00:14:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726678AbgIBWOT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Sep 2020 18:14:19 -0400
Received: from mail-io1-f65.google.com ([209.85.166.65]:34761 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726226AbgIBWOT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Sep 2020 18:14:19 -0400
Received: by mail-io1-f65.google.com with SMTP id m17so630373ioo.1
        for <devicetree@vger.kernel.org>; Wed, 02 Sep 2020 15:14:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=QPY9nMiYO0gvLwu+EkpnSfHt0Ye+AiRUCpiv0PRhkww=;
        b=GstG4bbqZp2kZ89o2OoHC82pVSaEXvjfQsS8g0KxXHjtglcQR3icfvAR7il8a6ElEd
         nBksE7JwvdLg215bIGUvRSyUr3W77WFj7zSoBDEY3/AVfWcfqaDojm6RMWdYhObqiM/T
         rJHPQwHygBlMMRyAxmEfGR35EHFx/5qJGu8xhRDK2RIYoJq5DB7pOoKoqVAiyCs6a5MC
         mRqcU/EO4L9w87YglgQrvH9gJlJmj9pTtmJi9nkvq65dpEHDMubWk8htfalZCoK8LxGC
         EWf04QAuv2zAzRoO/VCxX4gW0F/Iy5MXpqeIW8e4Qzhpy6I0507EZXDu8w7pfO+5Kf79
         syQA==
X-Gm-Message-State: AOAM532ozehhmotrKNuLKiiBDbUaYAl16l8p5hXY1bNOFzEDfbFKwGZj
        xJvScozBfJe9gPc5hwUsjQ==
X-Google-Smtp-Source: ABdhPJy4pjbq8+MszwqqvbM4UvuG4em416/8kblY4uK8C8Q247cam8xaSPUwLgeDDwGYS+zkAYUCEQ==
X-Received: by 2002:a02:1649:: with SMTP id a70mr156346jaa.39.1599084856950;
        Wed, 02 Sep 2020 15:14:16 -0700 (PDT)
Received: from xps15 ([64.188.179.249])
        by smtp.gmail.com with ESMTPSA id z26sm447201ilf.60.2020.09.02.15.14.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Sep 2020 15:14:16 -0700 (PDT)
Received: (nullmailer pid 1463168 invoked by uid 1000);
        Wed, 02 Sep 2020 22:14:13 -0000
Date:   Wed, 2 Sep 2020 16:14:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel-team@android.com, Will Deacon <will@kernel.org>,
        tsoni@quicinc.com, pratikp@quicinc.com
Subject: Re: [PATCH 1/9] dt-bindings: Arm: Add Firmware Framework for Armv8-A
 (FF-A) binding
Message-ID: <20200902221413.GB1410716@bogus>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-2-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200829170923.29949-2-sudeep.holla@arm.com>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 29, 2020 at 06:09:15PM +0100, Sudeep Holla wrote:
> From: Will Deacon <will@kernel.org>
> 
> Add devicetree bindings for a FF-A-compliant hypervisor, its partitions
> and their memory regions. The naming is ludicrous but also not by fault.
> 
> Signed-off-by: Will Deacon <will@kernel.org>
> (sudeep.holla: Dropped PSA from name and elsewhere as it seem to have
>  disappeared mysteriously just before the final release)
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
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

Dual license new bindings:

(GPL-2.0-only OR BSD-2-Clause)

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

There's efforts to define 'system DT' describing all the CPUs in a 
system (such as both A and R cores) as well as physical partitioning. 
I'm not sure that virtual partitioning would need a different binding. 
Or at least there's probably some overlap. 

> +
> +properties:
> +  $nodename:
> +    const: ffa_hyp
> +
> +  compatible:
> +    oneOf:
> +      - const: arm,ffa-1.0-hypervisor
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

s/_/-/

Probably should use 'reg' to number partitions. Is the numbering 
significant?

> +    type: object
> +    description: One or more child nodes, each describing an FFA partition.
> +    properties:
> +      $nodename:
> +        const: ffa_partition
> +
> +      compatible:
> +        oneOf:
> +          - const: arm,ffa-1.0-partition
> +
> +      uuid:
> +        $ref: '/schemas/types.yaml#definitions/string'

json-schema can do better here:

format: uuid

Though 'format' will need to be allowed in our meta-schema.

> +        description: |
> +          The 128-bit UUID [2] of the service implemented by this partition.
> +
> +          [2] https://tools.ietf.org/html/rfc4122
> +
> +      nr-exec-ctxs:
> +        $ref: '/schemas/types.yaml#/definitions/uint32'
> +        description: |
> +          The number of virtual CPUs to instantiate for this partition.

Just 'nr-cpus' would be clearer in my opinion.

What happens on big.LITTLE? 

> +
> +      exec-state:
> +        description: The execution state in which to execute the partition.
> +        oneOf:
> +          - const: "AArch64"
> +          - const: "AArch32"

Why is this needed? We don't need anything like this for KVM today.

> +
> +      entry-point:
> +        $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
> +        description: |
> +          The entry address of the partition specified as an Intermediate
> +          Physical Address (IPA) encoded according to the '#address-cells'
> +          property.

Is the address unique or you could have the same image for multiple 
partitions? If unique, then you could use 'reg' here.

You didn't document using '#address-cells'. Really, I'd just make this a 
fixed uint64 (if not 'reg'). 

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
> +            ipa-range = <0x0 0x0 0x0 0x04000000>;    // 64M @ 0x0

So we need the PA and IPA? We're using DT to define stage 2 page 
tables...

> +            read-only;
> +        };
> +    };
> -- 
> 2.17.1
> 
