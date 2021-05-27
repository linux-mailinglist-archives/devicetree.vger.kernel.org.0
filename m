Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5594E3927BC
	for <lists+devicetree@lfdr.de>; Thu, 27 May 2021 08:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229614AbhE0Gjp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 May 2021 02:39:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53248 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229603AbhE0Gjp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 May 2021 02:39:45 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 225B0C061574
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 23:38:12 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id k14so6285663eji.2
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 23:38:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=af8gbcbqPSv4Z1AH73xCBjA2tBI+hKIw+ObHborFXBE=;
        b=QwKxtDoHLiv0D6L09Z1hhDRxGNU0R8ZK9Ec83REowqeWOtafnszTKq5sZNYCW2SB0f
         MFUIhLuy01ekR6elQKiQqqayE33ObUA3a12ZVFp97vdgC0Chkmm/6PnJUj5qY3ODt1I7
         dd2o4iyRfpFS5I7+Go2mLM/3FDsXQLp+qqz8bLRz9+5S4q/0ktHVyZr2PU7WQ8buPQHd
         cT7hrsFwd2Sldq1YcrKjcG8lDV4Z/C7F2qViXiwxQqys7k489iTEsJ22csSGQ6pBzXaN
         Gq2Uj4ScC9bEQR/2nqFkKQiaFgdcM6+bOZyrgGg/ZZ6a8EEJ53o1JruShuXdRhduoqZU
         lmNg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=af8gbcbqPSv4Z1AH73xCBjA2tBI+hKIw+ObHborFXBE=;
        b=O4bwrIeViuXG0IMTUUtKeH+mFAYtfQW1QNRbA9lMARr+p0FlDVDkbiTDc5n70FdJwn
         6uKG8wTPpsfzCF21TTfKeM1dIgk1aaOF0InKggvJfW53l4v4irU7qGdim9dDRrRn3b8j
         J/W7Im7r6ZxjqTnIoUrTHiD2UocG0shC2+R1mlhXQsRkfgIpD+aGzRJms5KEGC8pLFcZ
         WyRoE0qEoqTO/W4UdZwnU40uROH5gZMK2XksJru8QDBPGA/z6U2nEjC0UPBvGsdfFg0/
         zRMJD4seJNL1bjs8iXS/8slhA6C9WI4Nl1U4tR28Y83Q3S/gtKBRNGEdK6DGuoliPCRf
         vf7g==
X-Gm-Message-State: AOAM531+T8P01XqJyngSgKyRG5gENRyh8bYICG/e5l+LkiF22m7kPA8D
        9IbZbAYv7P++nTjDxr+NX9Dx5FvyaT0wu6lbIT/v1g==
X-Google-Smtp-Source: ABdhPJyN4QpwVcXpYIa/eWBzwlhBgUwXVlLs41jpYJ68JIrjdbi9o+xehEtQuX7Z2eLwwppLRqMFacVfKEBUZj5bo9s=
X-Received: by 2002:a17:906:6d17:: with SMTP id m23mr2231345ejr.73.1622097490624;
 Wed, 26 May 2021 23:38:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210526182807.548118-1-sudeep.holla@arm.com> <20210526182807.548118-9-sudeep.holla@arm.com>
In-Reply-To: <20210526182807.548118-9-sudeep.holla@arm.com>
From:   Etienne Carriere <etienne.carriere@linaro.org>
Date:   Thu, 27 May 2021 08:37:58 +0200
Message-ID: <CAN5uoS_xdGRMki4jTM2tz5nGqjn8BmA5r0egWnngK=L94Y6uxQ@mail.gmail.com>
Subject: Re: [PATCH 8/8] dt-bindings: firmware: arm,scmi: Convert to json schema
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Jim Quinlan <jim2101024@gmail.com>,
        Peter Hilber <peter.hilber@opensynergy.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hello Sudeep,

