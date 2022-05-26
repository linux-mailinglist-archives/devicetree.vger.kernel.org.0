Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AAFCC534FF4
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 15:33:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346991AbiEZNdE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 09:33:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34728 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346493AbiEZNdD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 09:33:03 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D57E4D80AC
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 06:33:01 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id j25so2172660wrb.6
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 06:33:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=SHU57XEpO11dU/I4PduAkw9FykSnUIevFlLnoxF+spU=;
        b=k3M2lxlWd6HRILtuRPrLDqNX4uSn7Az9mKjYvBeN6espPdKGhOKd3oDedhFbuSRNbi
         TEOjRQ9b3T9Au2ikDkLkY11SxVc54wd9o2Pvej91P5qLlsWzwYDgZNoDFyVXhkYanZ5A
         rkQuK1ROqUUjnYXk6xwDzhzYc6A+rAqSrHmbHsIz80dIcEFEukpp5CSgT5yoT6+oyfr9
         yZj+hFJTGjNsQavXbFWLjwELZ+BgDMSNRYhI8Ciwg2ZJh6y4hN3BaowZW1QV69FZwlEv
         6RKjmLlZZRSYjDG7wOqroGlL2gwqouUbB28j1wofYb8m5v5mRJELalsqAU0CW+/noSi1
         EA/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=SHU57XEpO11dU/I4PduAkw9FykSnUIevFlLnoxF+spU=;
        b=2qBABEYa3OAWbTYh9KkJkrzFdSoPvpH8N/xCXGLpM+r/yfC6owktHXW2QLl2LbZff5
         5e+FfArYxPV56LrOBLiehLnssbgcAxzWO+kuGbsKRzb/i7kTu4rkubUAfHD6we+NM0VP
         hLPpYUDdPFzstkpSr/Ek/OqVudtt/3+SpaTlkPrOBEX8zbGxFOqNFkYH+oDP5wFUtbWh
         w7IuQrCyhY4j4GbiWn8CCbnfQjGvrpwNWu3WI22g4kwRLUWSGA09hoKPP2VGgm13Uz65
         kAmGGRhZxDQHClkmnC0/+1GrzU/1K+u5aZIYKc4SZRzGUJme0rELXOmRHXGjT9jnrpKV
         W88w==
X-Gm-Message-State: AOAM532BAAyatY/uxJb3XVpvXoGmL4UUqAdY6vnayTmmoEPi/oTb5ykU
        D7BRNL5pideiQ7+G8VM4+aQWPQ==
X-Google-Smtp-Source: ABdhPJwWT0P+M1/WJn0hwm1Q4dmJN7bIxH6QGe3bcSQ5Pdtm80OETi5alBFgyKVM0VeQfMmIgglZhg==
X-Received: by 2002:adf:dd49:0:b0:20f:f9e3:62c1 with SMTP id u9-20020adfdd49000000b0020ff9e362c1mr9096138wrm.579.1653571979700;
        Thu, 26 May 2022 06:32:59 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id az19-20020a05600c601300b003973c54bd69sm4814242wmb.1.2022.05.26.06.32.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 26 May 2022 06:32:58 -0700 (PDT)
Message-ID: <c9cec6bd-91a1-76ef-2d3b-59041aa107a9@linaro.org>
Date:   Thu, 26 May 2022 14:32:57 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.0
Subject: Re: [PATCH v1 2/4] arm64: dts: Add msm8939 SoC
Content-Language: en-US
To:     Vincent Knecht <vincent.knecht@mailoo.org>, agross@kernel.org,
        bjorn.andersson@linaro.org, robh+dt@kernel.org, krzk+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     shawn.guo@linaro.org, jun.nie@linaro.org, benl@squareup.com,
        jwillcox@squareup.com, jgates@squareup.com, mchen@squareup.com,
        zac@squareup.com, Leo Yan <leo.yan@linaro.org>
References: <20220419010903.3109514-1-bryan.odonoghue@linaro.org>
 <20220419010903.3109514-3-bryan.odonoghue@linaro.org>
 <bc6ce23672c52b1f2593fcac720edf9ca9e9fdaa.camel@mailoo.org>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <bc6ce23672c52b1f2593fcac720edf9ca9e9fdaa.camel@mailoo.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 19/04/2022 18:21, Vincent Knecht wrote:
>> +               mpss_mem: mpss@86800000 {
>> +                       reg = <0x0 0x86800000 0x0 0x2b00000>;
>> +                       no-map;
>> +               };
>> +
> Also would have to check, we used to use a size of 0x5600000 for mpss...
> 

Good catch

https://github.com/vknecht/msm8916-mainline-linux/blob/v5.9-rc1-idol3/arch/arm64/boot/dts/qcom/msm8939.dtsi#L80

https://review.carbonrom.org/plugins/gitiles/CarbonROM/android_kernel_sony_msm/+/refs/heads/cr-5.1/arch/arm/boot/dts/qcom/msm8939-common.dtsi#54

---
bod

