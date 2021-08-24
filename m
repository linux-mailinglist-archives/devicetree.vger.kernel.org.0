Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C83193F5EC4
	for <lists+devicetree@lfdr.de>; Tue, 24 Aug 2021 15:14:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237421AbhHXNOu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 24 Aug 2021 09:14:50 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:33790 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236443AbhHXNOt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 24 Aug 2021 09:14:49 -0400
Received: by mail-ot1-f46.google.com with SMTP id 61-20020a9d0d430000b02903eabfc221a9so45964322oti.0
        for <devicetree@vger.kernel.org>; Tue, 24 Aug 2021 06:14:05 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Zr3BcHUyxibPN+ApMMdJs2vTxDa8LN9oiNR6W9SoGBg=;
        b=aw4U9qXq/MQdYdDmqI5tB1fquLzk7AfFulQsnGurfeZHzHBp7Wq6f+x1sfAXsFf8iS
         V3t9sC3+61v1nN0HF3TnnmxAU78gL2XUlFcLpVQVBUjsI21F82t1DFbd0rrQ2DdzdNbt
         5MDzJDH+o0pwvoLiQaa/7jeG4Ipc2G0IHkejppVFG9FIl9As7Kkx9xDeRQYdkh4E11FQ
         CfHn/Od7lk8hfymHfeJCPefJYwhHVyQNkrBvP1GB0IN+n7x17sWAyKrRokXV8blxSRl3
         Rfwk+jI7ejdEWde2hW3QHRQ8u3sscajBjsfQJmtlF/c30LcE627vo674TT9eAp8h9o0Q
         mBAQ==
X-Gm-Message-State: AOAM531G0ZK0fci5OSwXy+5Yj0OC9EtZ3OUcI0uJ0QNqadXTGbOHX8Wz
        Wb1BCrUjLIwYulEp7nhj2A==
X-Google-Smtp-Source: ABdhPJyLWOe2CKyxAb1poukDtW4ZoAyxGXUP7NKsV18xKcKsa7QoctCY3A8MEDEliv/l0MB3SFZfaw==
X-Received: by 2002:a9d:7742:: with SMTP id t2mr5226926otl.202.1629810843838;
        Tue, 24 Aug 2021 06:14:03 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 97sm4582185otv.26.2021.08.24.06.14.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 24 Aug 2021 06:14:03 -0700 (PDT)
Received: (nullmailer pid 137569 invoked by uid 1000);
        Tue, 24 Aug 2021 13:14:02 -0000
Date:   Tue, 24 Aug 2021 08:14:02 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        lee.jones@linaro.org, heiko@sntech.de,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [RFC] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <YSTwms6+17fw8bcN@robh.at.kernel.org>
References: <20210824041922.30586-1-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210824041922.30586-1-macroalpha82@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Aug 23, 2021 at 11:19:22PM -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> This is an RFC to convert the rk808 bindings into yaml format. Please
> note that currently there are a few errors that appear when performing
> a make dtbs_check. However, after looking at the errors it appears
> in most cases it occurs on device trees which are not following
> the current rk808.txt document today. For example for the rk808
> there are multiple errors regarding vcc13-supply, vcc14-supply, and
> vddio-supply; however these supplies are not listed in the current
> driver or cared for in any way.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../devicetree/bindings/mfd/rk808.txt         | 503 ------------------
>  .../bindings/mfd/rockchip,rk805.yaml          |  89 ++++
>  .../bindings/mfd/rockchip,rk808.yaml          | 255 +++++++++
>  .../bindings/mfd/rockchip,rk809.yaml          | 101 ++++
>  .../bindings/mfd/rockchip,rk817.yaml          | 365 +++++++++++++
>  .../bindings/mfd/rockchip,rk818.yaml          | 109 ++++
>  6 files changed, 919 insertions(+), 503 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/rk808.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
>  create mode 100644 Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml

Most of the comments below apply to all the files...


> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> new file mode 100644
> index 000000000000..347696f1709c
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> @@ -0,0 +1,89 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk805.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK808 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Chris Zhong <zyw@rock-chips.com>
> +  - Zhang Qing <zhangqing@rock-chips.com>
> +
> +description: |
> +  Rockchip RK805 series PMIC. This device consists of an i2c controlled MFD
> +  that includes multiple switchable regulators.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk805
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      The I2C slave address.

Don't need generic descriptions. Drop

> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The interrupt output of the controller.

Drop.

