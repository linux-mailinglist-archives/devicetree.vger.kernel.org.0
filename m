Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 235A4562E95
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 10:42:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235729AbiGAIl5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 04:41:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49288 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235773AbiGAIl4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 04:41:56 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFE9671BE8
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 01:41:53 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id lw20so2771272ejb.4
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 01:41:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ddu0lEjRZM+RVS9eDD90oxOJEXTWbrEFYGfvVhFfL7E=;
        b=njvnLpIArvIuZa+IE6ov95N5x2QOOAnD86pVu5+nEArbSa6hXFzfHJkBfFSaESa5wt
         Lr0hV+E9mGEWx0YXvHcuevqIYzOS+nkjuM9g3Jl+NyntHa6/oFtOyZ/m1zVAH5gqXxAr
         hXnPn7qrRp2cj+cY/RguNKZtbjR8Tu+RArXM8Nwavla7tmCvoaKbgxoZJMUZPqM+KXQ+
         nBLg3TRYb5kt4XQHXJhcIaNKDsRO3ITtPutJ2NqCji40rCKY3P8bqEZ2YhoJ/nwxsPVD
         G+M8dzaDFRpa75HcFfI8FKf4BfMaTqcpj6UtWtZpTZvApmBvkv7R+YDudWw92Ybv/Fed
         U28Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ddu0lEjRZM+RVS9eDD90oxOJEXTWbrEFYGfvVhFfL7E=;
        b=GCXq91OLNrFMF7oMZbbOA+x9r8l2qwll+3rMrpmiV8CQEOamPyiqN1SKr+xOaQ0fWO
         AzF9C2pycgsv9E8TuH3Nuy6pcd1FoVrB6NCAB0vNTRDvQNtdln50tWZj46pj2HWUg+FG
         zLakuZynrn2eZtutq2fp+omcshrmCTJ15swjMRaAfJD0UjINs715QgoBpQOc2O7i2M3k
         fatahleLR1iNaJtBZplmVqiy0+MG3Jg3sDY1KXe1l4Irx8+2Mq9Zf+Tkvy1lRm5C/xiN
         6kIkWAO0LaiisdVZPjQL/DG+dfcyIJJKdzMNMZgzbCHIH9O3IdX8q+fjcmRaXgGtgtpE
         AN6g==
X-Gm-Message-State: AJIora9CLJ9swmhYx71i0PTiy5er1dr5o3kW4w/MpkqvIkOh4gTxUk8B
        CO84WTHgFYopEvgSE8E/yuqFDOYNUi/X2w==
X-Google-Smtp-Source: AGRyM1u/OK3SHOwPIiPwAZIvr8/OFFy1NPoMDnPzAe/TJCMIFH8E5daZ0JO7cak3szua+QGy0RyC4A==
X-Received: by 2002:a17:907:9812:b0:726:3e5b:d299 with SMTP id ji18-20020a170907981200b007263e5bd299mr13589204ejc.26.1656664911898;
        Fri, 01 Jul 2022 01:41:51 -0700 (PDT)
Received: from [192.168.0.190] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id k13-20020a170906a38d00b006fed787478asm10247569ejz.92.2022.07.01.01.41.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Jul 2022 01:41:51 -0700 (PDT)
Message-ID: <abecf1e0-c911-6b16-1b3a-862b31cc309c@linaro.org>
Date:   Fri, 1 Jul 2022 10:41:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v6 1/3] dt-bindings: adc-joystick: add poll-interval-ms
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>, linux-input@vger.kernel.org
Cc:     devicetree@vger.kernel.org, contact@artur-rojek.eu,
        maccraft123mc@gmail.com, heiko@sntech.de,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        dmitry.torokhov@gmail.com, paul@crapouillou.net, jic23@kernel.org,
        linux-iio@vger.kernel.org, Chris Morgan <macromorgan@hotmail.com>
References: <20220629222931.30599-1-macroalpha82@gmail.com>
 <20220629222931.30599-2-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220629222931.30599-2-macroalpha82@gmail.com>
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

On 30/06/2022 00:29, Chris Morgan wrote:
> New devicetree attribute of "poll-interval-ms".
> 
> Add poll-interval support for the adc-joystick documentation. This is
> an optional value and if not provided the adc-joystick works as it
> does today (with triggered buffers). If this value is provided, the
> adc-joystick driver is polled at the specified interval. A new
> attribute was added instead of using the existing attribute of
> "poll-interval" to comply with rules detailed in property-units.yaml.
> 
> Signed-off-by: Maya Matuszczyk <maccraft123mc@gmail.com>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  Documentation/devicetree/bindings/input/adc-joystick.yaml | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/input/adc-joystick.yaml b/Documentation/devicetree/bindings/input/adc-joystick.yaml
> index 2ee04e03bc22..9a34b928b15b 100644
> --- a/Documentation/devicetree/bindings/input/adc-joystick.yaml
> +++ b/Documentation/devicetree/bindings/input/adc-joystick.yaml
> @@ -18,6 +18,11 @@ properties:
>    compatible:
>      const: adc-joystick
>  
> +  poll-interval-ms:
> +    description:
> +      Poll interval time in milliseconds. If not specified, device will use
> +      iio buffer.

Rob's comments from v5 apply.

Best regards,
Krzysztof
