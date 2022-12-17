Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 28BE764F9B9
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 16:15:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229480AbiLQPPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Dec 2022 10:15:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229843AbiLQPPO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Dec 2022 10:15:14 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED3A9E08C
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 07:15:12 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id l8so4981984ljh.13
        for <devicetree@vger.kernel.org>; Sat, 17 Dec 2022 07:15:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=I4/xU5bh4A8IIObKFLd31j6IDQ2G3g7AZg9oX8eVKnU=;
        b=NJWm3sHMBR6DHZgauPWOhZHTK26lew2oHoe+QpeS4PQ2DlqCTREoxMASxiXnT1Sli1
         sOqZXzjQH/AXHjgCB+WBbIdw4pLbAedSwWkBUXjcpn7ejgaGJwnyVHksDBk4VJkRhnOr
         +e36pSGnAAQUf5ADd12vi3pmhb23RieZg4WhGyTLNAcDIiwDnxQbPNWNcagcycXIGj8a
         4B5FFr3XRZhOW5v94wL3NedheQK9RuJh6fVOpSysCyPF+rgcYcLYkL70k190PfDLG03/
         v+FBUhck9wbXxpaNf6RtzfFf1sxl4T/BmPwJpIRHr80uOJjfFKTiE9hwbrbywzunn3Hv
         g30A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=I4/xU5bh4A8IIObKFLd31j6IDQ2G3g7AZg9oX8eVKnU=;
        b=e4TpT3i5N75mZKZlSHRM9syOVvy8FUvcp0+NQe8EGr5R8lKPzVDDwG0CujCcDBEpao
         Bk3u1xaKn6M7NPR75gnUoLwI7htRT6H+d9ajyTVvpEd2tpCmMgAeKwBTmZEbDV8KFeud
         S5fdDLo7NGuVwQ8T6cK/gOz5+UWnafL81WeMuPpByHcnJGqIbnow6zWRxjg7sA4qvf9g
         KIKdanUGMs0VU7HEgGF7aLEodCO8cAdOSIj1d8jPtgwxFDM8jnOhQvxclQ0/nI1HZd7N
         SffMS6jVMumMb12Y4QnT/4xa9vAY9tRh/+Fd3SO25w+zO9vz0ygrxGTIWmkNV4wrS3ZI
         zk7A==
X-Gm-Message-State: AFqh2kp9iHtRhrUhMrLsbSY6SxuLXThp0Hb9ke2wjCQyusxX2m/N7Pny
        lSRlKgrO+rFRNp6ku+6/VMiblA==
X-Google-Smtp-Source: AMrXdXuf+SlvnENdaUhsxPmGZciIkTVOTa0UfNKfWK22nT0+O7lcsvMkC3r3JzhJG+hXun4qSqjtCQ==
X-Received: by 2002:a05:651c:1144:b0:26f:db35:7e5b with SMTP id h4-20020a05651c114400b0026fdb357e5bmr2547386ljo.42.1671290111271;
        Sat, 17 Dec 2022 07:15:11 -0800 (PST)
Received: from [192.168.1.101] (abxh44.neoplus.adsl.tpnet.pl. [83.9.1.44])
        by smtp.gmail.com with ESMTPSA id k6-20020a05651c10a600b00277201f6c81sm377328ljn.77.2022.12.17.07.15.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Dec 2022 07:15:10 -0800 (PST)
Message-ID: <0212554a-7e60-83ef-9703-53c5d26d7ef5@linaro.org>
Date:   Sat, 17 Dec 2022 16:15:09 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 11/15] clk: qcom: gcc-qcs404: sort out the cxo clock
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
References: <20221217001730.540502-1-dmitry.baryshkov@linaro.org>
 <20221217001730.540502-12-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221217001730.540502-12-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 17.12.2022 01:17, Dmitry Baryshkov wrote:
