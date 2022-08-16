Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C0E3A594CA0
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 03:33:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241077AbiHPA10 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Aug 2022 20:27:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32990 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352434AbiHPAYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Aug 2022 20:24:41 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2F3217DABD
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 13:34:14 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id qn6so15389528ejc.11
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 13:34:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=C2DX2ca7bHN7SVtPDmCU8rhrYCWb6kGjMw+dl7PYH3A=;
        b=hBACRnEVlwPILbpIJWVmIwveirPxlpdBfR/nHLiPxMxIUdcRR6EAYvzRjiNsZSTIqe
         EKMBej1tT9tMClvM85IaoFsx4zKzd5QKDbLhmZJXXY5xrvbyRivn1sayE0tizFQxR+iw
         5VDLZyWU7aU/qOlYcaULn4JLb7Du1vYQXcro+/hd19NcbkrIyZiJ6QWhqHgaaqxWpu6e
         R6Axd7mtl++ln5Q7wRB8kPuvPpsHbr1YpajycZ5kXhJf4FI02Ma2vhU2CKUYHSi4Cji7
         s+V9aRuhG+EZUmlLiShYVMrvERqw9/5i4tCKAM1kvK6Mzk3XwiKFBiTMWSdR2oGGPjH5
         kFiQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=C2DX2ca7bHN7SVtPDmCU8rhrYCWb6kGjMw+dl7PYH3A=;
        b=CmKJej0vqu5xmPllLlW273VlONhOpQ9VHzRmDayVBGmpEDoE9yrE1hFWFf9uSsC8R9
         kGjhIP6Z6u1Ne+JlmK5fPAWtLMi2FtIkw1MGqVkSpfWQbu4ViN20VSEdbvRczhPSl0uk
         aCn5xNF+1FvRYkZl61wbKMO3rEmXNTAhq98BM5IKPig4VxBSJabRK8DisMp6jt1ZQ9rv
         Hf4whFIPdhyzzL4BujNktrhuYtJdqLmqJ2o/TU/z9hbu02jODUz7Wi5nJQnZEy7lt8bk
         61cOoORR/INeV2kTAruu8XSE3roUgWr7NYPOkOHSXz1r3PVnlDYufkfWl/YLS5favjTd
         Z2Tw==
X-Gm-Message-State: ACgBeo2nywKRLYEIa9td+JR9yS/aad6P9kqaddV01jJRqgEiitUeBiXA
        xTw/5987oeldvoUptg2AXnF/bA==
X-Google-Smtp-Source: AA6agR7GNkEDMG/2BojsZC5Ae1/tzQEup1Sm4EksXxmcjFQ+R52Il66N9sHCn7PsuWSJ9BB50VVezQ==
X-Received: by 2002:a17:907:2c47:b0:730:8bbb:69a8 with SMTP id hf7-20020a1709072c4700b007308bbb69a8mr11810673ejc.38.1660595649083;
        Mon, 15 Aug 2022 13:34:09 -0700 (PDT)
Received: from [192.168.0.12] (cpc76482-cwma10-2-0-cust629.7-3.cable.virginm.net. [86.14.22.118])
        by smtp.gmail.com with ESMTPSA id u19-20020a05640207d300b0043bb8023caesm7129729edy.62.2022.08.15.13.34.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 13:34:08 -0700 (PDT)
Message-ID: <e6821eef-4fcb-97b1-24be-e2bb62b99039@linaro.org>
Date:   Mon, 15 Aug 2022 21:34:07 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH v2 3/4] arm64: dts: qcom: sdm845: Add the RPMh stats node
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Maulik Shah <quic_mkshah@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20220812101240.1869605-1-abel.vesa@linaro.org>
 <T2Uz7zs4Ht58lYc5zWg1VBY0ju6bVaSKa9y3RhBQWDDHmPXBHbAxI2J34jSeY0BFQy2y4JtFn3nQS0Lz4xI5jw==@protonmail.internalid>
 <20220812101240.1869605-3-abel.vesa@linaro.org>
From:   Caleb Connolly <caleb.connolly@linaro.org>
In-Reply-To: <20220812101240.1869605-3-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
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



On 12/08/2022 11:12, Abel Vesa wrote:
> SDM845 is a special case compared to the other platforms that use RPMh
> stats, since it only has 2 stats (aosd and cxsd), while the others have
> a 3rd one (ddr).
> 
> So lets add the node but with a SDM845 dedicated compatible to make
> the driver aware of the different stats config.
Hi,

I gave this a go on the OnePlus 6, I noticed the driver is also meant to read 
the stats for remote procs via smem, however this seems to fail for me - it 
can't find any of the SMEM items even if I probe the driver manually after 
ensuring remoteprocs have booted. Is this an unsupported feature on SDM845?
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
> 
> Changed qcom,rpmh-stats-sdm845 to qcom,sdm845-rpmh-stats, as suggested
> by Krzysztof.
> 
>   arch/arm64/boot/dts/qcom/sdm845.dtsi | 5 +++++
>   1 file changed, 5 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 5bea96a9ce06..67fe08b837be 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -4851,6 +4851,11 @@ ebi_cdev: ebi {
>   			};
>   		};
> 
> +		sram@c3f0000 {
> +			compatible = "qcom,sdm845-rpmh-stats";
> +			reg = <0 0x0c3f0000 0 0x400>;
> +		};
> +
>   		spmi_bus: spmi@c440000 {
>   			compatible = "qcom,spmi-pmic-arb";
>   			reg = <0 0x0c440000 0 0x1100>,
> --
> 2.34.1
> 

-- 
Kind Regards,
Caleb (they/he)
