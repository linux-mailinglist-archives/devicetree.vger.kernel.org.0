Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CCE8049C22F
	for <lists+devicetree@lfdr.de>; Wed, 26 Jan 2022 04:36:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232149AbiAZDgo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 22:36:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49038 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231830AbiAZDgo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jan 2022 22:36:44 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FED8C06173B
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 19:36:43 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id p203so18760761oih.10
        for <devicetree@vger.kernel.org>; Tue, 25 Jan 2022 19:36:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=VG/REmNYFs8bhsKXCSAuBru7SObV38RHtdJqUNmAFro=;
        b=NsBN3Gaw761RJyAafRSwP5L617daZObcfY/EQgQeoHX//pIpR4UYR9gi7tdO8ub9Bw
         UiV7V40wzvDctD+g3GIhI7e0To5S5Yx3Re5iVMcX7puwxC2fQoKE4emJh/8S/KrsuW3t
         nEN+haKx8sB2+YbJtmEa6sd1I2/opzs+MMwfxyNjrdf5cgM5Gfpw1kWzZRD7zq6dqTMU
         KAVPtCSe/XEnlgIWKUYn4PsZqh3ZiZEFl2WqwcKKIm0Bby8uwj8ZsHPANg63SOeFP2E1
         maE4tbbc9VwRbQhLzi1Kucm7/lNzEy6Mf1CeS7R9LfMjFcDiQdyMRR7yGhsWV8QOH1ro
         DxNA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VG/REmNYFs8bhsKXCSAuBru7SObV38RHtdJqUNmAFro=;
        b=NHagCG5zaVJCNIWpV9SHrnaAwEArzoMlS9ypbQsDIhVcvzNvUihYODAgwFsATGm54x
         ju/YUsx9DnZ0ZYqSzy9GpSOxil5vrze0zgnIk5ku/5LjsWSzWmis7KAZHbqM4jSwe94K
         WtjHuGH0Nyhm0uyaeePu+EgWasrJo0LDksIRtln36aqlnInN0Wwfv0VIBjojfaMg/vM8
         YfL18G2FDLLQgXekYEL8oIekBYy3nwuWCgdgD7LX6h0evve1CHR3aK4tMAWmKw9LsKqC
         BfEYR+nvWR7AZOlgCwtwTzad0phzWWuKsKfAaUUJieLd7/dZpOwUABqa8JfVZlMfkQlQ
         T9Tg==
X-Gm-Message-State: AOAM5327bbTw7K4MNkaUjNvAGqBSlUWw5oJwbZROrYHXL3Q8eDuog2Rn
        601YEVgnJE1R9eJa2BVcDNkwyg==
X-Google-Smtp-Source: ABdhPJyvcAS1QUxOmNKXtl9N9GHgH4+9eZ/3YKrSkHRUslMb2r2IzXejM4aw3Fp3vP0NrdW8xGQawQ==
X-Received: by 2002:a05:6808:1485:: with SMTP id e5mr2896160oiw.214.1643168202502;
        Tue, 25 Jan 2022 19:36:42 -0800 (PST)
Received: from builder.lan ([2600:1700:a0:3dc8:3697:f6ff:fe85:aac9])
        by smtp.gmail.com with ESMTPSA id i81sm6087180oih.22.2022.01.25.19.36.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 Jan 2022 19:36:41 -0800 (PST)
Date:   Tue, 25 Jan 2022 21:36:40 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     michael.srba@seznam.cz
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Linus Walleij <linus.walleij@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Saravana Kannan <saravanak@google.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v3 2/5] clk: qcom: gcc-msm8998: add SSC-related clocks
Message-ID: <YfDByGjf90xDUuly@builder.lan>
References: <20220124121853.23600-1-michael.srba@seznam.cz>
 <20220124121853.23600-2-michael.srba@seznam.cz>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220124121853.23600-2-michael.srba@seznam.cz>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 24 Jan 06:18 CST 2022, michael.srba@seznam.cz wrote:

> From: Michael Srba <Michael.Srba@seznam.cz>
> 
>  This patch adds four clocks which need to be manipulated in order to

Please skip the space on the start of each line here.

>  initialize the AHB bus which exposes the SCC block in the global address
>  space.
> 
>  Care should be taken not to write to these registers unless the device is
>  known to be configured such that writing to these registers from Linux
>  is permitted.

Does this imply that applying this will break the existing devices and
care _must_ be taken, presumably before we can apply the patch?

Regards,
Bjorn

> 
> Signed-off-by: Michael Srba <Michael.Srba@seznam.cz>
> ---
>  CHANGES:
>  - v2: none
>  - v3: none
> ---
>  drivers/clk/qcom/gcc-msm8998.c | 56 ++++++++++++++++++++++++++++++++++
>  1 file changed, 56 insertions(+)
> 
> diff --git a/drivers/clk/qcom/gcc-msm8998.c b/drivers/clk/qcom/gcc-msm8998.c
> index 407e2c5caea4..2d14c3d672fc 100644
> --- a/drivers/clk/qcom/gcc-msm8998.c
> +++ b/drivers/clk/qcom/gcc-msm8998.c
> @@ -2833,6 +2833,58 @@ static struct clk_branch gcc_rx1_usb2_clkref_clk = {
>  	},
>  };
>  
> +static struct clk_branch gcc_im_sleep_clk = {
> +	.halt_reg = 0x4300C,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x4300C,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data){
> +			.name = "gcc_im_sleep_clk",
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch aggre2_snoc_north_axi_clk = {
> +	.halt_reg = 0x83010,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x83010,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data){
> +			.name = "aggre2_snoc_north_axi_clk",
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch ssc_xo_clk = {
> +	.halt_reg = 0x63018,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x63018,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data){
> +			.name = "ssc_xo_clk",
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
> +static struct clk_branch ssc_cnoc_ahbs_clk = {
> +	.halt_reg = 0x6300C,
> +	.halt_check = BRANCH_HALT,
> +	.clkr = {
> +		.enable_reg = 0x6300C,
> +		.enable_mask = BIT(0),
> +		.hw.init = &(struct clk_init_data){
> +			.name = "ssc_cnoc_ahbs_clk",
> +			.ops = &clk_branch2_ops,
> +		},
> +	},
> +};
> +
>  static struct gdsc pcie_0_gdsc = {
>  	.gdscr = 0x6b004,
>  	.gds_hw_ctrl = 0x0,
> @@ -3036,6 +3088,10 @@ static struct clk_regmap *gcc_msm8998_clocks[] = {
>  	[GCC_MSS_MNOC_BIMC_AXI_CLK] = &gcc_mss_mnoc_bimc_axi_clk.clkr,
>  	[GCC_MMSS_GPLL0_CLK] = &gcc_mmss_gpll0_clk.clkr,
>  	[HMSS_GPLL0_CLK_SRC] = &hmss_gpll0_clk_src.clkr,
> +	[GCC_IM_SLEEP] = &gcc_im_sleep_clk.clkr,
> +	[AGGRE2_SNOC_NORTH_AXI] = &aggre2_snoc_north_axi_clk.clkr,
> +	[SSC_XO] = &ssc_xo_clk.clkr,
> +	[SSC_CNOC_AHBS_CLK] = &ssc_cnoc_ahbs_clk.clkr,
>  };
>  
>  static struct gdsc *gcc_msm8998_gdscs[] = {
> -- 
> 2.34.1
> 
