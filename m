Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 747A0398F70
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 17:58:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231886AbhFBP7q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 11:59:46 -0400
Received: from mail-oi1-f173.google.com ([209.85.167.173]:36747 "EHLO
        mail-oi1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231614AbhFBP7p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 11:59:45 -0400
Received: by mail-oi1-f173.google.com with SMTP id a21so3132883oiw.3
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 08:58:02 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=kXN3kxDR6rSuP/qlF/o+6mmsLpQI1AtkOcGipOBCf88=;
        b=DFoiExASDYSSg401zIbjaay6RmhxAT6CsSWCIUaKBhh3cY2vgtXD6jiMv6HWoxVUcu
         YIzWlCvkhMpmF7en7zBpeCH86f4ck2efAhD6/JpF39GuiAO7nQ2K5bMTdrqA5JJUU9On
         q37SwwLez1FBEHzsZv5w1nHiKH+nK7LIrU68Orph51bz5C6rBQSE9nvBhdrIKQliLfsQ
         raZ89yX6BiyrwebljPeYmDmbl9lxM89UK0phzAA/cno8NyEysAQpDXhdzfBLxhPJ9XPe
         Pz6yLot+cKlhU4UUGP2zVTAs0sdB4cPNrroE5htIXz4RGs4l1HTgXmJmeIKQ7QM9V7L3
         n2fA==
X-Gm-Message-State: AOAM532kS0SPUhQkbUTaKATa5s45d3KqpY3InpbirDJVb9clJpnsnppr
        8dcZWOwE9686fghqzsLaxA==
X-Google-Smtp-Source: ABdhPJzY+gAXJXQ7V+Pc/pv9vvGzwU3+2yR8vHpRhdF+l9eKWW/ltSAe6DS2rc2ShDYmRRghEamPYg==
X-Received: by 2002:aca:340a:: with SMTP id b10mr4226862oia.95.1622649482223;
        Wed, 02 Jun 2021 08:58:02 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l9sm39330oou.43.2021.06.02.08.58.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 08:58:01 -0700 (PDT)
Received: (nullmailer pid 3452884 invoked by uid 1000);
        Wed, 02 Jun 2021 15:58:00 -0000
Date:   Wed, 2 Jun 2021 10:58:00 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>
Subject: Re: [PATCH v2 6/8] dt-bindings: firmware: arm,scpi: Convert to json
 schema
Message-ID: <20210602155800.GA3425929@robh.at.kernel.org>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-7-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210601224904.917990-7-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 01, 2021 at 11:49:02PM +0100, Sudeep Holla wrote:
> Convert the old text format binding for System Control and Power Interface
> (SCPI) Message Protocol into the new and shiny YAML format.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Viresh Kumar <viresh.kumar@linaro.org
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scpi.txt      | 204 -------------
>  .../bindings/firmware/arm,scpi.yaml           | 285 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 286 insertions(+), 205 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml

[...]

> diff --git a/Documentation/devicetree/bindings/firmware/arm,scpi.yaml b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> new file mode 100644
> index 000000000000..b44a5a7040fc
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> @@ -0,0 +1,285 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2021 ARM Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/arm,scpi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: System Control and Power Interface (SCPI) Message Protocol bindings
> +
> +maintainers:
> +  - Sudeep Holla <sudeep.holla@arm.com>
> +
> +description: |
> +  Firmware implementing the SCPI described in ARM document number ARM DUI
> +  0922B ("ARM Compute Subsystem SCP: Message Interface Protocols")[0] can be
> +  used by Linux to initiate various system control and power operations.
> +
> +  This binding is intended to define the interface the firmware implementing
> +  the SCPI provide for OSPM in the device tree.
> +
> +  [0] http://infocenter.arm.com/help/topic/com.arm.doc.dui0922b/index.html
> +
> +properties:
> +  $nodename:
> +    const: scpi
> +
> +  compatible:
> +    description: |
> +      SCPI compliant firmware complying to SCPI v1.0 and above OR
> +      SCPI compliant firmware complying to all unversioned releases
> +      prior to SCPI v1.0
> +    oneOf:
> +      - const: arm,scpi               # SCPI v1.0 and above
> +      - const: arm,scpi-pre-1.0       # Unversioned SCPI before v1.0
> +
> +  mboxes:
> +    description: |
> +      List of phandle and mailbox channel specifiers. All the channels reserved
> +      by remote SCP firmware for use by SCPI message protocol should be
> +      specified in any order.
> +    minItems: 1
> +
> +  shmem:
> +    description: |
> +      List of phandle pointing to the shared memory(SHM) area between the
> +      processors using these mailboxes for IPC, one for each mailbox SHM can
> +      be any memory reserved for the purpose of this communication between the
> +      processors.
> +    minItems: 1
> +
> +additionalProperties:
> +  type: object
> +
> +patternProperties:
> +  "^(sensors|power-domains)(-[0-9a-f]+)?$":

AFAICT, we only ever have 1 sensor and 1 power-domains node, so we don't 
need the numbering.

Also, these should each be their own entry rather that having the 
if/then schema mess below. You need an 'additionalProperties: false' in 
here too.

> +    type: object
> +    description: |
> +      Each sub-node represents one of the controller - power domains or sensors.
> +
> +    properties:
> +      compatible:
> +        oneOf:
> +          - const: arm,scpi-sensors
> +          - const: arm,scpi-power-domains
> +
> +  "^clocks(-[0-9a-f]+)?$":
> +    type: object
> +    description: |
> +      "arm,scpi-clocks" - This is the container node. Each sub-node
> +      represents one of the types of clock controller - indexed or full range.
> +
> +      "arm,scpi-dvfs-clocks" - all the clocks that are variable and index
> +      based. These clocks don't provide an entire range of values
> +      between the limits but only discrete points within the range. The
> +      firmware provides the mapping for each such operating frequency
> +      and the index associated with it. The firmware also manages the
> +      voltage scaling appropriately with the clock scaling.
> +
> +      "arm,scpi-variable-clocks" - all the clocks that are variable and
> +      provide full range within the specified range. The firmware
> +      provides the range of values within a specified range.
> +
> +    properties:
> +      compatible:
> +        oneOf:
> +          - const: arm,scpi-clocks
> +          - const: arm,scpi-dvfs-clocks
> +          - const: arm,scpi-variable-clocks

This doesn't make sense. The first one is the parent node and the last 2 
are child nodes under it. The child nodes need to be defined in yet 
another level.

> +
> +required:
> +  - compatible
> +  - mboxes
> +  - shmem
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: arm,scpi-sensors
> +    then:
> +      properties:
> +        '#thermal-sensor-cells':
> +          const: 1
> +
> +      required:
> +        - '#thermal-sensor-cells'
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: arm,scpi-power-domains
> +    then:
> +      properties:
> +        '#power-domain-cells':
> +          const: 1
> +
> +        num-domains:
> +          $ref: /schemas/types.yaml#/definitions/uint32
> +          description: |
> +            Total number of power domains provided by SCPI. This is needed as
> +            the SCPI message protocol lacks a mechanism to query this
> +            information at runtime.
> +
> +      required:
> +        - '#power-domain-cells'
> +        - num-domains
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            enum:
> +              - arm,scpi-dvfs-clocks
> +              - arm,scpi-variable-clocks

This would never be true unless you removed the container 'clocks' node.

> +    then:
> +      properties:
> +        '#clock-cells':
> +          const: 1
> +        clock-output-names:
> +          $ref: /schemas/types.yaml#/definitions/string-array
> +        clock-indices:
> +          $ref: /schemas/types.yaml#/definitions/uint32-array
> +          description: |
> +            The identifying number for the clocks(i.e.clock_id) in the node.
> +            It can be non linear and hence provide the mapping of identifiers
> +            into the clock-output-names array.
> +
> +      required:
> +        - '#clock-cells'
> +        - clock-output-names
> +        - clock-indices
> +
> +examples:
> +  - |
> +    firmware {
> +        scpi {
> +            compatible = "arm,scpi";
> +            mboxes = <&mhuA 1>;
> +            shmem = <&cpu_scp_hpri>; /* HP-NonSecure */
> +
> +            scpi_devpd: power-domains-0 {
> +                compatible = "arm,scpi-power-domains";
> +                num-domains = <2>;
> +                #power-domain-cells = <1>;
> +            };
> +
> +            clocks {
> +                compatible = "arm,scpi-clocks";
> +
> +                scpi_dvfs: clocks-0 {
> +                    compatible = "arm,scpi-dvfs-clocks";
> +                    #clock-cells = <1>;
> +                    clock-indices = <0>, <1>, <2>;
> +                    clock-output-names = "atlclk", "aplclk","gpuclk";
> +                };
> +
> +                scpi_clk: clocks-1 {
> +                    compatible = "arm,scpi-variable-clocks";
> +                    #clock-cells = <1>;
> +                    clock-indices = <3>, <4>;
> +                    clock-output-names = "pxlclk0", "pxlclk1";
> +                };
> +            };
> +
> +            scpi_sensors: sensors-0 {
> +                compatible = "arm,scpi-sensors";
> +                #thermal-sensor-cells = <1>;
> +            };
> +
> +        };
> +    };
> +
> +    soc {
> +        #address-cells = <2>;
> +        #size-cells = <2>;
> +
> +        sram@50000000 {
> +            compatible = "mmio-sram";
> +            reg = <0x0 0x50000000 0x0 0x10000>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <1>;
> +            ranges = <0 0x0 0x50000000 0x10000>;
> +
> +            cpu_scp_lpri: scp-sram-section@0 {
> +                compatible = "arm,scp-shmem";
> +                reg = <0x0 0x200>;
> +            };
> +
> +            cpu_scp_hpri: scp-sram-section@200 {
> +                compatible = "arm,scp-shmem";
> +                reg = <0x200 0x200>;
> +            };
> +        };
> +
> +        mhuA: mailbox@2b2f0000 {
> +            #mbox-cells = <1>;
> +            compatible = "arm,mhu", "arm,primecell";
> +            reg = <0 0x2b2f0000 0 0x1000>;
> +            interrupts = <0 36 4>, /* LP-NonSecure */
> +                         <0 35 4>, /* HP-NonSecure */
> +                         <0 37 4>; /* Secure */
> +            clocks = <&clock 0 2 1>;
> +            clock-names = "apb_pclk";
> +        };
> +
> +        gpu@ffe40000 {
> +            compatible = "amlogic,meson-g12a-mali", "arm,mali-bifrost";
> +            reg = <0x0 0xffe40000 0x0 0x10000>;
> +            interrupts = <0 160 4>, <0 161 4>, <0 162 4>;
> +            interrupt-names = "job", "mmu", "gpu";
> +            clocks = <&scpi_clk 1>;
> +            power-domains = <&scpi_devpd 8>;
> +            resets = <&scpi_reset 0>, <&scpi_reset 1>;
> +        };
> +
> +        display@20930000 {
> +            compatible = "intel,keembay-display";
> +            reg = <0x0 0x20930000 0x0 0x3000>;
> +            reg-names = "lcd";
> +            interrupts = <0 33 4>;
> +            clocks = <&scpi_clk 0x83>,
> +                     <&scpi_clk 0x0>;
> +            clock-names = "clk_lcd", "clk_pll0";
> +
> +            port {
> +                disp_out: endpoint {
> +                    remote-endpoint = <&dsi_in>;
> +                };
> +            };
> +        };
> +
> +        thermal-zones {
> +            soc-thermal {
> +                polling-delay-passive = <100>;
> +                polling-delay = <1000>;
> +                thermal-sensors = <&scpi_sensors0 3>;
> +
> +                trips {
> +                    mpu0_crit: mpu0_crit {
> +                      temperature = <125000>; /* milliCelsius */
> +                      hysteresis = <2000>; /* milliCelsius */
> +                      type = "critical";
> +                    };
> +                };
> +            };
> +        };
> +    };
> +
> +    cpus {
> +        #size-cells = <0>;
> +        #address-cells = <2>;
> +
> +        cpu@0 {
> +            device_type = "cpu";
> +            compatible = "arm,cortex-a57";
> +            reg = <0x0 0x0>;
> +            enable-method = "psci";
> +            clocks = <&scpi_dvfs 0>;
> +        };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index bd7aff0c120f..6a12597a86e1 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -17696,7 +17696,7 @@ M:	Sudeep Holla <sudeep.holla@arm.com>
>  R:	Cristian Marussi <cristian.marussi@arm.com>
>  L:	linux-arm-kernel@lists.infradead.org
>  S:	Maintained
> -F:	Documentation/devicetree/bindings/arm/arm,sc[mp]i.txt
> +F:	Documentation/devicetree/bindings/firmware/arm,sc[mp]i.yaml
>  F:	drivers/clk/clk-sc[mp]i.c
>  F:	drivers/cpufreq/sc[mp]i-cpufreq.c
>  F:	drivers/firmware/arm_scmi/
> -- 
> 2.25.1
