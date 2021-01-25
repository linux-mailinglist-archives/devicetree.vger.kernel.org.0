Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 068A13028E0
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 18:30:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731048AbhAYRXg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 12:23:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730925AbhAYRQ5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 12:16:57 -0500
Received: from mail-oi1-x22a.google.com (mail-oi1-x22a.google.com [IPv6:2607:f8b0:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C884FC061793
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 09:14:44 -0800 (PST)
Received: by mail-oi1-x22a.google.com with SMTP id k25so1396952oik.13
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 09:14:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=rkROO57uKmnnVbP7K6y85+srohQ8Aw0WBhKWTRvOvuk=;
        b=qgTYaOuVerpQyuW7/OT7xgdxL/eIy9BR0U7tKWpiGaesQ856FT/YQXBEd0OLn2MwuX
         Yb8HW0gE+QCWRBjAYIoePlDKPITP3O8q/WWPiEYK6ecNWLCovrMyXFV5yRHE9MdVQPl3
         CFiDxFx2kWfJzQgmkn7G+HjnGfQUgSzzAuLM9eqAiBFM+BgnM3osOyKnHiiRMa1loP9d
         yge8S5E3okSsZUh+SXCNPDDutt+uvAitg86zRzNyT66g6SIeGMWfPzQ7sjhVkXyfeXCE
         D4EU1frNjuc+CrTpUckeZgwvaVWUnq8OJoY/3UyRS3zv/hsyz0tfMg6h4T4NQMS7vhgR
         L86A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=rkROO57uKmnnVbP7K6y85+srohQ8Aw0WBhKWTRvOvuk=;
        b=McXRrsdhZLBY9l5DMzFXp9jBcdtjgjKMPXn49+UmPsrFTe0j6B0zPUIXDsc18kvOVq
         G5Kc1Qidu8stz7hwB4rUb1n/e8MW5leb4Xyh/2n8fE6VeEScRRlyUHVFg6WyIHZBLLOV
         wN20jf2QRLWMlwyqSJ3JJcDrdMKWicrwbe0J9IhxVgY+F0yJlVhLMCMYeONV76sx+ich
         pc0nPtzRwGcbU8n6CBsMQJ8AJUEzqTGstAxhrMZX1Pts+C4Jybm5RxIZWW4Ax0QUY0o+
         KyiSTjygpD3cbJs710oV4NHz+PQ4Lu7ods/Hsk5GQPIAPSpGNzFQtg8k0Eh+X3Q0rLhL
         A0bg==
X-Gm-Message-State: AOAM531zUvlI2Slqofz50sNu+V4Sq0aDTB8CkNv1da58PErP6Se3HhcO
        uIyzfbv15pPmtZRHoaEo6MlEvP0b1u0uEA==
X-Google-Smtp-Source: ABdhPJw13+EEDGOa7bk2nm+Fm+WInSkBPXZIdTqkY0j7a39sHq56ZNWSCPmD3OUyb1YIo3KdyHVRhw==
X-Received: by 2002:aca:4c85:: with SMTP id z127mr755076oia.124.1611594884125;
        Mon, 25 Jan 2021 09:14:44 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id g13sm3540748otl.60.2021.01.25.09.14.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 09:14:43 -0800 (PST)
Date:   Mon, 25 Jan 2021 11:14:40 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Stephen Boyd <sboyd@kernel.org>, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH v4 2/5] clk: qcom: clk-alpha-pll: modularize
 alpha_pll_trion_set_rate()
Message-ID: <YA78gO7xEoZSb+Wy@builder.lan>
References: <20210118044321.2571775-1-vkoul@kernel.org>
 <20210118044321.2571775-3-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210118044321.2571775-3-vkoul@kernel.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun 17 Jan 22:43 CST 2021, Vinod Koul wrote:

> Trion 5LPE set rate uses code similar to alpha_pll_trion_set_rate() but
> with different registers. Modularize these by moving out latch and latch
> ack bits so that we can reuse the function.
> 

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> Suggested-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> Signed-off-by: Vinod Koul <vkoul@kernel.org>
> ---
>  drivers/clk/qcom/clk-alpha-pll.c | 18 +++++++++++-------
>  1 file changed, 11 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/clk/qcom/clk-alpha-pll.c b/drivers/clk/qcom/clk-alpha-pll.c
> index f7721088494c..a30ea7b09224 100644
> --- a/drivers/clk/qcom/clk-alpha-pll.c
> +++ b/drivers/clk/qcom/clk-alpha-pll.c
> @@ -1471,8 +1471,8 @@ static int alpha_pll_lucid_prepare(struct clk_hw *hw)
>  	return __alpha_pll_trion_prepare(hw, LUCID_PCAL_DONE);
>  }
>  
> -static int alpha_pll_trion_set_rate(struct clk_hw *hw, unsigned long rate,
> -				    unsigned long prate)
> +static int __alpha_pll_trion_set_rate(struct clk_hw *hw, unsigned long rate,
> +				      unsigned long prate, u32 latch_bit, u32 latch_ack)
>  {
>  	struct clk_alpha_pll *pll = to_clk_alpha_pll(hw);
>  	unsigned long rrate;
> @@ -1490,22 +1490,20 @@ static int alpha_pll_trion_set_rate(struct clk_hw *hw, unsigned long rate,
>  	regmap_write(pll->clkr.regmap, PLL_ALPHA_VAL(pll), a);
>  
>  	/* Latch the PLL input */
> -	ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
> -				 PLL_UPDATE, PLL_UPDATE);
> +	ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), latch_bit, latch_bit);
>  	if (ret)
>  		return ret;
>  
>  	/* Wait for 2 reference cycles before checking the ACK bit. */
>  	udelay(1);
>  	regmap_read(pll->clkr.regmap, PLL_MODE(pll), &val);
> -	if (!(val & ALPHA_PLL_ACK_LATCH)) {
> +	if (!(val & latch_ack)) {
>  		pr_err("Lucid PLL latch failed. Output may be unstable!\n");
>  		return -EINVAL;
>  	}
>  
>  	/* Return the latch input to 0 */
> -	ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll),
> -				 PLL_UPDATE, 0);
> +	ret = regmap_update_bits(pll->clkr.regmap, PLL_MODE(pll), latch_bit, 0);
>  	if (ret)
>  		return ret;
>  
> @@ -1520,6 +1518,12 @@ static int alpha_pll_trion_set_rate(struct clk_hw *hw, unsigned long rate,
>  	return 0;
>  }
>  
> +static int alpha_pll_trion_set_rate(struct clk_hw *hw, unsigned long rate,
> +				    unsigned long prate)
> +{
> +	return __alpha_pll_trion_set_rate(hw, rate, prate, PLL_UPDATE, ALPHA_PLL_ACK_LATCH);
> +}
> +
>  const struct clk_ops clk_alpha_pll_trion_ops = {
>  	.prepare = alpha_pll_trion_prepare,
>  	.enable = clk_trion_pll_enable,
> -- 
> 2.26.2
> 
