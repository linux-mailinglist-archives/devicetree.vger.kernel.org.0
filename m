Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0059B6D28C2
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 21:42:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229678AbjCaTmU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 15:42:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbjCaTmT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 15:42:19 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6D4CD20D95
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:42:17 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id a44so5587261ljr.10
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 12:42:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680291735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=HGQcHpaIv8QAfti44Be0rTmGXgIqffcTSClO8TJE8zQ=;
        b=R7PY94+XDSXfnSzyvSOeTbW7DPN6nth7w7ZzFGfE822HMPV4/4nVuGatKOcNyavBKT
         7o8BOBPD5qQWcwg8tRIwbF++SvzCisqKyYh+1KDHkZMkew5DfIEowxBGfwtx8cpzgNBR
         7kuaxAcCwPia/4WYaXCypt5aVX42VKHFyQjTnEoO4ejTtBUK/lVQqTNL5LjDkWhUWqFL
         w+RMuTElDHHFfAJsf2xlMMicsxJBPmwUA4eyl801usY+3bHMyctTEuzmIfQkJd5vAjXg
         /JvMOtqBbhd58SS0dkdy8Fu2enKUYRS15fZQLRJXCy4jBIgJQa3F0zzuii0KnwuFwsoX
         MPBQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680291735;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=HGQcHpaIv8QAfti44Be0rTmGXgIqffcTSClO8TJE8zQ=;
        b=7uiL33XezZK0Sd5Hc4L9O5CpRJpIjujnQX0/gWg759TUqHJj0/qAdYGxgAGBW1Ek0m
         oA0PTLfxk0UPnoDnTH4q8Crp/7T8sc91gebuNTD+rmxcXyTAAZ/2y4mSxrQEfGhq6HLf
         6fMjDGdYg+9F0yzFj6OCtQQ9fdb4j6Q8SNrihR6yGPqW5goQ7u/xVwDpOWsVn7sEDL+k
         etDH98d3yVIrjPvkVKRRol1ssCb1duzaecq8R/YzQ7g5naqw8elijHXlx86GRdws/kTo
         JQTJB7P53W4eL8kLTXAETXDgpZ+FkLlMbSPV/FqkW2GWmq/poKxiXVA/O59F6UVhzRuT
         b5eA==
X-Gm-Message-State: AAQBX9cPNtYZhN2jzvpYpxSKzGfO4kXCP6a9RiZ2iIc6c+9cieYu80jo
        ZFX8b8yOeiVUioskWUcsDCBuWw==
X-Google-Smtp-Source: AKy350bzaDYVwil8HfJdyhO40e41xGnrbtfqNs7CwjbXGq0kFKC/l6Ud07vfQSsSwvPeUCH5MPoWhA==
X-Received: by 2002:a2e:6a05:0:b0:2a5:f6c0:cb36 with SMTP id f5-20020a2e6a05000000b002a5f6c0cb36mr5331762ljc.7.1680291735561;
        Fri, 31 Mar 2023 12:42:15 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id x10-20020a2e7c0a000000b0029ee7bc0114sm473648ljc.64.2023.03.31.12.42.14
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 12:42:15 -0700 (PDT)
Message-ID: <ea5d1433-3654-c22a-ce35-bb436d68cca4@linaro.org>
Date:   Fri, 31 Mar 2023 21:42:13 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] ARM: dts: qcom: sdx55-fn980: Move "status" property
 to the end of node
Content-Language: en-US
To:     Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>,
        andersson@kernel.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230331145915.11653-1-manivannan.sadhasivam@linaro.org>
 <20230331145915.11653-2-manivannan.sadhasivam@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230331145915.11653-2-manivannan.sadhasivam@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 31.03.2023 16:59, Manivannan Sadhasivam wrote:
> To align with rest of the devicetree files, let's move the "status"
> property to the end of the nodes.
> 
> Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
> ---
>  .../boot/dts/qcom-sdx55-telit-fn980-tlb.dts   | 20 ++++++++++---------
>  1 file changed, 11 insertions(+), 9 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> index b73b707342af..91d13c40496c 100644
> --- a/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> +++ b/arch/arm/boot/dts/qcom-sdx55-telit-fn980-tlb.dts
> @@ -243,21 +243,21 @@ &ipa {
>  };
>  
>  &pcie_phy {
> -	status = "okay";
> -
>  	vdda-phy-supply = <&vreg_l1e_bb_1p2>;
>  	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
> -};
>  
> -&pcie_ep {
>  	status = "okay";
> +};
>  
> +&pcie_ep {
>  	pinctrl-names = "default";
>  	pinctrl-0 = <&pcie_ep_clkreq_default &pcie_ep_perst_default
>  		     &pcie_ep_wake_default>;
>  
>  	reset-gpios = <&tlmm 57 GPIO_ACTIVE_LOW>;
>  	wake-gpios = <&tlmm 53 GPIO_ACTIVE_LOW>;
> +
> +	status = "okay";
>  };
>  
>  &qpic_bam {
> @@ -265,8 +265,6 @@ &qpic_bam {
>  };
>  
>  &qpic_nand {
> -	status = "okay";
> -
>  	nand@0 {
>  		reg = <0>;
>  
> @@ -277,11 +275,13 @@ nand@0 {
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
> +	status = "okay";
>  };
>  
>  &tlmm {
> @@ -308,16 +308,18 @@ pcie_ep_wake_default: pcie-ep-wake-default-state {
>  };
>  
>  &usb_hsphy {
> -	status = "okay";
>  	vdda-pll-supply = <&vreg_l4e_bb_0p875>;
>  	vdda33-supply = <&vreg_l10e_3p1>;
>  	vdda18-supply = <&vreg_l5e_bb_1p7>;
> +
> +	status = "okay";
>  };
>  
>  &usb_qmpphy {
> -	status = "okay";
>  	vdda-phy-supply = <&vreg_l4e_bb_0p875>;
>  	vdda-pll-supply = <&vreg_l1e_bb_1p2>;
> +
> +	status = "okay";
>  };
>  
>  &usb {
