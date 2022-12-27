Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A49E3656A6C
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 13:04:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231580AbiL0MEc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Dec 2022 07:04:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231611AbiL0MEN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Dec 2022 07:04:13 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E345DEBA
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 04:01:44 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id f34so19316371lfv.10
        for <devicetree@vger.kernel.org>; Tue, 27 Dec 2022 04:01:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fbabpCwSElrZfaKMjiI+YVJ1yX8IQrm6fFAA0vLtqfI=;
        b=TpeACvKEgU0UsnjUw1A7PYSLfa37Hmn96CfW4hf+7YDgHuMlYW5FuQwgBHuDMlbQBn
         5zbZAvvFcOmu015703MhTKZ6gQUWcaZTgHQLbh132s16Sf3BC35Lgb1BDoieqQQb5BoK
         5hZAnYXppieXY8fqsu8ES/NXL8oWZtjRSPwtAdm9xjDBprlKkvi+/OcnkRLS7Z2DjrgG
         ey9XelF+yP+v4O3qceNRJ0UDpyCVGAs+jxfy5CEOdfBXrKC5XGgC/S/F75byQSsDL8ML
         2QVfggGnhkFnw2ixiMx7zuoA1s5jcfbFp+DAECpQF3yEfrQA97X4ENykR0/MKMNv5xuZ
         SWIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fbabpCwSElrZfaKMjiI+YVJ1yX8IQrm6fFAA0vLtqfI=;
        b=4yE8WFGXH43sYX0DvDTkc0/7h8fr3UEB0IpcRnNFEKm7uKwke6Q3mOjLNNgk2MQbkR
         tWwKiPnklkvR3MUf9OdY2ef5HNjqdGT/V75uvTQDpfa02oScfO0Kf9DtV7nf575l110t
         jT443kOewpwMrTQrIIlZnT3r0ytWC6LjsmHdRmN9hXywLGAc+IdXFFvOepHt00/TZf/C
         UMzRgunzvOSoqaa5f1pjZOLlOlrHqCOej5r90sAHupwTCLaVkDpuJGSvqKYoSSfE9vnH
         rnv+B1f2vBjmjPTc2SVrAmZPaOwObauhFRAdXrWWFrqQM3UWCuMqgs3Un7Uxy1EqjCyU
         1AQg==
X-Gm-Message-State: AFqh2krskzU/MM8UtVnrg2mx6FvxeNdtaYg2ATxBimBfvmWJnfAm9u75
        vUDfG3UTbgIbVMGfLrC5zPNP5msyncswG1x5
X-Google-Smtp-Source: AMrXdXt3IEgvBssa9pOKh5JEbyt0oIftPVBae5GlrzogODS++WXfFt7OdQDrwJqg+xAR6KORpCzawg==
X-Received: by 2002:a05:6512:1514:b0:4b5:7054:3b55 with SMTP id bq20-20020a056512151400b004b570543b55mr6854994lfb.68.1672142504184;
        Tue, 27 Dec 2022 04:01:44 -0800 (PST)
Received: from [192.168.1.101] (abyl184.neoplus.adsl.tpnet.pl. [83.9.31.184])
        by smtp.gmail.com with ESMTPSA id h4-20020a056512054400b004a9b9ccfbe6sm2239159lfl.51.2022.12.27.04.01.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 27 Dec 2022 04:01:43 -0800 (PST)
Message-ID: <378b334c-1b24-bad4-9928-ba63ac2c5e26@linaro.org>
Date:   Tue, 27 Dec 2022 13:01:41 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.0
Subject: Re: [RFC PATCH 10/12] clk: qcom: mmcc-apq8084: remove spdm clocks
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
        devicetree@vger.kernel.org, Georgi Djakov <djakov@kernel.org>
References: <20221227013225.2847382-1-dmitry.baryshkov@linaro.org>
 <20221227013225.2847382-11-dmitry.baryshkov@linaro.org>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20221227013225.2847382-11-dmitry.baryshkov@linaro.org>
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



On 27.12.2022 02:32, Dmitry Baryshkov wrote:
> SPDM is used for debug/profiling and does not have any other
> functionality. These clocks can safely be removed.
> 
> Suggested-by: Stephen Boyd <sboyd@kernel.org>
> Suggested-by: Georgi Djakov <djakov@kernel.org>
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
> ---
Reviewed-by: Konrad Dybcio <konrad.dybcio@linaro.org>

