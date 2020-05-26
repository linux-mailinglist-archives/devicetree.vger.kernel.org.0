Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB38E1D4435
	for <lists+devicetree@lfdr.de>; Fri, 15 May 2020 05:57:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728345AbgEOD5R (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 23:57:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1728119AbgEOD5Q (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 May 2020 23:57:16 -0400
Received: from mail-io1-xd42.google.com (mail-io1-xd42.google.com [IPv6:2607:f8b0:4864:20::d42])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52AF6C05BD0B
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 20:57:16 -0700 (PDT)
Received: by mail-io1-xd42.google.com with SMTP id x5so1201020ioh.6
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 20:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nOIJwK9iadOQS8VS9oX0d0eobJTm/S5dRf232DfhV2Q=;
        b=jZGcHekf36InUx+/RT41yJ39LwB4eBQd7vT66ue0xAbo5xTuZa/i0CJGeuQo7uasFj
         KWR4W7zbDPi+yq6TlwQ/zf00VGEQsa9I4hgKLRy95YYxTa/7/vLLZ4zckSK3fiLThmnp
         7APyzonChcoUD6QuyiXT4zmroeoUonhrx7iX00yfVl9XCl3PDxXPwMf1n6VJgz6HgOY+
         A99tLzeweiB5AaZ9lVTuw1dif9/03YSktMiID+xWBMBqbu3KL5JcKrJE0YqaeoLj+OtY
         31xcKDIp1GOlgt95Lo/67hHz6ooA4vlcpH+Xi4ndyRh2QHgKM65UGQ6Ra684eiFjo8Jq
         6sig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nOIJwK9iadOQS8VS9oX0d0eobJTm/S5dRf232DfhV2Q=;
        b=JU+ItgySTv/rtFz4YF9aiB92e3YxUXPtPSNJacqSQZZROf/SEW9l7zoC5iz96nptKV
         0AqM3FzT0Iw30G26mAA5P0cAHBD9FYGoN+Pt74wrnr4UMgilagIk9CCptoVy1KtuhwHw
         uMcknbusr4+x5fZNeShHY4Cu+z+u7cHAtP80Ek6WlsMFz2bPRwbg5WVkgL+r2tC7LXqv
         3GA3bzIfTadNKiP9Hdl0mhZ4pxMk2/ISpSmck+wKX6BVDKA1udtmYXGq6SQK7a0PyIHB
         rSb80mzMxoI0b128oSfus5bWUrBWx9VviKIHAkaDN9JC2DbEJ39RfqU0ssOH+HRJtLvh
         2qng==
X-Gm-Message-State: AOAM532Vdn6HeyL4Niq6dlfAOa/SgfGzcUXBrpIBgy5uhWj/e+GuZmji
        DPdTCTSFtlNjQZ3ii0RPkAaV/DHIoPqFU/f/VYDoFA==
X-Google-Smtp-Source: ABdhPJz4yECgbKlvcTa70WHzfNcxbCgYqFO0xfvcC6KgNtx0n8f7dausExrVZi/vmEvOALHEs8Dq89VdSz06od9lItk=
X-Received: by 2002:a6b:e60b:: with SMTP id g11mr1143301ioh.96.1589515035477;
 Thu, 14 May 2020 20:57:15 -0700 (PDT)
MIME-Version: 1.0
References: <1585718145-29537-1-git-send-email-sanm@codeaurora.org>
 <1585718145-29537-3-git-send-email-sanm@codeaurora.org> <878shu4uwk.fsf@kernel.org>
 <875zcy4uuj.fsf@kernel.org> <20200514171352.GP4525@google.com> <abbc3f8c-c8c9-c189-735e-f8058dab3e40@linaro.org>
In-Reply-To: <abbc3f8c-c8c9-c189-735e-f8058dab3e40@linaro.org>
From:   Viresh Kumar <viresh.kumar@linaro.org>
Date:   Fri, 15 May 2020 09:27:03 +0530
Message-ID: <CAKohpon+JBpV3fC7j=rhc1R4gi_mVG6teBDrE8Yryd4QXfw9bw@mail.gmail.com>
Subject: Re: [PATCH v7 2/4] usb: dwc3: qcom: Add interconnect support in dwc3 driver
To:     Georgi Djakov <georgi.djakov@linaro.org>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Felipe Balbi <balbi@kernel.org>,
        Sandeep Maheswaram <sanm@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Stephen Boyd <swboyd@chromium.org>,
        Doug Anderson <dianders@chromium.org>,
        "linux-arm-msm@vger.kernel.org" <linux-arm-msm@vger.kernel.org>,
        "open list:ULTRA-WIDEBAND (UWB) SUBSYSTEM:" 
        <linux-usb@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        Manu Gautam <mgautam@codeaurora.org>,
        Chandana Kishori Chiluveru <cchiluve@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 15 May 2020 at 02:33, Georgi Djakov <georgi.djakov@linaro.org> wrote:

> ---8<---
> diff --git a/drivers/usb/dwc3/Kconfig b/drivers/usb/dwc3/Kconfig
> index 206caa0ea1c6..6661788b1a76 100644
> --- a/drivers/usb/dwc3/Kconfig
> +++ b/drivers/usb/dwc3/Kconfig
> @@ -129,6 +129,7 @@ config USB_DWC3_QCOM
>         tristate "Qualcomm Platform"
>         depends on ARCH_QCOM || COMPILE_TEST
>         depends on EXTCON || !EXTCON
> +       depends on INTERCONNECT || !INTERCONNECT

Again, as I said yesterday. This looks incorrect and may not fix the problem..

With this we will be able to select USB_DWC3_QCOM even when INTERCONNECT=m.

What we perhaps need here is:
depends on INTERCONNECT != m

--
viresh
