Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 959FD398FB9
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 18:16:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229610AbhFBQRv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 12:17:51 -0400
Received: from mail-oi1-f172.google.com ([209.85.167.172]:38566 "EHLO
        mail-oi1-f172.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229541AbhFBQRu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 12:17:50 -0400
Received: by mail-oi1-f172.google.com with SMTP id z3so3177371oib.5
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 09:16:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rO+g6+ohE8RHHNy6AiUv5Aimfa/FuOsrrfe5GVP7TAw=;
        b=ahnxz58jVJXNvt3GRAHf0uayxj8yQbVu/8+iBEXP4v6h6sj+NSk3nylulD6yAKCmow
         G8KL3+pWIMM0/H6oqlHPTNTVyyBV5QNXfT360dg1/srp4TOg1jQdA1YQmyEj10Foo3YL
         zpPIaSfSaJux+dCFAe1GhiRsuzVsxEZ4OrA6ah0HZopL9+pLv/7xUizyp9DwYo4JKETf
         cnuwmpkDIHvjq/NjM3yVJSEhmqdJFi5eMDyxl9iDEN+8NCWNNf6Rcwbzw0hLlKw6nwjB
         JP8Xsi5FjuXmRXf3+Xuk1Qc/hYMquzQ3HbEDSpjsBGQbFZ6RWzOycomsW6aBeg0Jov8N
         lbMA==
X-Gm-Message-State: AOAM5300BDQtQ9p/QKaGMwLzl4Oo3z+M+pWBENo8QiSjDjX49QjoN+wg
        XJv6NO4dV89MqU0k0+bh+A==
X-Google-Smtp-Source: ABdhPJyNQoe6NjBjdqaojNCK8j61+tBGULqQRPfWP33zpDlhJks6M2B1yjOZrRt5pLxltX75jV6gQQ==
X-Received: by 2002:aca:4e8c:: with SMTP id c134mr2315213oib.62.1622650567227;
        Wed, 02 Jun 2021 09:16:07 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a14sm69455otl.52.2021.06.02.09.16.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 09:16:05 -0700 (PDT)
Received: (nullmailer pid 3484411 invoked by uid 1000);
        Wed, 02 Jun 2021 16:16:04 -0000
Date:   Wed, 2 Jun 2021 11:16:04 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Peter Hilber <peter.hilber@opensynergy.com>
Subject: Re: [PATCH v2 8/8] dt-bindings: firmware: arm,scmi: Convert to json
 schema
Message-ID: <20210602161604.GB3425929@robh.at.kernel.org>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-9-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210601224904.917990-9-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 01, 2021 at 11:49:04PM +0100, Sudeep Holla wrote:
> Convert the old text format binding for System Control and Management Interface
> (SCMI) Message Protocol into the new and shiny YAML format.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Cristian Marussi <cristian.marussi@arm.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Jim Quinlan <jim2101024@gmail.com>
> Cc: Etienne Carriere <etienne.carriere@linaro.org>
> Cc: Peter Hilber <peter.hilber@opensynergy.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt      | 224 ---------
>  .../bindings/firmware/arm,scmi.yaml           | 474 ++++++++++++++++++
>  2 files changed, 474 insertions(+), 224 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> 
> diff --git a/Documentation/devicetree/bindings/arm/arm,scmi.txt b/Documentation/devicetree/bindings/arm/arm,scmi.txt
> deleted file mode 100644
> index b7be2000afcb..000000000000
> --- a/Documentation/devicetree/bindings/arm/arm,scmi.txt
> +++ /dev/null
> @@ -1,224 +0,0 @@
> -System Control and Management Interface (SCMI) Message Protocol
> -----------------------------------------------------------
> -
> -The SCMI is intended to allow agents such as OSPM to manage various functions
> -that are provided by the hardware platform it is running on, including power
> -and performance functions.
> -
> -This binding is intended to define the interface the firmware implementing
> -the SCMI as described in ARM document number ARM DEN 0056A ("ARM System Control
> -and Management Interface Platform Design Document")[0] provide for OSPM in
> -the device tree.
> -
> -Required properties:
> -
> -The scmi node with the following properties shall be under the /firmware/ node.
> -
> -- compatible : shall be "arm,scmi" or "arm,scmi-smc" for smc/hvc transports
> -- mboxes: List of phandle and mailbox channel specifiers. It should contain
> -	  exactly one or two mailboxes, one for transmitting messages("tx")
> -	  and another optional for receiving the notifications("rx") if
> -	  supported.
> -- shmem : List of phandle pointing to the shared memory(SHM) area as per
> -	  generic mailbox client binding.
> -- #address-cells : should be '1' if the device has sub-nodes, maps to
> -	  protocol identifier for a given sub-node.
> -- #size-cells : should be '0' as 'reg' property doesn't have any size
> -	  associated with it.
> -- arm,smc-id : SMC id required when using smc or hvc transports
> -
> -Optional properties:
> -
> -- mbox-names: shall be "tx" or "rx" depending on mboxes entries.
> -
> -- interrupts : when using smc or hvc transports, this optional
> -	 property indicates that msg completion by the platform is indicated
> -	 by an interrupt rather than by the return of the smc call. This
> -	 should not be used except when the platform requires such behavior.
> -
> -- interrupt-names : if "interrupts" is present, interrupt-names must also
> -	 be present and have the value "a2p".
> -
> -See Documentation/devicetree/bindings/mailbox/mailbox.txt for more details
> -about the generic mailbox controller and client driver bindings.
> -
> -The mailbox is the only permitted method of calling the SCMI firmware.
> -Mailbox doorbell is used as a mechanism to alert the presence of a
> -messages and/or notification.
> -
> -Each protocol supported shall have a sub-node with corresponding compatible
> -as described in the following sections. If the platform supports dedicated
> -communication channel for a particular protocol, the 3 properties namely:
> -mboxes, mbox-names and shmem shall be present in the sub-node corresponding
> -to that protocol.
> -
> -Clock/Performance bindings for the clocks/OPPs based on SCMI Message Protocol
> -------------------------------------------------------------
> -
> -This binding uses the common clock binding[1].
> -
> -Required properties:
> -- #clock-cells : Should be 1. Contains the Clock ID value used by SCMI commands.
> -
> -Power domain bindings for the power domains based on SCMI Message Protocol
> -------------------------------------------------------------
> -
> -This binding for the SCMI power domain providers uses the generic power
> -domain binding[2].
> -
> -Required properties:
> - - #power-domain-cells : Should be 1. Contains the device or the power
> -			 domain ID value used by SCMI commands.
> -
> -Regulator bindings for the SCMI Regulator based on SCMI Message Protocol
> -------------------------------------------------------------
> -An SCMI Regulator is permanently bound to a well defined SCMI Voltage Domain,
> -and should be always positioned as a root regulator.
> -It does not support any current operation.
> -
> -SCMI Regulators are grouped under a 'regulators' node which in turn is a child
> -of the SCMI Voltage protocol node inside the desired SCMI instance node.
> -
> -This binding uses the common regulator binding[6].
> -
> -Required properties:
> - - reg : shall identify an existent SCMI Voltage Domain.
> -
> -Sensor bindings for the sensors based on SCMI Message Protocol
> ---------------------------------------------------------------
> -SCMI provides an API to access the various sensors on the SoC.
> -
> -Required properties:
> -- #thermal-sensor-cells: should be set to 1. This property follows the
> -			 thermal device tree bindings[3].
> -
> -			 Valid cell values are raw identifiers (Sensor ID)
> -			 as used by the firmware. Refer to  platform details
> -			 for your implementation for the IDs to use.
> -
> -Reset signal bindings for the reset domains based on SCMI Message Protocol
> -------------------------------------------------------------
> -
> -This binding for the SCMI reset domain providers uses the generic reset
> -signal binding[5].
> -
> -Required properties:
> - - #reset-cells : Should be 1. Contains the reset domain ID value used
> -		  by SCMI commands.
> -
> -[0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
> -[1] Documentation/devicetree/bindings/clock/clock-bindings.txt
> -[2] Documentation/devicetree/bindings/power/power-domain.yaml
> -[3] Documentation/devicetree/bindings/thermal/thermal*.yaml
> -[4] Documentation/devicetree/bindings/sram/sram.yaml
> -[5] Documentation/devicetree/bindings/reset/reset.txt
> -[6] Documentation/devicetree/bindings/regulator/regulator.yaml
> -
> -Example:
> -
> -sram@50000000 {
> -	compatible = "mmio-sram";
> -	reg = <0x0 0x50000000 0x0 0x10000>;
> -
> -	#address-cells = <1>;
> -	#size-cells = <1>;
> -	ranges = <0 0x0 0x50000000 0x10000>;
> -
> -	cpu_scp_lpri: scp-shmem@0 {
> -		compatible = "arm,scmi-shmem";
> -		reg = <0x0 0x200>;
> -	};
> -
> -	cpu_scp_hpri: scp-shmem@200 {
> -		compatible = "arm,scmi-shmem";
> -		reg = <0x200 0x200>;
> -	};
> -};
> -
> -mailbox@40000000 {
> -	....
> -	#mbox-cells = <1>;
> -	reg = <0x0 0x40000000 0x0 0x10000>;
> -};
> -
> -firmware {
> -
> -	...
> -
> -	scmi {
> -		compatible = "arm,scmi";
> -		mboxes = <&mailbox 0 &mailbox 1>;
> -		mbox-names = "tx", "rx";
> -		shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> -		#address-cells = <1>;
> -		#size-cells = <0>;
> -
> -		scmi_devpd: protocol@11 {
> -			reg = <0x11>;
> -			#power-domain-cells = <1>;
> -		};
> -
> -		scmi_dvfs: protocol@13 {
> -			reg = <0x13>;
> -			#clock-cells = <1>;
> -		};
> -
> -		scmi_clk: protocol@14 {
> -			reg = <0x14>;
> -			#clock-cells = <1>;
> -		};
> -
> -		scmi_sensors0: protocol@15 {
> -			reg = <0x15>;
> -			#thermal-sensor-cells = <1>;
> -		};
> -
> -		scmi_reset: protocol@16 {
> -			reg = <0x16>;
> -			#reset-cells = <1>;
> -		};
> -
> -		scmi_voltage: protocol@17 {
> -			reg = <0x17>;
> -
> -			regulators {
> -				regulator_devX: regulator@0 {
> -					reg = <0x0>;
> -					regulator-max-microvolt = <3300000>;
> -				};
> -
> -				regulator_devY: regulator@9 {
> -					reg = <0x9>;
> -					regulator-min-microvolt = <500000>;
> -					regulator-max-microvolt = <4200000>;
> -				};
> -
> -				...
> -			};
> -		};
> -	};
> -};
> -
> -cpu@0 {
> -	...
> -	reg = <0 0>;
> -	clocks = <&scmi_dvfs 0>;
> -};
> -
> -hdlcd@7ff60000 {
> -	...
> -	reg = <0 0x7ff60000 0 0x1000>;
> -	clocks = <&scmi_clk 4>;
> -	power-domains = <&scmi_devpd 1>;
> -	resets = <&scmi_reset 10>;
> -};
> -
> -thermal-zones {
> -	soc_thermal {
> -		polling-delay-passive = <100>;
> -		polling-delay = <1000>;
> -					/* sensor ID */
> -		thermal-sensors = <&scmi_sensors0 3>;
> -		...
> -	};
> -};
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> new file mode 100644
> index 000000000000..0f5608d7e950
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -0,0 +1,474 @@
> +# SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
> +# Copyright 2021 ARM Ltd.
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/firmware/arm,scmi.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: System Control and Management Interface (SCMI) Message Protocol bindings
> +
> +maintainers:
> +  - Sudeep Holla <sudeep.holla@arm.com>
> +
> +description: |
> +  The SCMI is intended to allow agents such as OSPM to manage various functions
> +  that are provided by the hardware platform it is running on, including power
> +  and performance functions.
> +
> +  This binding is intended to define the interface the firmware implementing
> +  the SCMI as described in ARM document number ARM DEN 0056 ("ARM System Control
> +  and Management Interface Platform Design Document")[0] provide for OSPM in
> +  the device tree.
> +
> +  [0] https://developer.arm.com/documentation/den0056/latest
> +
> +properties:
> +  $nodename:
> +    const: scmi
> +
> +  compatible:
> +    oneOf:
> +      - description: SCMI compliant firmware with mailbox transport
> +        items:
> +          - const: arm,scmi
> +      - description: SCMI compliant firmware with ARM SMC/HVC transport
> +        items:
> +          - const: arm,scmi-smc
> +
> +  mbox-names:
> +    description: |
> +      Specifies the mailboxes used to communicate with SCMI compliant
> +      firmware.
> +    items:
> +      - const: tx
> +      - const: rx
> +
> +  mboxes:
> +    description: |
> +      List of phandle and mailbox channel specifiers. It should contain
> +      exactly one or two mailboxes, one for transmitting messages("tx")
> +      and another optional for receiving the notifications("rx") if supported.
> +    minItems: 1
> +    maxItems: 2
> +
> +  shmem:
> +    description: |
> +      List of phandle pointing to the shared memory(SHM) area, for each
> +      transport channel specified.
> +    minItems: 1
> +    maxItems: 2
> +
> +  '#address-cells':
> +    description: |
> +      The address cells map to the protocol identifier for a given sub-node.
> +    const: 1
> +
> +  '#size-cells':
> +    description: |
> +      The size cells are not present as 'reg' property doesn't have any
> +      size associated with it.
> +    const: 0
> +
> +  arm,smc-id:
> +    $ref: /schemas/types.yaml#/definitions/uint32
> +    description: |
> +      SMC id required when using smc or hvc transports
> +
> +additionalProperties:
> +  type: object

This should be able to be 'false' as every child is covered by 
'^protocol@[0-9a-f]+$', right?

> +
> +patternProperties:
> +  '^protocol@[0-9a-f]+$':
> +    type: object
> +    description: |
> +      Each sub-node represents a protocol supported. If the platform
> +      supports a dedicated communication channel for a particular protocol,
> +      then the corresponding transport properties must be present.
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2
> +
> +    required:
> +      - reg
> +
> +  '^protocol@11$':

Not a pattern, so move under 'properties'.

> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1

You can be more specific than that:

const: 0x11

> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2

No need to repeat all these. The '^protocol@[0-9a-f]+$' will also be 
applied.

> +
> +      '#power-domain-cells':
> +        $ref: "/schemas/power/power-domain.yaml#"

Don't need this. Already has a type. Plus, you a applying a schema that 
applies to DT nodes (objects), not a schema for a DT property. (It will 
silently pass validation because the above schema doesn't have an 
explicit 'type: object'.)

> +        const: 1
> +
> +    required:
> +      - reg

Again, already covered.

> +      - '#power-domain-cells'
> +
> +  '^protocol@13$':
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2
> +
> +      '#clock-cells':
> +        const: 1
> +
> +    required:
> +      - reg
> +      - '#clock-cells'
> +
> +  '^protocol@14$':
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2
> +
> +      '#clock-cells':
> +        const: 1
> +
> +    required:
> +      - reg
> +      - '#clock-cells'
> +
> +  '^protocol@15$':
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2
> +
> +      '#thermal-sensor-cells':
> +        $ref: "/schemas/thermal/thermal-sensor.yaml#"
> +        const: 1
> +
> +    required:
> +      - reg
> +      - '#thermal-sensor-cells'
> +
> +  '^protocol@16$':
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2
> +
> +      '#reset-cells':
> +        const: 1
> +
> +    required:
> +      - reg
> +      - '#reset-cells'
> +
> +  '^protocol@17$':
> +    type: object
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      mbox-names:
> +        items:
> +          - const: tx
> +          - const: rx
> +
> +      mboxes:
> +        minItems: 1
> +        maxItems: 2
> +
> +      shmem:
> +        minItems: 1
> +        maxItems: 2
> +
> +      regulators:
> +        type: object
> +        description: |
> +            The list of all regulators provided by this SCMI controller.
> +        patternProperties:
> +          '^regulators@[0-9a-f]+$':
> +            type: object
> +            $ref: "../regulator/regulator.yaml#"
> +            properties:
> +              reg:
> +                maxItems: 1
> +                description: Identifier for the voltage regulator.
> +            required:
> +              - reg
> +
> +    required:
> +      - reg
> +
> +required:
> +  - compatible
> +  - shmem
> +
> +allOf:
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: arm,scmi
> +    then:
> +      required:
> +        - mboxes
> +
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: arm,scmi-smc

wouldn't 'else' work here?

> +    then:
> +      properties:
> +        interrupts:
> +          description: |
> +            The interrupt that indicates message completion by the platform
> +            rather than by the return of the smc call. This should not be used
> +            except when the platform requires such behavior.
> +
> +        interrupt-names:
> +          const: a2p
> +
> +      required:
> +        - arm,smc-id
> +
> +examples:
> +  - |
> +    firmware {
> +        scmi {
> +            compatible = "arm,scmi";
> +            mboxes = <&mhuB 0 0>,
> +                     <&mhuB 0 1>;
> +            mbox-names = "tx", "rx";
> +            shmem = <&cpu_scp_lpri0 &cpu_scp_lpri1>;
> +
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            scmi_devpd: protocol@11 {
> +                reg = <0x11>;
> +                #power-domain-cells = <1>;
> +            };
> +
> +            scmi_dvfs: protocol@13 {
> +                reg = <0x13>;
> +                #clock-cells = <1>;
> +
> +                mboxes = <&mhuB 1 0>,
> +                         <&mhuB 1 1>;
> +                mbox-names = "tx", "rx";
> +                shmem = <&cpu_scp_hpri0 &cpu_scp_hpri1>;
> +            };
> +
> +            scmi_clk: protocol@14 {
> +                reg = <0x14>;
> +                #clock-cells = <1>;
> +            };
> +
> +            scmi_sensors: protocol@15 {
> +                reg = <0x15>;
> +                #thermal-sensor-cells = <1>;
> +            };
> +
> +            scmi_reset: protocol@16 {
> +                reg = <0x16>;
> +                #reset-cells = <1>;
> +            };
> +
> +            scmi_voltage: protocol@17 {
> +                reg = <0x17>;
> +                regulators {
> +                    #address-cells = <1>;
> +                    #size-cells = <0>;
> +
> +                    regulator_devX: regulator@0 {
> +                        reg = <0x0>;
> +                        regulator-max-microvolt = <3300000>;
> +                    };
> +
> +                    regulator_devY: regulator@9 {
> +                        reg = <0x9>;
> +                        regulator-min-microvolt = <500000>;
> +                        regulator-max-microvolt = <4200000>;
> +                    };
> +                };
> +            };
> +        };
> +    };
> +
> +    soc {

You don't have to show every client connection. It's more to potentially 
fix when we add or improve schemas and there's probably already 
examples for them. I'd drop perhaps all but the mmio-sram which doesn't 
have other examples.

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
> +            cpu_scp_lpri0: scp-sram-section@0 {
> +                compatible = "arm,scmi-shmem";
> +                reg = <0x0 0x80>;
> +            };
> +
> +            cpu_scp_lpri1: scp-sram-section@80 {
> +                compatible = "arm,scmi-shmem";
> +                reg = <0x80 0x80>;
> +            };
> +
> +            cpu_scp_hpri0: scp-sram-section@100 {
> +                compatible = "arm,scmi-shmem";
> +                reg = <0x100 0x80>;
> +            };
> +
> +            cpu_scp_hpri2: scp-sram-section@180 {
> +                compatible = "arm,scmi-shmem";
> +                reg = <0x180 0x80>;
> +            };
> +        };
> +
> +        mhuB: mailbox@2b2f0000 {
> +            #mbox-cells = <2>;
> +            compatible = "arm,mhu-doorbell", "arm,primecell";
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
> +            clocks = <&scmi_clk 1>;
> +            power-domains = <&scmi_devpd 8>;
> +            resets = <&scmi_reset 0>, <&scmi_reset 1>;
> +        };
> +
> +        display@20930000 {
> +            compatible = "intel,keembay-display";
> +            reg = <0x0 0x20930000 0x0 0x3000>;
> +            reg-names = "lcd";
> +            interrupts = <0 33 4>;
> +            clocks = <&scmi_clk 0x83>,
> +                     <&scmi_clk 0x0>;
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
> +                thermal-sensors = <&scmi_sensors 3>;
> +
> +                trips {
> +                    mpu0_crit: mpu0_crit {
> +                        temperature = <125000>; /* milliCelsius */
> +                        hysteresis = <2000>; /* milliCelsius */
> +                        type = "critical";
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
> +            clocks = <&scmi_dvfs 0>;
> +        };
> +    };
> +
> +...
> -- 
> 2.25.1
