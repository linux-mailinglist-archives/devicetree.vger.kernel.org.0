Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9D8752EFB07
	for <lists+devicetree@lfdr.de>; Fri,  8 Jan 2021 23:21:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725812AbhAHWVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 8 Jan 2021 17:21:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725848AbhAHWVU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 8 Jan 2021 17:21:20 -0500
Received: from mail-vs1-xe2c.google.com (mail-vs1-xe2c.google.com [IPv6:2607:f8b0:4864:20::e2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DD543C061786
        for <devicetree@vger.kernel.org>; Fri,  8 Jan 2021 14:20:39 -0800 (PST)
Received: by mail-vs1-xe2c.google.com with SMTP id x4so6405233vsp.7
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 14:20:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=+28rernzc3C0mjkmB3xMJvm5PiyDyFYwes4MhAeT590=;
        b=miY99HtjMOqHsXPkemocimuS3wuxQX+VapsXPQMV4KxnP8YjfU5ngb/avj8ZdrErJd
         5ECUo9eLuD54ehNvBzHxwTqRQ9/GABakXuA81do99rbJqsKVLS8w6hBIGgz75eeVap9B
         tdylz0rZ0+h7lHAFNkDFeH6OutxCiexkTkXPg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=+28rernzc3C0mjkmB3xMJvm5PiyDyFYwes4MhAeT590=;
        b=Wl6PsqLyH3+GM8HqBDfQEKwSpyShTRzHxwln+4TQzPXvHeyA7XfK2q1iAA9AeWyJxe
         GfjelzQMIpiz8kiM4tEVSo7Rd27cIddDOjm/nol+xxKI8jkSysvxGtW/JJ2CL/7zHjjy
         lSj0TcuWmMRIFw0Y9Fi0YsV+/NBK7OM0qcmX8JJwC7IUYe07JzETu2O38cHc/kNrQ6yh
         hmSrADLf8+ONCYcP8Px0KTU5HrNp4fPpjcbhBKCkSI1Or4w2lKj7B9iFZX1odI11vkXf
         eJHOabVN3ByGrSyrxaUSfnv5ghnF6HUdqV2cvwlPspEsE8AsOFxdFHCmb1W+z0QJyh+N
         mSUA==
X-Gm-Message-State: AOAM532Dko7bG/4co/MlmnCrYC6pUAOObAEhnpun0bz7ua7uAw9fjyZE
        QXBJm32DoJpDeW8UpWZxxNwgQUQsPZ44uw==
X-Google-Smtp-Source: ABdhPJwRA55r8rQZr0fHSAJW5r2TP9CBPCjnkmKVK5EEsbscket6uNtPnVarLo9OWI0+2uTbN+Wojg==
X-Received: by 2002:a67:2e16:: with SMTP id u22mr5122212vsu.12.1610144438559;
        Fri, 08 Jan 2021 14:20:38 -0800 (PST)
Received: from mail-vs1-f48.google.com (mail-vs1-f48.google.com. [209.85.217.48])
        by smtp.gmail.com with ESMTPSA id u66sm493449vke.8.2021.01.08.14.20.37
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 08 Jan 2021 14:20:37 -0800 (PST)
Received: by mail-vs1-f48.google.com with SMTP id h18so6337750vsg.8
        for <devicetree@vger.kernel.org>; Fri, 08 Jan 2021 14:20:37 -0800 (PST)
X-Received: by 2002:a67:32c5:: with SMTP id y188mr4644914vsy.4.1610144436974;
 Fri, 08 Jan 2021 14:20:36 -0800 (PST)
MIME-Version: 1.0
References: <20210108141648.1.Ia8019b8b303ca31a06752ed6ceb5c3ac50bd1d48@changeid>
In-Reply-To: <20210108141648.1.Ia8019b8b303ca31a06752ed6ceb5c3ac50bd1d48@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 8 Jan 2021 14:20:25 -0800
X-Gmail-Original-Message-ID: <CAD=FV=Wn3rqgu5fLYuJRQFU1s221VNvsk6voSY=_ye24HbMH4w@mail.gmail.com>
Message-ID: <CAD=FV=Wn3rqgu5fLYuJRQFU1s221VNvsk6voSY=_ye24HbMH4w@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: qcom: sc7180: Add labels for cpuN-thermal nodes
To:     Matthias Kaehlcke <mka@chromium.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Jan 8, 2021 at 2:17 PM Matthias Kaehlcke <mka@chromium.org> wrote:
>
> Add labels to the cpuN-thermal nodes to allow board files to use
> a phandle instead replicating the node hierarchy when adjusting
> certain properties.
>
> Due to the 'sustainable-power' property CPU thermal zones are
> more likely to need property updates than other SC7180 zones,
> hence only labels for CPU zones are added for now.
>
> Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
> ---
>
>  arch/arm64/boot/dts/qcom/sc7180.dtsi | 20 ++++++++++----------
>  1 file changed, 10 insertions(+), 10 deletions(-)

Reviewed-by: Douglas Anderson <dianders@chromium.org>
