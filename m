Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ADCCB4C35E8
	for <lists+devicetree@lfdr.de>; Thu, 24 Feb 2022 20:31:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230453AbiBXTar (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Feb 2022 14:30:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232909AbiBXTaq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Feb 2022 14:30:46 -0500
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com [209.85.167.174])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C9E121DF1E
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:30:16 -0800 (PST)
Received: by mail-oi1-f174.google.com with SMTP id j2so4426792oie.7
        for <devicetree@vger.kernel.org>; Thu, 24 Feb 2022 11:30:16 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ekpcNnh0CQkIhdkZOZ4oJo4aa5FJvQxiGzn0YCkw9Yo=;
        b=rCab1gLBq/DgkHcXrvUPphKr/NodlZrTdCwcK7Dt8e5Y0KENUtJby4BnMZBAAhqS+V
         OCa30vPO1DGdYIWd/ivSkBrjHPhehtVcGY132j6QlVZZo1GA+H8Oc2T0kkUhtULQCOZ4
         w7KIPtjSVfBWGW+jE37WCAJ4Q89HCpMjbbs8SIxuxzMdOz1Gsim+GPeVGUC5VZxha894
         veiqBXwQ1pQfDFZuJtcruwoGCwwpE/taWgml2nImFZxjjjgnkwadWz0CLpqAY2/ZC67Y
         a6vN1gyxyzix6iVVIXGirEMhbBJWVUOTT2G9mNATNDKrmw7KYirITZbpdIo9SKh9BCW/
         W+ug==
X-Gm-Message-State: AOAM533GPR6VRzf3CZzRtDUFYIr0v7WIJPvVmngd96dVX3XnIWPYRbjw
        2a4fEX9F6WocZ9HNF+RelA==
X-Google-Smtp-Source: ABdhPJw2tKmfA1xpJykLBPLMI+cydZGFmsj/OEnHxYqqwbFQ40uAcC+43LxErKAda94gyqNLi10HzA==
X-Received: by 2002:a05:6870:5401:b0:ce:c0c9:5fa with SMTP id d1-20020a056870540100b000cec0c905famr6971254oan.76.1645731015422;
        Thu, 24 Feb 2022 11:30:15 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id q14-20020a4a330e000000b002e89ed90006sm84172ooq.44.2022.02.24.11.30.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 24 Feb 2022 11:30:14 -0800 (PST)
Received: (nullmailer pid 3448733 invoked by uid 1000);
        Thu, 24 Feb 2022 19:30:13 -0000
Date:   Thu, 24 Feb 2022 13:30:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Robin Murphy <robin.murphy@arm.com>
Cc:     Chris Morgan <macroalpha82@gmail.com>, devicetree@vger.kernel.org,
        lee.jones@linaro.org, heiko@sntech.de, zyw@rock-chips.com,
        zhangqing@rock-chips.com, linux-rockchip@lists.infradead.org,
        Chris Morgan <macromorgan@hotmail.com>
Subject: Re: [PATCH v3] dt-bindings: mfd: rk808: Convert bindings to yaml
Message-ID: <YhfcxaaQgO7eDOXH@robh.at.kernel.org>
References: <20220215211548.31940-1-macroalpha82@gmail.com>
 <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9142ff41-4e95-3d52-bbe3-4f638b7d0fb2@arm.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Feb 16, 2022 at 12:39:09PM +0000, Robin Murphy wrote:
