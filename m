Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0170D719BF0
	for <lists+devicetree@lfdr.de>; Thu,  1 Jun 2023 14:22:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232692AbjFAMWX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Jun 2023 08:22:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232699AbjFAMWW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Jun 2023 08:22:22 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38866136
        for <devicetree@vger.kernel.org>; Thu,  1 Jun 2023 05:22:20 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4effb818c37so859333e87.3
        for <devicetree@vger.kernel.org>; Thu, 01 Jun 2023 05:22:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685622138; x=1688214138;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=11FBe/d51xNtYkFruVUclUiXwmDTiJy1xe16XS1Df+4=;
        b=PsS+kHpu9lywXQAiGKvDHHSfTPM31QYhndLpfsfB4ujoP8ik65VIYSRIykKoinO4++
         kgEF6c7ECD72M8IjwHFoS0mYuqU1aTXzY7BQSq5NohabH4HNjoSVgBH/dq+jR4o42SZQ
         LUUNqNPZ3Vmu9GUuu3dKbvzjuEMCG+8tSzh2lA+x+kEC2mptErGelxw2xFQHbs8inGld
         UcOC4ssXOFH5+KHQbtepcLQV00aDFNiDmNLsV75gWw/EGve6r5fsAxnpqFhWPaC6luRA
         6zPuS8t9xpB5CjywFHgw6cEnlTQgO3UYFIAGGVfa/JMFKUwXAifrIKasewbmG8igzNAU
         Hf1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685622138; x=1688214138;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=11FBe/d51xNtYkFruVUclUiXwmDTiJy1xe16XS1Df+4=;
        b=bmyiebcLX3r4A75cG4C/t2+VN8q3rvASJlVpWMSZMWTBrSNWfcJl9Onm6b0ODQ6L+7
         xLTADr1v/TK0UQbwkpq/Y4Ie3Mnp7o6Ba8urfjeXY0fbgVqdzz6QxLR0F5Bn6ia790yD
         8N3TkW5z/rCVS23ALmzAFRUh8G/U5egjTI3RKbfX8ZNa2sTditE38nEGUia3Ao42qAtX
         Qx3oqXmkHwEOySdlrtdiZlr9Me67mnu7TQxnwasHn+rUDrIl7wgLbSQB3T39Y3ghKDrW
         oe7HgmnB443rp7wTOepm0w82Bzb48cRPKFTT82CGjmkEVwWFdlw3oVISK4dk/MyrSFgr
         wyKg==
X-Gm-Message-State: AC+VfDyrDOyK+0UcQ4ZIuBw4gskxbi25d+a6HmH6doCa8LfZCm9kGW+p
        m31/JcXT0/58Wv+rb89Fdi5e5w==
X-Google-Smtp-Source: ACHHUZ50Rrip55/ddc74tFk2nWPjpMvZZivBTx45aF4Txp4S5F7lWf9iaYBa5ZMhhWm+JGMaXrNBoQ==
X-Received: by 2002:ac2:4c25:0:b0:4ef:eb50:4d3d with SMTP id u5-20020ac24c25000000b004efeb504d3dmr1419022lfq.18.1685622138458;
        Thu, 01 Jun 2023 05:22:18 -0700 (PDT)
Received: from [192.168.1.101] (abyj77.neoplus.adsl.tpnet.pl. [83.9.29.77])
        by smtp.gmail.com with ESMTPSA id h8-20020a05651211c800b004f26f699e9dsm1067817lfr.184.2023.06.01.05.22.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Jun 2023 05:22:17 -0700 (PDT)
Message-ID: <58d0e91d-c67f-407d-76ac-d227905ab1cf@linaro.org>
Date:   Thu, 1 Jun 2023 14:22:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sm8150: Add missing interconnect
 paths to USB HCs
Content-Language: en-US
To:     Abel Vesa <abel.vesa@linaro.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
References: <20230601120029.38859-1-abel.vesa@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230601120029.38859-1-abel.vesa@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 1.06.2023 14:00, Abel Vesa wrote:
> The USB HCs nodes are missing the interconnect paths, so add them.
> 
> Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
> ---
>  arch/arm64/boot/dts/qcom/sm8150.dtsi | 8 ++++++++
>  1 file changed, 8 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8150.dtsi b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> index 197c016aaeba..4e73808c7bb1 100644
> --- a/arch/arm64/boot/dts/qcom/sm8150.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8150.dtsi
> @@ -3595,6 +3595,10 @@ usb_1: usb@a6f8800 {
>  
>  			resets = <&gcc GCC_USB30_PRIM_BCR>;
>  
> +			interconnects = <&aggre1_noc MASTER_USB3 0 &mc_virt SLAVE_EBI_CH0 0>,
> +					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_USB3 0>;
> +			interconnect-names = "usb-ddr", "apps-usb";
You need to update interconnect-cells to 2.

Konrad
> +
>  			usb_1_dwc3: usb@a600000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a600000 0 0xcd00>;
> @@ -3644,6 +3648,10 @@ usb_2: usb@a8f8800 {
>  
>  			resets = <&gcc GCC_USB30_SEC_BCR>;
>  
> +			interconnects = <&aggre1_noc MASTER_USB3_1 0 &mc_virt SLAVE_EBI_CH0 0>,
> +					<&gem_noc MASTER_AMPSS_M0 0 &config_noc SLAVE_USB3_1 0>;
> +			interconnect-names = "usb-ddr", "apps-usb";
> +
>  			usb_2_dwc3: usb@a800000 {
>  				compatible = "snps,dwc3";
>  				reg = <0 0x0a800000 0 0xcd00>;
