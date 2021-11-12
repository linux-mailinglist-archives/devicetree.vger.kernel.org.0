Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3CF8544E628
	for <lists+devicetree@lfdr.de>; Fri, 12 Nov 2021 13:12:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234921AbhKLMPd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Nov 2021 07:15:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37914 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231147AbhKLMPd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Nov 2021 07:15:33 -0500
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 92C3BC061766
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 04:12:42 -0800 (PST)
Received: by mail-wr1-x42c.google.com with SMTP id b12so15165549wrh.4
        for <devicetree@vger.kernel.org>; Fri, 12 Nov 2021 04:12:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=5L2Z7i/0CCqj4qb/ptThJtLoV5s4peBITQWmOlmcr4w=;
        b=K6OPlt8n0su7sJba65ho82L+iscKRWX0PKA21FHR/DlVVcSdPnmjXAFbHnU6uaULW1
         S82bMEO6xvtuLAg5bZqiEOYmdUR2KM0upRnbx9vNPNvpgb4RSj58EUseN4AVjIRAkB5L
         MDGyD3qJDE4+KMUPiG4LtYCpirRCVvNnIUx/CHqYDaZ2MzeST1RZvG0xGbgaeUetOJdg
         hXc7fK0QTM0uNneghNMvOB4I3qVsNqTmJjOO2kEcGkKxDsEfxjYx5stvsVraiFayFLq8
         v0ciAQUv3amurEpu9TuZOZw+c5Zmq82M2ibXCzqqpJeZpJS9T4sYc/BibbUJORlVcYY/
         8o+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=5L2Z7i/0CCqj4qb/ptThJtLoV5s4peBITQWmOlmcr4w=;
        b=2qqVsurS3dVZ0ourQXQN39qzphX+WDfCafv5e+pZKfIlFh4Sr484hbZh7b9IPKIY+c
         pzUeUYsgZrq6AUsTZPg4ZNI/k3UkGE8Lv8WB4V9+Q7AXO6zLzpVubOgE9tlkctwHUh4A
         chINLZpfiNcxrV9Qbf7KGuz7yP7ow3esh4DnuK1l1qtJsqlpLRBxl5v7h4SI414P9+S1
         mtrVPac0ZvNWJLN3Dn2fJEJhKiIhCrORlLLVHPQnDP7JdQqix/Y5QL7cNQSz6nP4egJn
         QAri8PhVND81dsvEFxvV4LERyhvrjrUcgHbWUiypPl+KrAKO+TwY+a5lZ8lBLTUHdHtp
         JckA==
X-Gm-Message-State: AOAM533XIvHwqIiwoMi7traqrF0Mv4BBdRJ2oLznuz/7I9TTIRxmxpNI
        xrgkcnMwjuBzugCMrQa3W5jn9g==
X-Google-Smtp-Source: ABdhPJwSoDj507/aCQM/WzT+a0qkAA0exwa5MasbTkeo/oIGwJwB/uRaHhbTrB74j5Xw2jPJcG/3dg==
X-Received: by 2002:a5d:548d:: with SMTP id h13mr17640686wrv.30.1636719161128;
        Fri, 12 Nov 2021 04:12:41 -0800 (PST)
Received: from maple.lan (cpc141216-aztw34-2-0-cust174.18-1.cable.virginm.net. [80.7.220.175])
        by smtp.gmail.com with ESMTPSA id g13sm5234966wmk.37.2021.11.12.04.12.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Nov 2021 04:12:40 -0800 (PST)
Date:   Fri, 12 Nov 2021 12:12:38 +0000
From:   Daniel Thompson <daniel.thompson@linaro.org>
To:     Marijn Suijten <marijn.suijten@somainline.org>
Cc:     phone-devel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Jingoo Han <jingoohan1@gmail.com>,
        ~postmarketos/upstreaming@lists.sr.ht,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin.botka@somainline.org>,
        Jami Kettunen <jami.kettunen@somainline.org>,
        Pavel Dubrova <pashadubrova@gmail.com>,
        Kiran Gunda <kgunda@codeaurora.org>,
        Bryan Wu <cooloney@gmail.com>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dri-devel@lists.freedesktop.org, linux-fbdev@vger.kernel.org
Subject: Re: [RESEND PATCH v2 05/13] backlight: qcom-wled: Override default
 length with qcom,enabled-strings
Message-ID: <20211112121238.kb3kkt6xzv5so26j@maple.lan>
References: <20211112002706.453289-1-marijn.suijten@somainline.org>
 <20211112002706.453289-6-marijn.suijten@somainline.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211112002706.453289-6-marijn.suijten@somainline.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Nov 12, 2021 at 01:26:58AM +0100, Marijn Suijten wrote:
> The length of qcom,enabled-strings as property array is enough to
> determine the number of strings to be enabled, without needing to set
> qcom,num-strings to override the default number of strings when less
> than the default (which is also the maxium) is provided in DT.
> 
> Fixes: 775d2ffb4af6 ("backlight: qcom-wled: Restructure the driver for WLED3")
> Signed-off-by: Marijn Suijten <marijn.suijten@somainline.org>
> Reviewed-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
> ---
>  drivers/video/backlight/qcom-wled.c | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/drivers/video/backlight/qcom-wled.c b/drivers/video/backlight/qcom-wled.c
> index c5232478a343..9bfbf601762a 100644
> --- a/drivers/video/backlight/qcom-wled.c
> +++ b/drivers/video/backlight/qcom-wled.c
> @@ -1518,6 +1518,8 @@ static int wled_configure(struct wled *wled)
>  				return -EINVAL;
>  			}
>  		}
> +
> +		cfg->num_strings = string_len;

I still don't really understand why this wants to be a separate patch.

The warning text emitted by the previous patch (whatever text we agree
on) will be nonsense until this patch is applied.

If this patch cannot appear before the warning is introduces then there
is no correct order for patches 4 and 5 (which implies they should be the
same patch).


Daniel.
