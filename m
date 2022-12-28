Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A4DD65774F
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:39:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232777AbiL1NjR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:39:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233065AbiL1Ni7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:38:59 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 010EB10046
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:38:42 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id v23so6429751ljj.9
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:38:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WeI5mUM4aqMs31EVOuAy0n7cui4b/Q1HJVLfFjhXWyY=;
        b=TFRjQ9YyZNE23gFnI6CcFWMr1J2FPgv5M+BvuejUxTe9DE9Is8gZvRfnzmpbnjFbjP
         ssAiCoSXEDfMpHKw8u76rcc/Wq5rLwsVlTgCQaSYfMnbBTKa7j90niG2++qqx3tdlWye
         GyOqvoOntpRkTNGsoXWLGl737QV6hi+VUabS+feiHqEmaVEqrcOZWLVODgCFePen6zAz
         ubosGZGP08utp/jgRlf2VLJMsr5WE1P/PTHbt9v9AhVOlgi1gTjyLzmJgjkkdOPnNkJB
         bHjVlXFwjd+1Tb9Z9eYqsYm4sp4TtiinfX5wa9aCHOrXrPRjTNZOXEvafidwQQXi1Vsz
         T2Uw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WeI5mUM4aqMs31EVOuAy0n7cui4b/Q1HJVLfFjhXWyY=;
        b=ZBY4VFn/2ORz813R5gfu2XIuB+AkVSBlg4+pZCxT9TA9W+IerDIOBOyR6NrLduhjtO
         nyScNzw4pVVB+JU0xv6ecfhdUH7QB/WsJRBlDsJ3h/uiR4YZ4znNp8ii5sURJR48lsgW
         5B8khprEp7vGrHHpRhELqsxiT1aiO5WzRUstH54GmnWjexUc9BHPzTluYcWWaTmU19P4
         ToNVIImA5EFe2IG8uWBqvoukriaplo8D0qjiNINhBwtFLxAlWXYu2ae0vMmovbaChmsE
         tRZ95xGBj9CcriB38vf1k7fczv7FClAsFiN6JxiANjrZzbyigp/K5wgMsh0irxFprpVM
         VV+A==
X-Gm-Message-State: AFqh2kpZkLwvQOunKlpZDW7amEhPweGanV+3824f9M8Uypm6DZby0PwR
        +LNNmBoB3F1pBzaJGB1U5tNzFw==
X-Google-Smtp-Source: AMrXdXvdytAE09NQVKkl3mnefegwlWL2zdwFjATgXODaLuj4pW5pffF903ZZrdItok9rY4n3+V3rFQ==
X-Received: by 2002:a2e:8796:0:b0:27f:ca69:80bf with SMTP id n22-20020a2e8796000000b0027fca6980bfmr1461041lji.31.1672234722533;
        Wed, 28 Dec 2022 05:38:42 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id y17-20020a05651c107100b0027fd386a49esm79750ljm.117.2022.12.28.05.38.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 05:38:42 -0800 (PST)
Message-ID: <4a33285f-d6e8-00e5-3895-d6e362403e41@linaro.org>
Date:   Wed, 28 Dec 2022 14:38:40 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 09/16] clk: qcom: gcc-msm8998: get rid of test clock
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20221228133243.3052132-1-dmitry.baryshkov@linaro.org>
 <20221228133243.3052132-10-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221228133243.3052132-10-dmitry.baryshkov@linaro.org>
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



On 28.12.2022 14:32, Dmitry Baryshkov wrote:
> The test clock apparently it's not used by anyone upstream. Remove it.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/clk/qcom/gcc-msm8998.c | 13 -------------
>  1 file changed, 13 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-msm8998.c b/drivers/clk/qcom/gcc-msm8998.c
> index 33473c52eb90..908e996841c2 100644
> --- a/drivers/clk/qcom/gcc-msm8998.c
> +++ b/drivers/clk/qcom/gcc-msm8998.c
> @@ -387,7 +387,6 @@ static struct clk_alpha_pll_postdiv gpll4_out_test = {
>  
>  enum {
>  	P_AUD_REF_CLK,
> -	P_CORE_BI_PLL_TEST_SE,
>  	P_GPLL0_OUT_MAIN,
>  	P_GPLL4_OUT_MAIN,
>  	P_PLL0_EARLY_DIV_CLK_SRC,
> @@ -399,26 +398,22 @@ static const struct parent_map gcc_parent_map_0[] = {
>  	{ P_XO, 0 },
>  	{ P_GPLL0_OUT_MAIN, 1 },
>  	{ P_PLL0_EARLY_DIV_CLK_SRC, 6 },
> -	{ P_CORE_BI_PLL_TEST_SE, 7 },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_0[] = {
>  	{ .fw_name = "xo" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .hw = &gpll0_out_main.clkr.hw },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map gcc_parent_map_1[] = {
>  	{ P_XO, 0 },
>  	{ P_GPLL0_OUT_MAIN, 1 },
> -	{ P_CORE_BI_PLL_TEST_SE, 7 },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_1[] = {
>  	{ .fw_name = "xo" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map gcc_parent_map_2[] = {
> @@ -426,7 +421,6 @@ static const struct parent_map gcc_parent_map_2[] = {
>  	{ P_GPLL0_OUT_MAIN, 1 },
>  	{ P_SLEEP_CLK, 5 },
>  	{ P_PLL0_EARLY_DIV_CLK_SRC, 6 },
> -	{ P_CORE_BI_PLL_TEST_SE, 7 },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_2[] = {
> @@ -434,47 +428,40 @@ static const struct clk_parent_data gcc_parent_data_2[] = {
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .fw_name = "sleep_clk" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map gcc_parent_map_3[] = {
>  	{ P_XO, 0 },
>  	{ P_SLEEP_CLK, 5 },
> -	{ P_CORE_BI_PLL_TEST_SE, 7 },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_3[] = {
>  	{ .fw_name = "xo" },
>  	{ .fw_name = "sleep_clk" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map gcc_parent_map_4[] = {
>  	{ P_XO, 0 },
>  	{ P_GPLL0_OUT_MAIN, 1 },
>  	{ P_GPLL4_OUT_MAIN, 5 },
> -	{ P_CORE_BI_PLL_TEST_SE, 7 },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_4[] = {
>  	{ .fw_name = "xo" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .hw = &gpll4_out_main.clkr.hw },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map gcc_parent_map_5[] = {
>  	{ P_XO, 0 },
>  	{ P_GPLL0_OUT_MAIN, 1 },
>  	{ P_AUD_REF_CLK, 2 },
> -	{ P_CORE_BI_PLL_TEST_SE, 7 },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_5[] = {
>  	{ .fw_name = "xo" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .fw_name = "aud_ref_clk" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct freq_tbl ftbl_blsp1_qup1_i2c_apps_clk_src[] = {
