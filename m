Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 37EBA654FE4
	for <lists+devicetree@lfdr.de>; Fri, 23 Dec 2022 12:58:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236189AbiLWL6M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Dec 2022 06:58:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236138AbiLWL6J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Dec 2022 06:58:09 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D133C389E3
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 03:58:07 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id f20so4783741lja.4
        for <devicetree@vger.kernel.org>; Fri, 23 Dec 2022 03:58:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OgMzkLILK20b7S/WdbW/m5kHtD9mxGJd9SzCKoYEzp8=;
        b=v7bQHHsDdQZ/1FzJpP/p10HIN6kJQvyDwG5WCrgLGMGURxTpT9SXzfZEt4C7ebYGoh
         t3+5+CAyAW76NK4+4hCEWZX3cWgYujTU40D+mYXSjSpHE0+UCPE9jgK/23VRNHx9GUej
         g5QNbDjFVrn6RUd2D1CFtT2oAsxAVUpPFFHWzLyvEd6zgFsRl7bvqXbHDQ48UjeOpxpN
         jSckirBvaFWrX8gB58QZ6nlBWrby6IPcY4DGbNNQ97QwpQK8rxc3/A4ilb/mjDsWAYj8
         2cFVMDQLThYCW48udOr/solkMOlDJ4AZwkdFKBKtNGgJ2dkUl7kj+FPedJMBho8fTi/G
         0gpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OgMzkLILK20b7S/WdbW/m5kHtD9mxGJd9SzCKoYEzp8=;
        b=XwTNcyjwcRIqyH2L/1DPe3OEFFGMCr5XYNvC9IzdAupOzgLL3IotlyzN6nvYYTwpvh
         0YYJQ8Y+FRVGn7zDdxXPYbZsOtgkckFk3x8fo1eY9Xa19RaN1O1gKy8nQbNcsXXvtRpO
         M1FgsbFcjaqC/FscLyDBUds+L48GrfXVONLdfX/m24WGFyWh/Wzg5vk0YqtxxHEPZ3Wf
         XHVID5DNxnhkbZELSEaLqsTFw4Iz2VjGVrAOWyqIRv0Q7AQgkHjAGCUhzIEkeCsW3ntp
         ujPfiZegZC8EgYh/bzwpBpKDgQrUVrd69e11EsmgjNhOeFEz41+z0Jdm+LZZx1jL79DP
         axZA==
X-Gm-Message-State: AFqh2krzncVNNm7SgLE6b2eo2P12w21ArSh2UsMwpXFB4phZLoYIx6cF
        VNYTYJqBhj2/7Y7wyMKRH8oPyeN9Fh2m1hOU
X-Google-Smtp-Source: AMrXdXs7RCplmjKOYqftihEA/uWhOD8fKxV2H0Rj+AM2oxiMV6vIzOQFMNoOK7Bh3kdESIlvgTXF0A==
X-Received: by 2002:a05:651c:33c:b0:279:e86c:7101 with SMTP id b28-20020a05651c033c00b00279e86c7101mr2330238ljp.8.1671796686184;
        Fri, 23 Dec 2022 03:58:06 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id bj31-20020a2eaa9f000000b0027facd123a0sm338301ljb.106.2022.12.23.03.58.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Dec 2022 03:58:05 -0800 (PST)
Message-ID: <a269dfa5-ea7e-f6eb-40af-bc6303119c34@linaro.org>
Date:   Fri, 23 Dec 2022 12:58:04 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 2/5] arm64: dts: qcom: sm6125-seine: Provide regulators to
 HS USB2 PHY
Content-Language: en-US
To:     Marijn Suijten <marijn.suijten@somainline.org>,
        phone-devel@vger.kernel.org, Bjorn Andersson <andersson@kernel.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Andy Gross <agross@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221222203636.250190-1-marijn.suijten@somainline.org>
 <20221222203636.250190-3-marijn.suijten@somainline.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221222203636.250190-3-marijn.suijten@somainline.org>
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



On 22.12.2022 21:36, Marijn Suijten wrote:
> Document the use of l7, l10 and l15 in the High Speed Qualcomm USB2 PHY,
> in order to keep the regulators voted on when USB is active.
> 
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts | 3 +++
>  1 file changed, 3 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
> index 4f825c55692b..15b43cff210b 100644
> --- a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
> +++ b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
> @@ -147,6 +147,9 @@ &gpi_dma0 {
>  };
>  
>  &hsusb_phy1 {
> +	vdd-supply = <&pm6125_l7>;
> +	vdda-pll-supply = <&pm6125_l10>;
> +	vdda-phy-dpdm-supply = <&pm6125_l15>;
>  	status = "okay";
>  };
>  
