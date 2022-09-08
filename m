Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C2B3D5B295B
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 00:30:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229552AbiIHWap (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 18:30:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230115AbiIHWam (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 18:30:42 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21025A2844
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 15:30:41 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id p7so30161096lfu.3
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 15:30:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=uti3bNXT+PHAstH618C2R3Rjnml8waJ+h4TTs4KwneA=;
        b=yMVbgwlEwqy/sUUqQ0eBluwrQK09mSxukCuHALRPrGKcAAnPtlPac81c1OTRHle2t4
         kKFI+tr3xNBGge7HpZxTZdgx1cYSeqBrLiIhU9S497Xj8irdKMLc+JqeXfy+RLLzosEm
         qhYNUHNIc7rnlhCNoIW1A4v/5ugFwgp4DWPscGFNkRFZ+N+1F5AcbXUldQO+fbNRxMDt
         ZRzJdZQ3ph+5/wXqaahfQZX+CESx1sPCrecR/JnawLEboyiGSBwUgEkYGSdVMU/N8CX4
         jWZ2LU8HE2jznF7Q1xFtsnMIlSwDDtph0ihYWSR7X/Aq5Lcx91hwgKwmmnMZ0VP2Yfeo
         RVKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=uti3bNXT+PHAstH618C2R3Rjnml8waJ+h4TTs4KwneA=;
        b=eh/9WCG1vV/D1s3RpVU1A25hJfj16gwF8xIFqff10pJzNH+AmC+jPwaLbVKr9v7E6D
         OkyUmJLjR2GOYAhVsTkVRM1J0N03eWW3uXPUNnK5NFttTfrUJ8VaTIc2+i1ERo1Y3kNt
         088je1+5XSqjm051b0Um5ZSEvYb6w5nWOj62CnQvLDBizsXswgH0APcay0hmswojBLbn
         JOakjT5B8NpM9muuUvRv1Dpo5MfQrrbt9M4ZNYrbVkdM0PrgmHPOxanm18BZPopVjvW5
         /TaG1bhncM94xlLYXIISbH2ZxjFGe5G1WKOhykJeBLv/dLD/fxZzPCMral/ic7nuqrD1
         01lQ==
X-Gm-Message-State: ACgBeo0Mxb+3OKAXn9muTyW5+D1hCYfDE+Bf7Qfq79avFU7KgaxPyt8M
        GkeIW2UFK+Q2HkM/iztEfKrLwA==
X-Google-Smtp-Source: AA6agR5wHJDeGSpvkhg3sY+PQY2J6mrzHBEHWd6t16O/1QG3m7Di4PC5PYA6U+sQPcrTCPqFLU7cYw==
X-Received: by 2002:ac2:5208:0:b0:497:aadf:eac7 with SMTP id a8-20020ac25208000000b00497aadfeac7mr3001515lfl.315.1662676239438;
        Thu, 08 Sep 2022 15:30:39 -0700 (PDT)
Received: from [192.168.1.211] ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id 25-20020ac25f59000000b00494a1e875a9sm4485lfz.191.2022.09.08.15.30.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 15:30:39 -0700 (PDT)
Message-ID: <952912fe-5ee5-8742-de47-77c013d2c93a@linaro.org>
Date:   Fri, 9 Sep 2022 01:30:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.1.2
Subject: Re: [PATCH 00/11] qcom,mdss-dsi-ctrl: Remove redundant phy-names from
 yaml and dtsi
Content-Language: en-GB
To:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>, robdclark@gmail.com,
        quic_abhinavk@quicinc.com, sean@poorly.run, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, quic_mkrishn@quicinc.com,
        agross@kernel.org, andersson@kernel.org,
        konrad.dybcio@somainline.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
In-Reply-To: <20220907000105.786265-1-bryan.odonoghue@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 07/09/2022 03:00, Bryan O'Donoghue wrote:
> phy-names is both inconsistently used and not actually required by the driver.
> 
> Previous discussion with Krzysztof and Rob suggested to remove the property.
> 
> https://www.spinics.net/lists/linux-arm-msm/msg116525.html
> 
> - Mark as deprecated and not required in yaml
> - Drop from associated dtsi files => grep -r mdss-dsi arch/arm* | grep qcom
> 
> Bryan O'Donoghue (11):
>    dt-bindings: msm: dsi-controller-main: Drop redundant phy-names

I'm going to take this into msm-next, the rest can go via Bjorn.

>    ARM: dts: qcom: apq8064: Drop redundant phy-names from DSI controller
>    ARM: dts: qcom: msm8974: Drop redundant phy-names from DSI controller
>    arm64: dts: qcom: msm8916: Drop redundant phy-names from DSI
>      controller
>    arm64: dts: qcom: msm8996: Drop redundant phy-names from DSI
>      controller
>    arm64: dts: qcom: sc7180: Drop redundant phy-names from DSI controller
>    arm64: dts: qcom: sc7280: Drop redundant phy-names from DSI controller
>    arm64: dts: qcom: sdm660: Drop redundant phy-names from DSI controller
>    arm64: dts: qcom: sdm630: Drop redundant phy-names from DSI controller
>    arm64: dts: qcom: sdm845: Drop redundant phy-names from DSI controller
>    arm64: dts: qcom: sm8250: Drop redundant phy-names from DSI controller
> 
>   .../devicetree/bindings/display/msm/dsi-controller-main.yaml    | 2 +-
>   arch/arm/boot/dts/qcom-apq8064.dtsi                             | 1 -
>   arch/arm/boot/dts/qcom-msm8974.dtsi                             | 1 -
>   arch/arm64/boot/dts/qcom/msm8916.dtsi                           | 1 -
>   arch/arm64/boot/dts/qcom/msm8996.dtsi                           | 2 --
>   arch/arm64/boot/dts/qcom/sc7180.dtsi                            | 1 -
>   arch/arm64/boot/dts/qcom/sc7280.dtsi                            | 1 -
>   arch/arm64/boot/dts/qcom/sdm630.dtsi                            | 1 -
>   arch/arm64/boot/dts/qcom/sdm660.dtsi                            | 1 -
>   arch/arm64/boot/dts/qcom/sdm845.dtsi                            | 2 --
>   arch/arm64/boot/dts/qcom/sm8250.dtsi                            | 2 --
>   11 files changed, 1 insertion(+), 14 deletions(-)
> 

-- 
With best wishes
Dmitry

