Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8905E69088E
	for <lists+devicetree@lfdr.de>; Thu,  9 Feb 2023 13:21:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229457AbjBIMV3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Feb 2023 07:21:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35240 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229538AbjBIMV2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Feb 2023 07:21:28 -0500
Received: from mail-pg1-x536.google.com (mail-pg1-x536.google.com [IPv6:2607:f8b0:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E8159171A
        for <devicetree@vger.kernel.org>; Thu,  9 Feb 2023 04:21:25 -0800 (PST)
Received: by mail-pg1-x536.google.com with SMTP id u75so1418349pgc.10
        for <devicetree@vger.kernel.org>; Thu, 09 Feb 2023 04:21:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=7kOs7sC2FIm1iO3NpfdUuEs1p01vyNH33hBJhAwcmDs=;
        b=XzCnCXQbk+rtSUDcAJUcX9DuqzMGcSpXXwhzAl0BTT3YIu2j0ohJUqEFakrMMqZQRv
         MSx03y1VRxwRrJxkmwyA2im7SMKM/7/iiZss5OxproE7UBewoCQw6QBn/CqClv7VLpzY
         m4tVFXJheNgKIaWdnoSGIaARzhoTijEI0ORHt3KUwqCfqweAInum/9lNoioyA65bSCVP
         MXNsILXzs6oitTz43SAPvrOUkYFf4tu+HTGx73MJNOaeziLLDMNlf6f2oq1kTkhxG/ne
         s0PcbrBXH3g1OsaEo+BQDGjv79qz0mIiaVaw4gtViqkTBdsO2lj/dBCNT5B8K2wQT7hE
         gZZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=7kOs7sC2FIm1iO3NpfdUuEs1p01vyNH33hBJhAwcmDs=;
        b=IIE3In05HXPaPZbqj1vqHJCNwUokm+TsfKl0XP7HwDzhdXxFqj/zOsCYlF9eaAlaSB
         /dVnI5AiPcV/0CVRgk+z7hYJ3XAPLyU0eluX1GeN0zmm6j4QENJOO5zzvTFddKplU/Px
         2fOPSyBA/qTu2tDUAPROCZHSpn3s+w1S/BKGDnlc54iqv0VO1nJ2McCDzK2QfOgmLdCb
         mLyGEtleDbrfwKzayog5DEy1AOmEow2k+QdgaDq1vcQMD+f0wWGKAqh0m55YMUycwehk
         asTrRYInyEw03/WSPS6EUFiMhqcil83XbIt2Umdt/mX4LNsNopELIESZTafjJeX+S0+u
         KS2Q==
X-Gm-Message-State: AO0yUKVBkLnGDnFhd8mrgrPis/JhKmPivkguUMt0QgYai4Mv2vLp/RSH
        y/rNRBVGx0talRJl44RfU5XQYA==
X-Google-Smtp-Source: AK7set8GpSN1A9MlZL+SCVntv8ObFNFEyzB5vL4OhjfjJspfRANTpB/kHJZkd63/tWMV4Rai1Xofsg==
X-Received: by 2002:a62:5243:0:b0:5a8:5271:5a2e with SMTP id g64-20020a625243000000b005a852715a2emr1651099pfb.0.1675945285249;
        Thu, 09 Feb 2023 04:21:25 -0800 (PST)
Received: from ?IPV6:2401:4900:1c5f:7a7d:9c44:b2ee:ae34:5374? ([2401:4900:1c5f:7a7d:9c44:b2ee:ae34:5374])
        by smtp.gmail.com with ESMTPSA id e22-20020aa78256000000b00592626fe48csm1278584pfn.122.2023.02.09.04.21.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 09 Feb 2023 04:21:24 -0800 (PST)
Message-ID: <7b38331c-3b29-03c1-fbed-f5799d11ca1f@linaro.org>
Date:   Thu, 9 Feb 2023 17:51:19 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.1
Subject: Re: [PATCH v9 11/14] arm64: dts: qcom: sm8250: add description of
 Qualcomm Crypto Engine IP
To:     Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Herbert Xu <herbert@gondor.apana.org.au>,
        Thara Gopinath <thara.gopinath@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Andy Gross <agross@kernel.org>,
        "David S. Miller" <davem@davemloft.net>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-crypto@vger.kernel.org
References: <20230208183755.2907771-1-vladimir.zapolskiy@linaro.org>
 <20230208183755.2907771-12-vladimir.zapolskiy@linaro.org>
Content-Language: en-US
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
In-Reply-To: <20230208183755.2907771-12-vladimir.zapolskiy@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Vladimir,

On 2/9/23 12:07 AM, Vladimir Zapolskiy wrote:
> Add description of QCE and its corresponding BAM DMA IPs on SM8250 SoC.
> 
> Signed-off-by: Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
> ---
>   arch/arm64/boot/dts/qcom/sm8250.dtsi | 24 ++++++++++++++++++++++++
>   1 file changed, 24 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index e59c16f74d17..d8698d18223e 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -2215,6 +2215,30 @@ ufs_mem_phy_lanes: phy@1d87400 {
>   			};
>   		};
>   
> +		cryptobam: dma-controller@1dc4000 {
> +			compatible = "qcom,bam-v1.7.0";
> +			reg = <0x0 0x01dc4000 0x0 0x24000>;
> +			interrupts = <GIC_SPI 272 IRQ_TYPE_LEVEL_HIGH>;
> +			#dma-cells = <1>;
> +			qcom,ee = <0>;
> +			qcom,controlled-remotely;
> +			num-channels = <8>;
> +			qcom,num-ees = <2>;
> +			iommus = <&apps_smmu 0x586 0x11>,
> +				 <&apps_smmu 0x596 0x11>;
> +		};
> +
> +		crypto: crypto@1dfa000 {
> +			compatible = "qcom,sm8250-qce", "qcom,sm8150-qce";
> +			reg = <0x0 0x01dfa000 0x0 0x6000>;
> +			dmas = <&cryptobam 6>, <&cryptobam 7>;
> +			dma-names = "rx", "tx";
> +			interconnects = <&aggre2_noc MASTER_CRYPTO_CORE_0 &mc_virt SLAVE_EBI_CH0>;
> +			interconnect-names = "memory";
> +			iommus = <&apps_smmu 0x586 0x11>,
> +				 <&apps_smmu 0x596 0x11>;
> +		};
> +
>   		tcsr_mutex: hwlock@1f40000 {
>   			compatible = "qcom,tcsr-mutex";
>   			reg = <0x0 0x01f40000 0x0 0x40000>;

This patch was part of the v7 arm64 dts fixes I sent out - see [1].
Probably you can use it as a base and make the changes (interconnect 
property for the BAM DMA node and qce-compatible names) directly there
and include it in your patch series.

[1]. 
https://lore.kernel.org/linux-arm-msm/20220921045602.1462007-3-bhupesh.sharma@linaro.org/

Thanks,
Bhupesh
