Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50ACD766558
	for <lists+devicetree@lfdr.de>; Fri, 28 Jul 2023 09:29:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234246AbjG1H3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Jul 2023 03:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232323AbjG1H3X (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Jul 2023 03:29:23 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F1423584
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:29:20 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id 5b1f17b1804b1-3fbc0609cd6so18883545e9.1
        for <devicetree@vger.kernel.org>; Fri, 28 Jul 2023 00:29:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690529358; x=1691134158;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2OdGR/VabDO/LNWkLVSY7orQ8Mq9/77wQxJuYipxOG0=;
        b=mjc6wHufEVkvRMRtcUmWZN019LJmlKVhXLbHhoXr+gQUDyLbegB+xSdrXNUFmlX+Zy
         vYuinE6pM7MzYNLfzlGULPn/bvZYFRNMmTJRhjFw2783cudqbbEp9n9Eqm8cMsmsH1h7
         Av7UYO413Dcz0KjyoajjSRADWSJhPgg3dOzomCpREFf5Ud26fP7aYHf7hahbSTF0OzRB
         ujS7ebH0V/VVHPwIocFJoJQPeGlyrh5A0q4WDt49SQx1m2X7BJ6dhIhYnKPZIpbhMYN2
         8G6yKcPFnPEL5VwaSrFGruNaCKwmVlg4nnPsc+nTT5Z0C6wt7zY/SXcq8EgyQY/0vGPs
         i/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690529358; x=1691134158;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2OdGR/VabDO/LNWkLVSY7orQ8Mq9/77wQxJuYipxOG0=;
        b=CtNgv6SHAADDleh09wSnX9JHmoUrRu8WP8DcGgDgHYzcNU6Zi++UxDQRB1Z6lKvfcm
         Ib9BYaS/0QMiocMl2ylNhiZ1B4OOv5FUByuQ+TakeQYf6pf+rj3pWhdWCioMG5lo1GAr
         hkK5//bv/68J0y9YDZqQ3bj4cSfaiaOp5/gxAJLLKLETcGmEWdc6LvkADlcS5chRHvMb
         xZa8s1+svDSHVPZJ710D0lo0d7h2juVbE49Jl5tAR//vjzFB9vMO99F0MZDjAxJ+OL89
         +v0B9ZG2up84lbK+xhhNHKfuQJOvC2idb5P28QuV5aMcgUsJkimk2mn/G1hzJFHm8WP0
         dJBg==
X-Gm-Message-State: ABy/qLan0vSI+EcTz/Cx8pm8ReHK2Zu4bTq/G0z+xG1ytox0innro0Ts
        ttijl5u5YmcfBxEJyNUErOsQfA==
X-Google-Smtp-Source: APBJJlGSt9dgN5c4aTUy+hJwsr/kHnMkoxfHt5u5Ia+Xr1LsrHNFkN0Pww8Z+/PFnvKzHyM9usXBAg==
X-Received: by 2002:a1c:f203:0:b0:3fc:85c:5ed2 with SMTP id s3-20020a1cf203000000b003fc085c5ed2mr926353wmc.11.1690529358644;
        Fri, 28 Jul 2023 00:29:18 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id p5-20020adfcc85000000b003144b50034esm3990491wrj.110.2023.07.28.00.29.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 28 Jul 2023 00:29:18 -0700 (PDT)
Message-ID: <a5539e11-7717-b544-e1b0-8a89ec6bd1e7@linaro.org>
Date:   Fri, 28 Jul 2023 09:29:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH 1/3] dt-bindings: Add vendor prefix for Broadchip
 Technology Group Co., Ltd.
Content-Language: en-US
To:     Matus Gajdos <matuszpd@gmail.com>, Pavel Machek <pavel@ucw.cz>,
        Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230727160525.23312-1-matuszpd@gmail.com>
 <20230727160525.23312-2-matuszpd@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727160525.23312-2-matuszpd@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 18:05, Matus Gajdos wrote:
> Website: http://www.broadchip.com
> 
> Signed-off-by: Matus Gajdos <matuszpd@gmail.com>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index af60bf1a6664..dc1ed3dc0c9f 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -202,6 +202,8 @@ patternProperties:
>      description: Bosch Sensortec GmbH
>    "^boundary,.*":
>      description: Boundary Devices Inc.
> +  "^broadchip,.*":
> +    description: Broadchip Technology Group Co., Ltd.
>    "^brcm,.*":

Does not look ordered. 'c' is before 'o'.

Best regards,
Krzysztof

