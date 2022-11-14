Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B6AF6277C8
	for <lists+devicetree@lfdr.de>; Mon, 14 Nov 2022 09:33:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235942AbiKNId4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Nov 2022 03:33:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52660 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236082AbiKNIdz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Nov 2022 03:33:55 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 868F4B7F5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:33:54 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id g7so18109388lfv.5
        for <devicetree@vger.kernel.org>; Mon, 14 Nov 2022 00:33:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=X4voGa9Bwv87gEVOyra0/tt7aH6IuMjmi7TJpbXWpgI=;
        b=GqgMxHT+zD1czH4L8fng/DenvuStV83rnnywS/ex27p5puPCoOwQx3saqYBFAXwtJW
         Cqm+Twzxjpm77fuhVYE9PEr1UULPz0xgZT7WlCLYLEordn9fjKqDByaccPuE0VKmd1l5
         xEe9AABr1gnxbNnVKhj5kxc7ak4hZz/ttSPogAPkWIZo9jaxVIfwiVcqba0/v2KIhNEv
         eNSoTWPvPnVxmopGcJ+13lUXCXfvFIudu56mfIMUgIRDcPBxupjzEL8/bN4zrta2a7V6
         rLE/i+MAEZu6MH/Iei/Tz/X5ZDwGeUMu8GGNXJ7TIy3ieGZpMMlSWEg22dAqRnK1nnKm
         ZT7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=X4voGa9Bwv87gEVOyra0/tt7aH6IuMjmi7TJpbXWpgI=;
        b=zLATsNuO9gouBjdr+OpCQssyQUoSMtp2W0w8b917IhY1e25HHXMM403mLaEn+TOOM3
         x3MP1y8Uf4viIjSO58Zy682lHNjGU2jb1mE6vUGhzpIli5VnBaq5HDAddMJstTk/f9MF
         JVFjIGT+saUPYKR36ittIBPc7Dp3cWp3dAqZGClb+r66iliqueoX5uJNnwO8WVcuWhQu
         rM/RAwZ5luvUQI2XT8OuoD9I1+bUZ/adTMazJXm8mjriLhD89Uj1rEJm9po3EOjkhXwX
         OYgn1pqzDefq/TD02kidVYOImiBSYSIIO7iqp15pRWZOa4w3qC2BDEV/O66C0fQTtW7W
         z27w==
X-Gm-Message-State: ANoB5pmVj9Wiy8eVpH+yjmCzCNe2wkznuA988knnZN33Mx/QCSKmgreA
        fpekTZyGXNUyo4T9QbJ2MK2jyw==
X-Google-Smtp-Source: AA0mqf5ehzY/CIMfs+6k5LE4MzCz3Av0JL3ItlLnmdQLyC/wdmITbcC8n5TBSsSjdz531tBHPwBy0A==
X-Received: by 2002:ac2:4e09:0:b0:4a3:9533:cb25 with SMTP id e9-20020ac24e09000000b004a39533cb25mr3522177lfr.442.1668414832927;
        Mon, 14 Nov 2022 00:33:52 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v15-20020a2ea44f000000b0027738fd1eb6sm1907864ljn.110.2022.11.14.00.33.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 14 Nov 2022 00:33:52 -0800 (PST)
Message-ID: <42d97633-e8e5-8214-7786-5e255414d891@linaro.org>
Date:   Mon, 14 Nov 2022 09:33:51 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: Add an entry for Cloos PHG
 board
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, shawnguo@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
References: <20221113124459.662004-1-festevam@gmail.com>
 <20221113124459.662004-2-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221113124459.662004-2-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/11/2022 13:44, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add an entry for the i.MX8MM Cloos PHG board.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

