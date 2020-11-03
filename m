Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC54F2A4A85
	for <lists+devicetree@lfdr.de>; Tue,  3 Nov 2020 17:00:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728107AbgKCQAA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 Nov 2020 11:00:00 -0500
Received: from foss.arm.com ([217.140.110.172]:51206 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726312AbgKCP77 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 3 Nov 2020 10:59:59 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 8087E13A1;
        Tue,  3 Nov 2020 07:59:58 -0800 (PST)
Received: from bogus (unknown [10.57.13.236])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 8AD2C3F85F;
        Tue,  3 Nov 2020 07:59:56 -0800 (PST)
Date:   Tue, 3 Nov 2020 15:59:53 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel-team@android.com, Will Deacon <will@kernel.org>,
        tsoni@quicinc.com, pratikp@quicinc.com
Subject: Re: [PATCH 1/9] dt-bindings: Arm: Add Firmware Framework for Armv8-A
 (FF-A) binding
Message-ID: <20201103155953.ap3rz5ii5gpzeskj@bogus>
References: <20200829170923.29949-1-sudeep.holla@arm.com>
 <20200829170923.29949-2-sudeep.holla@arm.com>
 <20200902221413.GB1410716@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200902221413.GB1410716@bogus>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Sep 02, 2020 at 04:14:13PM -0600, Rob Herring wrote:
> On Sat, Aug 29, 2020 at 06:09:15PM +0100, Sudeep Holla wrote:
> > From: Will Deacon <will@kernel.org>
> >
> > Add devicetree bindings for a FF-A-compliant hypervisor, its partitions
> > and their memory regions. The naming is ludicrous but also not by fault.
> >
> > Signed-off-by: Will Deacon <will@kernel.org>
> > (sudeep.holla: Dropped PSA from name and elsewhere as it seem to have
> >  disappeared mysteriously just before the final release)
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,ffa.yaml      | 102 ++++++++++++++++++
> >  .../reserved-memory/arm,ffa-memory.yaml       |  71 ++++++++++++
> >  2 files changed, 173 insertions(+)
> >  create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
> >  create mode 100644 Documentation/devicetree/bindings/reserved-memory/arm,ffa-memory.yaml
> >
> > diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > new file mode 100644
> > index 000000000000..668a5995fcab
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > @@ -0,0 +1,102 @@
> > +# SPDX-License-Identifier: GPL-2.0
>
> Dual license new bindings:
>
> (GPL-2.0-only OR BSD-2-Clause)
>
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/arm/arm,ffa.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: Arm Firmware Framework for Arm v8-A
> > +
> > +maintainers:
> > +  - Will Deacon <will@kernel.org>
> > +
> > +description: |
> > +  Firmware frameworks implementing partition setup according to the FF-A
> > +  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
> > +  Framework for Arm v8-A") [0] must provide a "manifest and image" for each
> > +  partition to the "partition manager" so that the partition execution contexts
> > +  can be initialised.
> > +
> > +  In the case of a virtual FFA instance, the manifest and image details can be
> > +  passed to the hypervisor (e.g. Linux KVM) using this binding.
> > +
> > +  [0] https://developer.arm.com/docs/den0077/latest
>
> There's efforts to define 'system DT' describing all the CPUs in a
> system (such as both A and R cores) as well as physical partitioning.
> I'm not sure that virtual partitioning would need a different binding.
> Or at least there's probably some overlap.
>
> > +
> > +properties:
> > +  $nodename:
> > +    const: ffa_hyp
> > +
> > +  compatible:
> > +    oneOf:
> > +      - const: arm,ffa-1.0-hypervisor
> > +
> > +  memory-region:
> > +    $ref: '/schemas/types.yaml#/definitions/phandle'
> > +    description: |
> > +      A phandle to the reserved memory region [1] to be used by the hypervisor.
> > +      The reserved memory region must be compatible with
> > +      "arm,ffa-1.0-hypervisor-memory-region".
> > +
> > +      [1] Documentation/devicetree/bindings/reserved-memory/reserved-memory.txt
> > +
> > +patternProperties:
> > +  "^ffa_partition[0-9]+$":
>
> s/_/-/
>
> Probably should use 'reg' to number partitions. Is the numbering
> significant?
>

Not really, the partitions will get IDs assigned by Hypervisor or Secure
Partition Manager.

> > +    type: object
> > +    description: One or more child nodes, each describing an FFA partition.
> > +    properties:
> > +      $nodename:
> > +        const: ffa_partition
> > +
> > +      compatible:
> > +        oneOf:
> > +          - const: arm,ffa-1.0-partition
> > +
> > +      uuid:
> > +        $ref: '/schemas/types.yaml#definitions/string'
>
> json-schema can do better here:
>
> format: uuid
>
> Though 'format' will need to be allowed in our meta-schema.
>

OK I need to explore this.

> > +        description: |
> > +          The 128-bit UUID [2] of the service implemented by this partition.
> > +
> > +          [2] https://tools.ietf.org/html/rfc4122
> > +
> > +      nr-exec-ctxs:
> > +        $ref: '/schemas/types.yaml#/definitions/uint32'
> > +        description: |
> > +          The number of virtual CPUs to instantiate for this partition.
>
> Just 'nr-cpus' would be clearer in my opinion.
>

The idea must be to use the names as is from the spec.

> What happens on big.LITTLE?
>

AFAIU, we don't have notion of bL in KVM.

> > +
> > +      exec-state:
> > +        description: The execution state in which to execute the partition.
> > +        oneOf:
> > +          - const: "AArch64"
> > +          - const: "AArch32"
>
> Why is this needed? We don't need anything like this for KVM today.
>

Again this is from the spec listed under manifests for the partitions.
This will let the KVM know to start the partition in Aarch32/64.

> > +
> > +      entry-point:
> > +        $ref: '/schemas/types.yaml#/definitions/uint32-matrix'
> > +        description: |
> > +          The entry address of the partition specified as an Intermediate
> > +          Physical Address (IPA) encoded according to the '#address-cells'
> > +          property.
>
> Is the address unique or you could have the same image for multiple
> partitions? If unique, then you could use 'reg' here.
>

I don't have full knowledge on the details, will let Will comment on this.

> You didn't document using '#address-cells'. Really, I'd just make this a
> fixed uint64 (if not 'reg').
>

I was wondering the same as the format from spec must be fixed, checked and
unfortunately it is not 🙁.

--
Regards,
Sudeep
