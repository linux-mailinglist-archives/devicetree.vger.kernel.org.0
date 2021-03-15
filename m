Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D8C6333C14D
	for <lists+devicetree@lfdr.de>; Mon, 15 Mar 2021 17:12:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230358AbhCOQLq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 15 Mar 2021 12:11:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230483AbhCOQLk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 15 Mar 2021 12:11:40 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38740C06175F
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:11:40 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id v2so44692945lft.9
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 09:11:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=UgG45DnJN104mZ62fCUJfdTRKEZH2usLGZgxXrdhPOk=;
        b=mUHiqeGQTBG3ZQjO21JCi06F5j/g81EQVWqMr0jkJFUuw2m8VNQYSIRrmXXJtvbL9s
         ymWakSrLdOt+OEtPOTx8bevz3/9tjkNwkZXJZkyaF5iExDAt3WutqrcPFzmcyDNhUSYu
         dD4LXIKry78u6jcezBwr+6gI8MHTm8Zvjc3F674jKislE2BFCEiQe6wwceID/aaBQPXA
         Mb8g2UWfuPFniTI4KR0bq56FbE+hlnRCW7v6WR2YUNBjfEkffWza+dtYk/sKWTiphGvW
         BaYYQrA0zVQpg8ZwMhzS7ZQ5AgoTmsqyxBMtkCn8ZmahzLXBWcTmkL0Anl69lQDC2uKl
         pCkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=UgG45DnJN104mZ62fCUJfdTRKEZH2usLGZgxXrdhPOk=;
        b=RUc8/hVKVKgb+93Q7LLsDKDg2cXWEDJlyM6qflenoMEvwN0RUwQXun/fcY2HNgVCTE
         TG4UnijOoQuQIOsOoDp+uvh9zyQW0ZDo5hbYJV7qHUNHGX45PdptklTI1u5oOnhQPxHG
         rXCFIJw2EZE3xXevJQIAhcLSHOqp+g4taL5puO0S92ZY2OFprstPBgerQTOTuJW6N0G2
         rtKh4I3HNFpAmhi4S1E2/FaJN++diuKSqudLJ+SrDaYC5fK8AkTyh3drTAiYsHmC/wWI
         bGaoOBjGGBiDM0elwOHUfaaJZPYAqj5xAV5UYsEIJV4Zpd2YpvBvb6d6h+7ueLJy+IPS
         zAag==
X-Gm-Message-State: AOAM533O6Am2bTm6nV05X2KJAJVAlNMfC5nLCbwMWpsjFzad7bfb8AJ2
        OVpXiK4kYMFd81wYGmhm7cVH8iF5G8iYMddOkNWJvg==
X-Google-Smtp-Source: ABdhPJzSDII6RQrdm7IFyXHzh8DcTyH4MHf9A8Ug/h2fSz4PeMuCazMBlocNWblZcJ7uktAZ1fBY4YSWsRmi0FPulU4=
X-Received: by 2002:a19:4c08:: with SMTP id z8mr8010084lfa.157.1615824698726;
 Mon, 15 Mar 2021 09:11:38 -0700 (PDT)
MIME-Version: 1.0
References: <20210303033106.549-1-shawn.guo@linaro.org> <20210303033106.549-2-shawn.guo@linaro.org>
 <YEKl7GbxBhui4eoT@builder.lan> <20210306012829.GL17424@dragon>
 <YELhMmDndOTSSJJO@builder.lan> <20210306080049.GM17424@dragon>
 <YEkOaK+UiLy8kSDu@builder.lan> <20210311011951.GT17424@dragon> <YEpLHSRKt651B6FP@builder.lan>
In-Reply-To: <YEpLHSRKt651B6FP@builder.lan>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 15 Mar 2021 17:11:27 +0100
Message-ID: <CACRpkdYNmT6c+RTLQAO1UEwWWWXHarYqTG4xnq8iR4i=rDfYfQ@mail.gmail.com>
Subject: Re: [PATCH 1/4] arm64: dts: qcom: sdm845: fix number of pins in 'gpio-ranges'
To:     Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Shawn Guo <shawn.guo@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        MSM <linux-arm-msm@vger.kernel.org>,
        Evan Green <evgreen@chromium.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 11, 2021 at 5:53 PM Bjorn Andersson
<bjorn.andersson@linaro.org> wrote:
> On Wed 10 Mar 19:19 CST 2021, Shawn Guo wrote:

> > > But we don't have a "reset" GPIO specified in the ACPI node, or you mean
> > > with the introduction of .set_config DT no longer works?
> >
> > Yes, DT stops working because of the mismatch between
> > msm_pinctrl_soc_data.ngpio and gpio-ranges.
> >
>
> So what you're saying is that when Linus merged the .set_config patch
> yesterday he broke storage on every single Qualcomm device?

I took out that patch for now.

Maybe we can keep all the stuff in one series if it has strict
dependencies?

Yours,
Linus Walleij
