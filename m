Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CD44D2D6CC1
	for <lists+devicetree@lfdr.de>; Fri, 11 Dec 2020 01:57:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732564AbgLKAs4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 19:48:56 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732695AbgLKAsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 19:48:32 -0500
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com [IPv6:2607:f8b0:4864:20::444])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 143A9C0613D6
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 16:47:52 -0800 (PST)
Received: by mail-pf1-x444.google.com with SMTP id p4so5868239pfg.0
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 16:47:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=qtlZ0DEPLlgnakZuegRLLP1pu6eYE/7+9AbraWd6Nl4=;
        b=DV0aRUCL7xoEuNHuX09WvmYZV82z8THJlzxFil5QBevlOpCiike574SS8SEzmsjdii
         C/YvxmeCmQ6m4TNLQVJp6E1gCWFXNvrHhuE5GjK37WPZESjVUbqj1YdDtt7dGmyGM7H6
         +eqxHo29ONRuSxlM6byLmlS2rCWIRjYO9b8hE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=qtlZ0DEPLlgnakZuegRLLP1pu6eYE/7+9AbraWd6Nl4=;
        b=UeV3AqxNdcDqttC1mHoWcoo8ev46k7puy3JV7fJh1aOoXF+OZFrDXYOV4HRsOOTjjT
         3CFcD7oqqw/obtGfUd9DJLb/rN7NP6b4Mel4FH7M99WVRBA8aTwcT8vOefyiTGTaP+29
         KKFvOLaAAm75yR/mFGM1EattzuTsslcLPQG87fwkDAZgC9DMhKtlbrQT8bOeCC9NAjmZ
         zr/8KKi2Jh8HT1c34WL2LHepcGek6kTzC++FRebhodfE/4E8XmHiXwrzllG6Pyz7+xHS
         W7yKLwZebauHBpRK3DIxGOV5vGS4QMVZkBDAKIl124GGEofzwrS7fu4XKn0PhIDRHKKX
         /ffA==
X-Gm-Message-State: AOAM533TLAZgsCiyrJxxqHvw9T2flwsd4bjcjp+flQuMP7rskloH2QbP
        pyiy6fEq5WRWZk+qfE5tVqb7VA==
X-Google-Smtp-Source: ABdhPJwy06NJ82y1R0JkNr4/7Xd2sMhx6dprma8t7JLUDcd27jZCARpXlKy63Wmpq5GpneprnuZY9g==
X-Received: by 2002:a65:5547:: with SMTP id t7mr9104969pgr.50.1607647671565;
        Thu, 10 Dec 2020 16:47:51 -0800 (PST)
Received: from localhost ([2620:15c:202:1:f693:9fff:fef4:e70a])
        by smtp.gmail.com with ESMTPSA id w2sm7882452pfj.110.2020.12.10.16.47.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 10 Dec 2020 16:47:51 -0800 (PST)
Date:   Thu, 10 Dec 2020 16:47:49 -0800
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH v4 3/5] usb: dwc3: qcom: Configure wakeup interrupts and
 set genpd active wakeup flag
Message-ID: <X9LBtQd60Aa+bfI1@google.com>
References: <1603831083-2025-1-git-send-email-sanm@codeaurora.org>
 <1603831083-2025-4-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1603831083-2025-4-git-send-email-sanm@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Oct 28, 2020 at 02:08:01AM +0530, Sandeep Maheswaram wrote:
