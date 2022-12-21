Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 17D43653770
	for <lists+devicetree@lfdr.de>; Wed, 21 Dec 2022 21:15:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232553AbiLUUPr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Dec 2022 15:15:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53832 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234765AbiLUUPq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Dec 2022 15:15:46 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D98F4DE6
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 12:15:43 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id x11so1335809lfn.0
        for <devicetree@vger.kernel.org>; Wed, 21 Dec 2022 12:15:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=5uPDBdA258VfD8mP2kKZPpc2Fq03i1qJ2ZV+ViKy9ns=;
        b=zt4R3Hy3rD78ZLlfQZwJiT1radcuRRNas5D/sK9pDZpw2C5S3uOtyjEBEn+tuSZaHA
         MKRobbXPb/ze0T8HSyAeImwEa7LTFmnHxTIFm914YH85u7TDUEOXl9asgVlzp40eSign
         7EqMDf8Yj2uG/Y6FpogtUMmuTaBeh3eaNZvGoQ0+Fmacvn55NTdpoXsSJzEjnwDw4c4v
         kA2KQLaYvm5hGKaVa56BfSoj3HcXKptGljN4Q91vvMrkwUKkGVe1P+Irm5704rlpjFus
         BCqPh1zxWgQtlXRx8WmbVh39Ne8Ij4vxg2vR1XtgLmDv0EtPFSu7bO0DnRF/Mx5plcZ4
         IyFg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=5uPDBdA258VfD8mP2kKZPpc2Fq03i1qJ2ZV+ViKy9ns=;
        b=wAF0Hs6fURNy9+at3VfjzkKQlWqaFQhrIZIECevdmKbim1PrpkdcQJ0pNJR2R44SlF
         uPL3jRbCOr3CO9NAbmx79oSf78eRkyBqEkx1ZM6Qy0WKCKu7tDQTvj6XgbX2Bp2Nd3qJ
         ZmmZ0kYRMhbhDmC0CHJAmEyPdVongaOXOFErpLjP56CYHRvRESKMX2Lo6p59z8JcJd/v
         HxCC5i7GDI2xPu+RsA1ral6cjYCeOSgS7/LkGniWAvsYv/xamGmFjdsvubb+BjFiSSeG
         r5I0LW5Xm1JRB9nKq+m4BjIg5mpWw57VSHdWNkpjRFDXiT1RKmnj8zYWi5UBMBpkqtGx
         JN0w==
X-Gm-Message-State: AFqh2koSX9gRgN1Ah+veuNFL7/aQ+RsQ3KJhKKQHvJzJ3iXny2O4f9Tv
        ohHXX2tOheW+C60LcGgV3a79EQ==
X-Google-Smtp-Source: AMrXdXuCOxWJ/4k111kwHkeFhQtaBoFOuE5KKUIJ9K8W1vDComgz3wpE6y5axiujCbXJFq6b0HwSjg==
X-Received: by 2002:a05:6512:2308:b0:4b5:6b87:a5ce with SMTP id o8-20020a056512230800b004b56b87a5cemr1104572lfu.46.1671653742282;
        Wed, 21 Dec 2022 12:15:42 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id v24-20020ac258f8000000b004947984b385sm1932743lfo.87.2022.12.21.12.15.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 21 Dec 2022 12:15:41 -0800 (PST)
Message-ID: <03f31bb8-2152-e309-8c6a-f66731be0fca@linaro.org>
Date:   Wed, 21 Dec 2022 21:15:39 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH v4 15/20] arm64: dts: qcom: msm8956: use SoC-specific
 compat for tsens
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Thara Gopinath <thara.gopinath@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Zhang Rui <rui.zhang@intel.com>
Cc:     Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221221020520.1326964-1-dmitry.baryshkov@linaro.org>
 <20221221020520.1326964-16-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221221020520.1326964-16-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
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



On 21.12.2022 03:05, Dmitry Baryshkov wrote:
> The slope values used during tsens calibration differ between msm8976
> and msm8956 SoCs. Use SoC-specific compat value for the msm8956 SoC.
> 
> Fixes: 0484d3ce0902 ("arm64: dts: qcom: Add DTS for MSM8976 and MSM8956 SoCs")
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/msm8956.dtsi | 4 ++++
>  1 file changed, 4 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8956.dtsi b/arch/arm64/boot/dts/qcom/msm8956.dtsi
> index e432512d8716..668e05185c21 100644
> --- a/arch/arm64/boot/dts/qcom/msm8956.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8956.dtsi
> @@ -12,6 +12,10 @@ &pmu {
>  	interrupts = <GIC_PPI 7 (GIC_CPU_MASK_SIMPLE(6) | IRQ_TYPE_LEVEL_HIGH)>;
>  };
>  
> +&tsens {
> +	compatible = "qcom,msm8956-tsens", "qcom,tsens-v1";
> +};
> +
>  /*
>   * You might be wondering.. why is it so empty out there?
>   * Well, the SoCs are almost identical.
