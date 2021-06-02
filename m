Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A3297398F93
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 18:06:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229618AbhFBQHs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 12:07:48 -0400
Received: from foss.arm.com ([217.140.110.172]:48704 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S230039AbhFBQHr (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Jun 2021 12:07:47 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 0C38711FB;
        Wed,  2 Jun 2021 09:06:04 -0700 (PDT)
Received: from bogus (unknown [10.57.72.241])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id 64E203F73D;
        Wed,  2 Jun 2021 09:06:02 -0700 (PDT)
Date:   Wed, 2 Jun 2021 17:05:57 +0100
From:   Sudeep Holla <sudeep.holla@arm.com>
To:     Rob Herring <robh@kernel.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH v2 6/8] dt-bindings: firmware: arm,scpi: Convert to json
 schema
Message-ID: <20210602160557.xxdnrpk467dui363@bogus>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-7-sudeep.holla@arm.com>
 <20210602155800.GA3425929@robh.at.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210602155800.GA3425929@robh.at.kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jun 02, 2021 at 10:58:00AM -0500, Rob Herring wrote:
> On Tue, Jun 01, 2021 at 11:49:02PM +0100, Sudeep Holla wrote:
> > Convert the old text format binding for System Control and Power Interface
> > (SCPI) Message Protocol into the new and shiny YAML format.
> > 
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Kevin Hilman <khilman@baylibre.com>
> > Cc: Neil Armstrong <narmstrong@baylibre.com>
> > Cc: Jerome Brunet <jbrunet@baylibre.com>
> > Cc: Viresh Kumar <viresh.kumar@linaro.org
> > Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> > ---
> >  .../devicetree/bindings/arm/arm,scpi.txt      | 204 -------------
> >  .../bindings/firmware/arm,scpi.yaml           | 285 ++++++++++++++++++
> >  MAINTAINERS                                   |   2 +-
> >  3 files changed, 286 insertions(+), 205 deletions(-)
> >  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
> >  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> 
> [...]
> 
> > diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > new file mode 100644
> > index 000000000000..b44a5a7040fc
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> > @@ -0,0 +1,285 @@
> > +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> > +# Copyright 2021 ARM Ltd.
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/firmware/arm,scpi.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: System Control and Power Interface (SCPI) Message Protocol bindings
> > +
> > +maintainers:
> > +  - Sudeep Holla <sudeep.holla@arm.com>
> > +
> > +description: |
> > +  Firmware implementing the SCPI described in ARM document number ARM DUI
> > +  0922B ("ARM Compute Subsystem SCP: Message Interface Protocols")[0] can be
> > +  used by Linux to initiate various system control and power operations.
> > +
> > +  This binding is intended to define the interface the firmware implementing
> > +  the SCPI provide for OSPM in the device tree.
> > +
> > +  [0] http://infocenter.arm.com/help/topic/com.arm.doc.dui0922b/index.html
> > +
> > +properties:
> > +  $nodename:
> > +    const: scpi
> > +
> > +  compatible:
> > +    description: |
> > +      SCPI compliant firmware complying to SCPI v1.0 and above OR
> > +      SCPI compliant firmware complying to all unversioned releases
> > +      prior to SCPI v1.0
> > +    oneOf:
> > +      - const: arm,scpi               # SCPI v1.0 and above
> > +      - const: arm,scpi-pre-1.0       # Unversioned SCPI before v1.0
> > +
> > +  mboxes:
> > +    description: |
> > +      List of phandle and mailbox channel specifiers. All the channels reserved
> > +      by remote SCP firmware for use by SCPI message protocol should be
> > +      specified in any order.
> > +    minItems: 1
> > +
> > +  shmem:
> > +    description: |
> > +      List of phandle pointing to the shared memory(SHM) area between the
> > +      processors using these mailboxes for IPC, one for each mailbox SHM can
> > +      be any memory reserved for the purpose of this communication between the
> > +      processors.
> > +    minItems: 1
> > +
> > +additionalProperties:
> > +  type: object
> > +
> > +patternProperties:
> > +  "^(sensors|power-domains)(-[0-9a-f]+)?$":
> 
> AFAICT, we only ever have 1 sensor and 1 power-domains node, so we don't 
> need the numbering.
>

Right, I initially had clock too there and didn't notice the above 2 doesn't
need the numbering, will drop it.

> Also, these should each be their own entry rather that having the 
> if/then schema mess below. You need an 'additionalProperties: false' in 
> here too.
>

OK that sounds cleaner.

> > +    type: object
> > +    description: |
> > +      Each sub-node represents one of the controller - power domains or sensors.
> > +
> > +    properties:
> > +      compatible:
> > +        oneOf:
> > +          - const: arm,scpi-sensors
> > +          - const: arm,scpi-power-domains
> > +
> > +  "^clocks(-[0-9a-f]+)?$":
> > +    type: object
> > +    description: |
> > +      "arm,scpi-clocks" - This is the container node. Each sub-node
> > +      represents one of the types of clock controller - indexed or full range.
> > +
> > +      "arm,scpi-dvfs-clocks" - all the clocks that are variable and index
> > +      based. These clocks don't provide an entire range of values
> > +      between the limits but only discrete points within the range. The
> > +      firmware provides the mapping for each such operating frequency
> > +      and the index associated with it. The firmware also manages the
> > +      voltage scaling appropriately with the clock scaling.
> > +
> > +      "arm,scpi-variable-clocks" - all the clocks that are variable and
> > +      provide full range within the specified range. The firmware
> > +      provides the range of values within a specified range.
> > +
> > +    properties:
> > +      compatible:
> > +        oneOf:
> > +          - const: arm,scpi-clocks
> > +          - const: arm,scpi-dvfs-clocks
> > +          - const: arm,scpi-variable-clocks
> 
> This doesn't make sense. The first one is the parent node and the last 2 
> are child nodes under it. The child nodes need to be defined in yet 
> another level.
>

Agreed, I did that for SCMI regulators, will follow that here too.

> > +
> > +required:
> > +  - compatible
> > +  - mboxes
> > +  - shmem
> > +
> > +allOf:
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: arm,scpi-sensors
> > +    then:
> > +      properties:
> > +        '#thermal-sensor-cells':
> > +          const: 1
> > +
> > +      required:
> > +        - '#thermal-sensor-cells'
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            const: arm,scpi-power-domains
> > +    then:
> > +      properties:
> > +        '#power-domain-cells':
> > +          const: 1
> > +
> > +        num-domains:
> > +          $ref: /schemas/types.yaml#/definitions/uint32
> > +          description: |
> > +            Total number of power domains provided by SCPI. This is needed as
> > +            the SCPI message protocol lacks a mechanism to query this
> > +            information at runtime.
> > +
> > +      required:
> > +        - '#power-domain-cells'
> > +        - num-domains
> > +
> > +  - if:
> > +      properties:
> > +        compatible:
> > +          contains:
> > +            enum:
> > +              - arm,scpi-dvfs-clocks
> > +              - arm,scpi-variable-clocks
> 
> This would never be true unless you removed the container 'clocks' node.
>

Understood. I should have tested removing properties in the example like
I did for SCMI. I must have show less interest for SCPI as it is old and
almost deprecated 😁. I will fix it.

-- 
Regards,
Sudeep
