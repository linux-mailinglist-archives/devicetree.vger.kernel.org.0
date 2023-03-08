Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 605B26B0749
	for <lists+devicetree@lfdr.de>; Wed,  8 Mar 2023 13:38:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230022AbjCHMi3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 8 Mar 2023 07:38:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40780 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229606AbjCHMi1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 8 Mar 2023 07:38:27 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2BB3DB
        for <devicetree@vger.kernel.org>; Wed,  8 Mar 2023 04:38:25 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id h3so16387533lja.12
        for <devicetree@vger.kernel.org>; Wed, 08 Mar 2023 04:38:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678279104;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=zqoqEngpa92HXP36jw2ieNM67MD9iN4wmO+NKWDiZy8=;
        b=QUfof2mMxQ/mmjRKjZw5pDxu4Hw54+13iYhF7A+2j7c/WtghHygs7T1PMkMVSGzoVm
         keQ//GoXooFVEut/HlWvLcdvBHfuxrmr7IPZRO/QBufo5r2wzSx+iXT934x4mp+WpFPk
         W779j1ugkJUiXmnvWSLORmAy7Njl3ECY2rkAavDSdGSQiJvq92rHxLhGp6SKixIHroGH
         rqrMzEYsX1gHhjOdl0NIth6DYRekglxXeYALnwSOSTbBHSGL0++r8c4ugJ5OgG11SkSH
         LtyeqDEe0wu8FAGhigMr5YiZVHj9LgtDb9VIWzRrIA1n63FB+mEBztphKfid/YbuKcZs
         aN8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678279104;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=zqoqEngpa92HXP36jw2ieNM67MD9iN4wmO+NKWDiZy8=;
        b=C/C2P8ZamJwCHwzkQ1vAcTKjbhGXnUgjTQ4MMNQqo4JZNP1Qmhhajud291U7qDR64Y
         uPHPXEuDdlv8T1ze5aJtQv5u96Z2BziDFV5wEfmK2Jop8JOQM027VN5iLBSDlSg2qDij
         QVKV9D5zqo3d7oRJETPSfGb5RgvMqzqmtylvO1ZlqWl4K5duw4l2Wtelz3bsLkj/KDRC
         7l3GWl4cA3lnHKTCaqygKiC3+5J9JGjkBohbSU8+9J4L/TDZrt/4GloYhrct+2FhVDQ2
         RbBF6VTwjZi687Kt2tZM0aKcmbGpRp4EpvNA9wkT86+QBWGp6j22YR0XC2EKwQrg1+s5
         +s2w==
X-Gm-Message-State: AO0yUKU6fnoFjxqAFg/S0rkU2qzBohQLhO+D+1GKF+PVq7aLSo6hBwEZ
        ncP6Z1LCnQjE/vyJEINR0WTo+g==
X-Google-Smtp-Source: AK7set+rbD//LLhYhOF7u/1k8YubOnS7ugKdDX02+Puk2/iLVODEqcYpHNjv3ZGi1o93HXNynr84uQ==
X-Received: by 2002:a2e:300f:0:b0:295:941d:76fa with SMTP id w15-20020a2e300f000000b00295941d76famr5100773ljw.40.1678279104222;
        Wed, 08 Mar 2023 04:38:24 -0800 (PST)
Received: from [192.168.1.101] (abyj16.neoplus.adsl.tpnet.pl. [83.9.29.16])
        by smtp.gmail.com with ESMTPSA id a21-20020a2eb555000000b002946ef46109sm2490682ljn.67.2023.03.08.04.38.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 08 Mar 2023 04:38:23 -0800 (PST)
Message-ID: <34e0dc8a-2879-b1c2-8567-8ac0cf0ced80@linaro.org>
Date:   Wed, 8 Mar 2023 13:38:21 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v2 5/6] ARM: dts: qcom: sdx65-mtp: Enable PCIe PHY
Content-Language: en-US
To:     Rohit Agarwal <quic_rohiagar@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, mani@kernel.org,
        lpieralisi@kernel.org, kw@linux.com, bhelgaas@google.com,
        manivannan.sadhasivam@linaro.org
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pci@vger.kernel.org
References: <1678277993-18836-1-git-send-email-quic_rohiagar@quicinc.com>
 <1678277993-18836-6-git-send-email-quic_rohiagar@quicinc.com>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <1678277993-18836-6-git-send-email-quic_rohiagar@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_SORBS_HTTP,RCVD_IN_SORBS_SOCKS,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 8.03.2023 13:19, Rohit Agarwal wrote:
> Enable PCIe PHY on SDX65 MTP for PCIe EP. While at it,
> updating status as last property for each node.
> 
> Signed-off-by: Rohit Agarwal <quic_rohiagar@quicinc.com>
> ---
>  arch/arm/boot/dts/qcom-sdx65-mtp.dts | 20 +++++++++++++++-----
>  1 file changed, 15 insertions(+), 5 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx65-mtp.dts b/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> index ed98c83..facb8e2 100644
> --- a/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> +++ b/arch/arm/boot/dts/qcom-sdx65-mtp.dts
> @@ -245,13 +245,18 @@
>  	status = "okay";
>  };
>  
> -&qpic_bam {
> +&pcie_phy {
> +	vdda-phy-supply = <&vreg_l1b_1p2>;
> +	vdda-pll-supply = <&vreg_l4b_0p88>;
> +
>  	status = "okay";
>  };
>  
> -&qpic_nand {
> +&qpic_bam {
>  	status = "okay";
> +};
>  
> +&qpic_nand {
>  	nand@0 {
>  		reg = <0>;
>  
> @@ -262,11 +267,14 @@
>  		secure-regions = /bits/ 64 <0x500000 0x500000
>  					    0xa00000 0xb00000>;
>  	};
> +
> +	status = "okay";
Did you compiletest this?

Konrad
>  };
>  
>  &remoteproc_mpss {
> -	status = "okay";
>  	memory-region = <&mpss_adsp_mem>;
> +
> +	status = "okay";
>  };
>  
>  &usb {
> @@ -278,14 +286,16 @@
>  };
>  
>  &usb_hsphy {
> -	status = "okay";
>  	vdda-pll-supply = <&vreg_l4b_0p88>;
>  	vdda33-supply = <&vreg_l10b_3p08>;
>  	vdda18-supply = <&vreg_l5b_1p8>;
> +
> +	status = "okay";
>  };
>  
>  &usb_qmpphy {
> -	status = "okay";
>  	vdda-phy-supply = <&vreg_l4b_0p88>;
>  	vdda-pll-supply = <&vreg_l1b_1p2>;
> +
> +	status = "okay";
>  };
