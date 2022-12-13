Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC3E664B7C8
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 15:50:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235038AbiLMOuR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 09:50:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36472 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234624AbiLMOuL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 09:50:11 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8EE12AC4
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:50:10 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id g7so5290037lfv.5
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 06:50:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=mB0KyvqD0ZqBlFhaR84Srpxb4q3+wwTogg2S2DXkML4=;
        b=dl6LT2ovp/B3Y8Aog5ybn1DkZ642QYFV8JNKX1yB40+DiHoijbyZlUIHK0L+iiGECp
         oLVuAIg1kjBIOeAJJlIlAMb5szh4oey9yAGsHu7yhT33z/mzLNfWvcDHH34j4zhlJ3i5
         D7dBBiM+najrsgIoQNE0ytCF4qSbsHPCMKGVzzcysociARtsY9ubAvbCOGFjd4xbEfhx
         v/cDVJdUJ6jFlGqWTpvPhPbsbCDHkZznO6CytKKZ47lqgFa51DbckYI7ZZNS2Rl5KvFA
         UgXUKedi4I2MLVkNwDz6uoWcW1WHDmYNt6sYgQNoQlxncSz4C4V4pRF7oow+U//Z0O5Q
         VduA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=mB0KyvqD0ZqBlFhaR84Srpxb4q3+wwTogg2S2DXkML4=;
        b=ELCqOhYciZTc5H/n7EobHyqFMcdHojbuY1ZEHdwLlNwhp226o3HPDRwypIDTZgVQ6i
         S/WvfxmQT1yo6acUV7RG786tHsa73YH30ZP1sHkBZbQrLt9A7MavXlI7kQ7r38sSvnqT
         AiH19sgQXQ0co0o7ex3U4dkhiaxBAOY43kZ680WbeJYcN3gykgllKDJxh+y9klaxjD0X
         eNZ1tvvSeCAnlyjAcJfG5vS4P9jKAjcpRIcnn01TsPKESrR93SMve222rhMBO6LjMwJK
         hJXT9O+p2mZp4/EHCkSlDuXFNxtmUeYhdwx8NG+R/ybMgI1f7/QAQ28mcOM2LXbIM7SX
         DRzA==
X-Gm-Message-State: ANoB5pn58bXOguz23JInCr9Yjlni7ZVy3v/75CkeUK8fnsfTAhNxm5X/
        EeJo8XL0QKk/cO32O5knNROqOA==
X-Google-Smtp-Source: AA0mqf4KuAGFhbPb0Ty13iG9BNOSTdRpE4YMXaM6bojLbmytGkhMxOskRTyEq2EfStBLNwzjOiqO3A==
X-Received: by 2002:ac2:430c:0:b0:4a4:68b9:6085 with SMTP id l12-20020ac2430c000000b004a468b96085mr4816436lfh.16.1670943009070;
        Tue, 13 Dec 2022 06:50:09 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id c2-20020ac25f62000000b004b7033da2d7sm42359lfc.128.2022.12.13.06.50.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 06:50:08 -0800 (PST)
Message-ID: <371d9af8-5af4-e421-2382-8fc29b35eec6@linaro.org>
Date:   Tue, 13 Dec 2022 15:50:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 01/17] dt-bindings: clock: Fix node descriptions in
 uniphier-clock example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-2-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-2-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Prior to adding dt-bindings for SoC-dependent controllers, rename the
> clock nodes to the generic names in the example.
> 
> And drop redundant examples and a parent node of the clock as it is not
> directly necessary.
> 
> Signed-off-by: Kunihiko Hayashi <hayashi.kunihiko@socionext.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

