Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 392BD54BC44
	for <lists+devicetree@lfdr.de>; Tue, 14 Jun 2022 22:59:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344866AbiFNUxr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Jun 2022 16:53:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358442AbiFNUxY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Jun 2022 16:53:24 -0400
Received: from mail-pl1-x62e.google.com (mail-pl1-x62e.google.com [IPv6:2607:f8b0:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED27C2C65D
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 13:53:22 -0700 (PDT)
Received: by mail-pl1-x62e.google.com with SMTP id n18so8737596plg.5
        for <devicetree@vger.kernel.org>; Tue, 14 Jun 2022 13:53:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=AR6pI4Dz4SnbCroeylFx6ClK0LALzjTLZM8tr+b1Qio=;
        b=rlANcywAf4bR7fadVFA2+G43rRwb6bnCOg+XpmZaE08Y1ATmf4iXfkpOG29AXJ27fu
         nBPgAan/++luP9MBfjVPAOtUAnUddFJWgFTpt8KC3RYS6VGpCD6sbGm13MaOL9Z44jGD
         4fFF01bfFROZXzw7HdaT2etm+xFtUlvK5HkkHAmN83wi0aZnVzmCVnSiJsVkMQK4SMai
         HUNWTGtntrPCxetOSOJqi/coDpghVaIdNMMDH5QrLKyN7jfKz3CoBwz29149riGdWEdQ
         O+GwP/qqzi5qErljLWsZ13oFVlZdEnn/YqvCC8+n2DYlnwaN/fpW2/wLi0q6xxs0bF6l
         drEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=AR6pI4Dz4SnbCroeylFx6ClK0LALzjTLZM8tr+b1Qio=;
        b=3CCdi8/oJu/mOQxZ02glb4t3qaESMXhz7fqPT/R+362iL0F0ACQ8D+gjzv9n00gGXA
         HTDhfrSFBXVaM2qWBsdnlYWuCgu43imwUFJYugqkdOQ2A3+iZ2Kbk0EmdsW1ovtVTZ5n
         y/3902wUGElacqKF+B12m+EH/XcijWRhHB87bUED+mVlTsEp29dC3dwtFW41q+HWZu/z
         1NomVGLJExsy6XNB0xQV6bEJqA+04IEi8HnDLuTga5mUbGjw6k869UHklN6qDyq354i6
         ALs4/IfoB23g/MnMAP5ctbTPawRB6ydKEWcV+rJhcKH7/pNgiPRyJ/jsQZem9iVrtjqB
         243g==
X-Gm-Message-State: AJIora+ZI3W+slBnqWZsHHzqB7hGhFCT95+djGT/I+zKWf68onRf9+1x
        yPzSGRNcIbiN0XiLd1NvSUwY4w==
X-Google-Smtp-Source: AGRyM1sGORuHOsrudJ2NzMuucMCoEUS7FrDUAZJlvhB95QU1/ijkVKGqDtIwU3c/jV+ULDfXuIS/fA==
X-Received: by 2002:a17:903:248:b0:168:cf03:eefe with SMTP id j8-20020a170903024800b00168cf03eefemr6038425plh.124.1655240002425;
        Tue, 14 Jun 2022 13:53:22 -0700 (PDT)
Received: from [172.22.33.138] ([192.77.111.2])
        by smtp.gmail.com with ESMTPSA id m12-20020a1709026bcc00b00162037fbacdsm7638321plt.187.2022.06.14.13.53.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 14 Jun 2022 13:53:21 -0700 (PDT)
Message-ID: <3dbb38af-4813-3c5d-8a12-cdd63bdbe3c2@linaro.org>
Date:   Tue, 14 Jun 2022 13:53:19 -0700
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v3 4/7] dt-bindings: drm/bridge: anx7625: Add mode-switch
 support
Content-Language: en-US
To:     Prashant Malani <pmalani@chromium.org>,
        linux-kernel@vger.kernel.org, linux-usb@vger.kernel.org
Cc:     bleung@chromium.org, swboyd@chromium.org,
        heikki.krogerus@linux.intel.com,
        =?UTF-8?Q?N=c3=adcolas_F_=2e_R_=2e_A_=2e_Prado?= 
        <nfraprado@collabora.com>, Andrzej Hajda <andrzej.hajda@intel.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:DRM DRIVERS" <dri-devel@lists.freedesktop.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Jonas Karlman <jonas@kwiboo.se>,
        =?UTF-8?B?Sm9zw6kgRXhww7NzaXRv?= <jose.exposito89@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Laurent Pinchart <Laurent.pinchart@ideasonboard.com>,
        Maxime Ripard <maxime@cerno.tech>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Pin-Yen Lin <treapking@chromium.org>,
        Robert Foss <robert.foss@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        Xin Ji <xji@analogixsemi.com>
References: <20220614193558.1163205-1-pmalani@chromium.org>
 <20220614193558.1163205-5-pmalani@chromium.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220614193558.1163205-5-pmalani@chromium.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2022 12:34, Prashant Malani wrote:
> Analogix 7625 can be used in systems to switch USB Type-C DisplayPort
> alternate mode lane traffic between 2 Type-C ports.
> 
> Update the binding to accommodate this usage by introducing a switch
> property.
> 
> Reviewed-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> Tested-by: Nícolas F. R. A. Prado <nfraprado@collabora.com>
> Signed-off-by: Prashant Malani <pmalani@chromium.org>
> ---
> 
> Changes since v2:
> - Added Reviewed-by and Tested-by tags.
> 
> Changes since v1:
> - Introduced patternProperties for "switch" children (suggested by Krzysztof Kozlowski).
> - Added unevaluatedProperties descriptor (suggested by Krzysztof Kozlowski).
> - Added "address-cells" and "size-cells" properties to "switches".
> 
>  .../display/bridge/analogix,anx7625.yaml      | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> index 35a48515836e..cb4a23391244 100644
> --- a/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> +++ b/Documentation/devicetree/bindings/display/bridge/analogix,anx7625.yaml
> @@ -105,6 +105,33 @@ properties:
>        - port@0
>        - port@1
>  
> +  switches:
> +    type: object
> +    description: Set of switches controlling DisplayPort traffic on
> +      outgoing RX/TX lanes to Type C ports.
> +    unevaluatedProperties: false

This should be additionalProperties:false.

> +
> +    properties:
> +      "#address-cells":
> +        const: 1
> +
> +      "#size-cells":
> +        const: 0
> +
> +    patternProperties:
> +      'switch@[01]':

You also need ^ and $. Please use the same quotes as in other places
(here is ' but few lines above ")

> +        $ref: /schemas/usb/typec-switch.yaml#

You need unevaluatedProperties:false on this level.

> +
> +        properties:
> +          reg:
> +            maxItems: 1
> +
> +        required:
> +          - reg
> +
> +    required:
> +      - switch@0
> +


Best regards,
Krzysztof
