Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9B9F76ABCBE
	for <lists+devicetree@lfdr.de>; Mon,  6 Mar 2023 11:31:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbjCFKbA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Mar 2023 05:31:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231215AbjCFKac (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Mar 2023 05:30:32 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8160B2D5E
        for <devicetree@vger.kernel.org>; Mon,  6 Mar 2023 02:30:06 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id i28so12125170lfv.0
        for <devicetree@vger.kernel.org>; Mon, 06 Mar 2023 02:30:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678098605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=umdF+u99XqU6BUPrWs9MXt+wNEETjJebz2FunxtY/2A=;
        b=WMWDrvZidhNXWfF4g+m3vFsjtydeb1BMPFDKV2c9QZOR0nK64l1JSa2nhVszX904R8
         kiMRVjMZdtJtZ9raB2gpnkRmFe2z6TIuKlU1+PtXSyZpYdTRrnq/izCMa29ac3VdxDzL
         7EyYuiiM4o0NYhnqubkYN9ujxIdo5+/5DccF52HleabePm+qQWQnPhnDhS9IBkK68JEC
         Hnk8hH0HUaWlmeDuCBd/8qGRta3G34J8N85Nde8vlkJmBrlbFKiZ6D4ZcHf/YEDZ5t1d
         LDqgtsRK+1lLfR6UVtdHzLyBySjzXwDIvX7KSTRu0srb4nSsWXmjfV8+QtYlFIb2l+ne
         NrsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678098605;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=umdF+u99XqU6BUPrWs9MXt+wNEETjJebz2FunxtY/2A=;
        b=jZufJKFVvBUorS9cRUr6dndK6iumLwtz+htpfQ7NQs20FBAQKAz5xtq7uBWBhCiKrV
         l2Qp3kNRAPE0ZGGaGU3MAQWXK5n94nOGs21YiSJ1y/YEHq5R5bqIuqVhwHbrujWmG1l4
         eNd+I2Mxg3s2+Qd0vDZEn+XIibESaUdCwrEtLlO57UG0Fc97Cy+yOgPiGvz2cKcn0s3Z
         4nwzds+/sNdF3FH09QZz+zQuB8yx7ZQta/kwALXFXGwJ0+XLkni3E9zOSTAf/VmV8Chj
         2V0YXtwPWjNnT34nbUyiLJ9raAq5jc3CNZdwmTcJjSiMmuGF5liYtLrlqzeTlfQJR3DI
         Ej0g==
X-Gm-Message-State: AO0yUKXfa4yw0wHOENh1TIEAwlYqHXygaCLIrUTFYYQQ2zo+VkN99WhG
        ogoCGWlAbbkdVCviKFPrtv2lqw==
X-Google-Smtp-Source: AK7set/YD2lZtbgFhEpdIj5OyfzbKR8vHtwrgbLzbM5Lb2Gsvlctlhqc6lOcDCc+j3r1Jll62ESYtQ==
X-Received: by 2002:a05:6512:487:b0:4d8:71dd:5c5e with SMTP id v7-20020a056512048700b004d871dd5c5emr2732232lfq.37.1678098604378;
        Mon, 06 Mar 2023 02:30:04 -0800 (PST)
Received: from [192.168.1.101] (abym99.neoplus.adsl.tpnet.pl. [83.9.32.99])
        by smtp.gmail.com with ESMTPSA id r19-20020a2e9953000000b00293534d9760sm1637917ljj.127.2023.03.06.02.30.02
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 06 Mar 2023 02:30:03 -0800 (PST)
Message-ID: <f2660adc-e6c8-9de6-e1d6-7abdc7ad7249@linaro.org>
Date:   Mon, 6 Mar 2023 11:30:01 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 5/6] ARM: dts: qcom: sdx65-mtp: Enable PCIE0 PHY
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mani@kernel.org,
        lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
        manivannan.sadhasivam@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <1678080302-29691-1-git-send-email-quic_rohiagar@quicinc.com>
 <1678080302-29691-6-git-send-email-quic_rohiagar@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1678080302-29691-6-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 6.03.2023 06:25, Rohit Agarwal wrote:
> Enable PCIE0 PHY on SDX65 MTP for PCIE EP.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
Status should go last. It would be nice if you could update
that for the other nodes in this dt while at it.

Konrad
>  arch/arm/boot/dts/qcom-sdx65-mtp.dts | 7 +++++++
>  1 file changed, 7 insertions(+)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx65-mtp.dts b/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> index 85ea02d..86bb853 100644
> --- a/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> +++ b/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> @@ -245,6 +245,13 @@
>  	status = "okay";
>  };
>  
> +&pcie0_phy {
> +	status = "okay";
> +
> +	vdda-phy-supply = <&vreg_l1b_1p2>;
> +	vdda-pll-supply = <&vreg_l4b_0p88>;
> +};
> +
>  &qpic_bam {
>  	status = "okay";
>  };
