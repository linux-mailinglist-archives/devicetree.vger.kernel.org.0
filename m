Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F257E6FA24A
	for <lists+devicetree@lfdr.de>; Mon,  8 May 2023 10:32:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232084AbjEHIcP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 8 May 2023 04:32:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232069AbjEHIcO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 8 May 2023 04:32:14 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A0FF26B1
        for <devicetree@vger.kernel.org>; Mon,  8 May 2023 01:32:13 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id 2adb3069b0e04-4f137dbaa4fso4857241e87.2
        for <devicetree@vger.kernel.org>; Mon, 08 May 2023 01:32:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683534731; x=1686126731;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Lz4prnU5xuYjdNiPVkvAinLr8cUxavLs9H9bFD3s5E4=;
        b=VM2UvIjzOl6msa7ESuMNmHdh/XQD7CM9UKMEkbiYpBNm4ZhecF2+NVtZ0JD1++ZdVm
         smzpRlAYXQYwcCjyEmjBL5pZ6XwGJHn/ju2UshYmq+KZkAuk5/z/rwnDIOr/FaOjImcR
         rmtm4csGQSFFlsoDSOADe2gEpn1AhJeSlpBWBPIsvQ3byL337W5DTrkQ75LF87nyRMFh
         W/S1U6r/nGgE1uW118kt6zLcQw1+50/r7EpVA79Uco1SFnJL2scQFeM4twObW2NNxJEl
         f9zMf0Xv9cUJQNg6Y7YAcX/dxcMGOnWfrFVu3iioaQdLvaQQaqXi9m/9BUqhLr37K+Eb
         HgTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683534731; x=1686126731;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Lz4prnU5xuYjdNiPVkvAinLr8cUxavLs9H9bFD3s5E4=;
        b=aY5VYmMx4IH8Qk6HT+VkW03h5DOxhQEPYltAAyS1n7YbAPQe2NGx2l2ATDc1jX0BK7
         pOdPsilNJuw5pZpLsTY9vaMRmCqf6Bt1t91TeJWdyoXTgV4oyDm9r55ZAGD6tfghpWrV
         QfgINoEzNQOKWENnQzqn8hiCqBMQc7wFMBpblCh7ucjZsnk93ybaLu7YQj4y7FVW+piZ
         yFUxTcz8YhSBHyLV+TEg6EeoQmRePDSccLj+hyG+PuIGFEOOXan5EeOF7sjkTqKlIr6X
         3Nr6z7dPb1KxqSenRCl6H/lzuGNzWYf2EKRWQXp8lQjJkalVhCLzVFVfY7jhnYiRyYB2
         Ie4A==
X-Gm-Message-State: AC+VfDyYt3Vz0wQyt8e7fjOtV0PYihmA0J5yhYMH+Zn+VvIMPA3qY88t
        jWWujUL1gYTR/T9rdk96fQmE7A==
X-Google-Smtp-Source: ACHHUZ4/szUMQTlbn+VYeDtxgy0K4t/loQJR9Vxp7p2ce4kCYvUw7R4MnZrtXBi912JybpA3mQGDog==
X-Received: by 2002:a19:ee04:0:b0:4ed:bdac:7a49 with SMTP id g4-20020a19ee04000000b004edbdac7a49mr2013547lfb.54.1683534731164;
        Mon, 08 May 2023 01:32:11 -0700 (PDT)
Received: from [192.168.1.101] (abyl248.neoplus.adsl.tpnet.pl. [83.9.31.248])
        by smtp.gmail.com with ESMTPSA id p11-20020ac246cb000000b004edc485f86bsm1219117lfo.239.2023.05.08.01.32.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 08 May 2023 01:32:10 -0700 (PDT)
Message-ID: <f968009f-c52b-5e4c-aa79-01c0ac53b8dc@linaro.org>
Date:   Mon, 8 May 2023 10:32:08 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.1
Subject: Re: [PATCH 2/4] ARM: dts: qcom: apq8074-dragonboard: Set DMA as
 remotely controlled
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
References: <20230507190735.2333145-1-dmitry.baryshkov@linaro.org>
 <20230507190735.2333145-3-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230507190735.2333145-3-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 7.05.2023 21:07, Dmitry Baryshkov wrote:
> Add the qcom,controlled-remotely property for the blsp2_bam
> controller node. This board requires this, otherwise the board stalls
> during the boot for some reason (most probably because TZ mishandles the
> protection error and keeps on looping somewhere inside).
> 
> Fixes: 62bc81792223 dts: msm8974: Add blsp2_bam dma node
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Looks like a common theme.. sony-rhine boards also have the DMA
enabled *and* need this property.. perhaps it's a SoC-wide (or
at least SoC-and-fw-distribution-wide) issue?

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm/boot/dts/qcom-apq8074-dragonboard.dts | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> index 1345df7cbd00..6b047c679370 100644
> --- a/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> +++ b/arch/arm/boot/dts/qcom-apq8074-dragonboard.dts
> @@ -23,6 +23,10 @@ &blsp1_uart2 {
>  	status = "okay";
>  };
>  
> +&blsp2_dma {
> +	qcom,controlled-remotely;
> +};
> +
>  &blsp2_i2c5 {
>  	status = "okay";
>  	clock-frequency = <200000>;