> Configure interrupts based on hs_phy_mode to avoid triggering of
> interrupts during system suspend and suspends successfully.
> Set genpd active wakeup flag for usb gdsc if wakeup capable devices
> are connected so that wake up happens without reenumeration.
> Add helper functions to enable,disable wake irqs.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  drivers/usb/dwc3/dwc3-qcom.c | 82 ++++++++++++++++++++++++++++----------------
>  1 file changed, 52 insertions(+), 30 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/dwc3-qcom.c b/drivers/usb/dwc3/dwc3-qcom.c
> index c703d55..c93f7bb 100644
> --- a/drivers/usb/dwc3/dwc3-qcom.c
> +++ b/drivers/usb/dwc3/dwc3-qcom.c
> @@ -17,9 +17,11 @@
>  #include <linux/of_platform.h>
>  #include <linux/platform_device.h>
>  #include <linux/phy/phy.h>
> +#include <linux/pm_domain.h>
>  #include <linux/usb/of.h>
>  #include <linux/reset.h>
>  #include <linux/iopoll.h>
> +#include <linux/usb/hcd.h>
>  
>  #include "core.h"
>  
> @@ -291,60 +293,75 @@ static void dwc3_qcom_interconnect_exit(struct dwc3_qcom *qcom)
>  	icc_put(qcom->icc_path_apps);
>  }
>  
> -static void dwc3_qcom_disable_interrupts(struct dwc3_qcom *qcom)
> +static void dwc3_qcom_enable_wakeup_irq(int wake_irq)

super-nit: from the name of the function it's evident that this is a
wakeup irq, you could omit the 'wake_' prefix.

