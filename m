Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BDA8D65774D
	for <lists+devicetree@lfdr.de>; Wed, 28 Dec 2022 14:39:08 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233042AbiL1NjH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Dec 2022 08:39:07 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45942 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233053AbiL1Nit (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Dec 2022 08:38:49 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2E3AB12093
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:38:20 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id v23so6428713ljj.9
        for <devicetree@vger.kernel.org>; Wed, 28 Dec 2022 05:38:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YYNLlaUprBOpWcCqCsJswmacdaUqZWPnMcA7wMHG1Bo=;
        b=FruaXrP0v8KQfB3ONPBL7hZM3B+d6TKfCXmjoC4lDkfNMeoqoU8oZmatU7E3LvR1vZ
         lk56lcIPPvXBB6vMx2qtJA5a+yuu8U3t4lHHYWNGn6r+TrlXz5Pbxt8xiA34vnzQMIBv
         fMluS1zUu5d03mABqabqKQr4IvcE4pFqLt2KTPCFdm5ChwN9hmC8Nudo0mf+SBzsCe22
         0i3uxhefi6Tv+nfxb0iwJ4bTtvSWoZI0t3TOXw3ujErYhpOEIQQ55uhqds89WtGDe7WA
         3dbZNUws5VK2+O8lXIJ1L5KN3G3me0+sa4OK0064smk5R5YmXTXdzkzOUfQfqAVE7lZg
         kUXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YYNLlaUprBOpWcCqCsJswmacdaUqZWPnMcA7wMHG1Bo=;
        b=yZJHEwFI7wm1w2Sb5Du6bRvjTqmeQ6Qe1izGmzNlTri903JD59SkmVxPvy2w9gFFIa
         nLd1R2RyNSQWnnt7yPAGJjZwAlCg0SQ+NZLNe9oMq0qlUVOpndmDiVju1ymKzFJ1p454
         Pf8/M/sCHHo4w3STA9aeKR7vclSJI1LDgzenuDzg3vaOpgQWR+zUmis3ujQQyMCMy+N+
         rxsO6Io4U9xV7z9O3DlSd3ceKxSPs/JM2oBVov14ksm7SdhM1esqUnscE2D1A1m8TaC5
         dmC1KXkzwHQ5WnuzFbAxnxi8TqQIOuzPYZrTZIu8X5rzacftFJ/QBNDLx7ZsVwtwWp0Z
         FZHw==
X-Gm-Message-State: AFqh2kqaHuKgaDEWmUR5K5V4ppU7+J+2c0M0Ktms2vrqCe9tKYtA170l
        G1rgdmImuAFG7LCirzIEm3segQ==
X-Google-Smtp-Source: AMrXdXsb6jh3eEu3rhphNVakWnHADj7VYIRHKwObr6CvVJc+x+5pRCJI3ffWieyrqfzBqVxTpdr/NA==
X-Received: by 2002:a2e:81d4:0:b0:26f:db35:1d8b with SMTP id s20-20020a2e81d4000000b0026fdb351d8bmr7525724ljg.53.1672234692533;
        Wed, 28 Dec 2022 05:38:12 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id y11-20020a05651c106b00b0027fbec8674fsm972714ljm.119.2022.12.28.05.38.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Dec 2022 05:38:12 -0800 (PST)
Message-ID: <7426a60b-ecd9-5f27-1637-dc2d13e376b2@linaro.org>
Date:   Wed, 28 Dec 2022 14:38:10 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [PATCH 08/16] clk: qcom: dispcc-qcm2290: get rid of test clock
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
 <20221228133243.3052132-9-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221228133243.3052132-9-dmitry.baryshkov@linaro.org>
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



On 28.12.2022 14:32, Dmitry Baryshkov wrote:
> The test clock apparently it's not used by anyone upstream. Remove it.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/clk/qcom/dispcc-qcm2290.c | 6 ------
>  1 file changed, 6 deletions(-)
> 
> diff --git a/drivers/clk/qcom/dispcc-qcm2290.c b/drivers/clk/qcom/dispcc-qcm2290.c
> index 96b149365912..2ebd9a02b895 100644
> --- a/drivers/clk/qcom/dispcc-qcm2290.c
> +++ b/drivers/clk/qcom/dispcc-qcm2290.c
> @@ -71,7 +71,6 @@ static const struct parent_map disp_cc_parent_map_0[] = {
>  static const struct clk_parent_data disp_cc_parent_data_0[] = {
>  	{ .fw_name = "bi_tcxo" },
>  	{ .fw_name = "dsi0_phy_pll_out_byteclk" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map disp_cc_parent_map_1[] = {
> @@ -80,7 +79,6 @@ static const struct parent_map disp_cc_parent_map_1[] = {
>  
>  static const struct clk_parent_data disp_cc_parent_data_1[] = {
>  	{ .fw_name = "bi_tcxo" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map disp_cc_parent_map_2[] = {
> @@ -91,7 +89,6 @@ static const struct parent_map disp_cc_parent_map_2[] = {
>  static const struct clk_parent_data disp_cc_parent_data_2[] = {
>  	{ .fw_name = "bi_tcxo_ao" },
>  	{ .fw_name = "gcc_disp_gpll0_div_clk_src" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map disp_cc_parent_map_3[] = {
> @@ -104,7 +101,6 @@ static const struct clk_parent_data disp_cc_parent_data_3[] = {
>  	{ .fw_name = "bi_tcxo" },
>  	{ .hw = &disp_cc_pll0.clkr.hw },
>  	{ .fw_name = "gcc_disp_gpll0_clk_src" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map disp_cc_parent_map_4[] = {
> @@ -117,7 +113,6 @@ static const struct clk_parent_data disp_cc_parent_data_4[] = {
>  	{ .fw_name = "bi_tcxo" },
>  	{ .fw_name = "dsi0_phy_pll_out_dsiclk" },
>  	{ .fw_name = "dsi1_phy_pll_out_dsiclk" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static const struct parent_map disp_cc_parent_map_5[] = {
> @@ -126,7 +121,6 @@ static const struct parent_map disp_cc_parent_map_5[] = {
>  
>  static const struct clk_parent_data disp_cc_parent_data_5[] = {
>  	{ .fw_name = "sleep_clk" },
> -	{ .fw_name = "core_bi_pll_test_se" },
>  };
>  
>  static struct clk_rcg2 disp_cc_mdss_byte0_clk_src = {
