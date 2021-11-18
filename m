Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A9CB4551F4
	for <lists+devicetree@lfdr.de>; Thu, 18 Nov 2021 02:01:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242101AbhKRBE2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Nov 2021 20:04:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59738 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242102AbhKRBEH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Nov 2021 20:04:07 -0500
Received: from mail-ot1-x32b.google.com (mail-ot1-x32b.google.com [IPv6:2607:f8b0:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7A64C061206
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 17:01:04 -0800 (PST)
Received: by mail-ot1-x32b.google.com with SMTP id h16-20020a9d7990000000b0055c7ae44dd2so7931613otm.10
        for <devicetree@vger.kernel.org>; Wed, 17 Nov 2021 17:01:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=m+RUNxG8ylKaUgURHNWKd6M+Y09WLCNeaWcUhQZW3UI=;
        b=QVXAMcxCY548hx09SoJkrl7YKpBk87uSmWE4JYU4aOlWewP1OqNp26H8eHIjEOxLTn
         3Zvh1YJ+hD2P42Il3Px+pc/W7r3x2UWljg9pi5vLv8ersop4PpPOuddhsmRUnKKFB6EX
         iR/N4GWxRKrbUkBRbaQRCXC7ud/0OkGNigfpjFXbEf479mKA3xY3cTuYoQJ1z1HnqzDK
         mpNJKYFbjYRyjoJafGaLURfU9fUbSw4cBFPup6KKffw6MJ3jxh19rx6I+eYYPhY9V7AU
         Xpyt7Fjk62mFDEmIvzY5mS+WT4BhqmCQdCJ6r3wD0lr76MSPswqr4cR+HicMLXKfB40y
         jZcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=m+RUNxG8ylKaUgURHNWKd6M+Y09WLCNeaWcUhQZW3UI=;
        b=jVE0ap1KOfMYIHeLu4UoO08glHhIRuozqF6D+lkt7BkLvyP83Yss58eKjVxlXoPzPL
         2Q+1NDAFLf89Kcz5eVGDvyRb5vPUH60AZ+VK7ugv1NQ3P9pXS2M9AkqMiMxzL3Q5g/6j
         5vYTyTYMwe5wnioaOFWf+aylhlwzlSZSMTskzLsJuGnGGkgSQawEO+tkDOLo456MlITn
         rBNKy98Zc6BYCN+U2GX9uux+lXS9uaodTscBAZLRfGKQUg7TrVPJAWy8Uf9bUQLpUZXg
         hehD5m3m0Ya6tM2MhUsCDl69F0R85YbwysbtDL24IcpyrW+JrrgaD6IkjBr2GvxC1ZIE
         R3Ig==
X-Gm-Message-State: AOAM530AZMBQj82NU1GlR+pKE53l6lLnrOnnIOraSml1+5pwh9T/o51L
        3bob8VKsG7c6azdfeeOfSrd0Wg==
X-Google-Smtp-Source: ABdhPJyy2cjRg03PSmTPnzJCNfA111+8mBTrVTd7pHjyT06S4vKOIfZZ/Lkg4izGMV1TKUQKjalCnA==
X-Received: by 2002:a9d:1b41:: with SMTP id l59mr14466959otl.318.1637197263712;
        Wed, 17 Nov 2021 17:01:03 -0800 (PST)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id bn41sm354556oib.18.2021.11.17.17.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Nov 2021 17:01:03 -0800 (PST)
Date:   Wed, 17 Nov 2021 19:00:58 -0600
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Andy Gross <agross@kernel.org>, linux-arm-msm@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht,
        Maulik Shah <mkshah@codeaurora.org>
Subject: Re: [PATCH 2/3] soc: qcom: stats: Add fixed sleep stats offset for
 older RPM firmwares
Message-ID: <YZWlyiY0FH489cYz@builder.lan>
References: <20211018110803.32777-1-stephan@gerhold.net>
 <20211018110803.32777-3-stephan@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211018110803.32777-3-stephan@gerhold.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 18 Oct 06:08 CDT 2021, Stephan Gerhold wrote:

> Not all RPM firmware versions have the dynamic sleep stats offset
> available. Older versions use a fixed offset of 0xdba0.
> 
> Add support for this using a new qcom,rpm-legacy-stats compatible
> that can be used for older SoCs like MSM8916.
> 
> Suggested-by: Maulik Shah <mkshah@codeaurora.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>
> ---
>  drivers/soc/qcom/qcom_stats.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
> 
> diff --git a/drivers/soc/qcom/qcom_stats.c b/drivers/soc/qcom/qcom_stats.c
> index 817505bd99b5..67728de718fd 100644
> --- a/drivers/soc/qcom/qcom_stats.c
> +++ b/drivers/soc/qcom/qcom_stats.c
> @@ -237,6 +237,15 @@ static const struct stats_config rpm_data = {
>  	.subsystem_stats_in_smem = false,
>  };
>  
> +/* Older RPM firmwares have the stats at a fixed offset instead */
> +static const struct stats_config rpm_legacy_data = {
> +	.stats_offset = 0xdba0,
> +	.num_records = 2,
> +	.appended_stats_avail = true,
> +	.dynamic_offset = false,
> +	.subsystem_stats_in_smem = false,
> +};

Is this the only variation that existed back in the "legacy" days? Will
we end up with multiple "legacy" variants?

> +
>  static const struct stats_config rpmh_data = {
>  	.stats_offset = 0x48,
>  	.num_records = 3,
> @@ -247,6 +256,7 @@ static const struct stats_config rpmh_data = {
>  
>  static const struct of_device_id qcom_stats_table[] = {
>  	{ .compatible = "qcom,rpm-stats", .data = &rpm_data },
> +	{ .compatible = "qcom,rpm-legacy-stats", .data = &rpm_legacy_data },

'l' < 's'...

Regards,
Bjorn

>  	{ .compatible = "qcom,rpmh-stats", .data = &rpmh_data },
>  	{ }
>  };
> -- 
> 2.33.0
> 
