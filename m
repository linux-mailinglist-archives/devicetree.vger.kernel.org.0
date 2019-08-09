Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 8441087031
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 05:31:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2404533AbfHIDbY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 23:31:24 -0400
Received: from mail-pf1-f196.google.com ([209.85.210.196]:46386 "EHLO
        mail-pf1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1733140AbfHIDbY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 23:31:24 -0400
Received: by mail-pf1-f196.google.com with SMTP id c3so22119072pfa.13
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 20:31:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=8mOaONbQIagSdJ4scl2hu9XLlJCapqfCQXNLNTlJDAM=;
        b=JG5j09Ckfh88SlbgQq2fowNEBhoJu3CqiqU13VdP0+EHZrUK57Hwcpp7ncz474b2Qa
         3X2+xEEb47PsdWA+I15QkU1fyOZypORAZ85xcdXnD+6IrB9d9PprLkNkkTBUWJCr8EHb
         dj9FqWUI5C5eouktQwq24BYenAgkORnaw82YHU/gbflTRwRne+l4KWGBflTFhnEOuicO
         UYG/ToflKEoDj6WStjmu8fBgFNauOTbQnoQRrMpF/gaV4GydcD5q+ZGM9nMTmwyyvhQn
         UuZIC7V/kqUNEzcgfjODcMk6/ttR9EnVchZhr0RHk88eSn/V8eyNKhApDafcUWmfXfYw
         id3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=8mOaONbQIagSdJ4scl2hu9XLlJCapqfCQXNLNTlJDAM=;
        b=Zs3LOEceqYvVu0c39dykNoOdQJrmA8TinmgM+0LyRrtM8IC/ErMH2z93cwxf/DKAZi
         3rcmc6apoYsDYEh88mVOj/M2WxSnBNHz5ANfmue65NVbRUp5VZK7KADy+PPWrtxcNYKy
         Pv7QgjmUoC67FY2a2DVK430u1qaVex0tViscOnG1wp4WJgEmBoGQE+8nWijpxtuIONx2
         q2ZcMm5bELW5DjNI+HhjAurkdhXthc/lq/An8eXXcdAlttOVmzpBE3Bn6yJ6KoV2+Bw4
         G98wga7Pr7rIWytC68jLF/+Zu5cRTaczlwN7s4YlPdD+pPFO/qKMG25wxIKDWpk+89VE
         beiA==
X-Gm-Message-State: APjAAAUlUvbrtiACWFWvx1pdvupW2H3zmSiLIHpIa1QOQwmpt+Da9r9c
        GXBz/ANNSLdR8AYpa0ZKcHNFnA==
X-Google-Smtp-Source: APXvYqwPQLcbYoC7IQrEKTJfa5wSrqNMVp1E/hA5pk7ynvnkI3COuoNbD8Qonx0+mtzPR+dhnm9ruQ==
X-Received: by 2002:a17:90a:710c:: with SMTP id h12mr7181024pjk.36.1565321482989;
        Thu, 08 Aug 2019 20:31:22 -0700 (PDT)
Received: from tuxbook-pro (104-188-17-28.lightspeed.sndgca.sbcglobal.net. [104.188.17.28])
        by smtp.gmail.com with ESMTPSA id b6sm83794448pgq.26.2019.08.08.20.31.21
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 20:31:22 -0700 (PDT)
Date:   Thu, 8 Aug 2019 20:32:55 -0700
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Mark Brown <broonie@kernel.org>, linux-arm-msm@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] regulator: qcom-rpmh: Add support for SM8150
Message-ID: <20190809033255.GL26807@tuxbook-pro>
References: <20190808093343.5600-1-vkoul@kernel.org>
 <20190808093343.5600-2-vkoul@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190808093343.5600-2-vkoul@kernel.org>
User-Agent: Mutt/1.12.1 (2019-06-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu 08 Aug 02:33 PDT 2019, Vinod Koul wrote:
> diff --git a/drivers/regulator/qcom-rpmh-regulator.c b/drivers/regulator/qcom-rpmh-regulator.c
[..]
> +static const struct rpmh_vreg_hw_data pmic5_bob = {
> +	.regulator_type = VRM,
> +	.ops = &rpmh_regulator_vrm_bypass_ops,
> +	.voltage_range = REGULATOR_LINEAR_RANGE(300000, 0, 135, 32000),
> +	.n_voltages = 135,

There are 136 voltages in [0,135]

> +	.pmic_mode_map = pmic_mode_map_pmic4_bob,
> +	.of_map_mode = rpmh_regulator_pmic4_bob_of_map_mode,
> +};
> +
[..]
> @@ -755,6 +890,18 @@ static const struct of_device_id rpmh_regulator_match_table[] = {
>  		.compatible = "qcom,pm8005-rpmh-regulators",
>  		.data = pm8005_vreg_data,
>  	},
> +	{
> +		.compatible = "qcom,pm8150-rpmh-regulators",
> +		.data = pm8150_vreg_data,
> +	},
> +	{
> +		.compatible = "qcom,pm8150l-rpmh-regulators",
> +		.data = pm8150l_vreg_data,
> +	},
> +	{
> +		.compatible = "qcom,pm8009-rpmh-regulators",
> +		.data = pm8009_vreg_data,
> +	},

Sort order...

>  	{}
>  };
>  MODULE_DEVICE_TABLE(of, rpmh_regulator_match_table);

Apart from these nits this looks good.

Regards,
Bjorn
