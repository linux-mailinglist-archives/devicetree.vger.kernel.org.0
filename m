Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 882A66DC022
	for <lists+devicetree@lfdr.de>; Sun,  9 Apr 2023 15:45:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229656AbjDINpn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Apr 2023 09:45:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229632AbjDINpm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Apr 2023 09:45:42 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10DAF3A9A
        for <devicetree@vger.kernel.org>; Sun,  9 Apr 2023 06:45:40 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id 4fb4d7f45d1cf-50489ad8a62so655498a12.1
        for <devicetree@vger.kernel.org>; Sun, 09 Apr 2023 06:45:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681047938; x=1683639938;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:from:to:cc:subject:date:message-id:reply-to;
        bh=JFke5NFuI+r0gJe2WUjJT4MdS3bcMiwKvktSkwBbMbQ=;
        b=CbKJcPblUGH0MealPUVKX7JTyA2DKRKhIKm0btJcfjeADwIuJcS3kULKJoFNm9eTXy
         C83ZCCU4wlK2V+qqWxNVJ9sidd21+a5S9AyDHx4mrhi+TFH8SLPWXk47vtils9PZihhx
         +nVWH4p2QXpUcSXzexFu5beAjn+Mhwt/r/tKDlT3fpMcBUb6lShgHReSYIy1c7zaCS+d
         useiDFE9ZL+Cvt45lvkA3samGzPfTrY1voj36oOABIdzubXTPfj+FiT1NELyaQiNoQWF
         vfatxc4iQjZXx5ltYtNtTsEqR0bfXHjDdUHosRsaawn7HsjZ3To2/cYvpVMsnra7SdZh
         aSww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681047938; x=1683639938;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=JFke5NFuI+r0gJe2WUjJT4MdS3bcMiwKvktSkwBbMbQ=;
        b=r6YIOtmpRRYjzsT8r5eOV74/GwajBlu4o82oz29QBr1o+1OE1nPBWj7j2MIvDms7PP
         Eqe7ljsh/fexQCd6M5hxpRb6w28Fc8FEnbkWDd8TNjyKgsP2ug9SyZVYKTLv2DTUKPZV
         L8gFTROpgbitKoWNmKzxwJgYegqVK32DeDY8JJhr2eaDqVlRCS2wSs2/VqfVYHRsdyyp
         Ibth5c7CFlGrXhxwetTfkzAXt5Y65pyxrKyPjf7ArSoV8qvUC/VxK2RUJ9qcFbcvrCxt
         sEXObGn/haDhNP5Wag8S7TncFK+tyUzcDy4vWeCUyUDuoiPd3IndgOIY1mTKSb5v7hNX
         2zGA==
X-Gm-Message-State: AAQBX9fKBmh/ZM9XisdtawGrii4TmLG2nbTSQfURsV4xm42qNfj/LVPN
        viDs8K7dJxBg/hPsTi7UM0mkqw==
X-Google-Smtp-Source: AKy350aGkyCUn1IVysBy4Yc0C8pjfINyGZMHVhvWvhArTapNY7kUKbAj26jDMKxP4mSrybN+WALGGg==
X-Received: by 2002:a50:ee85:0:b0:4fc:73dc:5df3 with SMTP id f5-20020a50ee85000000b004fc73dc5df3mr7613572edr.29.1681047938428;
        Sun, 09 Apr 2023 06:45:38 -0700 (PDT)
Received: from linaro.org ([188.25.26.161])
        by smtp.gmail.com with ESMTPSA id m15-20020a50930f000000b0050477decdfasm3041184eda.3.2023.04.09.06.45.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 09 Apr 2023 06:45:37 -0700 (PDT)
Date:   Sun, 9 Apr 2023 16:45:36 +0300
From:   Abel Vesa <abel.vesa@linaro.org>
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>
Cc:     abelvesa@kernel.org, mturquette@baylibre.com, sboyd@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-imx@nxp.com,
        linux-clk@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Peng Fan <peng.fan@nxp.com>
Subject: Re: [PATCH V3 3/7] clk: imx: fracn-gppll: support integer pll
Message-ID: <ZDLBgBjGSuNTKfWN@linaro.org>
References: <20230403095300.3386988-1-peng.fan@oss.nxp.com>
 <20230403095300.3386988-4-peng.fan@oss.nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230403095300.3386988-4-peng.fan@oss.nxp.com>
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23-04-03 17:52:56, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The fracn gppll could be configured in FRAC or INTEGER mode during
> hardware design. The current driver only support FRAC mode, while
> this patch introduces INTEGER support. When the PLL is INTEGER pll,
> there is no mfn, mfd, the calculation is as below:
>  Fvco_clk = (Fref / DIV[RDIV] ) * DIV[MFI]
>  Fclko_odiv = Fvco_clk / DIV[ODIV]
> 
> In this patch, we reuse the FRAC pll logic with some condition check to
> simplify the driver
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>
> ---

