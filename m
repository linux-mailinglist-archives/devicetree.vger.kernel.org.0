Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7290E77124D
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 23:14:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229479AbjHEVOb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 17:14:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229449AbjHEVOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 17:14:30 -0400
Received: from mail-wm1-x332.google.com (mail-wm1-x332.google.com [IPv6:2a00:1450:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97631272E
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 14:14:29 -0700 (PDT)
Received: by mail-wm1-x332.google.com with SMTP id 5b1f17b1804b1-3fb4146e8ceso28683835e9.0
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 14:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691270068; x=1691874868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vEH00hCKUcqe41GOXK5gDWTt8GrNd+VfwwCKTG3OKj4=;
        b=Ro9mMbiEFAOfg/b9FvDz3nXufzFiJxSI64IOYhdqmGOpaUCZVlaUzn5HFqdEL6q19i
         GGGWXuJWh1TtI/A4KA9vP6HBjGTUqcx8tr+45JSqa2mTGsKPcs3tto7CPCuzqJdSTEpZ
         s4NzgMP5HbRtXuGef0f9uixaQs+RhlzsUaWE2I+RK9cH7t2DBN0NH+Kwq8Y6bLhGmCAN
         ctxSQbR+OdHBrjAUHjKv6nb4kHD7iNreU5PLwR4xHlCzCKtB9gB0vld36RrD9B6pb7RB
         XnDX/oxAEPj27kCRne7uaqGxNqEDs34aiHEP/stChgp05MYrE9OmSzEXKSOuRcnm9VNk
         8r7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691270068; x=1691874868;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vEH00hCKUcqe41GOXK5gDWTt8GrNd+VfwwCKTG3OKj4=;
        b=c3lDHHZ46lMB85HzkNuqLUXR9x7MWT08FaQ//8yk6gNsxzYXeoCUVP2ANKYMU6gPvB
         UXfIGTMaApz/rScyIGv2Gfkk4hnAxt0iBpdMuC/s+hAEOxovWwMTyJXpLymZ2jk9HzMR
         GgMRi1m9Bkx0mXh4U0n7kNHhk/WJCmk4sVf9MxPDc8ixaQVYi/bGYpFpEO5yWziE+ouf
         j3UCrFBvLSHyv0sMaCkZE/ClsXwuzw2lzdq7nZtObIDuXkjTiUHmSMykj8dJassHqSCk
         x15ALNXwuLBL7zGzFNSF6hfwc5Fex7o/OXCCPnUpj7DB96MPEku69MllrOc4HsRTDrtW
         GyAA==
X-Gm-Message-State: AOJu0YzND+WEl2nJXO5MdxdDc0LNfvGNGit1rZICC+H2rPUviRC6Ds4G
        otqbSuzfyJQlSS9RkPAMh0ORNPchhWmJSjJ4HKc=
X-Google-Smtp-Source: AGHT+IFi0hGmELDPhVdOQZJZBDOH7zYks9t9rD+ydMeEYB8OMwNjclv2QEwwKjQ47EFCiXMySIOyhA==
X-Received: by 2002:a1c:720c:0:b0:3fc:e00:5282 with SMTP id n12-20020a1c720c000000b003fc0e005282mr3612139wmc.0.1691270068105;
        Sat, 05 Aug 2023 14:14:28 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id f20-20020a1c6a14000000b003fe24da493dsm5925415wmc.41.2023.08.05.14.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Aug 2023 14:14:27 -0700 (PDT)
Message-ID: <11171a47-cb9f-8369-e590-587aa8ca457e@linaro.org>
Date:   Sat, 5 Aug 2023 23:14:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/2] dt-bindings: display: newvision,nv3051d: Add Anbernic
 351V Support
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        dri-devel@lists.freedesktop.org
Cc:     devicetree@vger.kernel.org, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        daniel@ffwll.ch, airlied@gmail.com, sam@ravnborg.org,
        neil.armstrong@linaro.org, Chris Morgan <macromorgan@hotmail.com>
References: <20230804164503.135169-1-macroalpha82@gmail.com>
 <20230804164503.135169-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230804164503.135169-2-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/08/2023 18:45, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Document the Anbernic RG351V panel, which appears to be identical to
> the panel used in their 353 series except for in inclusion of an
> additional DSI format flag.
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml       | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> index 116c1b6030a2..1226db3613e6 100644
> --- a/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> @@ -8,8 +8,8 @@ title: NewVision NV3051D based LCD panel
>  
>  description: |
>    The NewVision NV3051D is a driver chip used to drive DSI panels. For now,
> -  this driver only supports the 640x480 panels found in the Anbernic RG353
> -  based devices.
> +  this driver only supports the 640x480 panels found in the Anbernic RG351
> +  and 353 based devices.

I would prefer to drop the reference to driver entirely. It's not
related to the bindings. If driver changes (e.g. supports 1024x768),
then binding changes as well?

>  
>  maintainers:
>    - Chris Morgan <macromorgan@hotmail.com>
> @@ -19,11 +19,15 @@ allOf:
>  
>  properties:
>    compatible:
> -    items:
> -      - enum:
> -          - anbernic,rg353p-panel
> -          - anbernic,rg353v-panel
> -      - const: newvision,nv3051d
> +    oneOf:
> +      - items:
> +          - enum:
> +              - anbernic,rg353p-panel
> +              - anbernic,rg353v-panel
> +          - const: newvision,nv3051d
> +
> +      - items:
> +          - const: anbernic,rg351v-panel


This part is good, so with adjusting description:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

