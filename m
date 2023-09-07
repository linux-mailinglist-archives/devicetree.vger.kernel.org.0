Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DF9DC79750E
	for <lists+devicetree@lfdr.de>; Thu,  7 Sep 2023 17:45:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230173AbjIGPpt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Sep 2023 11:45:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34438 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241242AbjIGPZS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Sep 2023 11:25:18 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED4B610E9
        for <devicetree@vger.kernel.org>; Thu,  7 Sep 2023 08:25:01 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id 5b1f17b1804b1-402c1407139so12488225e9.1
        for <devicetree@vger.kernel.org>; Thu, 07 Sep 2023 08:25:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694100290; x=1694705090; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3O3RNcMeBxjQQhA0dbRmngWyitShsXqfun7LC7NYjS8=;
        b=Mi4nVGC9n6qfgtewLRCeJb48aX31pqh9pWGFDGGLKmHzPSXkXVKnymY2aojY2yadAU
         JI3LrNHth8U7iLv63wR+S8lGICF+Y0jWPMiaSq+VeCTVMry7YmEGPRtWaUMb0gnaObdq
         hWL7ydKxGXp2CASBqAgMtF5FsocggVmlEyKPZLF1spkKAjWHUjKVoD31MhOPA0L2IFCp
         zDlome9QpLCGhdcpxsyPPKjNM6dJoUpDHx66OtvE7rB6ET2g60s6e8OAToqIoph7p7aY
         Qq05VKGrJS0TP18SZHl7dxvEwNW92qGGxs9xBAz5r4MiGrtpFCOMK5wvXCzq/lbbn9tl
         5uJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1694100290; x=1694705090;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3O3RNcMeBxjQQhA0dbRmngWyitShsXqfun7LC7NYjS8=;
        b=T3Pc+O0Y7jOW6Zr+9asK2FZZulWTwUTMAvmSroOE7gtEDfRAJmkbZN8YXzJqsmf6oe
         e/59ZjYmNRg7g1jlibrgikQ3OPcskAP+SLLtN3uwlhLhu8wtR9fDRvxSJu+iNGGLrufd
         qq4eSvFCrfitAMa5Le1MJfW7sC7gtJUrm93ROANYY1zAvfZosczV2AZToxUd5a3Hl7b0
         +XmKbgvWHuQMOL9/2jRPJdM5x/MGgSFh4AKsbP1dWqaEqQ+vjjlhd8lHRoyTanfdbA42
         mJKLhxJ5kS/QJPRPt8nM2yt/X2bOr6gq7hlkTQ98q/lUaz+BRgnJlsIYxbZLoFT/gJDp
         uQXA==
X-Gm-Message-State: AOJu0YzvhSN5GxPg5PpviRLJz/0Hfm4zKe4PRjBasSlFMbwwiLz8MonM
        L1Hw9L+Pp2sijfChT+3GJQ7wADSWfxf9UpCNRCM=
X-Google-Smtp-Source: AGHT+IHTRWxWv8Q4u0fzUOsy1juZlGxj/UwfMeS4tSxa+9HNW5R8xUt9SALZq24RvaBvGYkAQcp1Kg==
X-Received: by 2002:a17:906:9bed:b0:9a5:b95a:1179 with SMTP id de45-20020a1709069bed00b009a5b95a1179mr3482874ejc.77.1694066930742;
        Wed, 06 Sep 2023 23:08:50 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id n16-20020a1709061d1000b0097404f4a124sm9903735ejh.2.2023.09.06.23.08.49
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Sep 2023 23:08:50 -0700 (PDT)
Message-ID: <5eee2990-5fa6-d4c2-a877-a48afc916198@linaro.org>
Date:   Thu, 7 Sep 2023 08:08:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH 1/2] dt-bindings: display: Add st7735s driver
Content-Language: en-US
To:     Stefan x Nilsson <stefan.x.nilsson@axis.com>,
        David Lechner <david@lechnology.com>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@axis.com
References: <20230906-st7735s-v1-0-add92677c190@axis.com>
 <20230906-st7735s-v1-1-add92677c190@axis.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230906-st7735s-v1-1-add92677c190@axis.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2023 18:22, Stefan x Nilsson wrote:
> Add bindings for a driver for Sitronix st7735s display controller, as
> well as for a Winstar wf0096atyaa3dnn0 0.96" 80x160 TFT panel.