>  {
> -	if (qcom->hs_phy_irq) {
> -		disable_irq_wake(qcom->hs_phy_irq);
> -		disable_irq_nosync(qcom->hs_phy_irq);
> +	if (wake_irq) {
> +		enable_irq(wake_irq);
> +		enable_irq_wake(wake_irq);
>  	}

nit: the following would be a more common structure:

	if (!wake_irq)
		return;

	enable_irq(wake_irq);
	enable_irq_wake(wake_irq);

> +}
>  
> -	if (qcom->dp_hs_phy_irq) {
> -		disable_irq_wake(qcom->dp_hs_phy_irq);
> -		disable_irq_nosync(qcom->dp_hs_phy_irq);
> +static void dwc3_qcom_disable_wakeup_irq(int wake_irq)

same as above

> +{
> +	if (wake_irq) {
> +		disable_irq_wake(wake_irq);
> +		disable_irq_nosync(wake_irq);
>  	}

same as above

> +}
>  
> -	if (qcom->dm_hs_phy_irq) {
> -		disable_irq_wake(qcom->dm_hs_phy_irq);
> -		disable_irq_nosync(qcom->dm_hs_phy_irq);
> -	}
> +static void dwc3_qcom_disable_interrupts(struct dwc3_qcom *qcom)
> +{
> +	struct dwc3 *dwc = platform_get_drvdata(qcom->dwc3);
> +
> +	dwc3_qcom_disable_wakeup_irq(qcom->hs_phy_irq);
>  
> -	if (qcom->ss_phy_irq) {
> -		disable_irq_wake(qcom->ss_phy_irq);
> -		disable_irq_nosync(qcom->ss_phy_irq);
> +	if (dwc->hs_phy_mode & PHY_MODE_USB_HOST_LS)
> +		dwc3_qcom_disable_wakeup_irq(qcom->dp_hs_phy_irq);
> +	else if (dwc->hs_phy_mode & PHY_MODE_USB_HOST_HS)
> +		dwc3_qcom_disable_wakeup_irq(qcom->dm_hs_phy_irq);
> +	else {
> +		dwc3_qcom_disable_wakeup_irq(qcom->dp_hs_phy_irq);
> +		dwc3_qcom_disable_wakeup_irq(qcom->dm_hs_phy_irq);
>  	}

The following would be clearer IMO:

	if (dwc->hs_phy_mode & (PHY_MODE_USB_HOST_LS | PHY_MODE_USB_HOST_SS))
		dwc3_qcom_disable_wakeup_irq(qcom->dp_hs_phy_irq);
    	if (dwc->hs_phy_mode & (PHY_MODE_USB_HOST_HS | PHY_MODE_USB_HOST_SS))
		dwc3_qcom_disable_wakeup_irq(qcom->dm_hs_phy_irq);

> +
> +	dwc3_qcom_disable_wakeup_irq(qcom->ss_phy_irq);

Why isn't this conditional on 'dwc->hs_phy_mode & PHY_MODE_USB_HOST_SS'?

>  }
>  
>  static void dwc3_qcom_enable_interrupts(struct dwc3_qcom *qcom)
>  {
> -	if (qcom->hs_phy_irq) {
> -		enable_irq(qcom->hs_phy_irq);
> -		enable_irq_wake(qcom->hs_phy_irq);
> -	}
> +	struct dwc3 *dwc = platform_get_drvdata(qcom->dwc3);
>  
> -	if (qcom->dp_hs_phy_irq) {
> -		enable_irq(qcom->dp_hs_phy_irq);
> -		enable_irq_wake(qcom->dp_hs_phy_irq);
> -	}
> +	dwc3_qcom_enable_wakeup_irq(qcom->hs_phy_irq);
>  
> -	if (qcom->dm_hs_phy_irq) {
> -		enable_irq(qcom->dm_hs_phy_irq);
> -		enable_irq_wake(qcom->dm_hs_phy_irq);
> +	if (dwc->hs_phy_mode & PHY_MODE_USB_HOST_LS)
> +		dwc3_qcom_enable_wakeup_irq(qcom->dp_hs_phy_irq);
> +	else if (dwc->hs_phy_mode & PHY_MODE_USB_HOST_HS)
> +		dwc3_qcom_enable_wakeup_irq(qcom->dm_hs_phy_irq);
> +	else {
> +		dwc3_qcom_enable_wakeup_irq(qcom->dp_hs_phy_irq);
> +		dwc3_qcom_enable_wakeup_irq(qcom->dm_hs_phy_irq);
>  	}
>  
> -	if (qcom->ss_phy_irq) {
> -		enable_irq(qcom->ss_phy_irq);
> -		enable_irq_wake(qcom->ss_phy_irq);
> -	}
> +	dwc3_qcom_enable_wakeup_irq(qcom->ss_phy_irq);

same comments as for dwc3_qcom_disable_interrupts()

>  }
>  
>  static int dwc3_qcom_suspend(struct dwc3_qcom *qcom)
>  {
>  	u32 val;
>  	int i, ret;
> +	struct dwc3 *dwc = platform_get_drvdata(qcom->dwc3);
> +	struct usb_hcd  *hcd;

nit: remove one blank

> +	struct generic_pm_domain *genpd = pd_to_genpd(qcom->dev->pm_domain);
>  
>  	if (qcom->is_suspended)
>  		return 0;
>  
> +	if (dwc->xhci) {
> +		hcd = platform_get_drvdata(dwc->xhci);
> +		if (usb_wakeup_enabled_descendants(hcd->self.root_hub))
> +			genpd->flags |= GENPD_FLAG_ACTIVE_WAKEUP;

Shouldn't this only be done when wakeup is enabled?

> +	}
> +
>  	val = readl(qcom->qscratch_base + PWR_EVNT_IRQ_STAT_REG);
>  	if (!(val & PWR_EVNT_LPM_IN_L2_MASK))
>  		dev_err(qcom->dev, "HS-PHY not in L2\n");
> @@ -366,10 +383,15 @@ static int dwc3_qcom_resume(struct dwc3_qcom *qcom)
>  {
>  	int ret;
>  	int i;
> +	struct dwc3 *dwc = platform_get_drvdata(qcom->dwc3);
> +	struct generic_pm_domain *genpd = pd_to_genpd(qcom->dev->pm_domain);
>  
>  	if (!qcom->is_suspended)
>  		return 0;
>  
> +	if (dwc->xhci)
> +		genpd->flags &= ~GENPD_FLAG_ACTIVE_WAKEUP;

Could also depend on wakeup being enabled, but less important.

> +
>  	dwc3_qcom_disable_interrupts(qcom);
>  
>  	for (i = 0; i < qcom->num_clocks; i++) {
> @@ -764,7 +786,7 @@ static int dwc3_qcom_probe(struct platform_device *pdev)
>  	if (ret)
>  		goto interconnect_exit;
>  
> -	device_init_wakeup(&pdev->dev, 1);
> +	device_init_wakeup(&pdev->dev, of_property_read_bool(np, "wakeup-source"));
>  	qcom->is_suspended = false;
>  	pm_runtime_set_active(dev);
>  	pm_runtime_enable(dev);
> -- 
> QUALCOMM INDIA, on behalf of Qualcomm Innovation Center, Inc. is a member
> of Code Aurora Forum, hosted by The Linux Foundation
> 