> +
> +  '#clock-cells':
> +    description: |
> +      From common clock binding; shall be set to 1 (multiple clock outputs).

Drop.

> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    description:
> +      From common clock binding to override the default output clock name.

maxItems: ?

(and minItems if it is a range, but I think this is all clocks or none)

> +
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  wakeup-source:
> +    type: boolean
> +    description:
> +      Device can be used as a wakeup source.
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  vcc5-supply:
> +    description:
> +      The input supply for LDO_REG1 and LDO_REG2.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for LDO_REG3.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(DCDC_REG[1-4]|LDO_REG[1-3])$":
> +        type: object
> +        $ref: ../regulator/regulator.yaml#

           unevaluatedProperties: false

> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"
> +
> +additionalProperties: false
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> new file mode 100644
> index 000000000000..6bec1d9e4640
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> @@ -0,0 +1,255 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk808.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK808 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Chris Zhong <zyw@rock-chips.com>
> +  - Zhang Qing <zhangqing@rock-chips.com>
> +
> +description: |
> +  Rockchip RK808 series PMIC. This device consists of an i2c controlled MFD
> +  that includes regulators, an RTC, and a power button.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk808
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      The I2C slave address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The interrupt output of the controller.
> +
> +  '#clock-cells':
> +    description: |
> +      From common clock binding; shall be set to 1 (multiple clock outputs).
> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    description:
> +      From common clock binding to override the default output clock name.
> +
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  wakeup-source:
> +    type: boolean
> +    description:
> +      Device can be used as a wakeup source.
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for LDO_REG1 and LDO_REG2.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for LDO_REG3 and LDO_REG7.
> +
> +  vcc8-supply:
> +    description:
> +      The input supply for SWITCH_REG1.
> +
> +  vcc9-supply:
> +    description:
> +      The input supply for LDO_REG4 and LDO_REG5.
> +
> +  vcc10-supply:
> +    description:
> +      The input supply for LDO_REG6.
> +
> +  vcc11-supply:
> +    description:
> +      The input supply for LDO_REG8.
> +
> +  vcc12-supply:
> +    description:
> +      The input supply for SWITCH_REG2.
> +
> +  dvs-gpios:
> +    description: |
> +      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
> +      2 host gpio's used for dvs. The format of the gpio specifier
> +      depends in the gpio controller. If DVS GPIOs aren't present,
> +      voltage changes will happen very quickly with no slow ramp time.

maxItems: 2

> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
> +        type: object
> +        $ref: ../regulator/regulator.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c0 {

i2c {

> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        rk808: pmic@1b {
> +            compatible = "rockchip,rk808";
> +            clock-output-names = "xin32k", "rk808-clkout2";
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pmic_int &dvs_1 &dvs_2>;
> +            dvs-gpios = <&gpio7 11 GPIO_ACTIVE_HIGH>,
> +                <&gpio7 15 GPIO_ACTIVE_HIGH>;
> +            reg = <0x1b>;
> +            rockchip,system-power-controller;
> +            wakeup-source;
> +            #clock-cells = <1>;
> +
> +            vcc8-supply = <&vcc_18>;
> +            vcc9-supply = <&vcc_io>;
> +            vcc10-supply = <&vcc_io>;
> +            vcc12-supply = <&vcc_io>;
> +            vddio-supply = <&vccio_pmu>;
> +
> +            regulators {
> +                vdd_cpu: DCDC_REG1 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <750000>;
> +                    regulator-max-microvolt = <1300000>;
> +                    regulator-name = "vdd_arm";
> +                };
> +
> +                vdd_gpu: DCDC_REG2 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <850000>;
> +                    regulator-max-microvolt = <1250000>;
> +                    regulator-name = "vdd_gpu";
> +                };
> +
> +                vcc_ddr: DCDC_REG3 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-name = "vcc_ddr";
> +                };
> +
> +                vcc_io: DCDC_REG4 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-name = "vcc_io";
> +                };
> +
> +                vccio_pmu: LDO_REG1 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-name = "vccio_pmu";
> +                };
> +
> +                vcc_tp: LDO_REG2 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-name = "vcc_tp";
> +                };
> +
> +                vdd_10: LDO_REG3 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <1000000>;
> +                    regulator-max-microvolt = <1000000>;
> +                    regulator-name = "vdd_10";
> +                };
> +
> +                vcc18_lcd: LDO_REG4 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <1800000>;
> +                    regulator-max-microvolt = <1800000>;
> +                    regulator-name = "vcc18_lcd";
> +                };
> +
> +                vccio_sd: LDO_REG5 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <1800000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-name = "vccio_sd";
> +                };
> +
> +                vdd10_lcd: LDO_REG6 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <1000000>;
> +                    regulator-max-microvolt = <1000000>;
> +                    regulator-name = "vdd10_lcd";
> +                };
> +
> +                vcc_18: LDO_REG7 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <1800000>;
> +                    regulator-max-microvolt = <1800000>;
> +                    regulator-name = "vcc_18";
> +                };
> +
> +                vcca_codec: LDO_REG8 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-name = "vcca_codec";
> +                };
> +
> +                vcc_wl: SWITCH_REG1 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-name = "vcc_wl";
> +                };
> +
> +                vcc_lcd: SWITCH_REG2 {
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +                    regulator-name = "vcc_lcd";
> +                };
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> new file mode 100644
> index 000000000000..6d509e863da3
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk809.yaml
> @@ -0,0 +1,101 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk809.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK817 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Chris Zhong <zyw@rock-chips.com>
> +  - Zhang Qing <zhangqing@rock-chips.com>
> +
> +description: |
> +  Rockchip RK809 series PMIC. This device consists of an i2c controlled MFD
> +  that includes regulators, an RTC, and power button.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk809
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      The I2C slave address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The interrupt output of the controller.
> +
> +  '#clock-cells':
> +    description: |
> +      From common clock binding; shall be set to 1 (multiple clock outputs).
> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    description:
> +      From common clock binding to override the default output clock name.
> +
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  wakeup-source:
> +    type: boolean
> +    description:
> +      Device can be used as a wakeup source.
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  vcc5-supply:
> +    description:
> +      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for LDO_REG7, LDO_REG8, and LDO_REG9.
> +
> +  vcc8-supply:
> +    description:
> +      The input supply for SWITCH_REG1.
> +
> +  vcc9-supply:
> +    description:
> +      The input supply for DCDC_REG5 and SWITCH_REG2.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(LDO_REG[1-9]|DCDC_REG[1-5]|SWITCH_REG[1-2])$":
> +        type: object
> +        $ref: ../regulator/regulator.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"
> +
> +additionalProperties: false
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> new file mode 100644
> index 000000000000..cbe6c2a9f254
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk817.yaml
> @@ -0,0 +1,365 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk817.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK817 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Chris Zhong <zyw@rock-chips.com>
> +  - Zhang Qing <zhangqing@rock-chips.com>
> +
> +description: |
> +  Rockchip RK817 series PMIC. This device consists of an i2c controlled MFD
> +  that includes regulators, an RTC, a power button, an audio codec, and a
> +  battery charger manager.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk817
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      The I2C slave address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The interrupt output of the controller.
> +
> +  '#clock-cells':
> +    description: |
> +      From common clock binding; shall be set to 1 (multiple clock outputs).
> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    description:
> +      From common clock binding to override the default output clock name.
> +
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  wakeup-source:
> +    type: boolean
> +    description:
> +      Device can be used as a wakeup source.
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  vcc5-supply:
> +    description:
> +      The input supply for LDO_REG1, LDO_REG2, and LDO_REG3.
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for LDO_REG4, LDO_REG5, and LDO_REG6.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for LDO_REG7, LDO_REG8, and LDO_REG9.
> +
> +  vcc8-supply:
> +    description:
> +      The input supply for BOOST.
> +
> +  vcc9-supply:
> +    description:
> +      The input supply for OTG_SWITCH.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(LDO_REG[1-9]|DCDC_REG[1-4]|BOOST|OTG_SWITCH)$":
> +        type: object
> +        $ref: ../regulator/regulator.yaml#
> +
> +  clocks:
> +    description:
> +      The input clock for the audio codec.
> +
> +  clock-names:
> +    description:
> +      The clock name for the codec clock.
> +    items:
> +      - const: mclk
> +
> +  '#sound-dai-cells':
> +    description:
> +      Needed for the interpretation of sound dais.
> +    const: 0
> +
> +  codec:
> +    description: |
> +      The child node for the codec to hold additional properties. If no
> +      additional properties are required for the codec, this node can be
> +      omitted.
> +    type: object
> +    properties:
> +      rockchip,mic-in-differential:
> +        type: boolean
> +        description:
> +          Describes if the microphone uses differential mode.
> +
> +  battery:

Is this the only PMIC with the battery monitoring? If not and the node 
is the same on others (or will be), you should make this a separate 
schema file and reference it.