On Wed, 26 May 2021 at 20:28, Sudeep Holla <sudeep.holla@arm.com> wrote:
>
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
>  .../devicetree/bindings/arm/arm,scmi.txt      | 224 ---------------
>  .../bindings/firmware/arm,scmi.yaml           | 270 ++++++++++++++++++
>  2 files changed, 270 insertions(+), 224 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
>
> Hi,
>
> I have converted all the bindings except the below regulator part of the
> binding. This needs to be addressed before merging ofcourse. Just posting
> the remaining changes to get feedback and also ask suggestion for the below:
>
>         scmi_voltage: protocol@17 {
>           reg = <0x17>;
>           regulators {
>             regulator_devX: regulator@0 {
>               reg = <0x0>;
>               regulator-max-microvolt = <3300000>;
>             };
>
>             regulator_devY: regulator@9 {
>               reg = <0x9>;
>               regulator-min-microvolt = <500000>;
>               regulator-max-microvolt = <4200000>;
>             };
>           };
>         };
>
> I will reply with things I have tried separately to avoid confusion with this
> the patch here.

Few minor typos, but LGTM for this part, aside a comment on SCMI
version reference.

Both old and new descriptions refer to SCMI v1.0 (DEN0056A) in both
description text and URL reference.
Not mentioning the version would age better. From the implementation,
versions are already well managed at discovery and enumeration so we
don't expect regressions due to spec version.