Commit msg and subject: if by "driver" you mean Linux driver, then drop
these references and focus on the hardware.

> 
> Signed-off-by: Stefan x Nilsson <stefan.x.nilsson@axis.com>
> ---
>  .../bindings/display/sitronix,st7735s.yaml         | 81 ++++++++++++++++++++++
>  MAINTAINERS                                        |  6 ++
>  2 files changed, 87 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/sitronix,st7735s.yaml b/Documentation/devicetree/bindings/display/sitronix,st7735s.yaml
> new file mode 100644
> index 000000000000..36234ec22fe2
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/sitronix,st7735s.yaml
> @@ -0,0 +1,81 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/sitronix,st7735s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Sitronix ST7735S Display Panels
> +
> +maintainers:
> +  - Stefan x Nilsson <stefan.x.nilsson@axis.com>
> +
> +description:
> +  This binding is for display panels using a Sitronix ST7735S
> +  controller in SPI mode.

Drop: "This binding is for". Describe the hardware instead.

> +
> +allOf:
> +  - $ref: panel/panel-common.yaml#
> +  - $ref: /schemas/spi/spi-peripheral-props.yaml#
> +
> +properties:
> +  compatible:
> +    oneOf:

You do not have multiple choices here, so why oneOf? Do you expect it to
grow very soon?

> +      - description:
> +          Winstar WF0096ATYAA3DNN0 0.96" 80x160 Color TFT
> +        items:
> +          - enum:
> +              - winstar,wf0096atyaa3dnn0
> +          - const: sitronix,st7735s
> +
> +  dc-gpios:
> +    maxItems: 1
> +    description: Display data/command selection (D/CX)
> +
> +  backlight: true
> +  reg: true
> +  spi-max-frequency: true
> +  reset-gpios: true
> +  rotation: true
> +
> +required:
> +  - compatible
> +  - reg
> +  - dc-gpios
> +
> +additionalProperties: true

This cannot be true. From where did you get such code as example?

> +
> +examples:
> +  - |
> +    #include <dt-bindings/gpio/gpio.h>
> +
> +    backlight: backlight {
> +            compatible = "gpio-backlight";
> +            gpios = <&gpio 44 GPIO_ACTIVE_HIGH>;
> +    };

Drop node, not related.

> +
> +    regdisplay: regulatordisplay {
> +            compatible = "regulator-fixed";
> +            regulator-name = "display";
> +            regulator-min-microvolt = <3300000>;
> +            regulator-max-microvolt = <3300000>;
> +            regulator-enable-ramp-delay = <100000>;
> +            enable-active-high;

Drop node, not related. Again: from where did you get such example?

> +    };
> +
> +    spi {
> +            #address-cells = <1>;
> +            #size-cells = <0>;
> +
> +            display@0 {
> +                    compatible = "winstar,wf0096atyaa3dnn0","sitronix,st7735s";

You need to fix formatting. Missing space after ,. Wrong indentation.

Use 4 spaces for example indentation.

> +                    reg = <0>;
> +                    spi-max-frequency = <12000000>;
> +                    dc-gpios = <&gpio 43 GPIO_ACTIVE_HIGH>;
> +                    reset-gpios = <&gpio 23 GPIO_ACTIVE_HIGH>;
> +                    backlight = <&backlight>;
> +                    power-supply = <&regdsiplay>;
> +                    rotation = <270>;
> +            };
> +    };
> +
> +...
> diff --git a/MAINTAINERS b/MAINTAINERS
> index 6308efa121e1..c00b2b9086f2 100644
> --- a/MAINTAINERS
> +++ b/MAINTAINERS
> @@ -6728,6 +6728,12 @@ T:	git git://anongit.freedesktop.org/drm/drm-misc
>  F:	Documentation/devicetree/bindings/display/sitronix,st7735r.yaml
>  F:	drivers/gpu/drm/tiny/st7735r.c
>  
> +DRM DRIVER FOR SITRONIX ST7735S PANELS
> +M:	Stefan x Nilsson <stefan.x.nilsson@axis.com>
> +S:	Maintained
> +T:	git git://anongit.freedesktop.org/drm/drm-misc

Do you have the push rights to this repo? If not, then don't add it.

Best regards,
Krzysztof

