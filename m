Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8F42C695B46
	for <lists+devicetree@lfdr.de>; Tue, 14 Feb 2023 08:54:41 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229827AbjBNHyj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Feb 2023 02:54:39 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231557AbjBNHy1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Feb 2023 02:54:27 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2BFFF206AA
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 23:54:22 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so10857972wms.1
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 23:54:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=tQVMiDYj6VHqiwpV0vk9HcyevZPUbbSIuYpuK9GmPOk=;
        b=u+3j8wWqpuQIkbYy2J245eUonM8O9BEhkH0ZRVfU+b+sdk8BITz5S07E6zc3eV9iZE
         H73UXLspPT5rKeVRivE+8M9J/AFxmFz+tW6/Deon4OeeQrznXHMLSJA4zcir1Mv9c91n
         2WHG4Gs08H80aOTPvBqfbxBEBarC0jINEGTpNypqeHlKknuhUSE4P/qU9/R6PdHoz1mg
         l+kf7yhAlN7E8PhpCrZthkbNW/s5ZRswCKW4k2WZLY31n6zeYs5O5+QxKgCCcyEk4cAN
         wMeldQx3CJ4W1c36fwq2zXL+N4JBV7oyGVBojSgIexTVJEXxeY2+/1DKtLxZ1ecGVIzT
         ZzEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=tQVMiDYj6VHqiwpV0vk9HcyevZPUbbSIuYpuK9GmPOk=;
        b=eDTk49WP+0QzxW0lrImWGlDXNDs4e9WoNO8tGpkXwGl4tEYC/LPtrsHxdRxVXqNnbp
         PScJ4f3VB1LaeJYZOVt0ynGPURQJnu9STx6UFzhulbmHLbJEql3qr4dmnBS/ifN+dbaE
         QBGPAEY8EfpGMAYJi8tYKAAziDXPxleAeFwgaxz2k1rIQoDCuTesJZmmWGWqOMSnL3Y+
         LtMMlYX1ElRlGkuRoPhLNO2EASNKFYKLCQ2obrOduKxBOq035N9nztfDZs1htxmG9JZ+
         gjOWrrvg6TRj1/1F9CxHeUCbkrg2OT+iV9dNHJNegfDwI5KFBecLZCkuyPKv+T+T6BcN
         266w==
X-Gm-Message-State: AO0yUKU+3GZajSzOg2xPgvqm94hTMZ8ZqxdlQ5I6l1tbM2AmiYjUn9j/
        pLLjgY9Mmr1UMvA3hkuk+qi7kA==
X-Google-Smtp-Source: AK7set9IaFVy9GIKzDBtvP5fAYA/+Dg2dPQSwqTwKfZixH3h/5R04F80WiIvHfYdCx40OWZlgwVbQA==
X-Received: by 2002:a05:600c:44d2:b0:3df:f7f9:7bc6 with SMTP id f18-20020a05600c44d200b003dff7f97bc6mr1244122wmo.20.1676361260789;
        Mon, 13 Feb 2023 23:54:20 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id z13-20020adfe54d000000b002c567e3808bsm544307wrm.40.2023.02.13.23.54.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 23:54:20 -0800 (PST)
Message-ID: <732e0d0a-86ee-a636-62b0-ee3af75d00a2@linaro.org>
Date:   Tue, 14 Feb 2023 08:54:17 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH V4 4/5] arm64: dts: qcom: ipq9574: Add SMEM support
Content-Language: en-US
To:     Poovendhan Selvaraj <quic_poovendh@quicinc.com>, agross@kernel.org,
        andersson@kernel.org, konrad.dybcio@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, lee@kernel.org,
        mturquette@baylibre.com, sboyd@kernel.org,
        jassisinghbrar@gmail.com, catalin.marinas@arm.com, will@kernel.org,
        shawnguo@kernel.org, arnd@arndb.de, marcel.ziswiler@toradex.com,
        robimarko@gmail.com, dmitry.baryshkov@linaro.org,
        nfraprado@collabora.com, broonie@kernel.org,
        quic_gurus@quicinc.com, linux-arm-msm@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Cc:     quic_srichara@quicinc.com, quic_gokulsri@quicinc.com,
        quic_sjaganat@quicinc.com, quic_kathirav@quicinc.com,
        quic_arajkuma@quicinc.com, quic_anusha@quicinc.com,
        quic_devipriy@quicinc.com
References: <20230214051414.10740-1-quic_poovendh@quicinc.com>
 <20230214051414.10740-5-quic_poovendh@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230214051414.10740-5-quic_poovendh@quicinc.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/02/2023 06:14, Poovendhan Selvaraj wrote:
> Add the required nodes to support SMEM
> 
>  Changes in V4:
> 	- Added required nodes for smem support
> 
> Signed-off-by: Poovendhan Selvaraj <quic_poovendh@quicinc.com>
> ---
>  arch/arm64/boot/dts/qcom/ipq9574.dtsi | 14 +++++++++++++-
>  1 file changed, 13 insertions(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/ipq9574.dtsi b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> index 898d7ce3f28d..2b41416d7f91 100644
> --- a/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> +++ b/arch/arm64/boot/dts/qcom/ipq9574.dtsi
> @@ -102,11 +102,17 @@
>  		#address-cells = <2>;
>  		#size-cells = <2>;
>  		ranges;
> -

No improvements here. For the third time.

This is a friendly reminder during the review process.

It seems my previous comments were not fully addressed. Maybe my
feedback got lost between the quotes, maybe you just forgot to apply it.
Please go back to the previous discussion and either implement all
requested changes or keep discussing them.

Thank you.

Best regards,
Krzysztof

