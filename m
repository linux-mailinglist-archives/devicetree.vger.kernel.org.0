Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72E96680071
	for <lists+devicetree@lfdr.de>; Sun, 29 Jan 2023 18:33:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235142AbjA2RdZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 29 Jan 2023 12:33:25 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53654 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235136AbjA2RdY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 29 Jan 2023 12:33:24 -0500
Received: from mail-wm1-x32e.google.com (mail-wm1-x32e.google.com [IPv6:2a00:1450:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 41D371DB89
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 09:33:22 -0800 (PST)
Received: by mail-wm1-x32e.google.com with SMTP id j29-20020a05600c1c1d00b003dc52fed235so1144251wms.1
        for <devicetree@vger.kernel.org>; Sun, 29 Jan 2023 09:33:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=3wyrcsnAJHQLkBlEAUJbUxZ4oBTO6M9vjc3Y9RD/6oo=;
        b=A2aCms+n4YGcmWdYSolPFAmhpBx4MfpP/uNc36PhvKi+hDlVvvTofhGmC91yPqhTA0
         SxhxAiI7bZjVRVn/fp+CrSWr9uyOl7PkuCdvYpclssE5Oz5QYYdShz6XLRhGEUN8DPHk
         ZJ+xlAGBygNfFsPBnzAEzvYL9dUw7s3W9YJd0FGTI7fT2sdFwcKb35EpFsL0L7V/qQMw
         TWqOGYT8FLtATgtG8tTxNTxUalJfrEd/LAk1nvq4W8VCxZJXzi7ngdEBQToDcZ8s/B8t
         /00RqQnOFUrbxBUxbCwQGAeHkjRVBDxeRNXqd2IU0I7wnKVy3vjNpp0TrAFr2QNP3PFw
         1rhQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=3wyrcsnAJHQLkBlEAUJbUxZ4oBTO6M9vjc3Y9RD/6oo=;
        b=J8omxPSYAh+OHVILEu2E6yM4gOXwyTSrCwbj119jaycr0fNeT9BocCKaql0LH8Gzd2
         8JbP6ope6frOc+qdGaqdg/6gFn1c3Ve+/btUL8L2zVtdeJ3GxY/3HhN0uqo93N4lMGZX
         /HS4e6ohHp/uFpgLBLCHLVO3cAcUn4ObmZnDLxV2KzJhaHhhcgIrzpjIZUthDL8UXQDe
         7KXX/nE+maiGig1iwZcP+0w0vShP7gpA/WkFuaEXLE50oNUzMx9KrV6RxFC8QJIb0p5B
         L7BIa+Mz7UpQ12mEQemlCfzYYYgPRDp025UJN69eEbjt+U2Aw4jlLUvgpqR3rOW67p/T
         lK3Q==
X-Gm-Message-State: AFqh2krprAveH0/2Qy05sZFDa5k4rzNezVkFty2Ux3vxS2GZgXCPWzaG
        PhbSUy+rmyb91eHtDXcFEv79zQ==
X-Google-Smtp-Source: AMrXdXver1JGBIfb2pGmO6LeMB6HuNti4ktes8+wCf0byQntuAF3rUL80tvcDCbnMTI8fcz2upbGzw==
X-Received: by 2002:a05:600c:19d0:b0:3dc:c05:9db6 with SMTP id u16-20020a05600c19d000b003dc0c059db6mr22791193wmq.33.1675013600853;
        Sun, 29 Jan 2023 09:33:20 -0800 (PST)
Received: from linaro.org ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id f9-20020a7bcd09000000b003dc54344764sm2220396wmj.48.2023.01.29.09.33.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 29 Jan 2023 09:33:20 -0800 (PST)
Date:   Sun, 29 Jan 2023 19:33:19 +0200
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Oleksij Rempel <o.rempel@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Abel Vesa <abelvesa@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Richard Cochran <richardcochran@gmail.com>,
        kernel@pengutronix.de, Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Russell King <linux@armlinux.org.uk>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, netdev@vger.kernel.org
Subject: Re: [PATCH v2 14/19] clk: imx: add imx_obtain_fixed_of_clock()
Message-ID: <Y9at37jsgpy9RiNT@linaro.org>
References: <20230117061453.3723649-1-o.rempel@pengutronix.de>
 <20230117061453.3723649-15-o.rempel@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230117061453.3723649-15-o.rempel@pengutronix.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-01-17 07:14:48, Oleksij Rempel wrote:
> Add imx_obtain_fixed_of_clock() to optionally add clock not configured in
> the devicetree.
> 
> Signed-off-by: Oleksij Rempel <o.rempel@pengutronix.de>

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

> ---
>  drivers/clk/imx/clk.c | 14 ++++++++++++++
>  drivers/clk/imx/clk.h |  3 +++
>  2 files changed, 17 insertions(+)
> 
> diff --git a/drivers/clk/imx/clk.c b/drivers/clk/imx/clk.c
> index b636cc099d96..5f1f729008ee 100644
> --- a/drivers/clk/imx/clk.c
> +++ b/drivers/clk/imx/clk.c
> @@ -110,6 +110,20 @@ struct clk_hw *imx_obtain_fixed_clock_hw(
>  	return __clk_get_hw(clk);
>  }
>  
> +struct clk_hw *imx_obtain_fixed_of_clock(struct device_node *np,
> +					 const char *name, unsigned long rate)
> +{
> +	struct clk *clk = of_clk_get_by_name(np, name);
> +	struct clk_hw *hw;
> +
> +	if (IS_ERR(clk))
> +		hw = imx_obtain_fixed_clock_hw(name, rate);
> +	else
> +		hw = __clk_get_hw(clk);
> +
> +	return hw;
> +}
> +
>  struct clk_hw *imx_get_clk_hw_by_name(struct device_node *np, const char *name)
>  {
>  	struct clk *clk;
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 801213109697..f0a24cd54d1c 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -288,6 +288,9 @@ struct clk * imx_obtain_fixed_clock(
>  struct clk_hw *imx_obtain_fixed_clock_hw(
>  			const char *name, unsigned long rate);
>  
> +struct clk_hw *imx_obtain_fixed_of_clock(struct device_node *np,
> +					 const char *name, unsigned long rate);
> +
>  struct clk_hw *imx_get_clk_hw_by_name(struct device_node *np, const char *name);
>  
>  struct clk_hw *imx_clk_hw_gate_exclusive(const char *name, const char *parent,
> -- 
> 2.30.2
> 
