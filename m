Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7A0CF6575EF
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 12:37:37 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiL1Lhg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 06:37:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32968 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232812AbiL1Lhf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 06:37:35 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D11CDE91
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 03:37:34 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id cf42so23274603lfb.1
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 03:37:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id:from
         :to:cc:subject:date:message-id:reply-to;
        bh=BnLEuP99tRSta7FeLxCVsFw0lo00vPtBiwlEH8qunvs=;
        b=SPWXB9iQD7J8qBQAWQMIl7qQni04jrA6J/IqLWvzAcXnQpYX46Umym4D9XzfIa4Aj+
         OzVc+gRSNvYV990Lj1tx6NGnRH7PxzHbWUHbDXFlmNaQjJ9U+vGEroYHfKzMeXIhmyvi
         af44HTgQHkC7Bn8QdYmRXYuWs6KwNWd3fm0jbK7XXiKKSISpnSpP7+mR3jDCxcCKJxZ2
         3X9ewmR2P/jWPqhjYTsgO0JmKn5DFPWfpLv04eKzWu3Y8559RCkHTu9OIxGEc2+pyreI
         QEnyx3rV2Ig78gtsaotE+JNzctItadwMKsg0Sx6SpjSCr8qicHugJ+ShfRsMY2BW68zh
         4D4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=BnLEuP99tRSta7FeLxCVsFw0lo00vPtBiwlEH8qunvs=;
        b=dw9hsV2hXMwkQFsQTkVw7G3J5VDGkVzg1BkNM3xxSFbpSXCHZsMK55yNunxppye6M1
         7a357DqdoTs6lXQ8Z7WVDFJ+64GDP2DjAeY0LsHolfxMuY5D7ei/sgzQ6WRcVZ+IU+/t
         IHpkfSsj/ssscszW1BufL7W5Dvi7n7eNWznxHuFf7VcTa5A8Ph9tr40DkFyYmrHdJ02B
         C6BQ48kf8Pt+wr7Qw95gErlS6CM0/28ew7EUSrcVKHvIupGjvrvb6ulE8LELZWJTJEvv
         tej9LtH/rcIrU4AIAzOcEMoS9j71iYfoqfLO7dG4V9js7Rt9TiGhxFGSCTcNF4JIG7Hp
         Zhlw==
X-Gm-Message-State: AFqh2krpW3mu3koKw0cpyNMF2C5i5bfOgV+fE7tKrr7TIjaf/7ZpzPsk
        VxlYVf/9QRfxA6a6d945fn23Mw==
X-Google-Smtp-Source: AMrXdXvAKAE4GshqBg4fJRdwSkKJbBXtl1Ts2E3axKiFNS3ATH5tKSMZNF7LcKZY7bC7Iv5Z5scCmg==
X-Received: by 2002:a05:6512:2629:b0:4ca:f9b6:d914 with SMTP id bt41-20020a056512262900b004caf9b6d914mr5398198lfb.7.1672227452442;
        Wed, 28 Dec 2022 03:37:32 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id s11-20020a056512202b00b004b58f51c7dcsm2632820lfs.226.2022.12.28.03.37.31
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 03:37:32 -0800 (PST)
Message-ID: <d2e303d9-3ac4-f574-680f-4f5ccbf5ed13@linaro.org>
Date:   Wed, 28 Dec 2022 12:37:30 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sm8350: add missing
 core_bi_pll_test_se GCC clock
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221228112456.31348-1-krzysztof.kozlowski@linaro.org>
Content-Language: en-US
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221228112456.31348-1-krzysztof.kozlowski@linaro.org>
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



On 28.12.2022 12:24, Krzysztof Kozlowski wrote:
> The GCC bindings expect core_bi_pll_test_se clock input, even if it is
> optional:
> 
>   sm8350-mtp.dtb: clock-controller@100000: clock-names:2: 'core_bi_pll_test_se' was expected
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
Is it even going to be used by anybody, or should we just drop
it on the driver side as per usual?

Konrad
>  arch/arm64/boot/dts/qcom/sm8350.dtsi | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8350.dtsi b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> index d473194c968d..d5747bb467e0 100644
> --- a/arch/arm64/boot/dts/qcom/sm8350.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8350.dtsi
> @@ -644,6 +644,7 @@ gcc: clock-controller@100000 {
>  			#power-domain-cells = <1>;
>  			clock-names = "bi_tcxo",
>  				      "sleep_clk",
> +				      "core_bi_pll_test_se",
>  				      "pcie_0_pipe_clk",
>  				      "pcie_1_pipe_clk",
>  				      "ufs_card_rx_symbol_0_clk",
> @@ -661,6 +662,7 @@ gcc: clock-controller@100000 {
>  				 <0>,
>  				 <0>,
>  				 <0>,
> +				 <0>,
>  				 <&ufs_phy_rx_symbol_0_clk>,
>  				 <&ufs_phy_rx_symbol_1_clk>,
>  				 <&ufs_phy_tx_symbol_0_clk>,