Konrad
>  drivers/clk/qcom/mmcc-apq8084.c | 271 --------------------------------
>  1 file changed, 271 deletions(-)
> 
> diff --git a/drivers/clk/qcom/mmcc-apq8084.c b/drivers/clk/qcom/mmcc-apq8084.c
> index fee7c767132d..631b1ff8cf01 100644
> --- a/drivers/clk/qcom/mmcc-apq8084.c
> +++ b/drivers/clk/qcom/mmcc-apq8084.c
> @@ -2364,262 +2364,6 @@ static struct clk_branch mmss_rbcpr_clk = {
>  	},
>  };
>  
> -static struct clk_branch mmss_spdm_ahb_clk = {
> -	.halt_reg = 0x0230,
> -	.clkr = {
> -		.enable_reg = 0x0230,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_ahb_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_ahb_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_axi_clk = {
> -	.halt_reg = 0x0210,
> -	.clkr = {
> -		.enable_reg = 0x0210,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_axi_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_axi_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_csi0_clk = {
> -	.halt_reg = 0x023c,
> -	.clkr = {
> -		.enable_reg = 0x023c,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_csi0_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_csi0_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_gfx3d_clk = {
> -	.halt_reg = 0x022c,
> -	.clkr = {
> -		.enable_reg = 0x022c,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_gfx3d_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_gfx3d_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_jpeg0_clk = {
> -	.halt_reg = 0x0204,
> -	.clkr = {
> -		.enable_reg = 0x0204,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_jpeg0_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_jpeg0_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_jpeg1_clk = {
> -	.halt_reg = 0x0208,
> -	.clkr = {
> -		.enable_reg = 0x0208,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_jpeg1_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_jpeg1_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_jpeg2_clk = {
> -	.halt_reg = 0x0224,
> -	.clkr = {
> -		.enable_reg = 0x0224,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_jpeg2_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_jpeg2_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_mdp_clk = {
> -	.halt_reg = 0x020c,
> -	.clkr = {
> -		.enable_reg = 0x020c,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_mdp_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_mdp_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_pclk0_clk = {
> -	.halt_reg = 0x0234,
> -	.clkr = {
> -		.enable_reg = 0x0234,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_pclk0_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_pclk0_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_pclk1_clk = {
> -	.halt_reg = 0x0228,
> -	.clkr = {
> -		.enable_reg = 0x0228,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_pclk1_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_pclk1_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_vcodec0_clk = {
> -	.halt_reg = 0x0214,
> -	.clkr = {
> -		.enable_reg = 0x0214,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_vcodec0_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_vcodec0_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_vfe0_clk = {
> -	.halt_reg = 0x0218,
> -	.clkr = {
> -		.enable_reg = 0x0218,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_vfe0_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_vfe0_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_vfe1_clk = {
> -	.halt_reg = 0x021c,
> -	.clkr = {
> -		.enable_reg = 0x021c,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_vfe1_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_spdm_vfe1_div_clk",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_rm_axi_clk = {
> -	.halt_reg = 0x0304,
> -	.clkr = {
> -		.enable_reg = 0x0304,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_rm_axi_clk",
> -			.parent_names = (const char *[]){
> -				"mmss_axi_clk_src",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -static struct clk_branch mmss_spdm_rm_ocmemnoc_clk = {
> -	.halt_reg = 0x0308,
> -	.clkr = {
> -		.enable_reg = 0x0308,
> -		.enable_mask = BIT(0),
> -		.hw.init = &(struct clk_init_data){
> -			.name = "mmss_spdm_rm_ocmemnoc_clk",
> -			.parent_names = (const char *[]){
> -				"ocmemnoc_clk_src",
> -			},
> -			.num_parents = 1,
> -			.flags = CLK_SET_RATE_PARENT,
> -			.ops = &clk_branch2_ops,
> -		},
> -	},
> -};
> -
> -
>  static struct clk_branch mmss_misc_ahb_clk = {
>  	.halt_reg = 0x502c,
>  	.clkr = {
> @@ -3252,21 +2996,6 @@ static struct clk_regmap *mmcc_apq8084_clocks[] = {
>  	[MDSS_VSYNC_CLK] = &mdss_vsync_clk.clkr,
>  	[MMSS_RBCPR_AHB_CLK] = &mmss_rbcpr_ahb_clk.clkr,
>  	[MMSS_RBCPR_CLK] = &mmss_rbcpr_clk.clkr,
> -	[MMSS_SPDM_AHB_CLK] = &mmss_spdm_ahb_clk.clkr,
> -	[MMSS_SPDM_AXI_CLK] = &mmss_spdm_axi_clk.clkr,
> -	[MMSS_SPDM_CSI0_CLK] = &mmss_spdm_csi0_clk.clkr,
> -	[MMSS_SPDM_GFX3D_CLK] = &mmss_spdm_gfx3d_clk.clkr,
> -	[MMSS_SPDM_JPEG0_CLK] = &mmss_spdm_jpeg0_clk.clkr,
> -	[MMSS_SPDM_JPEG1_CLK] = &mmss_spdm_jpeg1_clk.clkr,
> -	[MMSS_SPDM_JPEG2_CLK] = &mmss_spdm_jpeg2_clk.clkr,
> -	[MMSS_SPDM_MDP_CLK] = &mmss_spdm_mdp_clk.clkr,
> -	[MMSS_SPDM_PCLK0_CLK] = &mmss_spdm_pclk0_clk.clkr,
> -	[MMSS_SPDM_PCLK1_CLK] = &mmss_spdm_pclk1_clk.clkr,
> -	[MMSS_SPDM_VCODEC0_CLK] = &mmss_spdm_vcodec0_clk.clkr,
> -	[MMSS_SPDM_VFE0_CLK] = &mmss_spdm_vfe0_clk.clkr,
> -	[MMSS_SPDM_VFE1_CLK] = &mmss_spdm_vfe1_clk.clkr,
> -	[MMSS_SPDM_RM_AXI_CLK] = &mmss_spdm_rm_axi_clk.clkr,
> -	[MMSS_SPDM_RM_OCMEMNOC_CLK] = &mmss_spdm_rm_ocmemnoc_clk.clkr,
>  	[MMSS_MISC_AHB_CLK] = &mmss_misc_ahb_clk.clkr,
>  	[MMSS_MMSSNOC_AHB_CLK] = &mmss_mmssnoc_ahb_clk.clkr,
>  	[MMSS_MMSSNOC_BTO_AHB_CLK] = &mmss_mmssnoc_bto_ahb_clk.clkr,
