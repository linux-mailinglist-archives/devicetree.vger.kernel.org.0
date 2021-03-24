Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 394F4346E41
	for <lists+devicetree@lfdr.de>; Wed, 24 Mar 2021 01:29:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231488AbhCXA2b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Mar 2021 20:28:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37454 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234472AbhCXA2A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Mar 2021 20:28:00 -0400
Received: from mail-pf1-x435.google.com (mail-pf1-x435.google.com [IPv6:2607:f8b0:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23AFEC061763
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 17:28:00 -0700 (PDT)
Received: by mail-pf1-x435.google.com with SMTP id l123so16085954pfl.8
        for <devicetree@vger.kernel.org>; Tue, 23 Mar 2021 17:28:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=ArpAGDPO5Zy1J8ZuYbtiaQIyLb1VNF1C+x2MhSZdMr4=;
        b=NSWaX3i9OKqQTUJpTPB+E9DCf9hW1pebAdgYQy3jt9zPaKJaPWFASPZofTINEVIvYW
         6pyE9MQMHhc8oLRLUGIoj5ST15nG2oUDt1UCgrZ7p9yMGzEoKYVSGY2ZZyjTOXusFBeJ
         OwCr61rXmKgl3CNqEngUZw+73q5ADUmlulo3Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ArpAGDPO5Zy1J8ZuYbtiaQIyLb1VNF1C+x2MhSZdMr4=;
        b=Zes8Ae5WYeOjee+f6OlCk5o69Bxbs0HnePQ+mYuWws1mXXOJLmQTN6Y+jkTD1rykQx
         M5NbLu9YYatPGdLZ+hNTZw8BO0SkhuFNKmEGNHhKj/UGhSjPj71goZqDRftHo8Wn1Q1O
         Wovrm9VfPWsTVj5wsJ5lkCFBFk+zvBrslAPwb0FTbjhXT4VuCUQ0CkpuJQrSixGwUSfc
         zC4FxoohQgacRbuxMIVlSJ3Gj3TSQqpnVUfv+7jx0q59cb6TOZDrsqB2+IXalhjWwaFc
         fhLa0WAU3+N/lxjOaWyPB58w+nF65Z+6ZFJjFsRBXZudPrgQnXx0xUjBy86B4t1UBbeN
         xb0A==
X-Gm-Message-State: AOAM533P/4LePeeb4PPZMtynGuSe+DsbI+YxAnp4eMXUJVYUfagBJcJy
        XA878u7W8BvJOKgTFQ7vQqFx3g==
X-Google-Smtp-Source: ABdhPJxjsgxfWM1AN6PzKOVTywe9JPoDDNk0S5uHejboMITv1/9Wv/diAYCV0W0vMKldqz6Y0Res/g==
X-Received: by 2002:a63:2349:: with SMTP id u9mr661932pgm.361.1616545678567;
        Tue, 23 Mar 2021 17:27:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:1:40a3:9725:46c3:85f6])
        by smtp.gmail.com with UTF8SMTPSA id q66sm295428pja.27.2021.03.23.17.27.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Mar 2021 17:27:57 -0700 (PDT)
Date:   Tue, 23 Mar 2021 17:27:55 -0700
From:   Matthias Kaehlcke <mka@chromium.org>
To:     Sandeep Maheswaram <sanm@codeaurora.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Felipe Balbi <balbi@kernel.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        linux-arm-msm@vger.kernel.org, linux-usb@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Manu Gautam <mgautam@codeaurora.org>
Subject: Re: [PATCH v5 1/4] usb: dwc3: core: Host wake up support from system
 suspend
Message-ID: <YFqHi91eIcVx2ak1@google.com>
References: <1616434280-32635-1-git-send-email-sanm@codeaurora.org>
 <1616434280-32635-2-git-send-email-sanm@codeaurora.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <1616434280-32635-2-git-send-email-sanm@codeaurora.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Mar 22, 2021 at 11:01:17PM +0530, Sandeep Maheswaram wrote:
> Avoiding phy powerdown when wakeup capable devices are connected.
> 
> Signed-off-by: Sandeep Maheswaram <sanm@codeaurora.org>
> ---
>  drivers/usb/dwc3/core.c | 8 +++++---
>  1 file changed, 5 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/usb/dwc3/core.c b/drivers/usb/dwc3/core.c
> index 94fdbe5..9ecd7ac 100644
> --- a/drivers/usb/dwc3/core.c
> +++ b/drivers/usb/dwc3/core.c
> @@ -1702,7 +1702,7 @@ static int dwc3_suspend_common(struct dwc3 *dwc, pm_message_t msg)
>  		dwc3_core_exit(dwc);
>  		break;
>  	case DWC3_GCTL_PRTCAP_HOST:
> -		if (!PMSG_IS_AUTO(msg)) {
> +		if (!PMSG_IS_AUTO(msg) && dwc->phy_power_off) {

This is the first patch of the series, but the 'phy_power_off' flag is
only added by '[2/4] usb: dwc3: host: Add suspend_quirk for dwc3 host'.
Patches should not rely on later patches in the series in order to build
error/warning free. It seems you need to swap the order of patch 1 and 2.

>  			dwc3_core_exit(dwc);
>  			break;
>  		}
> @@ -1763,13 +1763,15 @@ static int dwc3_resume_common(struct dwc3 *dwc, pm_message_t msg)
>  		spin_unlock_irqrestore(&dwc->lock, flags);
>  		break;
>  	case DWC3_GCTL_PRTCAP_HOST:
> -		if (!PMSG_IS_AUTO(msg)) {
> +		if (!PMSG_IS_AUTO(msg) && dwc->phy_power_off) {
>  			ret = dwc3_core_init_for_resume(dwc);
>  			if (ret)
>  				return ret;
>  			dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);
>  			break;
> -		}
> +		} else
> +			dwc3_set_prtcap(dwc, DWC3_GCTL_PRTCAP_HOST);
> +

nit: use curly braces since the 'if' block has them.