At:
  -  the SCMI as described in ARM document number ARM DEN 0056A ("ARM
System Control
  +  the SCMI as described in ARM document number ARM DEN 0056 ("ARM
System Control
and at:
  -  [0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
  +  [0] https://developer.arm.com/documentation/den0056/latest

Regards,
Etienne

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
> -         exactly one or two mailboxes, one for transmitting messages("tx")
> -         and another optional for receiving the notifications("rx") if
> -         supported.
> -- shmem : List of phandle pointing to the shared memory(SHM) area as per
> -         generic mailbox client binding.
> -- #address-cells : should be '1' if the device has sub-nodes, maps to
> -         protocol identifier for a given sub-node.
> -- #size-cells : should be '0' as 'reg' property doesn't have any size
> -         associated with it.
> -- arm,smc-id : SMC id required when using smc or hvc transports
> -
> -Optional properties:
> -
> -- mbox-names: shall be "tx" or "rx" depending on mboxes entries.
> -
> -- interrupts : when using smc or hvc transports, this optional
> -        property indicates that msg completion by the platform is indicated
> -        by an interrupt rather than by the return of the smc call. This
> -        should not be used except when the platform requires such behavior.
> -
> -- interrupt-names : if "interrupts" is present, interrupt-names must also
> -        be present and have the value "a2p".
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
> -                        domain ID value used by SCMI commands.
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
> -                        thermal device tree bindings[3].
> -
> -                        Valid cell values are raw identifiers (Sensor ID)
> -                        as used by the firmware. Refer to  platform details
> -                        for your implementation for the IDs to use.
> -
> -Reset signal bindings for the reset domains based on SCMI Message Protocol
> -------------------------------------------------------------
> -
> -This binding for the SCMI reset domain providers uses the generic reset
> -signal binding[5].
> -
> -Required properties:
> - - #reset-cells : Should be 1. Contains the reset domain ID value used
> -                 by SCMI commands.
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
> -       compatible = "mmio-sram";
> -       reg = <0x0 0x50000000 0x0 0x10000>;
> -
> -       #address-cells = <1>;
> -       #size-cells = <1>;
> -       ranges = <0 0x0 0x50000000 0x10000>;
> -
> -       cpu_scp_lpri: scp-shmem@0 {
> -               compatible = "arm,scmi-shmem";
> -               reg = <0x0 0x200>;
> -       };
> -
> -       cpu_scp_hpri: scp-shmem@200 {
> -               compatible = "arm,scmi-shmem";
> -               reg = <0x200 0x200>;
> -       };
> -};
> -
> -mailbox@40000000 {
> -       ....
> -       #mbox-cells = <1>;
> -       reg = <0x0 0x40000000 0x0 0x10000>;
> -};
> -
> -firmware {
> -
> -       ...
> -
> -       scmi {
> -               compatible = "arm,scmi";
> -               mboxes = <&mailbox 0 &mailbox 1>;
> -               mbox-names = "tx", "rx";
> -               shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> -               #address-cells = <1>;
> -               #size-cells = <0>;
> -
> -               scmi_devpd: protocol@11 {
> -                       reg = <0x11>;
> -                       #power-domain-cells = <1>;
> -               };
> -
> -               scmi_dvfs: protocol@13 {
> -                       reg = <0x13>;
> -                       #clock-cells = <1>;
> -               };
> -
> -               scmi_clk: protocol@14 {
> -                       reg = <0x14>;
> -                       #clock-cells = <1>;
> -               };
> -
> -               scmi_sensors0: protocol@15 {
> -                       reg = <0x15>;
> -                       #thermal-sensor-cells = <1>;
> -               };
> -
> -               scmi_reset: protocol@16 {
> -                       reg = <0x16>;
> -                       #reset-cells = <1>;
> -               };
> -
> -               scmi_voltage: protocol@17 {
> -                       reg = <0x17>;
> -
> -                       regulators {
> -                               regulator_devX: regulator@0 {
> -                                       reg = <0x0>;
> -                                       regulator-max-microvolt = <3300000>;
> -                               };
> -
> -                               regulator_devY: regulator@9 {
> -                                       reg = <0x9>;
> -                                       regulator-min-microvolt = <500000>;
> -                                       regulator-max-microvolt = <4200000>;
> -                               };
> -
> -                               ...
> -                       };
> -               };
> -       };
> -};
> -
> -cpu@0 {
> -       ...
> -       reg = <0 0>;
> -       clocks = <&scmi_dvfs 0>;
> -};
> -
> -hdlcd@7ff60000 {
> -       ...
> -       reg = <0 0x7ff60000 0 0x1000>;
> -       clocks = <&scmi_clk 4>;
> -       power-domains = <&scmi_devpd 1>;
> -       resets = <&scmi_reset 10>;
> -};
> -
> -thermal-zones {
> -       soc_thermal {
> -               polling-delay-passive = <100>;
> -               polling-delay = <1000>;
> -                                       /* sensor ID */
> -               thermal-sensors = <&scmi_sensors0 3>;
> -               ...
> -       };
> -};
> diff --git a/Documentation/devicetree/bindings/firmware/arm,scmi.yaml b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> new file mode 100644
> index 000000000000..36072585fc45
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> @@ -0,0 +1,270 @@
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
> +  the SCMI as described in ARM document number ARM DEN 0056A ("ARM System Control
> +  and Management Interface Platform Design Document")[0] provide for OSPM in
> +  the device tree.
> +
> +  [0] http://infocenter.arm.com/help/topic/com.arm.doc.den0056a/index.html
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
> +      The address cells maps to protocol identifier for a given sub-node.

s/maps/map/

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
> +
> +patternProperties:
> +  '^protocol@[0-9a-f]+$':
> +    type: object
> +    description: |
> +      Each sub-node represents a protocol supported. If the platform
> +      supports dedicated communication channel for a particular protocol,

s/supports a dedicated/

> +      then corresponding transport properties must be present.
> +
> +    properties:
> +      reg:
> +        maxItems: 1
> +
> +      '#clock-cells':
> +        const: 1
> +
> +      '#reset-cells':
> +        const: 1
> +
> +      '#power-domain-cells':
> +        const: 1
> +
> +      '#thermal-sensor-cells':
> +        const: 1
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
> +  - if:
> +      properties:
> +        compatible:
> +          contains:
> +            const: arm,scmi-smc
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
> +      scmi {
> +        compatible = "arm,scmi";
> +        mboxes = <&mhuB 0 0>,
> +                 <&mhuB 0 1>;
> +        mbox-names = "tx", "rx";
> +        shmem = <&cpu_scp_lpri &cpu_scp_hpri>;
> +
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        scmi_devpd: protocol@11 {
> +          reg = <0x11>;
> +          #power-domain-cells = <1>;
> +        };
> +
> +        scmi_dvfs: protocol@13 {
> +          reg = <0x13>;
> +          #clock-cells = <1>;
> +        };
> +
> +        scmi_clk: protocol@14 {
> +          reg = <0x14>;
> +          #clock-cells = <1>;
> +        };
> +
> +        scmi_sensors: protocol@15 {
> +          reg = <0x15>;
> +          #thermal-sensor-cells = <1>;
> +        };
> +
> +        scmi_reset: protocol@16 {
> +          reg = <0x16>;
> +          #reset-cells = <1>;
> +        };
> +
> +        scmi_voltage: protocol@17 {
> +          reg = <0x17>;
> +        };
> +      };
> +    };
> +
> +    soc {
> +      #address-cells = <2>;
> +      #size-cells = <2>;
> +
> +      sram@50000000 {
> +        compatible = "mmio-sram";
> +        reg = <0x0 0x50000000 0x0 0x10000>;
> +
> +        #address-cells = <1>;
> +        #size-cells = <1>;
> +        ranges = <0 0x0 0x50000000 0x10000>;
> +
> +        cpu_scp_lpri: scp-sram-section@0 {
> +          compatible = "arm,scmi-shmem";
> +          reg = <0x0 0x200>;
> +        };
> +
> +        cpu_scp_hpri: scp-sram-section@200 {
> +          compatible = "arm,scmi-shmem";
> +          reg = <0x200 0x200>;
> +        };
> +      };
> +
> +      mhuB: mailbox@2b2f0000 {
> +        #mbox-cells = <2>;
> +        compatible = "arm,mhu-doorbell", "arm,primecell";
> +        reg = <0 0x2b2f0000 0 0x1000>;
> +        interrupts = <0 36 4>, /* LP-NonSecure */
> +                     <0 35 4>, /* HP-NonSecure */
> +                     <0 37 4>; /* Secure */
> +        clocks = <&clock 0 2 1>;
> +        clock-names = "apb_pclk";
> +      };
> +
> +      gpu@ffe40000 {
> +        compatible = "amlogic,meson-g12a-mali", "arm,mali-bifrost";
> +        reg = <0x0 0xffe40000 0x0 0x10000>;
> +        interrupts = <0 160 4>, <0 161 4>, <0 162 4>;
> +        interrupt-names = "job", "mmu", "gpu";
> +        clocks = <&scmi_clk 1>;
> +        power-domains = <&scmi_devpd 8>;
> +        resets = <&scmi_reset 0>, <&scmi_reset 1>;
> +      };
> +
> +      display@20930000 {
> +        compatible = "intel,keembay-display";
> +        reg = <0x0 0x20930000 0x0 0x3000>;
> +        reg-names = "lcd";
> +        interrupts = <0 33 4>;
> +        clocks = <&scmi_clk 0x83>,
> +                 <&scmi_clk 0x0>;
> +        clock-names = "clk_lcd", "clk_pll0";
> +
> +        port {
> +            disp_out: endpoint {
> +                remote-endpoint = <&dsi_in>;
> +            };
> +        };
> +      };
> +
> +      thermal-zones {
> +        soc-thermal {
> +          polling-delay-passive = <100>;
> +          polling-delay = <1000>;
> +          thermal-sensors = <&scmi_sensors0 3>;
> +
> +          trips {
> +            mpu0_crit: mpu0_crit {
> +              temperature = <125000>; /* milliCelsius */
> +              hysteresis = <2000>; /* milliCelsius */
> +              type = "critical";
> +            };
> +          };
> +        };
> +      };
> +    };
> +
> +    cpus {
> +      #size-cells = <0>;
> +      #address-cells = <2>;
> +
> +      cpu@0 {
> +        device_type = "cpu";
> +        compatible = "arm,cortex-a57";
> +        reg = <0x0 0x0>;
> +        enable-method = "psci";
> +        clocks = <&scmi_dvfs 0>;
> +      };
> +    };
> +
> +...
> --
> 2.25.1
>
