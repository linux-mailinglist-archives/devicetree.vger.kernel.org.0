Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 51CE5CBD55
	for <lists+devicetree@lfdr.de>; Fri,  4 Oct 2019 16:34:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389061AbfJDOeP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Oct 2019 10:34:15 -0400
Received: from mail-wm1-f68.google.com ([209.85.128.68]:35277 "EHLO
        mail-wm1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2388969AbfJDOeP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Oct 2019 10:34:15 -0400
Received: by mail-wm1-f68.google.com with SMTP id y21so6131465wmi.0
        for <devicetree@vger.kernel.org>; Fri, 04 Oct 2019 07:34:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=RQJh9hvK7qALdXSAmt00zw7fon92emAdLHkzgMEfZAU=;
        b=A5xAhDi4VxeW70QhY5FJe+8RmSvwZMyHEsszULCP3W83MMkQu6R8WecCVtslsj6Hbl
         8ixZAjkhHQyM7pGmRK64/u0qBgVFZNkipFoRcXJ1+7OwaI5gC9D+9WiwoKt73IaloA0E
         E951Gimb5ld2eDmFJ0PVTd/SNHoHMrTfeiBnVMelgwzwfx1X2qJ8rRU/Hg4LPQOvoIgt
         MyZOzb9rt02XQOgtY7ImVqI1e7S51KsrtGfAjqmQvsqU62rWaswtv3nY8Z4wR/K2B1wY
         WFQ6tvfkOYyYAt2vpjG8KznLvXJV1fvnXjsIX/Yawkj27W3IV6QqUAqDAL03QWqe9lhB
         TYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=RQJh9hvK7qALdXSAmt00zw7fon92emAdLHkzgMEfZAU=;
        b=kK0NAmyL326oQUWPrzG7i0eE8BZmUOd7lB5LVq0x5SpTqF0mnMIrFgcULAsFY0ZPba
         nbGoZZOXYNyK9ih9+y7OGRqB0NNl4BMhiP1B01fagDXMycPBdMzfe2jary/7LR75fgwn
         ZBg8SgzInL1WsP+kSHnGRyOJoWsl7hjS7mEtAQnpxBcneGqZCMI+RfBS834P9P+CHJ5M
         m8j6Gz4nqX0/+M9CKUgNjzWXB1ZztEyw9RhFQxDYoGLsOnHxpsJ8vTNdbS2jDMyM1ZwZ
         KSdKGWft5p+8D93tMiz4SuVHo3Npq3qq6uCcPE/Mp3dq9HyJ3VM3fe4RYObDsigahFYi
         DbnQ==
X-Gm-Message-State: APjAAAVEmur7Y3pF95kuJzU2TUCHHob3UoH3pQf0biW1CN2DYXF2oH4N
        9E6LsFe8uZVcu0a2IwA+WZEz1w==
X-Google-Smtp-Source: APXvYqys+RSbYX+JuRrYPwaOgyHiXn90FgRVEBpkF/Fx+THn0V1divQz33rNrvMJYu+E0K0qBI+Okw==
X-Received: by 2002:a1c:3946:: with SMTP id g67mr11865974wma.52.1570199652841;
        Fri, 04 Oct 2019 07:34:12 -0700 (PDT)
Received: from dell ([2.27.167.122])
        by smtp.gmail.com with ESMTPSA id e18sm8432541wrv.63.2019.10.04.07.34.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 04 Oct 2019 07:34:12 -0700 (PDT)
Date:   Fri, 4 Oct 2019 15:34:10 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Charles Keepax <ckeepax@opensource.cirrus.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        patches@opensource.cirrus.com
Subject: Re: [PATCH v3 3/3] mfd: madera: Add support for requesting the
 supply clocks
Message-ID: <20191004143410.GJ18429@dell>
References: <20191001134617.12093-1-ckeepax@opensource.cirrus.com>
 <20191001134617.12093-3-ckeepax@opensource.cirrus.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20191001134617.12093-3-ckeepax@opensource.cirrus.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Oct 2019, Charles Keepax wrote:

> Add the ability to get the clock for each clock input pin of the chip
> and enable MCLK2 since that is expected to be a permanently enabled
> 32kHz clock.
> 
> Signed-off-by: Charles Keepax <ckeepax@opensource.cirrus.com>
> ---
> 
> Changes since v2:
>  - Use new devm_clk_bulk_get_optional API
> 
> Thanks,
> Charles
> 
>  drivers/mfd/madera-core.c       | 27 ++++++++++++++++++++++++++-
>  include/linux/mfd/madera/core.h | 11 +++++++++++
>  2 files changed, 37 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/mfd/madera-core.c b/drivers/mfd/madera-core.c
> index 29540cbf75934..88d904eb016ea 100644
> --- a/drivers/mfd/madera-core.c
> +++ b/drivers/mfd/madera-core.c
> @@ -450,6 +450,21 @@ int madera_dev_init(struct madera *madera)
>  		       sizeof(madera->pdata));
>  	}
>  
> +	madera->mclk[MADERA_MCLK1].id = "mclk1";
> +	madera->mclk[MADERA_MCLK2].id = "mclk2";
> +	madera->mclk[MADERA_MCLK3].id = "mclk3";
> +
> +	ret = devm_clk_bulk_get_optional(madera->dev, ARRAY_SIZE(madera->mclk),
> +					 madera->mclk);
> +	if (ret) {
> +		dev_err(madera->dev, "Failed to get clocks: %d\n", ret);
> +		return ret;
> +	}
> +
> +	/* Not using devm_clk_get to prevent breakage of existing DTs */
> +	if (!madera->mclk[MADERA_MCLK2].clk)
> +		dev_warn(madera->dev, "Missing MCLK2, requires 32kHz clock\n");
> +
>  	ret = madera_get_reset_gpio(madera);
>  	if (ret)
>  		return ret;
> @@ -660,13 +675,19 @@ int madera_dev_init(struct madera *madera)
>  	}
>  
>  	/* Init 32k clock sourced from MCLK2 */
> +	ret = clk_prepare_enable(madera->mclk[MADERA_MCLK2].clk);
> +	if (ret != 0) {

Nit: Why is this not 'if (ret)' like in the rest of the file?

-- 
Lee Jones [李琼斯]
Linaro Services Technical Lead
Linaro.org │ Open source software for ARM SoCs
Follow Linaro: Facebook | Twitter | Blog
