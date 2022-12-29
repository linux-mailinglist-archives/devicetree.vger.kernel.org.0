Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DC317658BDA
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 11:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233148AbiL2Km3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 05:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33828 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233130AbiL2KmP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 05:42:15 -0500
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6111310D9
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:42:14 -0800 (PST)
Received: by mail-lf1-x12e.google.com with SMTP id j17so17495210lfr.3
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 02:42:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TUO2ZxZxILG32KT15nV7qQTkYrHi8pO+dQ/hT0mLj34=;
        b=VyE/LhPG1XUl12g3cFtagDNEhD/mZuXjff05r8gsZcfCE49gKYMkLL27hCKWj6miZ6
         D5/xH5bdsTHNNcaqMdXfFiAGf0eD4OHQGUfXVQOmKXwWN0Hb0ouQoRHPccnDALVEs7e3
         SjhuAsj+XW/kWx6VC8gtrVqAOe7v1rGPlv5ptgLAJwRD2dQOmHZ0HWikcJVpDzNprgp1
         joYyYmGqnLr/1HmJk1Icf+j4hwV9gZDV0bhUR089/0vjjENczViwYQUwY67CzagmpB+R
         kBEnDgqw/9GrR1SpXgunrbB2aCMdIYuzns+sr+1oV5JFpAOc2z4DssAWcKWxXAEsXG2f
         RymA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TUO2ZxZxILG32KT15nV7qQTkYrHi8pO+dQ/hT0mLj34=;
        b=6E66Dzx5QXfVZ2+ezMt+zzaae9Psmkta4qvFPyu4Nb0ORNub85TBYoNwk7bXiMmL/L
         VzS/4IRFrg9v1zayNxDS1fWQ/AbeRFUhitGvVT680937yGa4t83ZH4Op+NNb2KZw2cvj
         pZhj95j3QWQlpbx6eexACYpJ7Fkbi+6XstCO/ZyjvTYFGyaV3ZcLuXQdczlUrgeMq0tu
         k8L1efg2hB7P+Z4hkERiMto+m6VsQVDqwDTM9WR5yYhnYJ5P0eHA0hDukI+fpcLASoYV
         XPHpU36mxIc1keIp75VEe1JR41mqoClEP0LYZMmCd2wScL0uuqXE9lrXoXbEbn00N85D
         +hqw==
X-Gm-Message-State: AFqh2kq2FoTmw8fo/aP1yNvHgtOMXUYdwfvpy9XYPsJc8XCzVXWtZZQH
        T6VQqEKSO4Y65R9vcYt7l8TmxQ==
X-Google-Smtp-Source: AMrXdXs3sjVVdg2iNUlQiU1svF2uVYY93ybv2BrHLp59HJclAt/0wi4EjM0Pt1650H+l7wGMRfRIwQ==
X-Received: by 2002:a05:6512:3f1e:b0:4c0:91d0:e7ab with SMTP id y30-20020a0565123f1e00b004c091d0e7abmr8517693lfa.28.1672310532762;
        Thu, 29 Dec 2022 02:42:12 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id z5-20020a056512370500b004bea5274fbfsm3030569lfr.160.2022.12.29.02.42.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 29 Dec 2022 02:42:12 -0800 (PST)
Message-ID: <7b32e414-96a9-7265-efee-f872badb32b2@linaro.org>
Date:   Thu, 29 Dec 2022 11:42:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v2 1/7] arm64: dts: qcom: sm8450: add spmi node
Content-Language: en-US
To:     Konrad Dybcio <konrad.dybcio@linaro.org>,
        linux-arm-msm@vger.kernel.org, andersson@kernel.org,
        agross@kernel.org
Cc:     marijn.suijten@somainline.org, Vinod Koul <vkoul@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221229103212.984324-1-konrad.dybcio@linaro.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221229103212.984324-1-konrad.dybcio@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/12/2022 11:32, Konrad Dybcio wrote:
> From: Vinod Koul <vkoul@kernel.org>
> 
> Add the spmi bus as found in the SM8450 SoC
> 
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> Reviewed-by: Konrad Dybcio <konrad.dybcio@somainline.org>
> [Konrad: 0x0 -> 0, move #cells down, make reg-names a vertical list]
> Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
> ---
> v1 -> v2:
> No changes
> 
>  arch/arm64/boot/dts/qcom/sm8450.dtsi | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8450.dtsi b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> index 570475040d95..b9b59c5223eb 100644
> --- a/arch/arm64/boot/dts/qcom/sm8450.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8450.dtsi
> @@ -2715,6 +2715,28 @@ aoss_qmp: power-controller@c300000 {
>  			#clock-cells = <0>;
>  		};
>  
> +		spmi_bus: spmi@c42d000 {

Hmm looks different than reg.

> +			compatible = "qcom,spmi-pmic-arb";
> +			reg = <0 0x0c400000 0 0x00003000>,
> +			      <0 0x0c500000 0 0x00400000>,
> +			      <0 0x0c440000 0 0x00080000>,
> +			      <0 0x0c4c0000 0 0x00010000>,
> +			      <0 0x0c42d000 0 0x00010000>;
x

Best regards,
Krzysztof

