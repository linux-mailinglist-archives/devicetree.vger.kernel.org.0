Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 826BF72FE71
	for <lists+devicetree@lfdr.de>; Wed, 14 Jun 2023 14:24:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244281AbjFNMXq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Jun 2023 08:23:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57546 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244558AbjFNMXY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Jun 2023 08:23:24 -0400
Received: from mail-wm1-x331.google.com (mail-wm1-x331.google.com [IPv6:2a00:1450:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 02CE71FCE
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:23:21 -0700 (PDT)
Received: by mail-wm1-x331.google.com with SMTP id 5b1f17b1804b1-3f8c74af64fso5367915e9.1
        for <devicetree@vger.kernel.org>; Wed, 14 Jun 2023 05:23:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686745399; x=1689337399;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f9oDPuE6X9bPnN1e0nqNdnPmYq9OB1FqNsoaKy+XGXc=;
        b=Gv0WbtgPmUm4pg2adHOLFwmHIaPmtsehPuX+4o4pEcdzuzQ82LxmbxzBuogD9bDPW7
         vOdxQUZM9LGgmBAPqvbygvsBk07w4lEl3S7MoIGVyFcuB/AcNztG/I8aidqcdB13X3bv
         7V12kqk0tor8nVpfM624cm/ZwfyC/tfoMIB8NQLPbxOR7p/LIdZ0njICyVahwktuW55J
         6OXNe4g/X4M1QXzS7kpL+4RPMKIQqELKmQM9ZelmgbcieJ/m4lmDnksT9Rm+HWi23wXX
         b+ltkypWFo90RtEP+6v2c31jYgI0EsZzfWQRbnNtbLpwlXkBLVucI/ljIzb9XWgwVUqI
         AUfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686745399; x=1689337399;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f9oDPuE6X9bPnN1e0nqNdnPmYq9OB1FqNsoaKy+XGXc=;
        b=Vmp4tlKv0dTvYal1SsT7TmI2lumU+nAY/xbnRbKFakj9QeBZ7SLd5MfpylSx/zLr3P
         QBQ6WBGyyZUL6gp7TzGBjlncUZocKVZzTjUiLwhm2r5VIKJ5SkUW4Y/bIjisV/1sAm/1
         3RzlDyb4+4ijY3mcvAvK1ji9BF4Ayk2bCHebnIuzHNH/xmSR04F8IEFFU8Qmj96/T8qo
         C194vdSoIPrZ325aBg+GMqGyz1gWB0ggIOu8vMsxdhjdgNhIiqHYhC4/FOk4DVcULhfe
         pn/EzIQ+g8b86i6q1tTGXphOYfoKKLD1Vxm5gwSeJK7W64zf0XbHnkcrxY0eYP0QOb9O
         oNlg==
X-Gm-Message-State: AC+VfDxiVmIrfGO9NZzYAS/ufi7KNaAZP7Bbzug7g+t8fZScSg3fHTGR
        3bSBDjQeImk6t54mKyIDAbxwfg==
X-Google-Smtp-Source: ACHHUZ55QXptvhOkcLACCLddQxPeYa4V0RaI78djcZf54s/WGu+g8iZBG3/s1BYA1nbve5tFROs9/Q==
X-Received: by 2002:a5d:62ca:0:b0:30f:c009:cfa1 with SMTP id o10-20020a5d62ca000000b0030fc009cfa1mr6055137wrv.8.1686745399335;
        Wed, 14 Jun 2023 05:23:19 -0700 (PDT)
Received: from [192.168.0.162] (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id p10-20020a5d48ca000000b0030e56a9ff25sm18065891wrs.31.2023.06.14.05.23.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Jun 2023 05:23:18 -0700 (PDT)
Message-ID: <b6a1e11a-dac2-e7eb-8419-abe123b04e8a@linaro.org>
Date:   Wed, 14 Jun 2023 13:23:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH 1/8] arm64: dts: qcom: msm8939-pm8916: Add missing
 pm8916_codec supplies
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230530-msm8939-regulators-v1-0-a3c3ac833567@gerhold.net>
 <20230530-msm8939-regulators-v1-1-a3c3ac833567@gerhold.net>
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
In-Reply-To: <20230530-msm8939-regulators-v1-1-a3c3ac833567@gerhold.net>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/06/2023 08:15, Stephan Gerhold wrote:
> Update for recent changes to pm8916.dtsi in commit 38218822a72f
> ("arm64: dts: qcom: pm8916: Move default regulator "-supply"s")
> and add the now missing pm8916_codec supplies to msm8939-pm8916.dtsi
> as well.
> 
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>   arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi | 6 ++++++
>   1 file changed, 6 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> index 33e02f42f5e4..503c2dd5fe47 100644
> --- a/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> +++ b/arch/arm64/boot/dts/qcom/msm8939-pm8916.dtsi
> @@ -25,6 +25,12 @@ &mpss {
>   	pll-supply = <&pm8916_l7>;
>   };
>   
> +&pm8916_codec {
> +	vdd-cdc-io-supply = <&pm8916_l5>;
> +	vdd-cdc-tx-rx-cx-supply = <&pm8916_l5>;
> +	vdd-micbias-supply = <&pm8916_l13>;
> +};
> +
>   &rpm_requests {
>   	smd_rpm_regulators: regulators {
>   		compatible = "qcom,rpm-pm8916-regulators";
> 

Reviewed-by: Bryan O'Donoghue <bryan.odonoghue@linaro.org>
