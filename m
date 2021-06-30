Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 17A7D3B877A
	for <lists+devicetree@lfdr.de>; Wed, 30 Jun 2021 19:13:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232409AbhF3RPa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Jun 2021 13:15:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35264 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229991AbhF3RP3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Jun 2021 13:15:29 -0400
Received: from mail-oo1-xc35.google.com (mail-oo1-xc35.google.com [IPv6:2607:f8b0:4864:20::c35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7547C0617AE
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 10:13:00 -0700 (PDT)
Received: by mail-oo1-xc35.google.com with SMTP id v3-20020a4ac9030000b029024c9d0bff49so829444ooq.0
        for <devicetree@vger.kernel.org>; Wed, 30 Jun 2021 10:13:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=1PcDWvee9bUH7pg+nGywm20C3Cp3QodJWy+afb8JOg4=;
        b=cIVQP8WArttqeme2sjcZ5p4ey/hPMw7C47lQNAAXfh+TgLFvZMgc4dAVNb76VdHrqo
         0o1LvgQu77Iu5wN+p+6Sm5aWwBMJP5rFwqlCf2fPoX/TNYDeEYP2taD3GG+ILOmiDkJo
         xbGgLI9u8y/PSSR35Cuq2N0eXUzOec2jdUzlSPBrBxGu/jXE1eVhUO/wkM0NUuuAASBu
         0IKZQZ3Stf6CAWoJZBydu5Eo2s4E3GrOfbVOmKyc2v/6+/HR07/OeZOhkrlFNiZQbfPq
         dPhu2O+LwA8McwZ8/B605urviHFjj/bd1b8Acgp8++dpONRfbLHyL/2MPoHH1SZRTu+0
         89+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=1PcDWvee9bUH7pg+nGywm20C3Cp3QodJWy+afb8JOg4=;
        b=aFsFAfZkOzwbuG1e9/swxuupA1BkrkBQFsO45Qk8IDt7Pa+6HeK6jUva9x4OnmAfeY
         yQOf5TE36DrRuhRRYsATBk7LKdNxXHk5YgBEtVr6MjZqQxzZk1PiWsNDJBnMhTwdTfXq
         qJjX0FK2+tLXqinObdECwa/sd9cXT5rx2oGmWnaJyexYbNfSGQgi1bS14Ode2ejdTSgR
         LVHAm6KTekejebIJVxkcfqOw0NSyJMjZj38gZsFz1pfMCV/3bf7zsMtC+GXrJiLRI1d1
         Lg8VGMmSn6vmW9C6QK5RIePsOe35p2FOTdOGMf0HWokZVJVEOJIfixifhVFjvMhytuvn
         ytvA==
X-Gm-Message-State: AOAM530Em4YR/sXs6NGmmgfnDPNXEhdj7+19H4Sxaf6fBP5Bdd5EhA72
        FTKIJ9uWk2HarN1kOYrOHWuojQ==
X-Google-Smtp-Source: ABdhPJwCIYAg8vaTdpP1GMZHBSZ8mMoWCn4ZsLh6dNl06XEl9BNV2v7msSvuVQEB3/NRA+0hFJvi8Q==
X-Received: by 2002:a4a:e709:: with SMTP id y9mr6124509oou.64.1625073179861;
        Wed, 30 Jun 2021 10:12:59 -0700 (PDT)
Received: from yoga (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id v203sm4785401oib.37.2021.06.30.10.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Jun 2021 10:12:59 -0700 (PDT)
Date:   Wed, 30 Jun 2021 12:12:56 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Taniya Das <tdas@codeaurora.org>,
        Jonathan Marek <jonathan@marek.ca>,
        Michael Turquette <mturquette@baylibre.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-clk@vger.kernel.org,
        Bryan O'Donoghue <bryan.odonoghue@linaro.org>,
        Mark Brown <broonie@kernel.org>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        linux-kernel@vger.kernel.org
Subject: Re: [PATCH 5/6] clk: qcom: dispcc-sm8250: stop using mmcx regulator
Message-ID: <YNymGEQnwGlFMaIr@yoga>
References: <20210630133149.3204290-1-dmitry.baryshkov@linaro.org>
 <20210630133149.3204290-6-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210630133149.3204290-6-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 30 Jun 08:31 CDT 2021, Dmitry Baryshkov wrote:

> Now as the common qcom clock controller code has been taught about power
> domains, stop mentioning mmcx supply as a way to power up the clock
> controller's gdsc.
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Reviewed-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Regards,
Bjorn

> ---
>  drivers/clk/qcom/dispcc-sm8250.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/clk/qcom/dispcc-sm8250.c b/drivers/clk/qcom/dispcc-sm8250.c
> index de09cd5c209f..dfbfe64b12f6 100644
> --- a/drivers/clk/qcom/dispcc-sm8250.c
> +++ b/drivers/clk/qcom/dispcc-sm8250.c
> @@ -955,7 +955,6 @@ static struct gdsc mdss_gdsc = {
>  	},
>  	.pwrsts = PWRSTS_OFF_ON,
>  	.flags = HW_CTRL,
> -	.supply = "mmcx",
>  };
>  
>  static struct clk_regmap *disp_cc_sm8250_clocks[] = {
> -- 
> 2.30.2
> 
