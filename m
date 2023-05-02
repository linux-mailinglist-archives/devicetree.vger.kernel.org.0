Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 134C66F3F51
	for <lists+devicetree@lfdr.de>; Tue,  2 May 2023 10:39:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233872AbjEBIjE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 May 2023 04:39:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233830AbjEBIi5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 May 2023 04:38:57 -0400
Received: from mail-wr1-x42b.google.com (mail-wr1-x42b.google.com [IPv6:2a00:1450:4864:20::42b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3D529123
        for <devicetree@vger.kernel.org>; Tue,  2 May 2023 01:38:53 -0700 (PDT)
Received: by mail-wr1-x42b.google.com with SMTP id ffacd0b85a97d-3063891d61aso300193f8f.0
        for <devicetree@vger.kernel.org>; Tue, 02 May 2023 01:38:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683016731; x=1685608731;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=eCrV5VrRtYuc4KptMcXDh4B9nlJNDO/1WI5OAKUYJu4=;
        b=zW8wjGLGfy7OFnhZmv9VUvO7DWuXbuK8gqH0oB1OKV18SXOiYsvtaaaM6Fk7LOzK80
         61wgGL/+9vUdoMjotakL4ZNgI8qZNYPqId5MmdhIJGtscrxdGJG3OuQDB27W//M/LXVM
         FJgTO5psz0c/ONQTe3IyuUfkdtup/zbw09erqeY+Ow9aJn4QAtNDLYGgCpr5WXidvpjy
         o5VE7ljC8iOpIGVkqCmdxvCNsvE6kNKT3Dq5sAYrZsKP4nAQDHw3RQaz6KtY6pvIjZ/8
         hJJlhmHLh1nvwYNue9tvP+dGNpX9rmlIDQDktNCDUvSkEOFm2Z3sEx10PXZTovCEbSkq
         pk9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683016731; x=1685608731;
        h=content-transfer-encoding:in-reply-to:organization:from:references
         :cc:to:content-language:subject:reply-to:user-agent:mime-version
         :date:message-id:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=eCrV5VrRtYuc4KptMcXDh4B9nlJNDO/1WI5OAKUYJu4=;
        b=gwrkmSjBKvdIYbWPvib+liBPxdnI6e8yU2PxhQJO+kDZ3Lzf1r22sEmdZt0hcFe7wm
         dDb3lfr5X8tjc+VNAjAHA1K+WnBRQtvP0XZBOB8OAhCK41sCbnMqEEDJ4yHmsbfG7Ci4
         TLdIj7f1HLSL8Os0w8LIlPrEEKA/tx9ChRUg/iUoNBokYXOAxcyIC9odnfow/RSXKOSc
         fGgyRMxacRraIX9R54FPdcPitcU9nrtqZkdH71B1J36mBRA8yuO0WmQWELf1XACXpQ4l
         5clKpvo9lz+4RoqZtcDqRxRDRVlLd9St/LuIbdBo3qrtBoXWPAfxhYel7SR47lyBGixe
         RHFA==
X-Gm-Message-State: AC+VfDySsiWOeHiwf9ifl9mp9JoCHmWziYDpFb60V6HO1hENX7p6OIVO
        wy546HynT19tLrFyml7E0pOK7A==
X-Google-Smtp-Source: ACHHUZ6bi9tg9YFbNJZ8bUmIzEg8YX++0CwMkpnCs3DCEsByHZoFVzvYWseCIv6lqXpLHrctcQbugQ==
X-Received: by 2002:adf:eb08:0:b0:304:6a26:1f6 with SMTP id s8-20020adfeb08000000b003046a2601f6mr11443615wrn.59.1683016731504;
        Tue, 02 May 2023 01:38:51 -0700 (PDT)
Received: from ?IPV6:2a01:e0a:982:cbb0:e265:b513:556a:4149? ([2a01:e0a:982:cbb0:e265:b513:556a:4149])
        by smtp.gmail.com with ESMTPSA id d2-20020adffbc2000000b003060c7b5ed6sm7864485wrs.26.2023.05.02.01.38.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 May 2023 01:38:51 -0700 (PDT)
Message-ID: <68144145-123e-9676-839b-28e7db5bc2bd@linaro.org>
Date:   Tue, 2 May 2023 10:38:49 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.10.0
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 04/10] clk: qcom: gcc-mdm9615: use ARRAY_SIZE instead of
 specifying num_parents
Content-Language: en-US
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230501203401.41393-1-dmitry.baryshkov@linaro.org>
 <20230501203401.41393-5-dmitry.baryshkov@linaro.org>
From:   Neil Armstrong <neil.armstrong@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230501203401.41393-5-dmitry.baryshkov@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/05/2023 22:33, Dmitry Baryshkov wrote:
> Use ARRAY_SIZE() instead of manually specifying num_parents. This makes
> adding/removing entries to/from parent_data easy and errorproof.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
>   drivers/clk/qcom/gcc-mdm9615.c | 42 +++++++++++++++++-----------------
>   1 file changed, 21 insertions(+), 21 deletions(-)
> 
> diff --git a/drivers/clk/qcom/gcc-mdm9615.c b/drivers/clk/qcom/gcc-mdm9615.c
> index 8bed02a748ab..fb5c1244fb97 100644
> --- a/drivers/clk/qcom/gcc-mdm9615.c
> +++ b/drivers/clk/qcom/gcc-mdm9615.c
> @@ -207,7 +207,7 @@ static struct clk_rcg gsbi1_uart_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi1_uart_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -258,7 +258,7 @@ static struct clk_rcg gsbi2_uart_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi2_uart_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -309,7 +309,7 @@ static struct clk_rcg gsbi3_uart_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi3_uart_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -360,7 +360,7 @@ static struct clk_rcg gsbi4_uart_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi4_uart_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -411,7 +411,7 @@ static struct clk_rcg gsbi5_uart_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi5_uart_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -474,7 +474,7 @@ static struct clk_rcg gsbi1_qup_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi1_qup_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -523,7 +523,7 @@ static struct clk_rcg gsbi2_qup_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi2_qup_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -572,7 +572,7 @@ static struct clk_rcg gsbi3_qup_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi3_qup_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -621,7 +621,7 @@ static struct clk_rcg gsbi4_qup_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi4_qup_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -670,7 +670,7 @@ static struct clk_rcg gsbi5_qup_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gsbi5_qup_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -725,7 +725,7 @@ static struct clk_rcg gp0_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gp0_src",
>   			.parent_names = gcc_cxo,
> -			.num_parents = 1,
> +			.num_parents = ARRAY_SIZE(gcc_cxo),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_PARENT_GATE,
>   		},
> @@ -774,7 +774,7 @@ static struct clk_rcg gp1_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gp1_src",
>   			.parent_names = gcc_cxo,
> -			.num_parents = 1,
> +			.num_parents = ARRAY_SIZE(gcc_cxo),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},
> @@ -823,7 +823,7 @@ static struct clk_rcg gp2_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "gp2_src",
>   			.parent_names = gcc_cxo,
> -			.num_parents = 1,
> +			.num_parents = ARRAY_SIZE(gcc_cxo),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},
> @@ -875,7 +875,7 @@ static struct clk_rcg prng_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "prng_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   		},
>   	},
> @@ -937,7 +937,7 @@ static struct clk_rcg sdc1_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "sdc1_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   		},
>   	}
> @@ -985,7 +985,7 @@ static struct clk_rcg sdc2_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "sdc2_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   		},
>   	}
> @@ -1038,7 +1038,7 @@ static struct clk_rcg usb_hs1_xcvr_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "usb_hs1_xcvr_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},
> @@ -1087,7 +1087,7 @@ static struct clk_rcg usb_hsic_xcvr_fs_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "usb_hsic_xcvr_fs_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},
> @@ -1142,7 +1142,7 @@ static struct clk_rcg usb_hs1_system_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "usb_hs1_system_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},
> @@ -1197,7 +1197,7 @@ static struct clk_rcg usb_hsic_system_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "usb_hsic_system_src",
>   			.parent_names = gcc_cxo_pll8,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll8),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},
> @@ -1252,7 +1252,7 @@ static struct clk_rcg usb_hsic_hsic_src = {
>   		.hw.init = &(struct clk_init_data){
>   			.name = "usb_hsic_hsic_src",
>   			.parent_names = gcc_cxo_pll14,
> -			.num_parents = 2,
> +			.num_parents = ARRAY_SIZE(gcc_cxo_pll14),
>   			.ops = &clk_rcg_ops,
>   			.flags = CLK_SET_RATE_GATE,
>   		},

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
