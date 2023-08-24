Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B45CD786BC3
	for <lists+devicetree@lfdr.de>; Thu, 24 Aug 2023 11:28:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237278AbjHXJ1q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 24 Aug 2023 05:27:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43154 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240729AbjHXJ10 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 24 Aug 2023 05:27:26 -0400
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A3F8719A3
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 02:27:22 -0700 (PDT)
Received: by mail-lf1-x12f.google.com with SMTP id 2adb3069b0e04-4fe15bfb1adso9927703e87.0
        for <devicetree@vger.kernel.org>; Thu, 24 Aug 2023 02:27:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692869241; x=1693474041;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=6zPKzgSts8Q/FDkxiHJwwyN2uApuU5now1q6IOWDgHw=;
        b=wtAtorKCE6qSqEMpx/IVho0A+zLc2LjVI8bPp+aOUVWNRGnEYzmuiOwMf3I161jd8D
         /7qw59rojPVLbPwqz5Em3IhABcUPPiNZ8NyDCwKqE48O/x6t9zaNnR1xhIO9atTucrDh
         KB/XzB6uXxtniiNfCuRhPBfy/sVixshuc5MzE1IskLKiCypMd7XUuGg9VDSAqS13bkgg
         s9cY6iAV5zQdLy5QRjmr//eyUTxd9OnF+AENihBTxiM08a/uAkHRj/zUNa+iIeGF12wj
         4CJK5upo2GCu/qWJArWGZorDNgl3iLq1iHapMx8DdUW6FiMnTM6cZ7t3PT5rNz1Tk866
         EAAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692869241; x=1693474041;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=6zPKzgSts8Q/FDkxiHJwwyN2uApuU5now1q6IOWDgHw=;
        b=fCOGU/QsBFtuYGp8rsRYInv7/7kn/zagwYwJduuWa9njyqqqCzDM9yPoXhPjZ7PvJQ
         O2tdlNQcTL7m4cBpY0hppTsRgerLwoZ2R4862gEK0hd0TY7Mu1ClauH5NBn5rXdNLUkj
         q76MEHHUJDS25D2ICZgZMEFb/stp2vQ3dfdPspIuwj8TjzKT6UM1qjzjSA7Q0RuRhNr2
         zUemUujl5yCKJShHuPle8a7cXSqHI8JHJX68fPN8WyYRFJkAS4SGj4xu4mfTclYX7IKp
         XbU/X877CMn7DZ9t+27qip5d4sIrdLDGmL3n72QL6jqWeFwpYSADhY7QxOXwghus50e7
         lX6A==
X-Gm-Message-State: AOJu0YwxOZWNWZZInRL9ZEJRm1oeFQljQaQHGY9dEMfRLN3s33GrjEGG
        lbVXBt2I9h7qIririmMXx71qQkrThu5XXkCTsdhVbw==
X-Google-Smtp-Source: AGHT+IGyQSRppeHoZcGDkVVB4Dg2v0mdSsMwHodWyyPfVktwb2GR3M4IIKB/jlE5Y8cxDpxSY2H4r6LpW0WzSY7hy/4=
X-Received: by 2002:a05:6512:39c1:b0:4ff:8b28:7b22 with SMTP id
 k1-20020a05651239c100b004ff8b287b22mr10749853lfu.68.1692869240834; Thu, 24
 Aug 2023 02:27:20 -0700 (PDT)
MIME-Version: 1.0
References: <20230818153446.1076027-1-shenwei.wang@nxp.com>
In-Reply-To: <20230818153446.1076027-1-shenwei.wang@nxp.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Thu, 24 Aug 2023 11:26:42 +0200
Message-ID: <CAPDyKFqsn6kVjPFUdVyRxNDiOaHO9hq=9c+6eAK4N-v-LVWUPw@mail.gmail.com>
Subject: Re: [PATCH 1/2] dt-bindings: power: Add regulator-pd yaml file
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, imx@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-imx@nxp.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 18 Aug 2023 at 17:35, Shenwei Wang <shenwei.wang@nxp.com> wrote:
>
> Documenting the regulator power domain properties and usage examples.

As Rob and Krzysztof already pointed out, I agree that this binding
looks a bit questionable.

Rather than adding a new DT binding, why can't we just use the
existing way of describing a platform specific power-domain provider?
This still looks platform specific to me.

Kind regards
Uffe

>
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> ---
>  .../bindings/power/regulator-pd.yaml          | 71 +++++++++++++++++++
>  1 file changed, 71 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/power/regulator-pd.yaml
>
> diff --git a/Documentation/devicetree/bindings/power/regulator-pd.yaml b/Documentation/devicetree/bindings/power/regulator-pd.yaml
> new file mode 100644
> index 000000000000..181d2fa83f8a
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/power/regulator-pd.yaml
> @@ -0,0 +1,71 @@
> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/power/regulator-pd.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Regulator Power Domain
> +
> +maintainers:
> +  - Shenwei Wang <shenwei.wang@nxp.com>
> +
> +description: |
> +  This describes a power domain which manages a group of regulators.
> +
> +allOf:
> +  - $ref: power-domain.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - const: regulator-power-domain
> +
> +  '#power-domain-cells':
> +    const: 1
> +
> +  regulator-number:
> +    minimum: 1
> +    maximum: 100
> +    description: The count of regulator to be managed by this power domain
> +
> +patternProperties:
> +  "regulator-[0-99]-supply$":
> +    description: The regulator supply phandle to be managed by this power domain
> +
> +required:
> +  - compatible
> +  - '#power-domain-cells'
> +  - regulator-number
> +
> +additionalProperties: false
> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    reg1: regulator-1 {
> +       compatible = "regulator-fixed";
> +       regulator-name = "REG1";
> +       regulator-min-microvolt = <3000000>;
> +       regulator-max-microvolt = <3000000>;
> +       gpio = <&lsio_gpio4 19 GPIO_ACTIVE_HIGH>;
> +       enable-active-high;
> +    };
> +
> +    reg2: regulator-2 {
> +       compatible = "regulator-fixed";
> +       regulator-name = "REG2";
> +       regulator-min-microvolt = <3000000>;
> +       regulator-max-microvolt = <3000000>;
> +       gpio = <&lsio_gpio4 20 GPIO_ACTIVE_HIGH>;
> +       enable-active-high;
> +    };
> +
> +    power-controller {
> +        compatible = "regulator-power-domain";
> +        #power-domain-cells = <1>;
> +
> +        regulator-number = <2>;
> +        regulator-0-supply = <&reg1>;
> +        regulator-1-supply = <&reg2>;
> +    };
> --
> 2.34.1
>
