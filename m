Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F0CA53020E
	for <lists+devicetree@lfdr.de>; Sun, 22 May 2022 11:21:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241744AbiEVJUZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 22 May 2022 05:20:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232802AbiEVJUY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 22 May 2022 05:20:24 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E7FCE3EB98
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 02:20:18 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id c19so7851123lfv.5
        for <devicetree@vger.kernel.org>; Sun, 22 May 2022 02:20:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=Hn971pAxYTvVGQyDYzhIqILHUewrwS/uH4npcxqm6jI=;
        b=p3FVYYekUT0QSdmq4ffhEAhk3OhyKtjjuN9l8ym+cK45pRirZIDqsMX2V8CCaWvUFD
         stc8YTKHbN4PKs2HFIHI4chBaydooqbZpZBuxDfa4/MhFfL6AWBBz3rzEFYSnB6dxyci
         xrqjb+YO8rEgQvNEGsW7Vvrms/0k0eaEnT8eg+FI4sVC8ZWfp0HNqsn20v+8G7BaMUeb
         0wlDY22saGEFuyPq5q3ZcuS92Pmsvl67BSCl1xu0MtUBL9CuBqoS+Ihzx/O9Ga6s4XQc
         nGx0glvqgKbR6KTjn0z3mkffu5tqh0crhNrvMDjN5cBfAEOkWxh6q6Ojswcg2aoTd67V
         Ljtw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Hn971pAxYTvVGQyDYzhIqILHUewrwS/uH4npcxqm6jI=;
        b=DSOI3wnUUpWQXnuNMcSIY7VLYPkMbLPEGRRtUKMwl42pcE9o1HkUbwg/1W2+QA8QzT
         uY8KjaUqSQsKnlZ1rA7V7yISqfTMElMcqWdQeMPG6U+qJ/CLUwzFqZeZuYNcs0vQrJzd
         oj3ub9iGvau7Pu0iGI4gm5tCZ9kpUM7Ah677fbwJau4UEaDQ9eK14VulORJq0xNE7jlL
         1zLLlTw8pEYlR/ZDxJtitZ9gaiQ606xopRvTVp7W/sxRb1Nri6kqxyuCFd2cjpN0M4zq
         GrJuIII7AcV1zP/nS10zQLKjjtH5yA8P4KpgIcaDDdsknu0pmKfmxS0ADxH4cVJ8M0x2
         yMMQ==
X-Gm-Message-State: AOAM531p2PxPsauwfvqFrjN96IzxTjNSn/u3/M6nhcU5IUWdGVv7uPmF
        tb3lAZX9I2pDSksPgrc3BvixXg==
X-Google-Smtp-Source: ABdhPJyF/zepDpdPfOCYpfUADyf+CWqTfvZVG90No8stWmZzGSnYzXcS46B8DszZpaTW/rd8iaW4Sg==
X-Received: by 2002:a05:6512:3330:b0:477:cab8:315b with SMTP id l16-20020a056512333000b00477cab8315bmr10871351lfe.300.1653211217070;
        Sun, 22 May 2022 02:20:17 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a16-20020a05651c011000b0024cac53a82csm1118045ljb.0.2022.05.22.02.20.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 May 2022 02:20:16 -0700 (PDT)
Message-ID: <5476b457-5b1d-8ccb-302c-b24d26136c27@linaro.org>
Date:   Sun, 22 May 2022 11:20:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 12/12] arm64: dts: qcom: msm8998-mtp: correct board
 compatible
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220521164550.91115-1-krzysztof.kozlowski@linaro.org>
 <20220521164550.91115-12-krzysztof.kozlowski@linaro.org>
 <20b56d26-6f30-2f78-3e27-771c7e7684ec@somainline.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20b56d26-6f30-2f78-3e27-771c7e7684ec@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/05/2022 11:11, Konrad Dybcio wrote:
> 
> 
> On 21.05.2022 18:45, Krzysztof Kozlowski wrote:
>> Add qcom,msm8998 SoC fallback to the board compatible.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  arch/arm64/boot/dts/qcom/msm8998-mtp.dts | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/arch/arm64/boot/dts/qcom/msm8998-mtp.dts b/arch/arm64/boot/dts/qcom/msm8998-mtp.dts
>> index 66540d2ca13b..db240a3207dc 100644
>> --- a/arch/arm64/boot/dts/qcom/msm8998-mtp.dts
>> +++ b/arch/arm64/boot/dts/qcom/msm8998-mtp.dts
>> @@ -7,7 +7,7 @@
>>  
>>  / {
>>  	model = "Qualcomm Technologies, Inc. MSM8998 v1 MTP";
> A bit off-topic, but should this board still be considered supported? If it really is msm8998v1, it should not work in the current state of mainline, as there are many differences between the pre-production v1 and the final v2.1, even as deep as in the clock tree.

Unless you are sure there are no users or it is not working, there is
not much benefit to remove such board. Specially that it's DTSI is
re-used by one more - fxtec-pro1.


Best regards,
Krzysztof
