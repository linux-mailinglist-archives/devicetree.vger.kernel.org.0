Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A77FF32F8DA
	for <lists+devicetree@lfdr.de>; Sat,  6 Mar 2021 09:02:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229833AbhCFIBM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 6 Mar 2021 03:01:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33466 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229672AbhCFIA6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 6 Mar 2021 03:00:58 -0500
Received: from mail-pj1-x1029.google.com (mail-pj1-x1029.google.com [IPv6:2607:f8b0:4864:20::1029])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EDB8C06175F
        for <devicetree@vger.kernel.org>; Sat,  6 Mar 2021 00:00:58 -0800 (PST)
Received: by mail-pj1-x1029.google.com with SMTP id q6-20020a17090a4306b02900c42a012202so403201pjg.5
        for <devicetree@vger.kernel.org>; Sat, 06 Mar 2021 00:00:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H5fISw0qC/qT9t9aAeqJzBnA+SbB1QEsRNTRVsV5dqA=;
        b=I+uS3nFPJ2SdmFgDFF5gLlv/Qe8ooLQ52px8l7IwgDx5ASamI3dllaCXZZTaE6m5Te
         /TqVJiFqazEG43gmjdk4LEeK0s1ULioRWPpWkzmKT3y+lYrZiVvM5daW3xglOsJ//yoN
         1Rpb1bH3T3Ig3QwXrRgQ90q59C6mIrStN0K3wzzKJK2I6XUtySpLqpaRZLbxyHkZ9gVl
         u1BBvrDCXp8AH8FfRAxKSgR6WVl+LvxPgk+uTDdv30dpjgZu7IKVyvDiFP+xtb8MtyqK
         mE77pI2oGttUTmt/V1lzBdD0Pm1b7o9q67fVMkLObraK+ATsL9y6k/u2YqsHtdu8kRBx
         mtaA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H5fISw0qC/qT9t9aAeqJzBnA+SbB1QEsRNTRVsV5dqA=;
        b=ssCq/Yxmux9aTnPwdoeWXzaBxfCtYEmS1iRL1UYV/N8RT+HQ2IHHM1Evrtd8N+oHWz
         927d2TYqVNK/piLwh+wslqiNZlIjd5PHkD48BTQNbgQqpd4puaRk9C0MnJ96egj+OOVK
         hS/1NKY1b/5mQGOQAgyvSvyWja+iZmvt1ST3tqmRv2+aTy+cR7f5tqadubSvSVlynuHj
         ds2tcWv3UdsDsz49ShyuiAWCkAEAtHlSSwfhGWsx8IOy5wdEbTzmXivkvXSXmkCPZr+v
         Y2jparcTfpbC5eB4+TrQBnD62pKA9EdvkeJmPJvNDhWsFjVQjnS9UQb89+Z+yXMyTsSM
         9t9w==
X-Gm-Message-State: AOAM530D1brFDgmj6ilOFCvUlbz9uqVxzVYCEJEdMcRpqEcRd8+jh3gM
        BEpkfLDX8Juqsd5qfYIR4+dPNA==
X-Google-Smtp-Source: ABdhPJxFbag7BL9DhWpJvmh+nTsBKeLbeb2Q+ahxyJxFF8UNy5HJiOwIp2JYvvh3WYzP3i9TkLXU+A==
X-Received: by 2002:a17:90a:9a91:: with SMTP id e17mr7648707pjp.218.1615017657676;
        Sat, 06 Mar 2021 00:00:57 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id y15sm5341529pgi.31.2021.03.06.00.00.54
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 06 Mar 2021 00:00:55 -0800 (PST)
Date:   Sat, 6 Mar 2021 16:00:50 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845: fix number of pins in
 'gpio-ranges'
Message-ID: <20210306080049.GM17424@dragon>
References: <20210303033106.549-1-shawn.guo@linaro.org>
 <20210303033106.549-2-shawn.guo@linaro.org>
 <YEKl7GbxBhui4eoT@builder.lan>
 <20210306012829.GL17424@dragon>
 <YELhMmDndOTSSJJO@builder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YELhMmDndOTSSJJO@builder.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 07:56:02PM -0600, Bjorn Andersson wrote:
> On Fri 05 Mar 19:28 CST 2021, Shawn Guo wrote:
> 
> > On Fri, Mar 05, 2021 at 03:43:08PM -0600, Bjorn Andersson wrote:
> > > On Tue 02 Mar 21:31 CST 2021, Shawn Guo wrote:
> > > 
> > > > The last cell of 'gpio-ranges' should be number of GPIO pins, and in
> > > > case of qcom platform it should match msm_pinctrl_soc_data.ngpio rather
> > > > than msm_pinctrl_soc_data.ngpio - 1.
> > > > 
> > > 
> > > This is a historical artifact, SDM845 has 150 GPIO pins. In addition to
> > > this there's an output-only pin for UFS, which I exposed as an GPIO as
> > > well - but it's only supposed to be used as a reset-gpio for the UFS
> > > device.
> > > 
> > > Perhaps that still mandates that gpio-ranges should cover it?
> > 
> > I think the number in DT gpio-ranges should match msm_pinctrl_soc_data.ngpio.
> > Otherwise, kernel will be confused and be running into the issue like
> > below in some case.
> > 
> > > 
> > > > This fixes the problem that when the last GPIO pin in the range is
> > > > configured with the following call sequence, it always fails with
> > > > -EPROBE_DEFER.
> > > > 
> > > >     pinctrl_gpio_set_config()
> > > >         pinctrl_get_device_gpio_range()
> > > >             pinctrl_match_gpio_range()
> > > 
> > > When do we hit this sequence? I didn't think operations on the UFS
> > > GP(I)O would ever take this code path?
> > 
> > It will, if we have UFS driver booting from ACPI and requesting reset
> > GPIO.
> 
> But does the UFS driver somehow request GPIO 190 on SC8180x?
> 
> I made up the idea that this is a GPIO, there really only is 190 (0-189)
> GPIOs on thie SoC.
> 
> Downstream they use a pinconf node with "output-high"/"output-low" to
> toggle the reset pin and I don't find any references in the Flex 5G
> DSDT.

Right now, I do not have to request and configure this UFS GPIO for
getting UFS work with ACPI kernel.  And the immediate problem we have is
that with gpio_chip .set_config patch, devm_gpiod_get_optional() call
from UFS driver always gets -EPROBE_DEFER.

> 
> > And we are hit this sequence with my patch that adds .set_config
> > for gpio_chip [1].
> > 
> 
> What's calling pinctrl_gpio_set_config() in this case?

  ufs_qcom_probe
    ufshcd_pltfrm_init
      ufshcd_init
        ufs_qcom_init
          devm_gpiod_get_optional
            devm_gpiod_get_index
              gpiod_get_index
                gpiod_configure_flags
                  gpiod_direction_output
                    gpiochip_generic_config

Shawn
