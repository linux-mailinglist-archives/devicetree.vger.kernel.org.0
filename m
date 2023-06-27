Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7E3173FABF
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 13:06:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229720AbjF0LGM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 07:06:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229910AbjF0LGL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 07:06:11 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E32F1BE9
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:06:10 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id 2adb3069b0e04-4f86dbce369so5868995e87.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 04:06:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687863968; x=1690455968;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=EYkcEdYQYRU+ThKfwXOdom2gt+M3LoMFZIm7N9PG/Qc=;
        b=Qa4eX/RWqKMzAeGwEoPw4Ak2fWZXb0ru9RWb+5VSCfmEF8JVpOeGkhd6c6/+/b40KK
         qw+SfxAYlTdV98MbD+vo1SPSFTZNcjluHTunoK41mUC+Uu0QNHEn60OpggLB9UeIudbf
         inJG18pcKU536YuBnnuqZBeXnd7u+UQCpgB4PX+uDFq4J8FZDELK1CGjlo7VpnY+HbGl
         fu4j3zFK5AKBjT/eu2q2Sx2khioNZFAPoJZvmG2uLandZVtT29sHTd/AbjZVgxHYYxLH
         Rqn8MtYrTkxhnl9iBHMBJaESxR8zecXlKlJETlRWrre2QThNyXa9kl9JWSKCMh2Ty4NA
         UqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687863968; x=1690455968;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=EYkcEdYQYRU+ThKfwXOdom2gt+M3LoMFZIm7N9PG/Qc=;
        b=Cxy4rHVAtUKQWRwjR5Dxe4defIaSiq5o2knpLunrRg+DwBdv+Wv17X3M0WWpf3Vgb7
         yK0KeFwzkty0WgA9/hDyvNmhmp5lW41QbRtnWWaN4uySq4Kfe57YLpUsigQai1lPrgjf
         SWLvQuMa4yoGrbbPnZahAiDMWcE2nXwfsMMRnwqXvhSRpFjsZR62I+fJw6VfkwTDCOfn
         v80LuSuXMq7SFYTfEk9bM70Xji17LeAYZ7lpUlKutmqCIJN7yaFScVjgbKzj7GlcbI38
         xNjcaOMZItMU67CBI+B1Tz8GxFYXkga5SZDiApPF23GX9S1xx+mwL+km54ewjPCKFcBC
         sx5A==
X-Gm-Message-State: AC+VfDxN1WBqSg+/sN+ymkhEjeQgkcg7aRE2B3qtkAJMFEaYjWJCeZct
        xIbwtQq66L73y9J10bTuUTRkl50LgF/0XdHOo10=
X-Google-Smtp-Source: ACHHUZ67+0ClHu+ORFOOCuNxRNe438LqWGyiwPADZJpo+IN4BknY+ySoso423KIycYFtpkCBhU5WPQ==
X-Received: by 2002:a05:6512:3d06:b0:4fb:7be5:8f4e with SMTP id d6-20020a0565123d0600b004fb7be58f4emr3213932lfv.6.1687863968119;
        Tue, 27 Jun 2023 04:06:08 -0700 (PDT)
Received: from [192.168.1.101] (abxj103.neoplus.adsl.tpnet.pl. [83.9.3.103])
        by smtp.gmail.com with ESMTPSA id ep14-20020a056512484e00b004fb895662d8sm67549lfb.84.2023.06.27.04.06.07
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Jun 2023 04:06:07 -0700 (PDT)
Message-ID: <2daa02ac-2282-5778-92a8-3fa19c1126bd@linaro.org>
Date:   Tue, 27 Jun 2023 13:06:06 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH 04/15] ARM: dts: qcom: apq8064-nexus7: move sdcc1 node to
 proper place
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
References: <20230627012422.206077-1-dmitry.baryshkov@linaro.org>
 <20230627012422.206077-5-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230627012422.206077-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27.06.2023 03:24, Dmitry Baryshkov wrote:
> Move sdcc1 device node to follow the alphanumber
ic

>sorting order.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  .../boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts | 14 +++++++-------
>  1 file changed, 7 insertions(+), 7 deletions(-)
> 
> diff --git a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
> index c57c27cd8a20..0e80a5a8e3c6 100644
> --- a/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
> +++ b/arch/arm/boot/dts/qcom/qcom-apq8064-asus-nexus7-flo.dts
> @@ -181,13 +181,6 @@ &mdp {
>  	status = "okay";
>  };
>  
> -/* eMMC */
> -&sdcc1 {
> -	vmmc-supply = <&pm8921_l5>;
> -	vqmmc-supply = <&pm8921_s4>;
> -	status = "okay";
> -};
> -
>  &mdp_dsi1_out {
>  	remote-endpoint = <&dsi0_in>;
>  };
> @@ -336,6 +329,13 @@ lvs7 {
>  	};
>  };
>  
> +/* eMMC */
> +&sdcc1 {
> +	vmmc-supply = <&pm8921_l5>;
> +	vqmmc-supply = <&pm8921_s4>;
> +	status = "okay";
> +};
> +
>  &usb_hs1_phy {
>  	v3p3-supply = <&pm8921_l3>;
>  	v1p8-supply = <&pm8921_l4>;
