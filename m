Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 897DF6567EA
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 08:44:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230026AbiL0Hod (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 02:44:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48386 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230013AbiL0Hoc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 02:44:32 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 842FE3883
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 23:44:30 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id y25so18587272lfa.9
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 23:44:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aOVYkZxxKsbhw75iIPorGD6czBegT76jGDD2E1ugnSw=;
        b=EkUsdF1Xsu/m2xxqaQd6vkNWPP72fGbMXmWvG3FRb05pNjBEbhl22BY8CbCkowAnPT
         0TM6ijjMC8IycOqIgIpFi3PQiEnyjbHjIGZj533TQxJQZQ8ZLPBOPYZ7E8VW6TNHLlE3
         JzDDdNXMToh/0OEzwcsmIsK+lvDCtVRphNnDmMOTv6xLIBB6BQ8nXat+dESmbf3P0J3/
         +vkJNqqUDojmMskeGTK3d1FX/2KZ7NcPE8FqOt/8gJMGE/BAPyvB1ZtUEDThTEcO3ZiM
         3yyhg0lknpwJJ8xALJ0j5ZRD8iXAaTIm/O+L3uYpkRvyA0XzMLShMH3KARcyaszRVr+d
         NkNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aOVYkZxxKsbhw75iIPorGD6czBegT76jGDD2E1ugnSw=;
        b=gAgHo2QdBIlJuR68bpZ+0ObngoyfXGCF/G1rd81IZcUx5rp1Y7sL6aEoGnD1K2jejY
         c1lSC5RfwM4nJC9gh05q177Hu5aKOGpbDwa2twtmG/TfgDsklFAesnFgcjEdlMfoINf2
         L7Tt1FQugYhKTwTnczV2AjZdy+ydxEKxCJiRP5GDn808Dn0iaHE9HMySc8nfNi/z0YRb
         4DUlEGcJgRBtV8xVcFO9qWenaKjFXAWOcpOpjcDLdxRferUyC/2t2JPjRhIkRxMbC6d4
         Val1628jOaXTcGK2VX8aqiuDbw7c5qS2ogMegHqLdmWk8Crc7ITBtN6WKPGFGCabGStr
         8b5w==
X-Gm-Message-State: AFqh2kqqFsg30Sbr/s0xqFbUMA150Ov0c5nSU7G9DhROWQIxJRUh3aFf
        dl3YzJtJboh3kCdX/gbZrvINmg==
X-Google-Smtp-Source: AMrXdXsFrxQWaAaSLuxH3iop/N0+P56sRuckOjOr9ApBjTDbXw5HqvDHjO+M3IQbjGPyO2dFQnqbHw==
X-Received: by 2002:a05:6512:39ce:b0:4b4:e559:8b10 with SMTP id k14-20020a05651239ce00b004b4e5598b10mr6697970lfu.24.1672127068773;
        Mon, 26 Dec 2022 23:44:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a14-20020a056512390e00b004b5872a7003sm2153971lfu.98.2022.12.26.23.44.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 23:44:28 -0800 (PST)
Message-ID: <f47cab97-2c8c-a3d5-b362-774f970dffd3@linaro.org>
Date:   Tue, 27 Dec 2022 08:44:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 2/4] dt-bindings: display: Add Himax HX8394 panel
 controller
To:     Javier Martinez Canillas <javierm@redhat.com>,
        linux-kernel@vger.kernel.org
Cc:     Ondrej Jirman <megi@xff.cz>, Robert Mader <robert.mader@posteo.de>,
        Sam Ravnborg <sam@ravnborg.org>,
        Maya Matuszczyk <maccraft123mc@gmail.com>,
        =?UTF-8?Q?Kamil_Trzci=c5=84ski?= <ayufan@ayufan.eu>,
        Martijn Braam <martijn@brixit.nl>,
        Peter Robinson <pbrobinson@gmail.com>,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org
References: <20221226134909.2822179-1-javierm@redhat.com>
 <20221226134909.2822179-3-javierm@redhat.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221226134909.2822179-3-javierm@redhat.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/12/2022 14:49, Javier Martinez Canillas wrote:
> Add device tree bindings for panels based on the Himax HX8394 controller,
> such as the HannStar HSD060BHW4 720x1440 TFT LCD panel that is connected
> through a MIPI-DSI video interface.
> 
> Signed-off-by: Javier Martinez Canillas <javierm@redhat.com>
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
> 
> Changes in v2:
> - Drop redundant "bindings" in subject (Krzysztof Kozlowski).
> - Drop "device tree bindings" in title (Krzysztof Kozlowski).
> - Put port next to other "true" properties (Krzysztof Kozlowski).
> - Add Krzysztof Kozlowski's Reviewed-by tag.
> 
>  .../bindings/display/panel/himax,hx8394.yaml  | 65 +++++++++++++++++++
>  1 file changed, 65 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
> new file mode 100644
> index 000000000000..bead3f0b05c5
> --- /dev/null
> +++ b/Documentation/devicetree/bindings/display/panel/himax,hx8394.yaml
> @@ -0,0 +1,65 @@
> +# SPDX-License-Identifier: (GPL-2.0-only or BSD-2-Clause)
> +%YAML 1.2
> +---
> +$id: http://devicetree.org/schemas/display/panel/himax,hx8394.yaml#
> +$schema: http://devicetree.org/meta-schemas/core.yaml#
> +
> +title: Himax HX8394 MIPI-DSI LCD panel controller
> +
> +maintainers:
> +  - Javier Martinez Canillas <javierm@redhat.com>
> +
> +description:
> +  Device tree bindings for panels based on the Himax HX8394 controller,
> +  such as the HannStar HSD060BHW4 720x1440 TFT LCD panel connected with
> +  a MIPI-DSI video interface.
> +
> +allOf:
> +  - $ref: panel-common.yaml#
> +
> +properties:
> +  compatible:
> +    enum:
> +      # HannStar HSD060BHW4 5.99" 720x1440 TFT LCD panel
> +      - hannstar,hsd060bhw4
> +
> +  vcc-supply:
> +    description: Panel power supply
> +
> +  iovcc-supply:
> +    description: I/O voltage supply
> +
> +  port: true
> +
> +  reset-gpios: true
> +
> +  backlight: true
> +
> +required:
> +  - compatible
> +  - vcc-supply
> +  - iovcc-supply
> +  - port

Does not look like you tested the bindings. Please run `make
dt_binding_check` (see
Documentation/devicetree/bindings/writing-schema.rst for instructions).

Best regards,
Krzysztof

