Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A62164F953
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 15:26:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbiLQO0h (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 09:26:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42560 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229525AbiLQO0d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 09:26:33 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA3C3C56
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 06:26:32 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id c1so7622207lfi.7
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 06:26:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=aBAKrjDZYKHFqaH+bhTLGRxiFMBbEG5xtL60jtUJAKM=;
        b=gywXYnrfjsKLBObQQ6iBg7dyeQ3ijk6LEVXks5bA3S4bqCtRj1MFc7SBM22phmv3+V
         JY9qIyS75xlwMMFGh/9m5SSpd0kexE4aIf7k8ndoEmJ2EeUrYgfRXRVwlJDpaRDSqnxG
         RKFTd2cVO9QMOOzfb++WKJs9qUn61IK7E4xKgPe9wqwZUEigw4oyxvaCP1TQFZ+mD2zx
         uXtzZh7H19OqwYySihXytiXTYXYnmseN9SPRCnTfdgR4cQIlPEzaopd55wx0VUsvlfCH
         u9ei7bvXko8xCxWXRFsehK1DcZzHIQq15rSEhK2q+79cqff00OfwLAjsAgHwsRc+Nsn4
         vqXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=aBAKrjDZYKHFqaH+bhTLGRxiFMBbEG5xtL60jtUJAKM=;
        b=vQ/i4fH571IVLlOZne7VPJesJ9ciQDdIjA47NInrPIAsddR/F6Qp8pHjGDvECWNE0H
         OfISxpy963fp2KjhsBWa7VZzt7Z4qk8G8Iij2f1PR2N2Mm17Wty3Tu82DXDwoV9/mVBC
         Br+FXGa9u4e0ySZ7bo6eEvqe7wpOId5GkuVP4gOETS7o06S/kHEUgaGfd93u2myweKCO
         qI2Ye+0ZvUkbAnfFAqKM5xKnaCYVnCD09uVC40lYIx3m5bQAVQvFMc6gpxtONaIiba7/
         f3bqY1wf4eeM8JleSYRKstelxMJ3TGIpXxZX5vGRp4buOaNOrArXhxGKwqjoCe6IslsU
         ZEwQ==
X-Gm-Message-State: ANoB5pnEUQkDG2YhNo9oyTuCWFdHn3re66x+/w3UTeY9UcBPVW6d0p31
        HKnHiDHAmKXZdRQHCJk7pajxFA==
X-Google-Smtp-Source: AA0mqf55sZ4jYPjQE6FoBxDnkmA7yvGnr8Y7/eIk+HTyHrPehRgHqwh1i4HPTHgawf847d1gITQBWA==
X-Received: by 2002:a05:6512:3f89:b0:4b1:af78:a657 with SMTP id x9-20020a0565123f8900b004b1af78a657mr12797344lfa.30.1671287192328;
        Sat, 17 Dec 2022 06:26:32 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id c22-20020ac25f76000000b00492e3a8366esm529573lfc.9.2022.12.17.06.26.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 06:26:31 -0800 (PST)
Message-ID: <19b09eff-705a-5522-fbad-6553e5dd391e@linaro.org>
Date:   Sat, 17 Dec 2022 15:26:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 4/4] arm64: dts: qcom: sm6125: Add IOMMU context to
 DWC3
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, Will Deacon <will@kernel.org>,
        Joerg Roedel <joro@8bytes.org>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Lux Aliaga <they@mint.lgbt>,
        Robin Murphy <robin.murphy@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Thierry Reding <treding@nvidia.com>,
        Melody Olvera <quic_molvera@quicinc.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Douglas Anderson <dianders@chromium.org>,
        linux-arm-kernel@lists.infradead.org, iommu@lists.linux.dev,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20221216215819.1164973-1-marijn.suijten@somainline.org>
 <20221216215819.1164973-5-marijn.suijten@somainline.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221216215819.1164973-5-marijn.suijten@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 16.12.2022 22:58, Marijn Suijten wrote:
> From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> 
> Add an IOMMU context to the USB DWC3 controller, required to get USB
> functionality upon enablement of apps_smmu.
> 
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6125.dtsi | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125.dtsi b/arch/arm64/boot/dts/qcom/sm6125.dtsi
> index f560499cc0ca..a205121ab4a7 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6125.dtsi
> @@ -542,6 +542,7 @@ usb3_dwc3: usb@4e00000 {
>  				compatible = "snps,dwc3";
>  				reg = <0x04e00000 0xcd00>;
>  				interrupts = <GIC_SPI 255 IRQ_TYPE_LEVEL_HIGH>;
> +				iommus = <&apps_smmu 0x100 0x0>;
>  				phys = <&hsusb_phy1>;
>  				phy-names = "usb2-phy";
>  				snps,dis_u2_susphy_quirk;