> On 2022-02-15 21:15, Chris Morgan wrote:
> [...]
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > new file mode 100644
> > index 000000000000..1b928b94fbfd
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk805.yaml
> > @@ -0,0 +1,88 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/rockchip,rk805.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RK805 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK805 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes multiple switchable regulators.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk805
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    maxItems: 2
> 
> I think this should be 1, since RK805 only has a single CLK32K output -
> ditto for RK817.
> 
> [...]
> > diff --git a/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > new file mode 100644
> > index 000000000000..f5908fa01a61
> > --- /dev/null
> > +++ b/Documentation/devicetree/bindings/mfd/rockchip,rk808.yaml
> > @@ -0,0 +1,257 @@
> > +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> > +%YAML 1.2
> > +---
> > +$id: http://devicetree.org/schemas/mfd/rockchip,rk808.yaml#
> > +$schema: http://devicetree.org/meta-schemas/core.yaml#
> > +
> > +title: RK808 Power Management Integrated Circuit
> > +
> > +maintainers:
> > +  - Chris Zhong <zyw@rock-chips.com>
> > +  - Zhang Qing <zhangqing@rock-chips.com>
> > +
> > +description: |
> > +  Rockchip RK808 series PMIC. This device consists of an i2c controlled MFD
> > +  that includes regulators, an RTC, and a power button.
> > +
> > +properties:
> > +  compatible:
> > +    enum:
> > +      - rockchip,rk808
> > +
> > +  reg:
> > +    maxItems: 1
> > +
> > +  interrupts:
> > +    maxItems: 1
> > +
> > +  '#clock-cells':
> > +    description:
> > +      See <dt-bindings/clock/rockchip,rk808.h> for clock IDs.
> > +    const: 1
> > +
> > +  clock-output-names:
> > +    description:
> > +      From common clock binding to override the default output clock name.
> 
> minItems should be consistent across RK808/818/819 - when two clocks exist,
> either it's legitimate to rename only the first one, or it isn't. There
> shouldn't be an arbitrary difference just because of what existing DTs
> happen to use.
> 
> > +    maxItems: 2
> > +
> > +  rockchip,system-power-controller:
> > +    type: boolean
> > +    description:
> > +      Telling whether or not this PMIC is controlling the system power.
> > +
> > +  wakeup-source:
> > +    type: boolean
> > +    description:
> > +      Device can be used as a wakeup source.
> > +
> > +  vcc1-supply:
> > +    description:
> > +      The input supply for DCDC_REG1.
> > +
> > +  vcc2-supply:
> > +    description:
> > +      The input supply for DCDC_REG2.
> > +
> > +  vcc3-supply:
> > +    description:
> > +      The input supply for DCDC_REG3.
> > +
> > +  vcc4-supply:
> > +    description:
> > +      The input supply for DCDC_REG4.
> > +
> > +  vcc6-supply:
> > +    description:
> > +      The input supply for LDO_REG1 and LDO_REG2.
> > +
> > +  vcc7-supply:
> > +    description:
> > +      The input supply for LDO_REG3 and LDO_REG7.
> > +
> > +  vcc8-supply:
> > +    description:
> > +      The input supply for SWITCH_REG1.
> > +
> > +  vcc9-supply:
> > +    description:
> > +      The input supply for LDO_REG4 and LDO_REG5.
> > +
> > +  vcc10-supply:
> > +    description:
> > +      The input supply for LDO_REG6.
> > +
> > +  vcc11-supply:
> > +    description:
> > +      The input supply for LDO_REG8.
> > +
> > +  vcc12-supply:
> > +    description:
> > +      The input supply for SWITCH_REG2.
> > +
> > +  vddio-supply:
> > +    description:
> > +      The input supply for digital IO.
> > +
> > +  dvs-gpios:
> > +    description: |
> > +      buck1/2 can be controlled by gpio dvs, this is GPIO specifiers for
> > +      2 host gpio's used for dvs. The format of the gpio specifier
> > +      depends in the gpio controller. If DVS GPIOs aren't present,
> > +      voltage changes will happen very quickly with no slow ramp time.
> > +    maxItems: 2
> > +
> > +  regulators:
> > +    type: object
> > +    patternProperties:
> > +      "^(DCDC_REG[1-4]|LDO_REG[1-8]|SWITCH_REG[1-2])$":
> > +        type: object
> > +        $ref: ../regulator/regulator.yaml#
> > +    unevaluatedProperties: false
> > +
> > +required:
> > +  - compatible
> > +  - reg
> > +  - interrupts
> > +  - "#clock-cells"
> 
> Is this actually required (ditto elsewhere)? Technically it's only necessary
> if there are any clock consumers targeting this node, so arguably it should
> be the clock binding's responsibility to validate that.
> 
> It wouldn't make much sense for a dedicated clock controller to omit
> #clock-cells such that it couldn't have any consumers, but given that these
> things are primarily PMICs I think it's reasonable to allow a board not to
> care about the clocks at all if it doesn't use them. I know that the
> original binding claimed it was required, but if we're already relaxing that
> for RK805 here then we may as well relax it entirely.

Fair enough. However, if the consumer could be in an overlay, then I 
think we want it to be required and not make the overlay add the 
property. Properties just appearing within nodes at runtime is likely 
not well supported in OSs.

Rob
