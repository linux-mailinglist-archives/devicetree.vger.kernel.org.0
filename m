Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 462D03B3BBD
	for <lists+devicetree@lfdr.de>; Fri, 25 Jun 2021 06:47:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230282AbhFYEuD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Jun 2021 00:50:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38994 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230139AbhFYEuC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Jun 2021 00:50:02 -0400
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8324C061760
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 21:47:41 -0700 (PDT)
Received: by mail-pf1-x42e.google.com with SMTP id w71so7068835pfd.4
        for <devicetree@vger.kernel.org>; Thu, 24 Jun 2021 21:47:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=AtTk+6QGKLof6Gu7Ev3cepmH8O53Op63rhLICrg+Eb8=;
        b=Ypvg0mxaCTrsJqr5D08KpxEGYnjPnrEGE5Lh4jwDezc7RcM4boEj6VNfkBWXT6s2RG
         cjVNCpIWtse8LclIVCXFHfO2ti1XDt1uetqT5HrM7mGwNdWweyQLrMh7YcG3i/W2581W
         6FbDNYtQnoNtDWink9Se4Uyk8MeRqzmTWaavQx4XGEYLgXBbPhTVyDerI9rk26H7X3zC
         wMEq9P7FRsayfNklJM1ThVWFB9eArF6yf57HXFgd6fE3NrKmhPyAoJ3Hez0/Lh4w8u8l
         bZ9GNhZYZ8wDl45+l9hZExGj6jg1lLcFLjRW9VVKXkIuUmPJ39vMdQmEk2Y5CAHb3e9M
         n5YQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=AtTk+6QGKLof6Gu7Ev3cepmH8O53Op63rhLICrg+Eb8=;
        b=oaonC+HfZrhMUxFmoVQm8TSzR00d9zWJceq8WGz3Dd9jUsSrfsLWPIutHXfZrMqnyZ
         R4ghoOC+szmj+cPgTomovk4JI466sgOX4kEplUQN/6KkRYCTjXqNcqaa/Cv+ChEuuR7w
         gKYHC75JkBLDE9BbKDo8CVRxmjCmNzDPt0Fhfq08yntpsQmt2ggjvpbOY1i0RNwm4g3s
         MpzF9cYbeVUSfDNV0Xpwr7zqQB9LuI+Go8d+GU5G3sdqpXYF7MkNZdA4m5/ceIec47cL
         MUSWUdCTtDZ9X86jQZ4+9J03UzHi5OaMqW0Lu8kmXJ0de18aU7CmT6jwhbOMvffZkGJH
         9WuA==
X-Gm-Message-State: AOAM532CWNg5BQ15EzmaDL+mtXVEpAF9nBbCTZg17Bo3CwAIJewmZVtG
        gfhagJnrzmz7VQgHG7+AMSI4
X-Google-Smtp-Source: ABdhPJwUiAiC28y9PI+2/abF+jcevjyqTqZv/OpN1QqH+yTCJOdS3d6tJgjgTSSUsBqDDHj0sKZVPA==
X-Received: by 2002:a63:5d66:: with SMTP id o38mr7961955pgm.444.1624596460826;
        Thu, 24 Jun 2021 21:47:40 -0700 (PDT)
Received: from workstation ([120.138.13.204])
        by smtp.gmail.com with ESMTPSA id y7sm4487159pfy.153.2021.06.24.21.47.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 24 Jun 2021 21:47:40 -0700 (PDT)
Date:   Fri, 25 Jun 2021 10:17:36 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>, Ohad Ben-Cohen <ohad@wizery.com>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2 2/2] remoteproc: qcom: pas: Add SC8180X adsp, cdsp and
 mpss
Message-ID: <20210625044736.GA4974@workstation>
References: <20210608174944.2045215-1-bjorn.andersson@linaro.org>
 <20210608174944.2045215-2-bjorn.andersson@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210608174944.2045215-2-bjorn.andersson@linaro.org>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 08, 2021 at 10:49:44AM -0700, Bjorn Andersson wrote:
> The Qualcomm SC8180X has the typical ADSP, CDSP and MPSS remote
> processors operated using the PAS interface, add support for these.
> 
> Attempts to configuring mss.lvl is failing, so a new adsp_data is
> provided that skips this resource, for now.
> 

What is the impact of this skipped resource? I guess it is enabled by
the bootloader so we can't change it in runtime?

> Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>

Given that adsp remoteproc works without configuring mss power domain,

Reviewed-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>

Thanks,
Mani

> ---
> 
> Changes since v1:
> - None
> 
>  drivers/remoteproc/qcom_q6v5_pas.c | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
> 
> diff --git a/drivers/remoteproc/qcom_q6v5_pas.c b/drivers/remoteproc/qcom_q6v5_pas.c
> index b921fc26cd04..a79bee901e9b 100644
> --- a/drivers/remoteproc/qcom_q6v5_pas.c
> +++ b/drivers/remoteproc/qcom_q6v5_pas.c
> @@ -689,6 +689,25 @@ static const struct adsp_data mpss_resource_init = {
>  	.ssctl_id = 0x12,
>  };
>  
> +static const struct adsp_data sc8180x_mpss_resource = {
> +	.crash_reason_smem = 421,
> +	.firmware_name = "modem.mdt",
> +	.pas_id = 4,
> +	.has_aggre2_clk = false,
> +	.auto_boot = false,
> +	.active_pd_names = (char*[]){
> +		"load_state",
> +		NULL
> +	},
> +	.proxy_pd_names = (char*[]){
> +		"cx",
> +		NULL
> +	},
> +	.ssr_name = "mpss",
> +	.sysmon_name = "modem",
> +	.ssctl_id = 0x12,
> +};
> +
>  static const struct adsp_data slpi_resource_init = {
>  		.crash_reason_smem = 424,
>  		.firmware_name = "slpi.mdt",
> @@ -811,6 +830,9 @@ static const struct of_device_id adsp_of_match[] = {
>  	{ .compatible = "qcom,qcs404-cdsp-pas", .data = &cdsp_resource_init },
>  	{ .compatible = "qcom,qcs404-wcss-pas", .data = &wcss_resource_init },
>  	{ .compatible = "qcom,sc7180-mpss-pas", .data = &mpss_resource_init},
> +	{ .compatible = "qcom,sc8180x-adsp-pas", .data = &sm8150_adsp_resource},
> +	{ .compatible = "qcom,sc8180x-cdsp-pas", .data = &sm8150_cdsp_resource},
> +	{ .compatible = "qcom,sc8180x-mpss-pas", .data = &sc8180x_mpss_resource},
>  	{ .compatible = "qcom,sdm845-adsp-pas", .data = &adsp_resource_init},
>  	{ .compatible = "qcom,sdm845-cdsp-pas", .data = &cdsp_resource_init},
>  	{ .compatible = "qcom,sdx55-mpss-pas", .data = &sdx55_mpss_resource},
> -- 
> 2.29.2
> 
