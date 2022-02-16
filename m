Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D302D4B87D7
	for <lists+devicetree@lfdr.de>; Wed, 16 Feb 2022 13:39:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233336AbiBPMj3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Feb 2022 07:39:29 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:39938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231156AbiBPMj2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Feb 2022 07:39:28 -0500
Received: from foss.arm.com (foss.arm.com [217.140.110.172])
        by lindbergh.monkeyblade.net (Postfix) with ESMTP id D3730DB873
        for <devicetree@vger.kernel.org>; Wed, 16 Feb 2022 04:39:15 -0800 (PST)
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 9544DD6E;
        Wed, 16 Feb 2022 04:39:15 -0800 (PST)
Received: from [10.57.70.89] (unknown [10.57.70.89])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id CDC523F718;
        Wed, 16 Feb 2022 04:39:13 -0800 (PST)
Message-ID: <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
Date:   Wed, 16 Feb 2022 12:39:09 +0000
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; rv:91.0) Gecko/20100101
 Thunderbird/91.6.0
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Content-Language: en-GB
To:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org
Cc:     lee.jones@linaro.org, robh+dt@kernel.org, heiko@sntech.de,
        zyw@rock-chips.com, zhangqing@rock-chips.com,
        linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
From:   Robin Murphy <robin.murphy@arm.com>
In-Reply-To: <20220215211548.31940-1-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,NICE_REPLY_A,
        RCVD_IN_DNSWL_HI,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 2022-02-15 21:15, Chris Morgan wrote:
[...]
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> new file mode 100644
> index 000000000000..1b928b94fbfd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> @@ -0,0 +1,88 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/mfd/rockchip,rk805.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: RK805 Power Management Integrated Circuit
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
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    const: 1
> +
> +  clock-output-names:
> +    maxItems: 2

I think this should be 1, since RK805 only has a single CLK32K output - 
ditto for RK817.

[...]
> diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> new file mode 100644
> index 000000000000..f5908fa01a61
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> @@ -0,0 +1,257 @@
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
> +
> +  interrupts:
> +    maxItems: 1
> +
> +  '#clock-cells':
> +    description:
> +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> +    const: 1
> +
> +  clock-output-names:
> +    description:
> +      From common clock binding to override the default output clock name.

minItems should be consistent across RK808/818/819 - when two clocks 
exist, either it's legitimate to rename only the first one, or it isn't. 
There shouldn't be an arbitrary difference just because of what existing 
DTs happen to use.

> +    maxItems: 2
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
> +  vddio-supply:
> +    description:
> +      The input supply for digital IO.
> +
> +  dvs-gpios:
> +    description: |
> +      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
> +      2 host gpio's used for dvs. The format of the gpio specifier
> +      depends in the gpio controller. If DVS GPIOs aren't present,
> +      voltage changes will happen very quickly with no slow ramp time.
> +    maxItems: 2
> +
> +  regulators:
> +    type: object
> +    patternProperties:
> +      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
> +        type: object
> +        $ref: ../regulator/regulator.yaml#
> +    unevaluatedProperties: false
> +
> +required:
> +  - compatible
> +  - reg
> +  - interrupts
> +  - "#clock-cells"

Is this actually required (ditto elsewhere)? Technically it's only 
necessary if there are any clock consumers targeting this node, so 
arguably it should be the clock binding's responsibility to validate that.

It wouldn't make much sense for a dedicated clock controller to omit 
#clock-cells such that it couldn't have any consumers, but given that 
these things are primarily PMICs I think it's reasonable to allow a 
board not to care about the clocks at all if it doesn't use them. I know 
that the original binding claimed it was required, but if we're already 
relaxing that for RK805 here then we may as well relax it entirely.

Cheers,
Robin.