Reviewed-by: Abel Vesa <abel.vesa@linaro.org>

>  drivers/clk/imx/clk-fracn-gppll.c | 68 +++++++++++++++++++++++++++----
>  drivers/clk/imx/clk.h             |  7 ++++
>  2 files changed, 68 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/imx/clk-fracn-gppll.c b/drivers/clk/imx/clk-fracn-gppll.c
> index f6674110a88e..e2633ad94640 100644
> --- a/drivers/clk/imx/clk-fracn-gppll.c
> +++ b/drivers/clk/imx/clk-fracn-gppll.c
> @@ -53,11 +53,22 @@
>  		.odiv	=	(_odiv),			\
>  	}
>  
> +#define PLL_FRACN_GP_INTEGER(_rate, _mfi, _rdiv, _odiv)		\
> +	{							\
> +		.rate	=	(_rate),			\
> +		.mfi	=	(_mfi),				\
> +		.mfn	=	0,				\
> +		.mfd	=	0,				\
> +		.rdiv	=	(_rdiv),			\
> +		.odiv	=	(_odiv),			\
> +	}
> +
>  struct clk_fracn_gppll {
>  	struct clk_hw			hw;
>  	void __iomem			*base;
>  	const struct imx_fracn_gppll_rate_table *rate_table;
>  	int rate_count;
> +	u32 flags;
>  };
>  
>  /*
> @@ -83,6 +94,24 @@ struct imx_fracn_gppll_clk imx_fracn_gppll = {
>  };
>  EXPORT_SYMBOL_GPL(imx_fracn_gppll);
>  
> +/*
> + * Fvco = (Fref / rdiv) * MFI
> + * Fout = Fvco / odiv
> + * The (Fref / rdiv) should be in range 20MHz to 40MHz
> + * The Fvco should be in range 2.5Ghz to 5Ghz
> + */
> +static const struct imx_fracn_gppll_rate_table int_tbl[] = {
> +	PLL_FRACN_GP_INTEGER(1700000000U, 141, 1, 2),
> +	PLL_FRACN_GP_INTEGER(1400000000U, 175, 1, 3),
> +	PLL_FRACN_GP_INTEGER(900000000U, 150, 1, 4),
> +};
> +
> +struct imx_fracn_gppll_clk imx_fracn_gppll_integer = {
> +	.rate_table = int_tbl,
> +	.rate_count = ARRAY_SIZE(int_tbl),
> +};
> +EXPORT_SYMBOL_GPL(imx_fracn_gppll_integer);
> +
>  static inline struct clk_fracn_gppll *to_clk_fracn_gppll(struct clk_hw *hw)
>  {
>  	return container_of(hw, struct clk_fracn_gppll, hw);
> @@ -169,9 +198,15 @@ static unsigned long clk_fracn_gppll_recalc_rate(struct clk_hw *hw, unsigned lon
>  		break;
>  	}
>  
> -	/* Fvco = Fref * (MFI + MFN / MFD) */
> -	fvco = fvco * mfi * mfd + fvco * mfn;
> -	do_div(fvco, mfd * rdiv * odiv);
> +	if (pll->flags & CLK_FRACN_GPPLL_INTEGER) {
> +		/* Fvco = (Fref / rdiv) * MFI */
> +		fvco = fvco * mfi;
> +		do_div(fvco, rdiv * odiv);
> +	} else {
> +		/* Fvco = (Fref / rdiv) * (MFI + MFN / MFD) */
> +		fvco = fvco * mfi * mfd + fvco * mfn;
> +		do_div(fvco, mfd * rdiv * odiv);
> +	}
>  
>  	return (unsigned long)fvco;
>  }
> @@ -215,8 +250,10 @@ static int clk_fracn_gppll_set_rate(struct clk_hw *hw, unsigned long drate,
>  	pll_div = FIELD_PREP(PLL_RDIV_MASK, rate->rdiv) | rate->odiv |
>  		FIELD_PREP(PLL_MFI_MASK, rate->mfi);
>  	writel_relaxed(pll_div, pll->base + PLL_DIV);
> -	writel_relaxed(rate->mfd, pll->base + PLL_DENOMINATOR);
> -	writel_relaxed(FIELD_PREP(PLL_MFN_MASK, rate->mfn), pll->base + PLL_NUMERATOR);
> +	if (pll->flags & CLK_FRACN_GPPLL_FRACN) {
> +		writel_relaxed(rate->mfd, pll->base + PLL_DENOMINATOR);
> +		writel_relaxed(FIELD_PREP(PLL_MFN_MASK, rate->mfn), pll->base + PLL_NUMERATOR);
> +	}
>  
>  	/* Wait for 5us according to fracn mode pll doc */
>  	udelay(5);
> @@ -300,8 +337,10 @@ static const struct clk_ops clk_fracn_gppll_ops = {
>  	.set_rate	= clk_fracn_gppll_set_rate,
>  };
>  
> -struct clk_hw *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
> -				   const struct imx_fracn_gppll_clk *pll_clk)
> +static struct clk_hw *_imx_clk_fracn_gppll(const char *name, const char *parent_name,
> +					   void __iomem *base,
> +					   const struct imx_fracn_gppll_clk *pll_clk,
> +					   u32 pll_flags)
>  {
>  	struct clk_fracn_gppll *pll;
>  	struct clk_hw *hw;
> @@ -322,6 +361,7 @@ struct clk_hw *imx_clk_fracn_gppll(const char *name, const char *parent_name, vo
>  	pll->hw.init = &init;
>  	pll->rate_table = pll_clk->rate_table;
>  	pll->rate_count = pll_clk->rate_count;
> +	pll->flags = pll_flags;
>  
>  	hw = &pll->hw;
>  
> @@ -334,4 +374,18 @@ struct clk_hw *imx_clk_fracn_gppll(const char *name, const char *parent_name, vo
>  
>  	return hw;
>  }
> +
> +struct clk_hw *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
> +				   const struct imx_fracn_gppll_clk *pll_clk)
> +{
> +	return _imx_clk_fracn_gppll(name, parent_name, base, pll_clk, CLK_FRACN_GPPLL_FRACN);
> +}
>  EXPORT_SYMBOL_GPL(imx_clk_fracn_gppll);
> +
> +struct clk_hw *imx_clk_fracn_gppll_integer(const char *name, const char *parent_name,
> +					   void __iomem *base,
> +					   const struct imx_fracn_gppll_clk *pll_clk)
> +{
> +	return _imx_clk_fracn_gppll(name, parent_name, base, pll_clk, CLK_FRACN_GPPLL_INTEGER);
> +}
> +EXPORT_SYMBOL_GPL(imx_clk_fracn_gppll_integer);
> diff --git a/drivers/clk/imx/clk.h b/drivers/clk/imx/clk.h
> index 055bc9197fb4..cb4e4c4b8278 100644
> --- a/drivers/clk/imx/clk.h
> +++ b/drivers/clk/imx/clk.h
> @@ -73,6 +73,9 @@ extern struct imx_pll14xx_clk imx_1416x_pll;
>  extern struct imx_pll14xx_clk imx_1443x_pll;
>  extern struct imx_pll14xx_clk imx_1443x_dram_pll;
>  
> +#define CLK_FRACN_GPPLL_INTEGER	BIT(0)
> +#define CLK_FRACN_GPPLL_FRACN	BIT(1)
> +
>  /* NOTE: Rate table should be kept sorted in descending order. */
>  struct imx_fracn_gppll_rate_table {
>  	unsigned int rate;
> @@ -91,8 +94,12 @@ struct imx_fracn_gppll_clk {
>  
>  struct clk_hw *imx_clk_fracn_gppll(const char *name, const char *parent_name, void __iomem *base,
>  				   const struct imx_fracn_gppll_clk *pll_clk);
> +struct clk_hw *imx_clk_fracn_gppll_integer(const char *name, const char *parent_name,
> +					   void __iomem *base,
> +					   const struct imx_fracn_gppll_clk *pll_clk);
>  
>  extern struct imx_fracn_gppll_clk imx_fracn_gppll;
> +extern struct imx_fracn_gppll_clk imx_fracn_gppll_integer;
>  
>  #define imx_clk_cpu(name, parent_name, div, mux, pll, step) \
>  	to_clk(imx_clk_hw_cpu(name, parent_name, div, mux, pll, step))
> -- 
> 2.37.1
> 
