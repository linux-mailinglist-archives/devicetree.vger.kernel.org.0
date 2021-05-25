Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BDEF7390950
	for <lists+devicetree@lfdr.de>; Tue, 25 May 2021 20:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232467AbhEYTAb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 May 2021 15:00:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232133AbhEYTA3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 May 2021 15:00:29 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10274C061574
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:58:58 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id f6-20020a1c1f060000b0290175ca89f698so14088662wmf.5
        for <devicetree@vger.kernel.org>; Tue, 25 May 2021 11:58:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=snejp.pl; s=gmail;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=8mM61n6haCOPYKT0uk3Vaaoz2Rq5OIS/VFjKZ/8DiPo=;
        b=iYtIELMuHyUMHy71jvmpu8UrBEnOgFz5Tcl7WRo598rq3axDQ7ix08JCuxYBX4LfAi
         EJGhBl9JjHkTRMFT8PJmOPM7hdf783D/s8WBgP/qlPmyPh+5NvndnmfPTsd2ocHhW9IC
         6r8EwICYb9kPpMniZd7Jzzwt1Qdm8Y2S89DfjriIDubn/mUPStVza2ALmKlCey2KAY9f
         Wm6ncZ6I7AR7wv8kn3qCVIUTtSrBwnopcRs3M6S97lXf3am0uLgJeW7U3gnGY6M41YOU
         mYnxhXdX5ALUxDLj9uoo6MqvlwZjzkDi7BGjPNZOwUiC/JbChQLOGXhknd/T9ECz9gf9
         Wqrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=8mM61n6haCOPYKT0uk3Vaaoz2Rq5OIS/VFjKZ/8DiPo=;
        b=YJVHQ+NbNEoEsN5kGCvFNdLsKe4SUoupwaNryv/LKDMUjFtIT1VnO5V4sJG/Opx9dX
         COfmNwejvgNsvciJQ/139TSxBlyWRUahcTl4dreyxBJR2fv9k6mzdP5TSb4Kk77vesNy
         RBAoW+q62idDgvGOoxOIjGA25Q/dWoqM53pDGMbImiyK1zO5o+pyKPPHtUrxhjPdL33f
         ETEkNr4Vw+gScVn3yUozX4Akyt8vtFeI6fdGaAODPpyNnUsaxwhqwotfo0gPrortA1PC
         4DgILEtBxL1fRvXnT4eEYbo2wtKS3eJ31M1VBDH4nOK7tGz4RL+SQIqNfeu+mIbhhQdk
         1SvA==
X-Gm-Message-State: AOAM532KC5IZxlr8wr0i+LEED/B2bx1fwFdccpsGGovTbE+XYex6C2mS
        BLA562s1kGkQGGFCY81MqQMXHg==
X-Google-Smtp-Source: ABdhPJxbeuikEsL5QQeCEG36XpcOAFH9+FD27Wr7VKH2eWH0g1Ume27Xzfb9jOffpBAmqEy+ERKTCQ==
X-Received: by 2002:a1c:2645:: with SMTP id m66mr5090134wmm.145.1621969136487;
        Tue, 25 May 2021 11:58:56 -0700 (PDT)
Received: from PackardBell (public-gprs171801.centertel.pl. [46.134.10.90])
        by smtp.googlemail.com with ESMTPSA id v18sm20350733wro.18.2021.05.25.11.58.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 25 May 2021 11:58:56 -0700 (PDT)
Received: from localhost (PackardBell [local])
        by PackardBell (OpenSMTPD) with ESMTPA id e44e7e8f;
        Tue, 25 May 2021 18:58:52 +0000 (UTC)
Date:   Tue, 25 May 2021 20:58:52 +0200
From:   Bartosz Dudziak <bartosz.dudziak@snejp.pl>
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        David Sterba <dsterba@suse.com>, Jens Axboe <axboe@kernel.dk>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org
Subject: Re: [PATCH 2/2] cpuidle: qcom: Add SPM register data for APQ8026 and
 MSM8226
Message-ID: <20210525185852.GA2416@PackardBell>
References: <20210513150150.51464-1-bartosz.dudziak@snejp.pl>
 <20210513150150.51464-2-bartosz.dudziak@snejp.pl>
 <YJ1u3syIquKRyuv2@gerhold.net>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YJ1u3syIquKRyuv2@gerhold.net>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, May 13, 2021 at 08:24:30PM +0200, Stephan Gerhold wrote:
> Hi,
> 
> On Thu, May 13, 2021 at 05:01:50PM +0200, Bartosz Dudziak wrote:
> > Add APQ8026 and MSM8226 SoCs register data to SPM AVS Wrapper 2 (SAW2)
> > power controller driver.
> > 
> > Signed-off-by: Bartosz Dudziak <bartosz.dudziak@snejp.pl>
> > ---
> >  drivers/cpuidle/cpuidle-qcom-spm.c | 16 ++++++++++++++++
> >  1 file changed, 16 insertions(+)
> > 
> > diff --git a/drivers/cpuidle/cpuidle-qcom-spm.c b/drivers/cpuidle/cpuidle-qcom-spm.c
> > index adf91a6e4d..9711a98d68 100644
> > --- a/drivers/cpuidle/cpuidle-qcom-spm.c
> > +++ b/drivers/cpuidle/cpuidle-qcom-spm.c
> > @@ -87,6 +87,18 @@ static const struct spm_reg_data spm_reg_8974_8084_cpu  = {
> >  	.start_index[PM_SLEEP_MODE_SPC] = 3,
> >  };
> >  
> > +/* SPM register data for 8026, 8226 */
> > +static const struct spm_reg_data spm_reg_8x26_cpu  = {
> > +	.reg_offset = spm_reg_offset_v2_1,
> > +	.spm_cfg = 0x0,
> > +	.spm_dly = 0x3C102800,
> > +	.seq = { 0x60, 0x03, 0x60, 0x0B, 0x0F, 0x20, 0x10, 0x80, 0x30, 0x90,
> > +		0x5B, 0x60, 0x03, 0x60, 0x3B, 0x76, 0x76, 0x0B, 0x94, 0x5B,
> > +		0x80, 0x10, 0x26, 0x30, 0x0F },
> > +	.start_index[PM_SLEEP_MODE_STBY] = 0,
> > +	.start_index[PM_SLEEP_MODE_SPC] = 5,
> > +};
> > +
> >  static const u8 spm_reg_offset_v1_1[SPM_REG_NR] = {
> >  	[SPM_REG_CFG]		= 0x08,
> >  	[SPM_REG_SPM_CTL]	= 0x20,
> > @@ -259,6 +271,10 @@ static struct spm_driver_data *spm_get_drv(struct platform_device *pdev,
> >  }
> >  
> >  static const struct of_device_id spm_match_table[] = {
> > +	{ .compatible = "qcom,apq8026-saw2-v2.1-cpu",
> > +	  .data = &spm_reg_8x26_cpu },
> > +	{ .compatible = "qcom,msm8226-saw2-v2.1-cpu",
> > +	  .data = &spm_reg_8x26_cpu },
> 
> What is the reason for having a separate compatible for APQ8026?
> 
> If the difference between MSM8226 and APQ8026 is similar to other qcom
> SoCs (just lack of modem), both will end up using the same device tree
> include anyway. Then it's easier to have both use qcom,msm8226-saw2-v2.1-cpu.
> 
> Thanks,
> Stephan

You are right. There is no reason to have a seperate APQ8026 compatible because
it will share the MSM8226 device tree. I will send later a v2 patch with only
"qcom,msm8226-saw2-v2.1-cpu" option.

Thanks,
Bartosz 
