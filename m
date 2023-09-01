Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 042B878FC5F
	for <lists+devicetree@lfdr.de>; Fri,  1 Sep 2023 13:40:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231160AbjIALkJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Sep 2023 07:40:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229818AbjIALkJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Sep 2023 07:40:09 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7E4591
        for <devicetree@vger.kernel.org>; Fri,  1 Sep 2023 04:40:04 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id 2adb3069b0e04-5007616b756so3326294e87.3
        for <devicetree@vger.kernel.org>; Fri, 01 Sep 2023 04:40:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693568403; x=1694173203; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Kp69p9Zx8jZm35in4Sfoz8ZwxS7m1KLnjf2cXSylp44=;
        b=cS1YmQKybIJiMsnLfxdgRAAiN1HqnPCkvpHC1OMg8YrsIbPUBue1klwh3wewHzVfzn
         b+80x4uHDEroMkhlnkfAz2sZEv+MGSNIr7j5/ilpXVdH9O3qHOn54Nok+JW6T9ETy3oT
         HhyP7NIi5JMfOVRpeY3SddAGx25QccSeXJAjAEiLAEE6dMYX+ImXwTsTZYR/fMIKYiOg
         Naf9DZP4vl2UCzcVTWsSZa2MyMgYSGe2RntBWNj9HnbA+hHqRI7KHBo5IyBRDf68jG9c
         Uajt433vWySAInXarAcrNqOP8XTMMZN7hDHbocyCS3D4Cpm/1AWUWq+XdRPetIlylWY5
         QXgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693568403; x=1694173203;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Kp69p9Zx8jZm35in4Sfoz8ZwxS7m1KLnjf2cXSylp44=;
        b=J26vapXBTn6haclUUP52ncBdqZjq3df+oy5dPt+Wafhz27BNnAm8ouuD+9HJQbr3R4
         BEXxkFOmzGW8KpyIucvxHoOfYbNj1JBqNJlcsUHCRtStTXSY1eDMTuFSmOdBfzusjLpj
         6tGpFoWjueq9GgJ4CFPwWb5u5M6PuI+QnZQGppPwT1PIFZsqZxnBsvFTGljMLUIQHv7Y
         OtwUejkSO0XDUaSkgLiLxSG2MrYh/1dUzy5YcpNSgQCfp6F42wvy6uqj+xUVuTTGxJgq
         re2Ns2bJX8PmLqfNncesHozWKfx6qgzNSksT+Aiw+IwQPtr+H0DqSz7Mvdwg3ffc9mZ9
         ftDQ==
X-Gm-Message-State: AOJu0YxOZipyVTi+v0NHZDk0ghJbT4pBZ3aKZJKWS4vR34a5L3n4dwzi
        ec9DiuflwJhXWZoETsoxz67Nrg==
X-Google-Smtp-Source: AGHT+IGZbpHK6jfi7srWUarjgvFSbRnzBUrg+9jzA8L4rbc+OlK095lmkX03nbPqC8p+0N3Jyvqy6w==
X-Received: by 2002:ac2:5b8f:0:b0:4ff:8c9e:eb0d with SMTP id o15-20020ac25b8f000000b004ff8c9eeb0dmr1369836lfn.0.1693568403181;
        Fri, 01 Sep 2023 04:40:03 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id u20-20020a056402065400b00529fb5fd3b9sm1960356edx.80.2023.09.01.04.40.01
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 01 Sep 2023 04:40:02 -0700 (PDT)
Message-ID: <ac74775f-ea4f-7eba-e989-136524e96c81@linaro.org>
Date:   Fri, 1 Sep 2023 13:40:01 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v2 1/2] dt-bindings: stm32: document MYD-YA15XC-T
 development board
To:     Alexander Shiyan <eagle.alexander923@gmail.com>,
        inux-arm-kernel@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
References: <20230901103856.31091-1-eagle.alexander923@gmail.com>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230901103856.31091-1-eagle.alexander923@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/09/2023 12:38, Alexander Shiyan wrote:
> Add new entry for MYD-YA15XC-T development board.
> 
> Signed-off-by: Alexander Shiyan <eagle.alexander923@gmail.com>
> ---
>  Documentation/devicetree/bindings/arm/stm32/stm32.yaml | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> index 4466b455bffa..1bde704bcd65 100644
> --- a/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> +++ b/Documentation/devicetree/bindings/arm/stm32/stm32.yaml
> @@ -140,6 +140,13 @@ properties:
>            - const: engicam,microgea-stm32mp1
>            - const: st,stm32mp157
>  
> +      - description: MyirTech STM32MP15x SoM based Boards
> +        items:
> +          - const: myir,myd-ya15xc-t   # MYIR MYD-YA15XC-T STM32MP151C
> +          - const: myir,myc-ya15xc-t   # MYIR MYC-YA15XC-T STM32MP15X SoM

I don't think you can have one compatible for all of them. The 153 and
157 variants differ by number of CANs, which are probably enabled in
your board DTS?

Also, I cannot find ordering of 153 and 157 variants:
https://www.myirtech.com/list.asp?id=658
so I wonder if they have actually same part numbers.


> +          - enum:
> +              - st,stm32mp151

This is highly unusual syntax - I think no other binding in Linux kernel
uses it. It is correct and I understand why you did it, just might
confuse others as we usually NAK it. I think less confusing would be to
have here const (with the price of duplicating this per variant).

Best regards,
Krzysztof

