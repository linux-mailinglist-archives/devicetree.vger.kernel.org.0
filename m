Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6EA053E0ACA
	for <lists+devicetree@lfdr.de>; Thu,  5 Aug 2021 01:20:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235606AbhHDXUn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 19:20:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35048 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235528AbhHDXUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 19:20:41 -0400
Received: from mail-oi1-x22f.google.com (mail-oi1-x22f.google.com [IPv6:2607:f8b0:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80FEFC0613D5
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 16:20:27 -0700 (PDT)
Received: by mail-oi1-x22f.google.com with SMTP id 21so4882029oin.8
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 16:20:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=+WrY9sY3xmkOkflQ06GlfCPlNC4kNQFurKfUW6O4aNQ=;
        b=QXU5ykemFZbefDYdowS/GS93b0Hqj4WM6eDDz52B9LUhe4lZRb51Cdy4Gy4fN1Fugg
         AlTq/UlQ1D3oCeErjCVqHk9/jVem3nYORoAV5H1lVURS/TP9CVOH8kRaRhmdGwU1JrWH
         K45UQzWrEh9Xqnci0wTALvizIk1v2g8tXJl8UrCNNtwz73M3TThZ+5MaMoIeXCuMVu8A
         rVahASNRQozxcNzTvTPp5DnIt4Q7n1IpBpZSJBOIoBxGqNDTaAdBIBVxTe+63zEzMOCb
         gIvp4pkfvhdWaot0BtJ/BjDcYuPxF2v0WlICplsykEoAF4Qq3SH8v2fy1kxx7D2XwCbl
         RsUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=+WrY9sY3xmkOkflQ06GlfCPlNC4kNQFurKfUW6O4aNQ=;
        b=LH73pJfLDZB9LvdVtkYm8s1pp5ykp/sCL4y/bFb3SgS46i2Hck/f5Hxld0dizZdmsl
         XmEQOltDGo+Jg3R2+T+xKS1HRx29lAMLjPKM1L3rvA9fMqhXIyKksrO019HsGaDw6F7u
         vhrBtwNtaz5tr2AjGmXjF5I6cNAFtqSLPTMsoz9M+mezud1hFhAOjiIc8ZUL+Ygo05tc
         dEPiMV/09vdhgUayO7sbksTCsJOGwtMfloDE4hs0O6SRoev/aNQ7FKhgSUtyq8JxB1MH
         FcsciniCVlIpp1eMj+CkFHx6KqHcG3j6/abvRZE3t75AuDJ0gttXJBtP1ZN+oCH6lyDu
         dZ9g==
X-Gm-Message-State: AOAM530LW6SBM7VILhpMKO9+gZ7awfAussfjmh6MC+3W7EChgShDnwdM
        5LVXqaiCsyVcr4KZV2FZt9hzlw==
X-Google-Smtp-Source: ABdhPJzuWE8wYJfSvfdZ1zfsR4m2m7P3NIyjB125PXi8DLMi21I+eMfEW3aGFPmpg16L3nnHDlPi6w==
X-Received: by 2002:aca:180c:: with SMTP id h12mr1319358oih.60.1628119226910;
        Wed, 04 Aug 2021 16:20:26 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id f3sm691099otc.49.2021.08.04.16.20.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 16:20:26 -0700 (PDT)
Date:   Wed, 4 Aug 2021 18:20:24 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Sibi Sankar <sibis@codeaurora.org>
Cc:     sboyd@kernel.org, robh+dt@kernel.org, mka@chromium.org,
        viresh.kumar@linaro.org, agross@kernel.org, rjw@rjwysocki.net,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        dianders@chromium.org, tdas@codeaurora.org
Subject: Re: [PATCH 2/4] cpufreq: qcom: Re-arrange register offsets to
 support per core L3 DCVS
Message-ID: <YQsguOCjIFZaJSzd@builder.lan>
References: <1627581885-32165-1-git-send-email-sibis@codeaurora.org>
 <1627581885-32165-3-git-send-email-sibis@codeaurora.org>
 <YQsetKGjlmQRxytX@builder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YQsetKGjlmQRxytX@builder.lan>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed 04 Aug 18:11 CDT 2021, Bjorn Andersson wrote:

> On Thu 29 Jul 13:04 CDT 2021, Sibi Sankar wrote:
> 
> > Qualcomm SoCs (starting with SM8350) support per core voting for L3 cache
> > frequency. So, re-arrange the cpufreq register offsets to allow access for
> > the L3 interconnect to implement per core control. Also prevent binding
> > breakage caused by register offset shuffling by using the SM8250/SM8350
> > EPSS compatible.
> > 
> > Fixes: 7dbd121a2c58 ("arm64: dts: qcom: sc7280: Add cpufreq hw node")
> > Signed-off-by: Sibi Sankar <sibis@codeaurora.org>
> > ---
> >  drivers/cpufreq/qcom-cpufreq-hw.c | 23 +++++++++++++++++++----
> >  1 file changed, 19 insertions(+), 4 deletions(-)
> > 
> > diff --git a/drivers/cpufreq/qcom-cpufreq-hw.c b/drivers/cpufreq/qcom-cpufreq-hw.c
> > index f86859bf76f1..74ef3b38343b 100644
> > --- a/drivers/cpufreq/qcom-cpufreq-hw.c
> > +++ b/drivers/cpufreq/qcom-cpufreq-hw.c
> > @@ -28,6 +28,7 @@ struct qcom_cpufreq_soc_data {
> >  	u32 reg_volt_lut;
> >  	u32 reg_perf_state;
> >  	u8 lut_row_size;
> > +	bool skip_enable;
> 
> This should probably be called "skip_enable_check".
> 
> >  };
> >  
> >  struct qcom_cpufreq_data {
> > @@ -257,19 +258,31 @@ static const struct qcom_cpufreq_soc_data qcom_soc_data = {
> >  	.reg_volt_lut = 0x114,
> >  	.reg_perf_state = 0x920,
> >  	.lut_row_size = 32,
> > +	.skip_enable = false,
> >  };
> >  
> >  static const struct qcom_cpufreq_soc_data epss_soc_data = {
> > +	.reg_freq_lut = 0x0,
> > +	.reg_volt_lut = 0x100,
> > +	.reg_perf_state = 0x220,
> > +	.lut_row_size = 4,
> > +	.skip_enable = true,
> 
> This change is not compatible with existing DTBs.
> 

Continued staring at this after I sent my response, and I'm confused.

You're say in the commit message that SM8350 and beyond needs access to
some registers in the first 0x100 bytes of the register space. So
therefor you're changing the fallback, which is only used for sc7280...

In other words, you break the compatibility with the existing sc7280
dtb and leave sm8350 unchanged - after saying that this change is for
the sake of sm8350.


Lastly, why is "the L3 frequency" an interconnect and not a clock? (And
why don't we make the cpufreq driver a clock-controller for the
platforms that has this?)

Regards,
Bjorn

> Regards,
> Bjorn
> 
> > +};
> > +
> > +static const struct qcom_cpufreq_soc_data epss_sm8250_soc_data = {
> >  	.reg_enable = 0x0,
> >  	.reg_freq_lut = 0x100,
> >  	.reg_volt_lut = 0x200,
> >  	.reg_perf_state = 0x320,
> >  	.lut_row_size = 4,
> > +	.skip_enable = false,
> >  };
> >  
> >  static const struct of_device_id qcom_cpufreq_hw_match[] = {
> >  	{ .compatible = "qcom,cpufreq-hw", .data = &qcom_soc_data },
> >  	{ .compatible = "qcom,cpufreq-epss", .data = &epss_soc_data },
> > +	{ .compatible = "qcom,sm8250-cpufreq-epss", .data = &epss_sm8250_soc_data },
> > +	{ .compatible = "qcom,sm8350-cpufreq-epss", .data = &epss_sm8250_soc_data },
> >  	{}
> >  };
> >  MODULE_DEVICE_TABLE(of, qcom_cpufreq_hw_match);
> > @@ -334,10 +347,12 @@ static int qcom_cpufreq_hw_cpu_init(struct cpufreq_policy *policy)
> >  	data->res = res;
> >  
> >  	/* HW should be in enabled state to proceed */
> > -	if (!(readl_relaxed(base + data->soc_data->reg_enable) & 0x1)) {
> > -		dev_err(dev, "Domain-%d cpufreq hardware not enabled\n", index);
> > -		ret = -ENODEV;
> > -		goto error;
> > +	if (!data->soc_data->skip_enable) {
> > +		if (!(readl_relaxed(base + data->soc_data->reg_enable) & 0x1)) {
> > +			dev_err(dev, "Domain-%d cpufreq hardware not enabled\n", index);
> > +			ret = -ENODEV;
> > +			goto error;
> > +		}
> >  	}
> >  
> >  	qcom_get_related_cpus(index, policy->cpus);
> > -- 
> > The Qualcomm Innovation Center, Inc. is a member of the Code Aurora Forum,
> > a Linux Foundation Collaborative Project
> > 
