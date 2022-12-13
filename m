Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id F3D2F64BD65
	for <lists+devicetree@lfdr.de>; Tue, 13 Dec 2022 20:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236870AbiLMTkM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Dec 2022 14:40:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236875AbiLMTkL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Dec 2022 14:40:11 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE00620998
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 11:40:09 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id y25so6658076lfa.9
        for <devicetree@vger.kernel.org>; Tue, 13 Dec 2022 11:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=stMgisODdzyH4aN9LIZZcNZJPHp6Z9airQGZMCS/JmI=;
        b=lnuWbyxHtMgkf+s8hZe/8hCnZCC7+HHjgxiVIZWGD3xYLqrwLQNZ6cLRNuoVQeTCy1
         FhkAGxyZ8OLHM44vGTbCm5NTIhfVtZfe8PE8hFfKjhOzuzmGiXNxFsBjUqElZs5uLJVm
         80ciQiGXMH8vO3WP0xeS4/o4222BnwweyItIGsmH128KwZhNrmj5bHcjQAiOXWlZfA36
         CdV4A+Tuq4dwkucxsADtZum6EIn+vu9X83sk6OQauwLdjMgnLDda3BNXoVlhBEOr6BaU
         tk/39pFIA6xmz6E86JiGhTHtvpC59oAj3v6JOg50LFTHJKlr0jl9aP4UQJYHWDmT6c7O
         FBhA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=stMgisODdzyH4aN9LIZZcNZJPHp6Z9airQGZMCS/JmI=;
        b=QF67efpXVSLC1/XvQ26bmrb3x+d82U9Z2xmpkFqQz1UuFKW5fmmDa0Mk5DPVgk06UU
         7D0Eu9j5Cw6fvFCdMYy97qaR25Ux/STtCkG8MXYUawlUo2nzBHZ8WM8pvNzxc0MyVMFh
         HPPpJwnffPhKQpUBIuLXF1nceUWf0V+A1vUFw45GJrBCCKRr0zfYE7y75GSuEsexPvON
         iAwFcCbpZcytapk4mR3F0RAwMk6rhLtDFig8vCY7JbPR7TMzvNsk4ZGZQPi0eizO21oQ
         YmMf7wkPBP+eGppL7HkJNgoFfO5IlkjmerMIyXbfwfARnEAgDbwuvPl55MRzf7QIIstg
         YG/g==
X-Gm-Message-State: ANoB5pkHjxt9oR4tvCLpwQ82ZsA8MBEKPCKIroXJ31fFCLXJNocokwV8
        730YxopWm5GOKTIrcAoZomdYaw==
X-Google-Smtp-Source: AA0mqf4xduEXYMBNDtHzHJzMXgofyK1mhvwF6l+vax3uSnOA9pG3heegKXIuaG/Sd0203pCUeoGUVg==
X-Received: by 2002:a05:6512:c3:b0:4b5:7054:3b55 with SMTP id c3-20020a05651200c300b004b570543b55mr4959790lfp.68.1670960408270;
        Tue, 13 Dec 2022 11:40:08 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id q6-20020a056512210600b004b15bc0ff63sm477326lfr.277.2022.12.13.11.40.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Dec 2022 11:40:07 -0800 (PST)
Message-ID: <7ea03855-4806-f4ca-e0c3-4044e1095d6b@linaro.org>
Date:   Tue, 13 Dec 2022 20:40:06 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH 1/4] arm64: dts: qcom: Introduce a carveout for modem
 metadata
Content-Language: en-US
To:     Sibi Sankar <quic_sibis@quicinc.com>, andersson@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        manivannan.sadhasivam@linaro.org
Cc:     agross@kernel.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        konrad.dybcio@somainline.org, amit.pundir@linaro.org,
        regressions@leemhuis.info, sumit.semwal@linaro.org,
        will@kernel.org, catalin.marinas@arm.com, robin.murphy@arm.com
References: <20221213140724.8612-1-quic_sibis@quicinc.com>
 <20221213140724.8612-2-quic_sibis@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213140724.8612-2-quic_sibis@quicinc.com>
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

On 13/12/2022 15:07, Sibi Sankar wrote:
> Introduce a new carveout for modem metadata. This will serve as a
> replacement for the memory region used by MSA to authenticate modem
> ELF headers.
> 
> Signed-off-by: Sibi Sankar <quic_sibis@quicinc.com>

Thank you for your patch. There is something to discuss/improve.

>  
>  	aliases {
> @@ -865,7 +870,7 @@ hp_i2c: &i2c9 {
>  	clock-names = "iface", "bus", "nav", "snoc_axi", "mnoc_axi", "xo";
>  
>  	iommus = <&apps_smmu 0x461 0x0>, <&apps_smmu 0x444 0x3>;
> -	memory-region = <&mba_mem &mpss_mem>;
> +	memory-region = <&mba_mem>, <&mpss_mem>, <&mdata_mem>;
>  
>  	/* This gets overridden for SKUs with LTE support. */
>  	firmware-name = "qcom/sc7180-trogdor/modem-nolte/mba.mbn",
> diff --git a/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> index bf522a64b172..bda0495aa0b5 100644
> --- a/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sc7280-herobrine-lte-sku.dtsi
> @@ -17,6 +17,11 @@
>  			reg = <0x0 0x9c700000 0x0 0x200000>;
>  			no-map;
>  		};
> +
> +		mdata_mem: memory@9d100000 {
> +			reg = <0x0 0x9d100000 0x0 0x4000>;
> +			no-map;
> +		};
>  	};
>  };
>  
> @@ -32,7 +37,7 @@
>  
>  	iommus = <&apps_smmu 0x124 0x0>, <&apps_smmu 0x488 0x7>;
>  	interconnects = <&mc_virt MASTER_LLCC 0 &mc_virt SLAVE_EBI1 0>;
> -	memory-region = <&mba_mem>, <&mpss_mem>;
> +	memory-region = <&mba_mem>, <&mpss_mem>, <&mdata_mem>;

Only two memory regions are allowed by bindings... unless you fix it in
further patchset. If so, please re-order to have the bindings first. It
helps reviewers not to have such questions. :)


Best regards,
Krzysztof

