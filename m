Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5817962F7F1
	for <lists+devicetree@lfdr.de>; Fri, 18 Nov 2022 15:42:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241422AbiKROme (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Nov 2022 09:42:34 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242643AbiKROmQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Nov 2022 09:42:16 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46DAB63A4
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 06:41:49 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id c1so8515660lfi.7
        for <devicetree@vger.kernel.org>; Fri, 18 Nov 2022 06:41:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2thmbb28/ZVq6zR0dXPjXeaM3XqjzR2UoNfuu1A+yxY=;
        b=Wh3kz+U3TyES5kVivDFaHBtLFLL/dvPdqDu57smkC6Ph7w7BHKysZMZFhvdXOPuWrW
         Lw8LL84mX38YNKRs3pGwg+Tia/zAFhgcC+1DESyGm5BTi0EnPUnhZ4QHLyyv+0OnhLam
         E3uRYDAR2Os7JpQ0LIhBcgTFaVW5dZNYTp7ZKIyJBX5G4OWwRx1TtogVVoI1kX2CEjrs
         do4Gplx2RwG3okWsGte0NBKp5hVJfTJNt4dRG/5I6q35QXlZIog+hjsX/ykg9GuvhRxD
         47ZlAGzhacUFb32wS7j+NxIQTok5x1gIPOFsudtg8U/R9BKtPU6lhsd4s1bKjF2cUdHM
         ohQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2thmbb28/ZVq6zR0dXPjXeaM3XqjzR2UoNfuu1A+yxY=;
        b=ZmQ5Fn3Pi8me/RTaOQFy7zlhcGM9Yfx1lBU3lS2vsks50kTSv4aFryakN9z2kLdKRM
         qvEcVX8c8lD2StgGF1VeZJkjCl3JY+mKfTe4JASy5+KIf6eoR59t8u47ZZAQFfgFEPNm
         Xd7pSmN7BA06nqc90yBQ6I4pH1OWl/nIlKmPzd2qfhbxHQPVsmheX+7GbzOUgZtt9gKz
         pfJjq4+KdMaA1t1qA/KpW9bgrvHUA7f/KXedDrUSSqAyyXC5ntz4L9HDo0iE/0i2OJcY
         jSh5b5/3mS7XLlH8TQ04rpmQHbeqjDaPgpOwFfKtcPb2Aeq3fLQgia0jG1z0T3y+ffD1
         8ZHA==
X-Gm-Message-State: ANoB5pkL/i8W2GgYg6nrRCFofl6/bxiondxCpkHB+9g9f/2qHz4sSt6e
        q18ux74OW1Wsf4F6/yNIXraSAg==
X-Google-Smtp-Source: AA0mqf4LXWW0epb2vwZAvgtK7zqnLsqEffcVxq2B14gkeFCPgUZ7Zh2t6XvOeZxpFU2hG+5fuwFCKg==
X-Received: by 2002:a19:7706:0:b0:4a4:6991:71c4 with SMTP id s6-20020a197706000000b004a4699171c4mr2681393lfc.355.1668782507612;
        Fri, 18 Nov 2022 06:41:47 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id v10-20020ac258ea000000b004b0b2212315sm686134lfo.121.2022.11.18.06.41.46
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Nov 2022 06:41:47 -0800 (PST)
Message-ID: <af7f1b14-6b46-54af-19fd-de8d1de535db@linaro.org>
Date:   Fri, 18 Nov 2022 15:41:46 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v2 1/2] ASoC: dt-bindings: lpass-va: add npl clock for new
 VA macro
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        broonie@kernel.org
Cc:     alsa-devel@alsa-project.org, lgirdwood@gmail.com, perex@perex.cz,
        tiwai@suse.com, linux-kernel@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221118071849.25506-1-srinivas.kandagatla@linaro.org>
 <20221118071849.25506-2-srinivas.kandagatla@linaro.org>
 <c3a2316f-2956-6417-f1ea-a6a64df037c6@linaro.org>
In-Reply-To: <c3a2316f-2956-6417-f1ea-a6a64df037c6@linaro.org>
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

On 18/11/2022 15:38, Krzysztof Kozlowski wrote:
> On 18/11/2022 08:18, Srinivas Kandagatla wrote:
>> LPASS VA Macro now has soundwire master to deal with access to
>> analog mic in low power island use cases. This also means that VA macro
>> now needs to get hold of the npl clock too. Add clock bindings required
>> for this.
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


... and not.

+        clock-names:
+          items:
+            - const: mclk
+            - const: core
+            - const: dcodec

This neither matches DTS nor driver. Did you test DTS with the bindings
change?

Best regards,
Krzysztof

