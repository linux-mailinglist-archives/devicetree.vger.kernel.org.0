Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A642A4ECAA8
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 19:30:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349302AbiC3Rbq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 13:31:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46164 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230222AbiC3Rbp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 13:31:45 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09CB5DEF6
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 10:30:00 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id dr20so42909354ejc.6
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 10:29:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=8RYwAvBPCF9XywmD5fq7tSXm3lAPT2CAJaEKfYpH8zw=;
        b=LG/yMpN6NpgF4fravYALNyn8Z5WGt53sXTuV1PC+ngbiN/7ipmlqZ57lAquQSdkcIM
         uZPy4yJYSr65rs4n3AOH+xViW19g+HOydHiY67zDD0VXYCEO3M+WOomhAYyWQQfepSp8
         JqdeM1eF4oynMiKUeKFN7+1UoO+9fWwFb2Wrr/40W8zfuok9D/YZQ1nwxkgr1yobZYmb
         7Q+G7uMcYavkas+kglUE3rr8cXUAF7ZIXsN2+n+aR5mr9Zo9sBQDiqJ3Lplyv0fjxfJN
         67KHJFm4dXJFT3V4A3W8ot6EmAK+9Vuz1LhAppf5gyxJsAmx96GRsgYmYYtq9HCf9pRu
         /cbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=8RYwAvBPCF9XywmD5fq7tSXm3lAPT2CAJaEKfYpH8zw=;
        b=EAd7KLLwKs+NViyhDde/6Zj7XoIO1Xqiho15i5GesQiZmn4fLfxL5qmlEfz3AoUPBA
         5NKWLaIa8EDUB+lwHrIJqyTASwtjhlD6S7ti/L+Whb/qXPpm/7pJHLD8ZnF0V2JJOUpb
         04P+sK2rA70qndOYEeQtBkppiHHfWcUZFTGKr8saO2E3XmDvH9EdPrnTCBDBm8mD1jKv
         231ruKweYzg5/DJo9cITpx6X+C2I2CLoKiBI2DFg3skoef8uroVBlZSKifXfH7iyieA7
         0icQdW5qJ6Xk7JP3S81MtirYoUDkVCEic57RNsR6sEOssjZAhkNPSW0821ZXDqsVhV2T
         cWKg==
X-Gm-Message-State: AOAM532NGdUwR7NWSUjNeaZY4JTQPogTjzAWEzIv0rjvi8Ov8vej1Qsy
        dHLrSAb0kNshWiPo47iRrQn2gA==
X-Google-Smtp-Source: ABdhPJzhS6l1JJpOIoK7pFJfry86N833UfxNZtRsxE3AFXcn0vHARsduaous2MKRJDLZHrwE7lnd4Q==
X-Received: by 2002:a17:907:c0c:b0:6d1:8c46:6415 with SMTP id ga12-20020a1709070c0c00b006d18c466415mr727138ejc.326.1648661398642;
        Wed, 30 Mar 2022 10:29:58 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id s14-20020aa7cb0e000000b00410bf015567sm9809537edt.92.2022.03.30.10.29.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 10:29:58 -0700 (PDT)
Message-ID: <3ad8621e-7a67-d586-5ae7-020be4d35f7a@linaro.org>
Date:   Wed, 30 Mar 2022 19:29:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk3036: use generic node name
 for dma
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220330114847.18633-1-jbx6244@gmail.com>
 <20220330114847.18633-3-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330114847.18633-3-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 13:48, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3036 dma node
> and rename it to "dma-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk3036.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