> +    description: |
> +      The child node for the charger to hold additional properties. If a
> +      battery is not in use, this node can be omitted.
> +    type: object
> +    properties:
> +      monitored-battery:
> +        description: |
> +          A phandle to a monitored battery node that contains a valid
> +          value for:
> +          charge-full-design-microamp-hours,
> +          charge-term-current-microamp,
> +          constant-charge-current-max-microamp,
> +          constant-charge-voltage-max-microvolt,
> +          voltage-max-design-microvolt,
> +          voltage-min-design-microvolt,
> +          and a valid ocv-capacity table.
> +
> +      rockchip,resistor-sense-micro-ohms:
> +        description: |
> +          Value in microohms of the battery sense resistor. This value is
> +          used by the driver to set the correct divisor value to translate
> +          ADC readings into the proper units of measure.
> +        enum: [10000, 20000]
> +
> +      rockchip,sleep-enter-current-microamp:
> +        description: |
> +          Value in microamps of the sleep enter current for the charger.
> +          Value is used by the driver to calibrate the relax threshold.
> +
> +      rockchip,sleep-filter-current-microamp:
> +        description:
> +          Value in microamps of the sleep filter current for the charger.
> +          Value is used by the driver to derive the sleep sample current.
> +
> +    required:
> +      - monitored-battery
> +      - rockchip,resistor-sense-micro-ohms
> +      - rockchip,sleep-enter-current-microamp
> +      - rockchip,sleep-filter-current-microamp
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/clock/px30-cru.h>
> +    #include <dt-bindings/pinctrl/rockchip.h>
> +    #include <dt-bindings/interrupt-controller/irq.h>
> +    #include <dt-bindings/gpio/gpio.h>
> +    i2c0 {
> +        #address-cells = <1>;
> +        #size-cells = <0>;
> +
> +        rk817: pmic@20 {
> +            compatible = "rockchip,rk817";
> +            reg = <0x20>;
> +            interrupt-parent = <&gpio0>;
> +            interrupts = <RK_PB2 IRQ_TYPE_LEVEL_LOW>;
> +            clock-output-names = "rk808-clkout1", "xin32k";
> +            clock-names = "mclk";
> +            clocks = <&cru SCLK_I2S1_OUT>;
> +            pinctrl-names = "default";
> +            pinctrl-0 = <&pmic_int>, <&i2s1_2ch_mclk>;
> +            wakeup-source;
> +            #clock-cells = <1>;
> +            #sound-dai-cells = <0>;
> +
> +            vcc1-supply = <&vccsys>;
> +            vcc2-supply = <&vccsys>;
> +            vcc3-supply = <&vccsys>;
> +            vcc4-supply = <&vccsys>;
> +            vcc5-supply = <&vccsys>;
> +            vcc6-supply = <&vccsys>;
> +            vcc7-supply = <&vccsys>;
> +
> +            regulators {
> +                vdd_logic: DCDC_REG1 {
> +                    regulator-name = "vdd_logic";
> +                    regulator-min-microvolt = <950000>;
> +                    regulator-max-microvolt = <1150000>;
> +                    regulator-ramp-delay = <6001>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <950000>;
> +                    };
> +                };
> +
> +                vdd_arm: DCDC_REG2 {
> +                    regulator-name = "vdd_arm";
> +                    regulator-min-microvolt = <950000>;
> +                    regulator-max-microvolt = <1350000>;
> +                    regulator-ramp-delay = <6001>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <950000>;
> +                    };
> +                };
> +
> +                vcc_ddr: DCDC_REG3 {
> +                    regulator-name = "vcc_ddr";
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                    };
> +                };
> +
> +                vcc_3v3: DCDC_REG4 {
> +                    regulator-name = "vcc_3v3";
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +
> +                vcc_1v8: LDO_REG2 {
> +                    regulator-name = "vcc_1v8";
> +                    regulator-min-microvolt = <1800000>;
> +                    regulator-max-microvolt = <1800000>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <1800000>;
> +                    };
> +                };
> +
> +                vdd_1v0: LDO_REG3 {
> +                    regulator-name = "vdd_1v0";
> +                    regulator-min-microvolt = <1000000>;
> +                    regulator-max-microvolt = <1000000>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <1000000>;
> +                    };
> +                };
> +
> +                vcc3v3_pmu: LDO_REG4 {
> +                    regulator-name = "vcc3v3_pmu";
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +
> +                vccio_sd: LDO_REG5 {
> +                    regulator-name = "vccio_sd";
> +                    regulator-min-microvolt = <1800000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-always-on;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +
> +                vcc_sd: LDO_REG6 {
> +                    regulator-name = "vcc_sd";
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +                    regulator-boot-on;
> +
> +                    regulator-state-mem {
> +                        regulator-on-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +
> +                vcc_bl: LDO_REG7 {
> +                    regulator-name = "vcc_bl";
> +                    regulator-min-microvolt = <3300000>;
> +                    regulator-max-microvolt = <3300000>;
> +
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <3300000>;
> +                    };
> +                };
> +
> +                vcc_lcd: LDO_REG8 {
> +                    regulator-name = "vcc_lcd";
> +                    regulator-min-microvolt = <2800000>;
> +                    regulator-max-microvolt = <2800000>;
> +
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <2800000>;
> +                    };
> +                };
> +
> +                vcc_cam: LDO_REG9 {
> +                    regulator-name = "vcc_cam";
> +                    regulator-min-microvolt = <3000000>;
> +                    regulator-max-microvolt = <3000000>;
> +
> +                    regulator-state-mem {
> +                        regulator-off-in-suspend;
> +                        regulator-suspend-microvolt = <3000000>;
> +                    };
> +                };
> +            };
> +
> +            rk817_battery: battery {
> +                monitored-battery = <&battery_cell>;
> +                rockchip,resistor-sense-micro-ohms = <10000>;
> +                rockchip,sleep-enter-current-microamp = <300000>;
> +                rockchip,sleep-filter-current-microamp = <100000>;
> +            };
> +
> +            rk817_codec: codec {
> +                rockchip,mic-in-differential;
> +            };
> +        };
> +    };
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> new file mode 100644
> index 000000000000..8440353e5dbf
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk818.yaml
> @@ -0,0 +1,109 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk818.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK818 Power Management Integrated Circuit
> +
> +maintainers:
> +  - Chris Zhong <zyw@rock-chips.com>
> +  - Zhang Qing <zhangqing@rock-chips.com>
> +
> +description: |
> +  Rockchip RK818 series PMIC. This device consists of an i2c controlled MFD
> +  that includes regulators, an RTC, and a power button.
> +
> +properties:
> +  compatible:
> +    enum:
> +      - rockchip,rk818
> +
> +  reg:
> +    maxItems: 1
> +    description:
> +      The I2C slave address.
> +
> +  interrupts:
> +    maxItems: 1
> +    description:
> +      The interrupt output of the controller.
> +
> +  '#clock-cells':
> +    description: |
> +      From common clock binding; shall be set to 1 (multiple clock outputs).
> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    description:
> +      From common clock binding to override the default output clock name.
> +
> +  rockchip,system-power-controller:
> +    type: boolean
> +    description:
> +      Telling whether or not this PMIC is controlling the system power.
> +
> +  wakeup-source:
> +    type: boolean
> +    description:
> +      Device can be used as a wakeup source.
> +
> +  vcc1-supply:
> +    description:
> +      The input supply for DCDC_REG1.
> +
> +  vcc2-supply:
> +    description:
> +      The input supply for DCDC_REG2.
> +
> +  vcc3-supply:
> +    description:
> +      The input supply for DCDC_REG3.
> +
> +  vcc4-supply:
> +    description:
> +      The input supply for DCDC_REG4.
> +
> +  boost-supply:
> +    description:
> +      The input supply for DCDC_BOOST
> +
> +  vcc6-supply:
> +    description:
> +      The input supply for LDO_REG1 and LDO_REG2.
> +
> +  vcc7-supply:
> +    description:
> +      The input supply for LDO_REG3, LDO_REG5, and LDO_REG7.
> +
> +  vcc8-supply:
> +    description:
> +      The input supply for LDO_REG4, LDO_REG6, and LDO_REG8.
> +
> +  vcc9-supply:
> +    description:
> +      The input supply for LDO_REG9 and SWITCH_REG.
> +
> +  h_5v-supply:
> +    description:
> +      The input supply for HDMI_SWITCH.
> +
> +  usb-supply:
> +    description:
> +      The input supply for OTG_SWITCH.
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(DCDC_REG[1-4]|LDO_REG[1-9]|SWITCH_REG|HDMI_SWITCH|OTG_SWITCH)$":
> +        type: object
> +        $ref: ../regulator/regulator.yaml#
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"
> +
> +additionalProperties: false
> -- 
> 2.25.1
> 
> 
