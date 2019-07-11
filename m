Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5BCC5651CF
	for <lists+devicetree@lfdr.de>; Thu, 11 Jul 2019 08:22:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727996AbfGKGWa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Jul 2019 02:22:30 -0400
Received: from mail-pl1-f195.google.com ([209.85.214.195]:39116 "EHLO
        mail-pl1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727967AbfGKGWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Jul 2019 02:22:30 -0400
Received: by mail-pl1-f195.google.com with SMTP id b7so2468170pls.6
        for <devicetree@vger.kernel.org>; Wed, 10 Jul 2019 23:22:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2/izmyLx3zgLly59CRyGw1zLBbtbQty91ZENtAWD4Vk=;
        b=bCJUZdgFXSL1JPheXWrE2SvDktcgz7ZRvLp8UkZ09vb/Prg3mHtmdw0CdPu+kNUcGI
         a+TMxXx6wNfmwQtEtIXMhXKR2VzbJQGJVBT4Jcr78m07BpKzdxphTgR8GXJ75FNnpqAB
         FNgXp0c4Bq/bsz0u8wFe6FU1NqqZn1sx5kV5TnReJTFWuqsfXI0nlrO3bGvOpcXDoF9E
         kH2fUTOxrcxqE6WyOVzMskdFpKOYyKgmdeY68u0Bz7QfklwW+Yz9KVGimSXOF4E3tW+I
         Ndk3OY2HRkZ2wOYaljBN7Ygo+45k9VGREMHudaTh1IrRGsaLJbxdRM0v/ZdSiMQ7S5FG
         78xA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2/izmyLx3zgLly59CRyGw1zLBbtbQty91ZENtAWD4Vk=;
        b=CDezH1CXnDZ8IWz6qRmt2T6mURjYQJegJIitmIBxgxYqtNjHSfcFxIzU+iu3bfGdiB
         rmWZcDSY1pqsULgnIx9eXOg8QRCbNTkiID+ecfhRqt/JFqb55olWXZDUOPL9LUUqKMIi
         4RLq6Boq2S2FFNEGd+godfwQl4mNRfKBwEv/CZCxICjEgOCi9LZHebeOU4a0OC/MOC6E
         9GUzuKiO2pINzOgywJp81O4lVqwJndH+cNhItAalIo45tj+a5az+XTlXyjHxohOrf5of
         TsfXlgN6ra77j9CGgbIj9JFdE/t7WZZYgKvn2dPV7PHU3dxWh92C2tideofyIztrzYkk
         +tkg==
X-Gm-Message-State: APjAAAULATzZf35q7N9GMZA9m+3E+jRdupMP/ctg368cA1Dgd5DUhp/j
        KyGFzExwetsf3ze5JCR+7ciytQ==
X-Google-Smtp-Source: APXvYqzBa57SST8CdNhPOntlhzTG7OeoEa6rXNRY1hYntSU2vCbtVOJveAMlqx/1mMk4cJDBYNLgNw==
X-Received: by 2002:a17:902:da4:: with SMTP id 33mr2477954plv.209.1562826149501;
        Wed, 10 Jul 2019 23:22:29 -0700 (PDT)
Received: from localhost ([122.172.28.117])
        by smtp.gmail.com with ESMTPSA id j19sm1516594pgn.19.2019.07.10.23.22.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Jul 2019 23:22:28 -0700 (PDT)
Date:   Thu, 11 Jul 2019 11:52:26 +0530
From:   Viresh Kumar <viresh.kumar@linaro.org>
To:     k.konieczny@partner.samsung.com
Cc:     Bartlomiej Zolnierkiewicz <b.zolnierkie@samsung.com>,
        Marek Szyprowski <m.szyprowski@samsung.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Kukjin Kim <kgene@kernel.org>,
        Kyungmin Park <kyungmin.park@samsung.com>,
        Mark Rutland <mark.rutland@arm.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Nishanth Menon <nm@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH 1/3] opp: core: add regulators enable and disable
Message-ID: <20190711062226.4i4bvbsyczshdlyr@vireshk-i7>
References: <20190708141140.24379-1-k.konieczny@partner.samsung.com>
 <CGME20190708141159eucas1p1751506975ff96a436e14940916623722@eucas1p1.samsung.com>
 <20190708141140.24379-2-k.konieczny@partner.samsung.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190708141140.24379-2-k.konieczny@partner.samsung.com>
User-Agent: NeoMutt/20180716-391-311a52
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08-07-19, 16:11, k.konieczny@partner.samsung.com wrote:
> From: Kamil Konieczny <k.konieczny@partner.samsung.com>
> 
> Add enable regulators to dev_pm_opp_set_regulators() and disable
> regulators to dev_pm_opp_put_regulators(). This prepares for
> converting exynos-bus devfreq driver to use dev_pm_opp_set_rate().
> 
> Signed-off-by: Kamil Konieczny <k.konieczny@partner.samsung.com>
> ---
>  drivers/opp/core.c | 13 +++++++++++++
>  1 file changed, 13 insertions(+)
> 
> diff --git a/drivers/opp/core.c b/drivers/opp/core.c
> index 0e7703fe733f..947cac452854 100644
> --- a/drivers/opp/core.c
> +++ b/drivers/opp/core.c
> @@ -1580,8 +1580,19 @@ struct opp_table *dev_pm_opp_set_regulators(struct device *dev,
>  	if (ret)
>  		goto free_regulators;
>  
> +	for (i = 0; i < opp_table->regulator_count; i++) {
> +		ret = regulator_enable(opp_table->regulators[i]);
> +		if (ret < 0)
> +			goto disable;
> +	}

What about doing this in the same loop of regulator_get_optional() ?

> +
>  	return opp_table;
>  
> +disable:
> +	while (i != 0)
> +		regulator_disable(opp_table->regulators[--i]);
> +
> +	i = opp_table->regulator_count;

You also need to call _free_set_opp_data() here.

>  free_regulators:
>  	while (i != 0)
>  		regulator_put(opp_table->regulators[--i]);
> @@ -1609,6 +1620,8 @@ void dev_pm_opp_put_regulators(struct opp_table *opp_table)
>  
>  	/* Make sure there are no concurrent readers while updating opp_table */
>  	WARN_ON(!list_empty(&opp_table->opp_list));

Preserve the blank line here.

> +	for (i = opp_table->regulator_count - 1; i >= 0; i--)
> +		regulator_disable(opp_table->regulators[i]);
>  
>  	for (i = opp_table->regulator_count - 1; i >= 0; i--)
>  		regulator_put(opp_table->regulators[i]);

Only single loop should be sufficient for this.

> -- 
> 2.22.0

-- 
viresh
