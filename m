Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4435C5E786C
	for <lists+devicetree@lfdr.de>; Fri, 23 Sep 2022 12:32:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231501AbiIWKcu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Sep 2022 06:32:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231753AbiIWKcQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Sep 2022 06:32:16 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6865811E979
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 03:31:59 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id j24so13630689lja.4
        for <devicetree@vger.kernel.org>; Fri, 23 Sep 2022 03:31:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=JYMmhfkFM4ANd32GEEelSBV88bdLE1Ja446ByYHiaXA=;
        b=NeRn+B9WRWOsoR9LzOGZJy5GxoiA1NB6ylwd4hE/tqg/RSCDyuM/KHVHuT2kA9FRSK
         c7V57vIhgWsR8e0J1Jdr+U55ja/VyEJweGVSiL+1p3uxK8TvSRR4uTIzM9IjHxZ4i5ce
         ToIM2tljUC+ybVzXLHI/fbp56eaQ02XsoXGvWZmzgg9nQYuCH1ehvArcYsRfsbibCvQW
         rmITz0AAswRXChWK02oxfHFwpBNAU2EC66YRrCzRa9a1ZK59kgOWkYBLdtH87rFLd7c+
         o6PDI/Hw8gqTJhu4BuPT3UZFTB/6OxwpVs9wbvQ59udQs/pNlJLckxTsDpu41MRWpIZv
         kv1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=JYMmhfkFM4ANd32GEEelSBV88bdLE1Ja446ByYHiaXA=;
        b=HZGPe0htqrfNiJIrYxc6kg8ZAO7mIv07gTtLQaPIGBOWk4c6gWEHFkf9uZPflRXJIA
         blfb14xqBVLOuodPHhfpbxQl0aHYT7YUXo/9qvQ07OPMrmST4g3+5d1tptM0Vgkcj0sL
         pdISYpHeLWJFGo8pIKCvO2VHc4ro4p/g9KPGVFsyRjAMKwoXn/VWmvTKCxy/RqEVgpNl
         308l/vylGyyP1G3QXuA+Jn5NhaaBGTKL2+Wtucx9Zv2K6bY4q1HrAxFzwnJ/0rcbBtDO
         h+t6z3uanqII4F/fD7v33qUgtxUaYpyErjHcW6rsa0fb/eKANqqnKD4bxhIRjIt1AAMG
         8R7w==
X-Gm-Message-State: ACrzQf3mN9Go1RW57GAvq3Myv2trK9tAWRXAIuPWoeD8IjgxxtFKedKl
        gvmGdJkkyq2i5LwxrndxPzYRhg==
X-Google-Smtp-Source: AMsMyM4cV+jFFO9JIbh1AGxjnaC9WhvCSEcPo5m/X4um5ZzZvU4UL9Tx52cV06TLSinxTNc7/bU5Rg==
X-Received: by 2002:a05:651c:11cc:b0:26c:14c5:5b8f with SMTP id z12-20020a05651c11cc00b0026c14c55b8fmr2658081ljo.450.1663929117731;
        Fri, 23 Sep 2022 03:31:57 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v4-20020a2e9f44000000b0026ac7cd51afsm1316687ljk.57.2022.09.23.03.31.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Sep 2022 03:31:57 -0700 (PDT)
Message-ID: <cfd55866-0fd1-e819-75bb-31eff15bf984@linaro.org>
Date:   Fri, 23 Sep 2022 12:31:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.2.2
Subject: Re: [PATCH 08/12] dt-bindings: pinctrl: qcom,sm8250-lpass-lpi: add
 bias-bus-hold and input-enable
Content-Language: en-US
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        linux-kernel@vger.kernel.org, linux-gpio@vger.kernel.org
References: <20220922195651.345369-1-krzysztof.kozlowski@linaro.org>
 <20220922195651.345369-9-krzysztof.kozlowski@linaro.org>
 <20220923093131.5fb5co5i3f4eybcs@krzk-bin>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220923093131.5fb5co5i3f4eybcs@krzk-bin>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,MISSING_HEADERS,NICE_REPLY_A,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
To:     unlisted-recipients:; (no To-header on input)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/09/2022 11:31, Krzysztof Kozlowski wrote:
> On Thu, 22 Sep 2022 21:56:47 +0200, Krzysztof Kozlowski wrote:
>> The existing SC7280 LPASS pin controller nodes use bias-bus-hold and
>> input-enable, so allow them.  Squash also blank lines for readability.
>>
>> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>> ---
>>  .../bindings/pinctrl/qcom,sm8250-lpass-lpi-pinctrl.yaml     | 6 ++----
>>  1 file changed, 2 insertions(+), 4 deletions(-)
>>
> 
> Running 'make dtbs_check' with the schema in this patch gives the
> following warnings. Consider if they are expected or the schema is
> incorrect. These may not be new warnings.
> 
> Note that it is not yet a requirement to have 0 warnings for dtbs_check.
> This will change in the future.
> 
> Full log is available here: https://patchwork.ozlabs.org/patch/1681325
> 
> 
> pinctrl@33c0000: 'dmic01-active-pins', 'dmic01-sleep-pins', 'rx_swr-active-pins', 'tx_swr-active-pins', 'tx_swr-sleep-pins', 'wsa-swr-active-pins', 'wsa-swr-sleep-pins' do not match any of the regexes: '-state$', 'pinctrl-[0-9]+'

This is being fixed in next DTS patches. I'll reorganize them if there
is going to be a resubmit.

Best regards,
Krzysztof

