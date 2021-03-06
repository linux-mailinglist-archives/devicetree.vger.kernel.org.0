Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6E8E032F77F
	for <lists+devicetree@lfdr.de>; Sat,  6 Mar 2021 02:30:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbhCFB26 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 20:28:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34740 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229718AbhCFB2k (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 20:28:40 -0500
Received: from mail-pj1-x102a.google.com (mail-pj1-x102a.google.com [IPv6:2607:f8b0:4864:20::102a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D4A8C061761
        for <devicetree@vger.kernel.org>; Fri,  5 Mar 2021 17:28:39 -0800 (PST)
Received: by mail-pj1-x102a.google.com with SMTP id t9so172852pjl.5
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 17:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aZy+1fA0uSLl+EmuYI0FBIw1FF/OyCRyBw9pat+WqG4=;
        b=UsioOl5UZABrZVp7ywcWHZJKSWUcTQZYCik30gFZ54bGA471Er1UdDaH20aXQVCGT7
         lmpYt9HatKmDPs4/te1tXNY1fY1I1zb0uf3lB1q1qouxaVP3FJyHbdq2u2CVbOxLWypo
         wvEuRRIr1Qm4LZ1VWuSNyuMdPYSfk+mur/EKAR8QogUrunm5V1lAVBOFHWtV+8M60Xpp
         hRUzM7jJ9S1f5OsEszpn99MQrrCFT3fcU7miEqXj9LpLSP+vIY7oxOq6qpL6cAgyF4pt
         6+SeIJIj0wmgJ1LrMAC+MbKhEr5M9qTH7yZ8TSzazJiUsVnN+JvpSQTQsBbFkK2jo5lL
         Xdjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aZy+1fA0uSLl+EmuYI0FBIw1FF/OyCRyBw9pat+WqG4=;
        b=fdI1ISb5x2wAgNiJOAMSYDdufsNv1EVb7JpuaSTSgKLjZQ3dWeBWAnY7XzZaCOSL2l
         d6OVvrT1iRo30hxbsP+IiayIONcpd47ZMFHDF8yCt/pWO7cNWaFkavExJ/VfvJnoIk/j
         KwKComgSwC+qsEL9OcExI7TgsAc3DTK+dOT2BO/MeXq/S4L0v2kkswMFXgkpQRfjSBKY
         nd3BRJr2qO6aa/53PwmRjGE1aDsJyefa6HsriOSAuxUIp7UGHfA4XaHu9FWfqK5QlGrJ
         4NowHaPZp8A1yCJVes/CjhSdwA1mZ3rKqqm9IlW4iY6a+EHPWzYXn9gUVXFJAYHKN8Ur
         0wFw==
X-Gm-Message-State: AOAM53258Wayzl+Spc0uMRe41v3aLKw5qJEeIMEiZt4O0YftJspEYYhG
        99qRlUBceC/Ocdr5jN2BtC+qBQ==
X-Google-Smtp-Source: ABdhPJyZzSWt0feOqDeHGe6Lc2n07bDJWZ4pV+rRgAvmQsbMAx0YmqzNe5LAsowYtvF9MpxciyKI4g==
X-Received: by 2002:a17:902:8f90:b029:e5:dd6d:f9b3 with SMTP id z16-20020a1709028f90b02900e5dd6df9b3mr8886130plo.43.1614994119098;
        Fri, 05 Mar 2021 17:28:39 -0800 (PST)
Received: from dragon (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id v2sm3158703pjg.34.2021.03.05.17.28.37
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 05 Mar 2021 17:28:38 -0800 (PST)
Date:   Sat, 6 Mar 2021 09:28:33 +0800
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-gpio@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, Evan Green <evgreen@chromium.org>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845: fix number of pins in
 'gpio-ranges'
Message-ID: <20210306012829.GL17424@dragon>
References: <20210303033106.549-1-shawn.guo@linaro.org>
 <20210303033106.549-2-shawn.guo@linaro.org>
 <YEKl7GbxBhui4eoT@builder.lan>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YEKl7GbxBhui4eoT@builder.lan>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 05, 2021 at 03:43:08PM -0600, Bjorn Andersson wrote:
> On Tue 02 Mar 21:31 CST 2021, Shawn Guo wrote:
> 
> > The last cell of 'gpio-ranges' should be number of GPIO pins, and in
> > case of qcom platform it should match msm_pinctrl_soc_data.ngpio rather
> > than msm_pinctrl_soc_data.ngpio - 1.
> > 
> 
> This is a historical artifact, SDM845 has 150 GPIO pins. In addition to
> this there's an output-only pin for UFS, which I exposed as an GPIO as
> well - but it's only supposed to be used as a reset-gpio for the UFS
> device.
> 
> Perhaps that still mandates that gpio-ranges should cover it?

I think the number in DT gpio-ranges should match msm_pinctrl_soc_data.ngpio.
Otherwise, kernel will be confused and be running into the issue like
below in some case.

> 
> > This fixes the problem that when the last GPIO pin in the range is
> > configured with the following call sequence, it always fails with
> > -EPROBE_DEFER.
> > 
> >     pinctrl_gpio_set_config()
> >         pinctrl_get_device_gpio_range()
> >             pinctrl_match_gpio_range()
> 
> When do we hit this sequence? I didn't think operations on the UFS
> GP(I)O would ever take this code path?

It will, if we have UFS driver booting from ACPI and requesting reset
GPIO.  And we are hit this sequence with my patch that adds .set_config
for gpio_chip [1].

Shawn

[1] https://lore.kernel.org/linux-gpio/YEDVMpHyCGbZOrmF@smile.fi.intel.com/
