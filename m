Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 71A3711E2E4
	for <lists+devicetree@lfdr.de>; Fri, 13 Dec 2019 12:41:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725818AbfLMLkO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 13 Dec 2019 06:40:14 -0500
Received: from new1-smtp.messagingengine.com ([66.111.4.221]:44699 "EHLO
        new1-smtp.messagingengine.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S1725799AbfLMLkO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 13 Dec 2019 06:40:14 -0500
Received: from compute3.internal (compute3.nyi.internal [10.202.2.43])
        by mailnew.nyi.internal (Postfix) with ESMTP id 8806E6227;
        Fri, 13 Dec 2019 06:40:12 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute3.internal (MEProxy); Fri, 13 Dec 2019 06:40:12 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=cerno.tech; h=
        date:from:to:cc:subject:message-id:references:mime-version
        :content-type:in-reply-to; s=fm1; bh=NOJF5aGJ9ckmW6XB3QtuOIOnhbe
        S+P1d9AIRUJs17cY=; b=MdjkF6qNRzMRH4GlY3dG/VBW3LsNiyAcbP+bABW9t27
        /q31SN1awTlYztTlqHSv1/lVBUZUn4uVJKZPf/zrUJMmzdBqXI/PEUk2LJprDdUK
        mGtqciT6Msf0yU2dTq/GS6b3LjFQQH9Ney9YnT22viBnRjyd4p5UgGnOHKtQYgeK
        Eql2gKS6KB4ksdbssnesKQ3Yw/W+IjrUxHAkxDGIAOX5Cq3PZmFs/CgvFp9WY/w2
        DNfy7pk0WbUvBWgUaXCLoA9waT4BigCwrcoynYPB2afybp32DBfGtxxngiWdBAYD
        UakEum/0xwziMoDOIcJQfRA//NvTRGO85xMzUAiQCDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
        messagingengine.com; h=cc:content-type:date:from:in-reply-to
        :message-id:mime-version:references:subject:to:x-me-proxy
        :x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=NOJF5a
        GJ9ckmW6XB3QtuOIOnhbeS+P1d9AIRUJs17cY=; b=EXIDy+g/FXVZgt78al76Vh
        O0h30uY9x/vRdVS8r3j35M1Uaxe1oocrgmQNaB0WYEyAT1c91SWnz7Vr5vXTonej
        ihROzQsEH0aybqh6pKDXAQiz4To0/MARLM7ft+i7XwS2hNJeKu0DS1oM6cf8PECR
        pbs77sFc7oaeI6VQsitmBTcetG1/VNQORtS3mnBb7io7NnubZuBt/mMsSAkmpqxq
        Lqkyw9jM8WTVeSCru0ZOVNtarf5BoQ19AuKoRc7QYYdEM2sHa/Y4h2KONWHIREvx
        Kea6sEYSlo3yd4wZzrgWklPYM4DeMxOz7MVVOl8cv7slemGX1P5xiFI7zlPg7Y9g
        ==
X-ME-Sender: <xms:nHjzXVjJJ6RqqHBoJzKvn8VjkIxC1ftcYW--EV-wAcRiNuOyeEFyqg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrudelledgfeduucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucesvcftvggtihhpihgvnhhtshculddquddttddmne
    cujfgurhepfffhvffukfhfgggtuggjsehgtderredttddvnecuhfhrohhmpeforgigihhm
    vgcutfhiphgrrhguuceomhgrgihimhgvsegtvghrnhhordhtvggthheqnecuffhomhgrih
    hnpeguvghvihgtvghtrhgvvgdrohhrghenucfkphepledtrdekledrieekrdejieenucfr
    rghrrghmpehmrghilhhfrhhomhepmhgrgihimhgvsegtvghrnhhordhtvggthhenucevlh
    hushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:nHjzXfwSQsSDzFPeCjrlb5jVBtdusKWnr-7JN91179jC6sRHU41jtA>
    <xmx:nHjzXTLMg9FPgstGG6ij6TG0Iu62wLxhrYsdUjFdBV5Pe90uWvmraw>
    <xmx:nHjzXU3EvkEbavMz7JLYB4IQPdOeG7xxkgUeECuRx3A9bIXw7U1kXA>
    <xmx:nHjzXbFEJm0RCWCmqTXSJebGMvrolXU3cm7tvFpAeEKlzF5d1VOgHg>
Received: from localhost (lfbn-tou-1-1502-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        by mail.messagingengine.com (Postfix) with ESMTPA id 8E9B58005C;
        Fri, 13 Dec 2019 06:40:11 -0500 (EST)
Date:   Fri, 13 Dec 2019 12:40:08 +0100
From:   Maxime Ripard <maxime@cerno.tech>
To:     Mike Leach <mike.leach@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, coresight@lists.linaro.org,
        devicetree@vger.kernel.org, mathieu.poirier@linaro.org,
        suzuki.poulose@arm.com, robh+dt@kernel.org, liviu.dudau@arm.com,
        sudeep.holla@arm.com, lorenzo.pieralisi@arm.com, agross@kernel.org
Subject: Re: [PATCH v6 05/15] dt-bindings: arm: Adds CoreSight CTI hardware
 definitions.
Message-ID: <20191213114008.uyghh3rdbnaumcft@gilmour.lan>
References: <20191211230813.5144-1-mike.leach@linaro.org>
MIME-Version: 1.0
Content-Type: multipart/signed; micalg=pgp-sha256;
        protocol="application/pgp-signature"; boundary="fkdcimf53iaxg7ry"
Content-Disposition: inline
In-Reply-To: <20191211230813.5144-1-mike.leach@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


--fkdcimf53iaxg7ry
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi,

On Wed, Dec 11, 2019 at 11:08:13PM +0000, Mike Leach wrote:
> Adds new coresight-cti.yaml file describing the bindings required to define
> CTI in the device trees.
>
> Adds an include file to dt-bindings/arm to define constants describing
> common signal functionality used in CoreSight and generic usage.
>
> Signed-off-by: Mike Leach <mike.leach@linaro.org>
> Reviewed-by: Mathieu Poirier <mathieu.poirier@linaro.org>
> ---
>  .../bindings/arm/coresight-cti.yaml           | 303 ++++++++++++++++++
>  .../devicetree/bindings/arm/coresight.txt     |   7 +
>  MAINTAINERS                                   |   2 +
>  include/dt-bindings/arm/coresight-cti-dt.h    |  37 +++
>  4 files changed, 349 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/coresight-cti.yaml
>  create mode 100644 include/dt-bindings/arm/coresight-cti-dt.h
>
> diff --git a/Documentation/devicetree/bindings/arm/coresight-cti.yaml b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> new file mode 100644
> index 000000000000..cbbe88fa7148
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/arm/coresight-cti.yaml
> @@ -0,0 +1,303 @@
> +# SPDX-License-Identifier: GPL-2.0-only or BSD-2-Clause
> +# Copyright 2019 Linaro Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/arm/coresight-cti.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: ARM Coresight Cross Trigger Interface (CTI) device.
> +
> +description: |
> +  The CoreSight Embedded Cross Trigger (ECT) consists of CTI devices connected
> +  to one or more CoreSight components and/or a CPU, with CTIs interconnected in
> +  a star topology via the Cross Trigger Matrix (CTM), which is not programmable.
> +  The ECT components are not part of the trace generation data path and are thus
> +  not part of the CoreSight graph described in the general CoreSight bindings
> +  file coresight.txt.
> +
> +  The CTI component properties define the connections between the individual
> +  CTI and the components it is directly connected to, consisting of input and
> +  output hardware trigger signals. CTIs can have a maximum number of input and
> +  output hardware trigger signals (8 each for v1 CTI, 32 each for v2 CTI). The
> +  number is defined at design time, the maximum of each defined in the DEVID
> +  register.
> +
> +  CTIs are interconnected in a star topology via the CTM, using a number of
> +  programmable channels, usually 4, but again implementation defined and
> +  described in the DEVID register. The star topology is not required to be
> +  described in the bindings as the actual connections are software
> +  programmable.
> +
> +  In general the connections between CTI and components via the trigger signals
> +  are implementation defined, except when the CTI is connected to an ARM v8
> +  architecture core and optional ETM.
> +
> +  In this case the ARM v8 architecture defines the required signal connections
> +  between CTI and the CPU core and ETM if present. In the case of a v8
> +  architecturally connected CTI an additional compatible string is used to
> +  indicate this feature (arm,coresight-cti-v8-arch).
> +
> +  When CTI trigger connection information is unavailable then a minimal driver
> +  binding can be declared with no explicit trigger signals. This will result
> +  the driver detecting the maximum available triggers and channels from the
> +  DEVID register and make them all available for use as a single default
> +  connection. Any user / client application will require additional information
> +  on the connections between the CTI and other components for correct operation.
> +  This information might be found by enabling the Integration Test registers in
> +  the driver (set CONFIG_CORESIGHT_CTI_INTEGRATION_TEST in Kernel
> +  configuration). These registers may be used to explore the trigger connections
> +  between CTI and other CoreSight components.
> +
> +  Certain triggers between CoreSight devices and the CTI have specific types
> +  and usages. These can be defined along with the signal indexes with the
> +  constants defined in <dt-bindings/arm/coresight-cti-dt.h>
> +
> +  For example a CTI connected to a core will usually have a DBGREQ signal. This
> +  is defined in the binding as type PE_EDBGREQ. These types will appear in an
> +  optional array alongside the signal indexes. Omitting types will default all
> +  signals to GEN_IO.
> +
> +  Note that some hardware trigger signals can be connected to non-CoreSight
> +  components (e.g. UART etc) depending on hardware implementation.
> +
> +maintainers:
> +  - Mike Leach <mike.leach@linaro.org>
> +
> +allOf:
> +  - $ref: /schemas/arm/primecell.yaml#
> +
> +# Need a custom select here or 'arm,primecell' will match on lots of nodes
> +select:
> +  properties:
> +    compatible:
> +      contains:
> +        enum:
> +          - arm,coresight-cti
> +  required:
> +    - compatible
> +
> +properties:
> +  $nodename:
> +    pattern: "^cti(@[0-9a-f]+)$"
> +  compatible:
> +    oneOf:
> +      - items:
> +        - const: arm,coresight-cti
> +        - const: arm,primecell
> +      - items:
> +        - const: arm,coresight-cti-v8-arch
> +        - const: arm,coresight-cti
> +        - const: arm,primecell
> +
> +  reg:
> +    maxItems: 1
> +
> +  cpu:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle

You can drop the allOf here, and move the $ref directly under cpu:

> +    description: Handle to cpu this device is associated with.
> +
> +  arm,cti-ctm-id:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/uint32

Ditto

> +    description:
> +      Defines the CTM this CTI is connected to, in large systems with multiple
> +      separate CTI/CTM nets. Typically multi-socket systems where the CTM is
> +      propagated between sockets.
> +
> +  arm,cs-dev-assoc:
> +    allOf:
> +      - $ref: /schemas/types.yaml#/definitions/phandle

Ditto,

> +    description:
> +      defines a phandle reference to an associated CoreSight trace device.
> +      When the associated trace device is enabled, then the respective CTI
> +      will be enabled. Use in a trig-conns node, or in CTI base node when
> +      arm,cti-v8-arch present. If the associated device has not been registered
> +      then the node name will be stored as the connection name for later
> +      resolution. If the associated device is not a CoreSight device or not
> +      registered then the node name will remain the connection name and
> +      automatic enabling will not occur.
> +
> +patternProperties:
> +  '^trig_conns@([0-9]+)$':

underscores in nodename are frowned upon (and generate a warning in
dtc), you should avoid them.

> +    type: object
> +    description:
> +      A trigger connections child node which describes the trigger signals
> +      between this CTI and another hardware device. This device may be a CPU,
> +      CoreSight device, any other hardware device or simple external IO lines.
> +      The connection may have both input and output triggers, or only one or the
> +      other.
> +
> +    properties:
> +
> +      arm,trig-in-sigs:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger in signal numbers in use by a trig-conns node.
> +
> +      arm,trig-in-types:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of constants representing the types for the CTI trigger in
> +          signals. Types in this array match to the corresponding signal in the
> +          arm,trig-in-sigs array. If the -types array is smaller, or omitted
> +          completely, then the types will default to GEN_IO.
> +
> +      arm,trig-out-sigs:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger out signal numbers in use by a trig-conns node.
> +
> +      arm,trig-out-types:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of constants representing the types for the CTI trigger out
> +          signals. Types in this array match to the corresponding signal
> +          in the arm,trig-out-sigs array. If the "-types" array is smaller,
> +          or omitted completely, then the types will default to GEN_IO.
> +
> +      arm,trig-filters:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/uint32-array
> +        minItems: 1
> +        maxItems: 32
> +        description:
> +          List of CTI trigger out signals that will be blocked from becoming
> +          active, unless filtering is disabled on the driver.
> +
> +      arm,trig-conn-name:
> +        allOf:
> +          - $ref: /schemas/types.yaml#/definitions/string
> +        description:
> +          Defines a connection name that will be displayed, if the cpu or
> +          arm,cs-dev-assoc properties are not being used in this connection.
> +          Principle use for CTI that are connected to non-CoreSight devices, or
> +          external IO.
> +
> +    anyOf:
> +      - required:
> +        - arm,trig-in-sigs
> +      - required:
> +        - arm,trig-out-sigs
> +    oneOf:
> +      - required:
> +        - arm,trig-conn-name
> +      - required:
> +        - cpu
> +      - required:
> +        - arm,cs-dev-assoc

This would mean that either arm,trig-conn-name, cpu xor
arm,cs-dev-assoc is required in the trig_conn child nodes, but they
don't seem to be defined at this level but in the parent node?

> +
> +required:
> +  - compatible
> +  - reg
> +  - clocks
> +  - clock-names
> +
> +examples:
> +  # minimum CTI definition. DEVID register used to set number of triggers.
> +  - |
> +    cti@20020000 {
> +      compatible = "arm,coresight-cti", "arm,primecell";
> +      reg = <0x20020000 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +    };
> +  #  v8 architecturally defined CTI - CPU + ETM connections generated by the
> +  #  driver according to the v8 architecture specification.
> +  - |
> +    cti@859000 {
> +      compatible = "arm,coresight-cti-v8-arch", "arm,coresight-cti",
> +                   "arm,primecell";
> +      reg = <0x859000 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +
> +      cpu = <&CPU1>;
> +      arm,cs-dev-assoc = <&etm1>;

and it looks like arm,cs-dev-assoc and cpu can be combined?

> +    };
> +  # Implementation defined CTI - CPU + ETM connections explicitly defined..
> +  # Shows use of type constants from dt-bindings/arm/coresight-cti-dt.h
> +  - |
> +    #include <dt-bindings/arm/coresight-cti-dt.h>
> +
> +    cti@858000 {
> +      compatible = "arm,coresight-cti", "arm,primecell";
> +      reg = <0x858000 0x1000>;
> +
> +      clocks = <&soc_smc50mhz>;
> +      clock-names = "apb_pclk";
> +
> +      arm,cti-ctm-id = <1>;
> +
> +      trig-conns@0 {

So, what I think happened here is that your patternProperties doesn't
match anything (underscore vs dash), and since you don't have
additionalProperties set to false, it doesn't warn that there's
properties that aren't defined in the binding. Meaning that none of
the child nodes in the bindings are effectively validated.

> +            arm,trig-in-sigs = <4 5 6 7>;
> +            arm,trig-in-types = <ETM_EXTOUT
> +                                 ETM_EXTOUT
> +                                 ETM_EXTOUT
> +                                 ETM_EXTOUT>;
> +            arm,trig-out-sigs = <4 5 6 7>;
> +            arm,trig-out-types = <ETM_EXTIN
> +                                  ETM_EXTIN
> +                                  ETM_EXTIN
> +                                  ETM_EXTIN>;
> +            arm,cs-dev-assoc = <&etm0>;
> +      };

Nodes with unit-address must have a matching reg property. This will
generate a dtc warning too.

Maxime

--fkdcimf53iaxg7ry
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iHUEABYIAB0WIQRcEzekXsqa64kGDp7j7w1vZxhRxQUCXfN4mAAKCRDj7w1vZxhR
xY8UAP0Qp/EVYzbL4sazFvQqmeJSS40dpgN+eGkMvOFNvi6FVAD+NsbhpCh+KBJr
wByCoQPMMZIg8gObRRfB4+t8iWLBZg0=
=Ury3
-----END PGP SIGNATURE-----

--fkdcimf53iaxg7ry--