> The GCC driver registers the cxo clock as a thin wrapper around board's
> xo_board clock. Nowadays we can use the xo_board directly in all the
> clocks that use it. Use the fw_name "cxo" for this clock.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
With/without the .index comment in 10/15:

Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/clk/qcom/gcc-qcs404.c | 97 +++++++++++++++--------------------
>  1 file changed, 41 insertions(+), 56 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-qcs404.c b/drivers/clk/qcom/gcc-qcs404.c
> index 3941175d73a5..8fb268671f0c 100644
> --- a/drivers/clk/qcom/gcc-qcs404.c
> +++ b/drivers/clk/qcom/gcc-qcs404.c
> @@ -37,14 +37,21 @@ enum {
>  	P_XO,
>  };
>  
> +static const struct parent_map gcc_parent_map_1[] = {
> +	{ P_XO, 0 },
> +};
> +
> +static const struct clk_parent_data gcc_parent_data_1[] = {
> +	{ .fw_name = "cxo", .name = "xo-board" },
> +};
> +
>  static struct clk_fixed_factor cxo = {
>  	.mult = 1,
>  	.div = 1,
>  	.hw.init = &(struct clk_init_data){
>  		.name = "cxo",
> -		.parent_data = &(const struct clk_parent_data) {
> -			.name = "xo-board",
> -		},
> +		.parent_data = gcc_parent_data_1,
> +		.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  		.num_parents = 1,
>  		.ops = &clk_fixed_factor_ops,
>  	},
> @@ -59,10 +66,8 @@ static struct clk_alpha_pll gpll0_sleep_clk_src = {
>  		.enable_is_inverted = true,
>  		.hw.init = &(struct clk_init_data){
>  			.name = "gpll0_sleep_clk_src",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.hw = &cxo.hw,
> -			},
> -			.num_parents = 1,
> +			.parent_data = gcc_parent_data_1,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  			.ops = &clk_alpha_pll_ops,
>  		},
>  	},
> @@ -77,10 +82,8 @@ static struct clk_alpha_pll gpll0_out_main = {
>  		.enable_mask = BIT(0),
>  		.hw.init = &(struct clk_init_data){
>  			.name = "gpll0_out_main",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.hw = &cxo.hw,
> -			},
> -			.num_parents = 1,
> +			.parent_data = gcc_parent_data_1,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  			.ops = &clk_alpha_pll_ops,
>  		},
>  	},
> @@ -95,10 +98,8 @@ static struct clk_alpha_pll gpll0_ao_out_main = {
>  		.enable_mask = BIT(0),
>  		.hw.init = &(struct clk_init_data){
>  			.name = "gpll0_ao_out_main",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.hw = &cxo.hw,
> -			},
> -			.num_parents = 1,
> +			.parent_data = gcc_parent_data_1,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  			.flags = CLK_IS_CRITICAL,
>  			.ops = &clk_alpha_pll_fixed_ops,
>  		},
> @@ -113,10 +114,8 @@ static struct clk_alpha_pll gpll1_out_main = {
>  		.enable_mask = BIT(1),
>  		.hw.init = &(struct clk_init_data){
>  			.name = "gpll1_out_main",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.hw = &cxo.hw,
> -			},
> -			.num_parents = 1,
> +			.parent_data = gcc_parent_data_1,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  			.ops = &clk_alpha_pll_ops,
>  		},
>  	},
> @@ -146,10 +145,8 @@ static struct clk_alpha_pll gpll3_out_main = {
>  	.clkr = {
>  		.hw.init = &(struct clk_init_data){
>  			.name = "gpll3_out_main",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.hw = &cxo.hw,
> -			},
> -			.num_parents = 1,
> +			.parent_data = gcc_parent_data_1,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  			.ops = &clk_alpha_pll_ops,
>  		},
>  	},
> @@ -163,10 +160,8 @@ static struct clk_alpha_pll gpll4_out_main = {
>  		.enable_mask = BIT(5),
>  		.hw.init = &(struct clk_init_data){
>  			.name = "gpll4_out_main",
> -			.parent_data = &(const struct clk_parent_data) {
> -				.hw = &cxo.hw,
> -			},
> -			.num_parents = 1,
> +			.parent_data = gcc_parent_data_1,
> +			.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  			.ops = &clk_alpha_pll_ops,
>  		},
>  	},
> @@ -182,10 +177,8 @@ static struct clk_pll gpll6 = {
>  	.status_bit = 17,
>  	.clkr.hw.init = &(struct clk_init_data){
>  		.name = "gpll6",
> -		.parent_data = &(const struct clk_parent_data) {
> -			.hw = &cxo.hw,
> -		},
> -		.num_parents = 1,
> +		.parent_data = gcc_parent_data_1,
> +		.num_parents = ARRAY_SIZE(gcc_parent_data_1),
>  		.ops = &clk_pll_ops,
>  	},
>  };
> @@ -209,23 +202,15 @@ static const struct parent_map gcc_parent_map_0[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_0[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_ao_0[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_ao_out_main.clkr.hw },
>  };
>  
> -static const struct parent_map gcc_parent_map_1[] = {
> -	{ P_XO, 0 },
> -};
> -
> -static const struct clk_parent_data gcc_parent_data_1[] = {
> -	{ .hw = &cxo.hw },
> -};
> -
>  static const struct parent_map gcc_parent_map_2[] = {
>  	{ P_XO, 0 },
>  	{ P_GPLL0_OUT_MAIN, 1 },
> @@ -234,7 +219,7 @@ static const struct parent_map gcc_parent_map_2[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_2[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .hw = &gpll6_out_aux.hw },
>  	{ .fw_name = "sleep_clk", .name = "sleep_clk" },
> @@ -247,7 +232,7 @@ static const struct parent_map gcc_parent_map_3[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_3[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .hw = &gpll6_out_aux.hw },
>  };
> @@ -258,7 +243,7 @@ static const struct parent_map gcc_parent_map_4[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_4[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll1_out_main.clkr.hw },
>  };
>  
> @@ -269,7 +254,7 @@ static const struct parent_map gcc_parent_map_5[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_5[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .fw_name = "dsi0pllbyte", .name = "dsi0pllbyte" },
>  	/* "gpll0_out_aux", */
>  };
> @@ -281,7 +266,7 @@ static const struct parent_map gcc_parent_map_6[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_6[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .fw_name = "dsi0pllbyte", .name = "dsi0pllbyte" },
>  	/* "gpll0_out_aux", */
>  };
> @@ -295,7 +280,7 @@ static const struct parent_map gcc_parent_map_7[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_7[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .hw = &gpll3_out_main.clkr.hw },
>  	{ .hw = &gpll6_out_aux.hw },
> @@ -308,7 +293,7 @@ static const struct parent_map gcc_parent_map_8[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_8[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .fw_name = "hdmi_pll", .name = "hdmi_pll" },
>  };
>  
> @@ -320,7 +305,7 @@ static const struct parent_map gcc_parent_map_9[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_9[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .fw_name = "dsi0pll", .name = "dsi0pll" },
>  	{ .hw = &gpll6_out_aux.hw },
> @@ -332,7 +317,7 @@ static const struct parent_map gcc_parent_map_10[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_10[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .fw_name = "sleep_clk", .name = "sleep_clk" },
>  };
>  
> @@ -342,7 +327,7 @@ static const struct parent_map gcc_parent_map_11[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_11[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .fw_name = "pcie_0_pipe_clk", .name = "pcie_0_pipe_clk" },
>  };
>  
> @@ -353,7 +338,7 @@ static const struct parent_map gcc_parent_map_12[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_12[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .fw_name = "dsi0pll", .name = "dsi0pll" },
>  	/* "gpll0_out_aux", */
>  };
> @@ -366,7 +351,7 @@ static const struct parent_map gcc_parent_map_13[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_13[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	{ .hw = &gpll4_out_main.clkr.hw },
>  	{ .hw = &gpll6_out_aux.hw },
> @@ -379,7 +364,7 @@ static const struct parent_map gcc_parent_map_14[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_14[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	/* "gpll4_out_aux", */
>  };
> @@ -390,7 +375,7 @@ static const struct parent_map gcc_parent_map_15[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_15[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	/* "gpll0_out_aux", */
>  };
>  
> @@ -401,7 +386,7 @@ static const struct parent_map gcc_parent_map_16[] = {
>  };
>  
>  static const struct clk_parent_data gcc_parent_data_16[] = {
> -	{ .hw = &cxo.hw },
> +	{ .fw_name = "cxo", .name = "xo-board" },
>  	{ .hw = &gpll0_out_main.clkr.hw },
>  	/* "gpll0_out_aux", */
>  };
