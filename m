Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 33D9B6C3A76
	for <lists+devicetree@lfdr.de>; Tue, 21 Mar 2023 20:30:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230178AbjCUTaH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Mar 2023 15:30:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43984 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230165AbjCUTaE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Mar 2023 15:30:04 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 066AD46140
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 12:29:56 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id q16so9662655lfe.10
        for <devicetree@vger.kernel.org>; Tue, 21 Mar 2023 12:29:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679426994;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8lk8zT/+3BzUVR+gfvIgIE2jusGWe/WjOjzrPgO4TWw=;
        b=YlcL/i1qKYCwne3jIt1vb6Dh5CMuBvuxgQ2GL8Kfhldf89iun3bJI19H8MvUlmEJHx
         GozijcXBBgAjD3xgkVoXv2eIIvNlYOw6brWNoWuhuuJuUPuG/y/XGLO4o/05rsDL8nAb
         J3WZOS/CnV6fBjtzFvadE0deLRmbcngDM1yZaSelHYyqgM+a5InUSy/ZvWE8TLy8rz3l
         m2HbYUpyhm6bU7JYGqplvQyM5M4MAXJmcpJIWfgSW8lR0jbzQllObJR4sBqK3g6y0R9t
         SBnPoYSWEKVxxdprTgVboJQdXOstBCtz8ae/tzhwZoe20VEPiOQmfpHECrR//XJQP2mq
         jk5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679426994;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8lk8zT/+3BzUVR+gfvIgIE2jusGWe/WjOjzrPgO4TWw=;
        b=cL5djv62iiqlho2G8RcP/0aJ/LhbaPctj9BabenIYxmsg78u1gwVg663v/sITYAvKm
         2vbfxgTZ26yMqgyLwvnfUBk/wtsG9C/2tDEjLfXGd73R9ybUqAyj77DdUpb0kBqr7/G2
         hhjN1nYytbEy8phyTjtgPn4nlCQ6rGr+HBRx9s5wS1F8nxKmQCeHXYKRqDGNFXyDX977
         PryBQDWNYP/+5pTkXol1alZK8UC+13Sf2MMlJyRGMS/GJHHt95IxkCfgN6gJCz2anSLA
         pUVDqiXW3HaGLY+qjT+E+BRqT7hcIuriYMnnrc8XxuV7Bip+8CJE3xTp6equIhLhwpqN
         UENQ==
X-Gm-Message-State: AO0yUKWcHY8/L27GddripyWXj4lOCowdMsM9RUW1g5pfLEkWnNcdGibA
        5HaBzelKbZzbvZ3bEbwK3wpt2Q==
X-Google-Smtp-Source: AK7set914GApnZBasLoDAtBk/khYQ+ImBVYJkLlrQPpK+rQkRa4SYZOMqeN96ZHMaAXCVZOA0aU7hA==
X-Received: by 2002:ac2:4f8c:0:b0:4cb:449a:31f8 with SMTP id z12-20020ac24f8c000000b004cb449a31f8mr1349687lfs.35.1679426994225;
        Tue, 21 Mar 2023 12:29:54 -0700 (PDT)
Received: from [192.168.1.101] (abym238.neoplus.adsl.tpnet.pl. [83.9.32.238])
        by smtp.gmail.com with ESMTPSA id y1-20020a197501000000b004dcf20843efsm2271183lfe.239.2023.03.21.12.29.51
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 21 Mar 2023 12:29:53 -0700 (PDT)
Message-ID: <3b04e155-c5eb-9767-bd65-d044b8dfb878@linaro.org>
Date:   Tue, 21 Mar 2023 20:29:50 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 1/5] arm64: dts: qcom: sdm845: Fix the BAM DMA engine
 compatible string
Content-Language: en-US
To:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, andersson@kernel.org,
        bhupesh.linux@gmail.com, krzysztof.kozlowski@linaro.org,
        robh+dt@kernel.org, vladimir.zapolskiy@linaro.org, rfoss@kernel.org
References: <20230321190118.3327360-1-bhupesh.sharma@linaro.org>
 <20230321190118.3327360-2-bhupesh.sharma@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230321190118.3327360-2-bhupesh.sharma@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 21.03.2023 20:01, Bhupesh Sharma wrote:
> As per documentation, Qualcomm SDM845 SoC supports BAM DMA
> engine v1.7.4, so use the correct compatible strings.
> 
> Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> index 0fdd59a9feed..e8e9aa4da914 100644
> --- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
> @@ -2628,7 +2628,7 @@ ufs_mem_phy_lanes: phy@1d87400 {
>  		};
>  
>  		cryptobam: dma-controller@1dc4000 {
> -			compatible = "qcom,bam-v1.7.0";
> +			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
>  			reg = <0 0x01dc4000 0 0x24000>;
>  			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
>  			clocks = <&rpmhcc RPMH_CE_CLK>;
