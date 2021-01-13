Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D817D2F482D
	for <lists+devicetree@lfdr.de>; Wed, 13 Jan 2021 11:03:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726988AbhAMKBC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 13 Jan 2021 05:01:02 -0500
Received: from foss.arm.com ([217.140.110.172]:33476 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727011AbhAMKBB (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 13 Jan 2021 05:01:01 -0500
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 817011042;
        Wed, 13 Jan 2021 02:00:15 -0800 (PST)
Received: from bogus (unknown [10.57.35.27])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id ED18E3F66E;
        Wed, 13 Jan 2021 02:00:13 -0800 (PST)
Date:   Wed, 13 Jan 2021 10:00:11 +0000
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Trilok Soni <tsoni@codeaurora.org>, arve@android.com,
        Andrew Walbran <qwandor@google.com>,
        David Hartley <dhh@qti.qualcomm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Achin Gupta <Achin.Gupta@arm.com>,
        Jens Wiklander <jens.wiklander@linaro.org>,
        Arunachalam Ganapathy <arunachalam.ganapathy@arm.com>
Subject: Re: [PATCH v3 1/7] dt-bindings: Arm: Add Firmware Framework for
 Armv8-A (FF-A) binding
Message-ID: <20210113100011.bnn75jogx22cgkk4@bogus>
References: <20201204121137.2966778-1-sudeep.holla@arm.com>
 <20201204121137.2966778-2-sudeep.holla@arm.com>
 <20201214220107.GA2430387@robh.at.kernel.org>
 <20201216122408.2fhubdyqm2ofpgc3@bogus>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20201216122408.2fhubdyqm2ofpgc3@bogus>
User-Agent: NeoMutt/20171215
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 12:24:08PM +0000, Sudeep Holla wrote:
> On Mon, Dec 14, 2020 at 04:01:07PM -0600, Rob Herring wrote:
> > On Fri, Dec 04, 2020 at 12:11:31PM +0000, Sudeep Holla wrote:
> > > Since the FF-A v1.0 specification doesn't list the UUID of all the
> > > partitions in the discovery API, we need to specify the UUID of the
> > > partitions that need to be accessed by drivers within the kernel.
> > > 
> > > This binding to provide the list of partitions that kernel drivers
> > > may need to access.
> > > 
> > > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > > ---
> > >  .../devicetree/bindings/arm/arm,ffa.yaml      | 58 +++++++++++++++++++
> > >  1 file changed, 58 insertions(+)
> > >  create mode 100644 Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > > 
> > > diff --git a/Documentation/devicetree/bindings/arm/arm,ffa.yaml b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > > new file mode 100644
> > > index 000000000000..a014a5801c34
> > > --- /dev/null
> > > +++ b/Documentation/devicetree/bindings/arm/arm,ffa.yaml
> > > @@ -0,0 +1,58 @@
> > > +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> > > +%YAML 1.2
> > > +---
> > > +$id: http://devicetree.org/schemas/arm/arm,ffa.yaml#
> > > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > > +
> > > +title: Arm Firmware Framework for Arm v8-A (in-kernel users)
> > > +
> > > +maintainers:
> > > +  - Sudeep Holla <sudeep.holla@arm.com>
> > > +
> > > +description: |
> > > +  Firmware frameworks implementing partition according to the FF-A
> > > +  specification defined by ARM document number ARM DEN 0077A ("Arm Firmware
> > > +  Framework for Arm v8-A") [0], providing services to be used by other
> > > +  partitions.
> > > +
> > > +  [0] https://developer.arm.com/docs/den0077/latest
> > > +
> > > +properties:
> > > +  $nodename:
> > > +    const: ffa
> > > +
> > > +  compatible:
> > > +    oneOf:
> > > +      - const: arm,ffa-1.0
> > > +
> > > +patternProperties:
> > > +  "^ffa_partition[0-9]+$":
> > > +    type: object
> > > +    description: One or more child nodes, each describing an FFA partition.
> > > +    properties:
> > > +      $nodename:
> > > +        const: ffa_partition
> > > +
> > > +      compatible:
> > > +        oneOf:
> > > +          - const: arm,ffa-1.0-partition
> > > +
> > > +      uuid:
> > > +        $ref: '/schemas/types.yaml#definitions/string'
> > > +        description: |
> > > +          The 128-bit UUID [2] of the service implemented by this partition.
> > > +
> > > +          [2] https://tools.ietf.org/html/rfc4122
> > 
> > UUIDs are actually a known thing in json-schema with 'format: uuid'. 
> > The meta-schema will probably reject that, so we'll need to add support 
> > to dtschema. Maybe it should be a new definition to reference.
> >
> 
> Ah OK, I will try that and ask for help if I am stuck as I am still trying
> to learn these, not there yet 😄 
> 
> > > +
> > > +additionalProperties: false
> > > +
> > > +examples:
> > > +  - |
> > > +    ffa {
> > > +      compatible = "arm,ffa-1.0";
> > > +
> > > +      ffa_partition0 {
> > > +        compatible = "arm,ffa-1.0-partition";
> > > +        uuid = "12345678-9abc-def0-1234-56789abcdef0";
> > > +      };
> > > +    };
> >
> > This could all be simplified down to just a single property:
> >
> 
> Thanks for the suggestion, I would love this to force spec authors to
> stop relying on DT and add whatever needed in future to the spec as part
> of discovery APIs.
> 
> > arm,ffa-partitions = "12345678-9abc-def0-1234-56789abcdef0", 
> > 	"12345678-9abc-def0-1234-56789abcdef1"
> > 	"12345678-9abc-def0-1234-56789abcdef2";
> >
> > Obviously, that's not extensible, but do we need it to be?
> >
> 
> I prefer if we don't, but I will run this through spec authors so that
> they are aware of what we will do in DT which means they *have* to
> incorporate any future needs into the spec discovery apis.
> 

OK we found some usecase which may require separate nodes. I am sure they
could be alternative solution even with above style of array of UUID strings.

If you remember use of SMC/HVC as SCMI transport[1], it just provides one
way(a2p) communication. P2A is not possible with that, i.e platform
notifications to OSPM is not possible. FFA aims to replace native SMC/HVC
transport there to provide bi-directional support. For such usecase,
where one partition running SCMI server might provide multiple channels
for SCMI communication and we may need to provide the link using phandle
or something in DT.

Let me know your thoughts on those.

--
Regards,
Sudeep

[1] https://lore.kernel.org/r/20201222145603.40192-2-jim2101024@gmail.com
