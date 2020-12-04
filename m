Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B29372CE480
	for <lists+devicetree@lfdr.de>; Fri,  4 Dec 2020 01:35:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730048AbgLDAeA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Dec 2020 19:34:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49332 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730003AbgLDAeA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Dec 2020 19:34:00 -0500
Received: from mail-oi1-x241.google.com (mail-oi1-x241.google.com [IPv6:2607:f8b0:4864:20::241])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 222C9C061A55
        for <devicetree@vger.kernel.org>; Thu,  3 Dec 2020 16:33:20 -0800 (PST)
Received: by mail-oi1-x241.google.com with SMTP id k2so4265848oic.13
        for <devicetree@vger.kernel.org>; Thu, 03 Dec 2020 16:33:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=F4qSAvqclwaBrwtj+D4WYT0ed0FtCTiqB7wP+jGTvzs=;
        b=Knkst9NAJKJlG81HZrnkT61iPj7pbone3xLt1QMLq6jgnl/Zml13orYQLooU83/6EO
         qTNUIiH8cDxz/UYePN+LNjtTpIeFtiOgaAmbykS+IMxPN1gA4S6O0AupZjlO5bmZ8oBo
         ZzSToqQeT/FblPepO9Qz0afjNe48SrMIGHwWR9bVdq3zNnR9+6X4kV7ls7sDneuozHFn
         kXPJVhhOkf2Ps3V2/A5B69kEfQFAKQnZA3F0xnR0pRJKrJeZiYSuSY3YJNNlCZK7ifOH
         +xZjsWcB6A5KFqI2iIsgzzUhF4rtyQTk7279v7JDCpGwsmRkZhxKBMUKlxg19IGfUmKo
         zhnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=F4qSAvqclwaBrwtj+D4WYT0ed0FtCTiqB7wP+jGTvzs=;
        b=hrdS6i3eRXLsmiLe78dYQ+pFtFNm+gwAS0inbSPLIYbfotb0Ro8BSQeRdQNK7diwXu
         s/TiE0v+p1Y2iqDy3oeC+Sh9yTFKp/w6eqqI1X/WQV/zu72jDHTStOQECxYqgeP71DIX
         MzBk2CNuCdrDqnaBYhiAWV4UXT/rWNLgPFbEruD8JUGsTXYribZ+/x6lOY04FUyzumRm
         impo44TEXmb5MXz3HoFqWQJ9OOypMKnyQ22AhwQDqmeb0/DJH4yLjIG1uNwezJKYCchN
         isEu3ii2OinmIqtF3bDhThdym1o9bW0zQvyEL+NC4iMdZ1t5Uw3cZN3/M0NIrHGELjqi
         JbvA==
X-Gm-Message-State: AOAM532YGHuhJjKsWl93E0ocS7MhrzY+wqn8zty0ssowTozXtQyn5vs3
        AYkpSgbA2BtDCzi+/3ZC9BaMGA==
X-Google-Smtp-Source: ABdhPJziJks2wT35CJcxJ1e9G8XvcOcmk+m6fxcIbh3JFDPiW6HO059tWwShgKtA6S3Y75WsrzgWKg==
X-Received: by 2002:aca:3c3:: with SMTP id 186mr1339087oid.22.1607041999440;
        Thu, 03 Dec 2020 16:33:19 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id d62sm263751oia.6.2020.12.03.16.33.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 03 Dec 2020 16:33:18 -0800 (PST)
Date:   Thu, 3 Dec 2020 18:33:17 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] arm64: dts: qcom: sm8250: rename smem device node to
 follow schema
Message-ID: <X8mDzc77sk+fAFit@builder.lan>
References: <20201203191335.927001-1-dmitry.baryshkov@linaro.org>
 <20201203191335.927001-2-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201203191335.927001-2-dmitry.baryshkov@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 03 Dec 13:13 CST 2020, Dmitry Baryshkov wrote:

> Rename 'qcom,smem' to just 'smem' to follow the rest of SoC (and device
> schema).
> 
> Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>

Applied, no need to include in v2.

Thanks,
Bjorn

> ---
>  arch/arm64/boot/dts/qcom/sm8250.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/arch/arm64/boot/dts/qcom/sm8250.dtsi b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> index 4c472db2738e..bdd9bd303415 100644
> --- a/arch/arm64/boot/dts/qcom/sm8250.dtsi
> +++ b/arch/arm64/boot/dts/qcom/sm8250.dtsi
> @@ -334,7 +334,7 @@ cdsp_secure_heap: memory@8bf00000 {
>  		};
>  	};
>  
> -	smem: qcom,smem {
> +	smem {
>  		compatible = "qcom,smem";
>  		memory-region = <&smem_mem>;
>  		hwlocks = <&tcsr_mutex 3>;
> -- 
> 2.29.2
> 
