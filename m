Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90E6B5A9C80
	for <lists+devicetree@lfdr.de>; Thu,  1 Sep 2022 18:05:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234814AbiIAQFq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Sep 2022 12:05:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234678AbiIAQFp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Sep 2022 12:05:45 -0400
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C4E6357FC
        for <devicetree@vger.kernel.org>; Thu,  1 Sep 2022 09:05:42 -0700 (PDT)
Received: by mail-lj1-x230.google.com with SMTP id by6so18379231ljb.11
        for <devicetree@vger.kernel.org>; Thu, 01 Sep 2022 09:05:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=vr/ZL5AmHAEzgnQmGDrRMJ5qj1xOT1GKkMOHI3Yn3RE=;
        b=OBW0m9lAGizWRZ/P68MGppO1jIqQYAGQy48GMKel0Uq4jhGt2MEV/uWyfS1GbYjzaJ
         1BHwqmn30/EJlpqB47+JmWFHHyEsGsHmus+Qq5Ugv3lDmeLbrWM8NlYqZlLpjriwZ7+P
         48CW16MJKJSt41sqClVgaKv2eYUxhbe0Ug8X6Xn4ob72jJBo/dExtzAdN/YPOpyOgqUY
         3ctqiqMqp0UDutgZ7j7HaqENXyE2Yl6d3K5WOwQtWnFgrulq8wmP/zqdqeS+JeHx4hmg
         Uz1nK6cAa4jIU3UeFPvT6Pw3kNWA99R1ChrRsKhjfLWeu6y8veyOnSVojtYoQ4xiJT18
         uEKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=vr/ZL5AmHAEzgnQmGDrRMJ5qj1xOT1GKkMOHI3Yn3RE=;
        b=0F21bcLRJcFy/FHawJEhAkejCfGkcl1Slb6LwGiSj4bgn2lBSIN+QXCyNon8+kpbfG
         R6isZ8APVLcsuowdjcD0Ymj/i9NxS3ejouCsOdP0izK8+xWtFHq1QLfPO0H+xMxbcPIw
         nJmPRjC6quAzVxYGGnYemkBEahEXYTYJ0TC3naRKAbrXIUhYEcsGNJiCv3AicRb3cuzQ
         xa58Qr2Cy3dC6cdTWdHDhibJ0OIxUnRpgo4pY6PKD2+HT48OVRgOJ4k1I8lksKvhHsC6
         ZHIzs4H1W+jgPfEP1hongoe6Ehp2WQJqxIa6WoqqJYUkHVDdLrHp8JIAhzJPAIxnQ3Lq
         jUfg==
X-Gm-Message-State: ACgBeo1bBwr5OcXGQsk6rxZX29ozlAgPIKDZS9tKFnGIp1NmCQeFOTvn
        loON418q70ZAubh5I8O2fnhs7ZRn9LMk6nKO
X-Google-Smtp-Source: AA6agR4zoKWi+udXaP9NV5RAqmRyRVlHuj2DrQng205JkXNIZulNxMdS6Cd7d78UTo5VCv86qy3CEQ==
X-Received: by 2002:a2e:a785:0:b0:268:a64e:4b49 with SMTP id c5-20020a2ea785000000b00268a64e4b49mr1771914ljf.270.1662048340455;
        Thu, 01 Sep 2022 09:05:40 -0700 (PDT)
Received: from [192.168.28.124] (balticom-73-99-134.balticom.lv. [109.73.99.134])
        by smtp.gmail.com with ESMTPSA id be19-20020a056512251300b00492edc64d08sm1622560lfb.32.2022.09.01.09.05.39
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 01 Sep 2022 09:05:39 -0700 (PDT)
Message-ID: <68c412e6-a582-f82e-377a-b70b1048a45a@linaro.org>
Date:   Thu, 1 Sep 2022 19:05:38 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 05/14] arm64: dts: qcom: sm6115: Add apps smmu node
Content-Language: en-US
To:     Iskren Chernev <iskren.chernev@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20220901072414.1923075-1-iskren.chernev@gmail.com>
 <20220901072414.1923075-6-iskren.chernev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220901072414.1923075-6-iskren.chernev@gmail.com>
Content-Type: text/plain; charset=UTF-8
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

On 01/09/2022 10:24, Iskren Chernev wrote:
> Add support for apps smmu (one of the two smmus) present on the SM6115.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>
> ---
>  arch/arm64/boot/dts/qcom/sm6115.dtsi | 73 ++++++++++++++++++++++++++++
>  1 file changed, 73 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6115.dtsi b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> index efbc81d2253b..a6be8b93a44d 100644
> --- a/arch/arm64/boot/dts/qcom/sm6115.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm6115.dtsi
> @@ -434,6 +434,79 @@ rpm_msg_ram: memory@45f0000 {
>  			reg = <0x45f0000 0x7000>;
>  		};
>  
> +		apps_smmu: iommu@c600000 {
> +			compatible = "qcom,sm6115-smmu-500", "arm,mmu-500";
> +			reg = <0xc600000 0x80000>;
> +			#iommu-cells = <2>;
> +			#global-interrupts = <1>;
> +
> +			interrupts =	<GIC_SPI 81 IRQ_TYPE_LEVEL_HIGH>,

One space after =


Best regards,
Krzysztof
