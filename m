Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6908A55B13D
	for <lists+devicetree@lfdr.de>; Sun, 26 Jun 2022 12:42:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234164AbiFZKha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Jun 2022 06:37:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32854 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234190AbiFZKhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Jun 2022 06:37:25 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5B25D12A8A
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 03:37:23 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id ge10so13321152ejb.7
        for <devicetree@vger.kernel.org>; Sun, 26 Jun 2022 03:37:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=v5MWZtaUVFOqtoxtacN9tsMmQ+YFWE4QkhWitNXkbM8=;
        b=FgKQolRyfAt9w6xD99Ino2epPCiqr+aD2KNrO2/A5NTVNZIkxOjp1iaG//izy3NqmN
         sMO73MAUM1s3gh6CLH2Eonf0Gp7oWerOORUx+iBQ9rOfkNmu5w71fL/OZFZnD1A98y4N
         vdmpHvxMcltr8PAZVc4SriR4ie0S4mZXudhhW0Z9ooglfND2eX3UaRWyBIp/TZGiWBLW
         ILC3j3EvOlda4FuzpOHjjxlMEwti5UM30ll25Bu8uX5wPrLoFV6OcZr6tmLLEwzXNz6O
         JbKhswqenlfJ4XZIVCCmu/lSlYS/qG3aKPLLMte+cptIkucen8FgbPZZTkuvoTB93C9l
         whqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=v5MWZtaUVFOqtoxtacN9tsMmQ+YFWE4QkhWitNXkbM8=;
        b=UMoqCLiZ1YSJvoPvMv0bBnohCs3IR2TmO9Q68i5OYo4bQBloWZVd2Z6NTxjZugK7+A
         t5NbK+QfQfOeTHhaH7Ol8K+2RM6dkj+LoJUWfTk4psJy1eU9xeyy9/00G13R4uRIpetU
         06AM9OMeSH4r4yTSuYwzF6FuY7AQoJrtEtgekfaRBwF4qICrvvYOCLh08+odB2MoaSQ8
         lBe10wxYuixdvohv8/yrw+LpDIXEpEK0I6pgOvUImCl+RBhM8ygLLl7AWHhbn7kswfdO
         LZsZECccmp+TL1ykaG+gkiQAExpEvWSCUROkXZo253SVJ87LCUyji7GW/7MRPxs66Hjv
         yVKw==
X-Gm-Message-State: AJIora9uioFLw8yjAC6Y3EgZga6TihAhJ1NZE3WGavsK1C09uB8GTiLw
        EfGE56jpgJq63E7oxESc25ewEg==
X-Google-Smtp-Source: AGRyM1uWyS24JWs5XjcLmOW4sPUId65Hj2vcLLUX54VtWo/YEmnh8xQ//lOm8qCxYI8AVf++vBA9bg==
X-Received: by 2002:a17:906:2252:b0:711:d2e6:9e7e with SMTP id 18-20020a170906225200b00711d2e69e7emr7421799ejr.161.1656239841978;
        Sun, 26 Jun 2022 03:37:21 -0700 (PDT)
Received: from [192.168.0.239] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id jz18-20020a17090775f200b0070fd7da3e47sm3624539ejc.127.2022.06.26.03.37.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Jun 2022 03:37:21 -0700 (PDT)
Message-ID: <4d50b9ae-fad4-346d-8e98-8e10786ec8f1@linaro.org>
Date:   Sun, 26 Jun 2022 12:37:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH 1/6] dt-bindings: pinctrl: Add compatibles for Allwinner
 D1/D1s
Content-Language: en-US
To:     Samuel Holland <samuel@sholland.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Maxime Ripard <mripard@kernel.org>, Ondrej Jirman <x@xff.cz>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-gpio@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev
References: <20220626021148.56740-1-samuel@sholland.org>
 <20220626021148.56740-2-samuel@sholland.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220626021148.56740-2-samuel@sholland.org>
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

On 26/06/2022 04:11, Samuel Holland wrote:
> D1 contains a pin controller similar to previous SoCs, but with some
> register layout changes. It includes 6 interrupt-capable pin banks.
> 
> D1s is a low pin count version of the D1 SoC, with some pins omitted.
> The remaining pins have the same function assignments as D1.
> 
> Signed-off-by: Samuel Holland <samuel@sholland.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
