Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A32D5571B14
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 15:23:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232284AbiGLNXn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 09:23:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37304 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229463AbiGLNXk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 09:23:40 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3CFDC116C
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 06:23:38 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id r9so9839583ljp.9
        for <devicetree@vger.kernel.org>; Tue, 12 Jul 2022 06:23:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7NpE50xIJlThXUXFOjYSw2lGGIuqwPnQSpmI3jRYAy0=;
        b=FyPS0gCOocU+YW6bG2aEfkbmbd6ZeNmQtaGPBKwFG66toMzzJF5mX1ANCO2q67C51A
         6+hKJ1SVkXJTFlffOvZpjYkh35W2hueRb18Sx+rZtaxpNH8rPDGLUFzuu/hDJ3jJs80m
         1JcdpoJqFMdmmg3SOUh6kU446SWQNKDdIBeNPiTqBXzm5F7qWl478y0XQs97FmG4vtIb
         1fhreWvfVk73PV9quj9WYoMeNs3dJ6SX2hkBmC5LBdE00T2UHtk4MgHAyyzef5y5pm4g
         XJlnBLIlJWCGM9nQxaP+kYwmQ5muCr4oasukTlI9n5SrQmIYnFG5n/1Sgw8h8yFERwuZ
         70Xg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7NpE50xIJlThXUXFOjYSw2lGGIuqwPnQSpmI3jRYAy0=;
        b=HNXJ5yqQhDq6h2QaWLzGV/ehF94aIup3X0kTETxIpJBYAdCNSCdXgpAM9qkuvNR2M3
         kMcMNNb7v8Ke4p4eN8q5h2Zy1L99AGvzSfkafVB0zEz2CqDGHgr5ABcdSGFIZrAojP/v
         4enoZfRW6wedHUQ1iMfs3anHZi8sFN4r5og53AibmOKgyI+crLKH+jHAgRY2jT5ZTkHe
         Tit5HjaMY6KRCfVJoH66PXJC4mBH/imi5g2kR7nnyC1jMqF/Sv23D8XlDisXZqwqVd11
         eLBUaJpB1in1F09pxMOwbQO16S81sWZiVbYq77lFYB2DhOJXYTYaPHuTtcQs0yYmBFNP
         BeHw==
X-Gm-Message-State: AJIora876nqJ6sRfsQvznxQ/wtNZy/nJJr/4iZaXBLi1+JAoYS2nFzVH
        4K8mIsNl1XYjWPTTh8/QuaK2mZM6Qrry87jf
X-Google-Smtp-Source: AGRyM1s5e/ZHQtmXKenogZYrIc+DpEwBLIre9ljOLnNr7JILkNKpTESrtc+pzI2VAATS1W9KZ/xK2g==
X-Received: by 2002:a2e:95ca:0:b0:25d:4ac4:1387 with SMTP id y10-20020a2e95ca000000b0025d4ac41387mr12349270ljh.145.1657632216570;
        Tue, 12 Jul 2022 06:23:36 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id s3-20020a05651c200300b0025d5eb5dde7sm2350063ljo.104.2022.07.12.06.23.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 12 Jul 2022 06:23:36 -0700 (PDT)
Message-ID: <b3cf4950-4b0a-23ff-2622-4d554cf041c2@linaro.org>
Date:   Tue, 12 Jul 2022 15:23:32 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH 1/2] dt-bindings: display: panel: Add Novatek NT35596S
 panel bindings
Content-Language: en-US
To:     MollySophia <mollysophia379@gmail.com>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220709140422.56851-1-mollysophia379@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220709140422.56851-1-mollysophia379@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/07/2022 16:04, MollySophia wrote:
> Add documentation for "novatek,nt35596s" panel.
> 
> Signed-off-by: MollySophia <mollysophia379@gmail.com>
> ---
>  .../display/panel/novatek,nt35596s.yaml       | 83 +++++++++++++++++++
>  1 file changed, 83 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/novatek,nt35596s.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/novatek,nt35596s.yaml b/Documentation/devicetree/bindings/display/panel/novatek,nt35596s.yaml
> new file mode 100644
> index 000000000000..f724f101a6fd
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/novatek,nt35596s.yaml
> @@ -0,0 +1,83 @@
> +# SPDX-License-Identifier: GPL-2.0-only OR BSD-2-Clause
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/novatek,nt35596s.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Novatek NT35596S based DSI display Panels
> +
> +maintainers:
> +  - Molly Sophia <mollysophia379@gmail.com>
> +
> +description: |
> +  The nt35596s IC from Novatek is a generic DSI Panel IC used to drive dsi
> +  panels.
> +  Right now, support is added only for a JDI FHD+ LCD display panel with a
> +  resolution of 1080x2160. It is a video mode DSI panel.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    items:
> +      - enum:
> +          - jdi,fhd-nt35596s
> +      - const: novatek,nt35596s

You need to document the novatek and idi vendor prefix in vendor-prefixes.

> +    description: This indicates the panel manufacturer of the panel that is
> +      in turn using the NT35596S panel driver. This compatible string
> +      determines how the NT35596S panel driver is configured for the indicated
> +      panel. The novatek,nt35596s compatible shall always be provided as a fallback.

Drop description, it does not make sense and last sentence duplicates
the schema.

> +
> +  vddi0-supply:
> +    description: regulator that provides the supply voltage
> +      Power IC supply

"regulator that provides the supply voltage" is redundant, drop it.
Instead what is it supplying?

> +
> +  vddpos-supply:
> +    description: positive boost supply regulator
> +
> +  vddneg-supply:
> +    description: negative boost supply regulator
> +
> +  reg: true

Any reg is accepted or is there only one reg? Does it come from other
schema?



Best regards,
Krzysztof
