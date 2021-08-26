Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B68913F8CCE
	for <lists+devicetree@lfdr.de>; Thu, 26 Aug 2021 19:17:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234918AbhHZRSQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Aug 2021 13:18:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42710 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232432AbhHZRSQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Aug 2021 13:18:16 -0400
Received: from mail-io1-xd2d.google.com (mail-io1-xd2d.google.com [IPv6:2607:f8b0:4864:20::d2d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 035EEC0613C1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 10:17:28 -0700 (PDT)
Received: by mail-io1-xd2d.google.com with SMTP id y18so4737094ioc.1
        for <devicetree@vger.kernel.org>; Thu, 26 Aug 2021 10:17:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=BME6ZBn7IF/dZ4lqKBb5Rr0F3dMtEA2Sl2OiBXFFq94=;
        b=gnEZYksnbRTTHZAxgGoJLyFZAgueU3IxMhBMrAjtiS1hR3svlzjSi3DDhnVSjnZhtI
         tWMYx9POOkRLFKf55pXAdfDojo+CPA5QHu/0vXsT/g2wEZ2lYT4231uzDgbRaCRZ54A0
         6T8e2cTYL9cpffZv/sh82qCfit8qrU/ndg/ad4lEjvrppvJxRHitA8ugmufCHfrrZohD
         myJwlh3BPHP1ySTXC1DeFVwagIHrju/0SzNukCspCp9jS/i9UEYZJTTjE/4wQeqP11QS
         6oBwAX8/A7fjXbFW+y1Tbt1seeFovtyaSj5ssn4u73enZ3G3R+pFMHIN4ww1v3XZz4Rp
         T/BA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=BME6ZBn7IF/dZ4lqKBb5Rr0F3dMtEA2Sl2OiBXFFq94=;
        b=E0jrA5TLleNABEZDOW6AId+5U4vVRw2e7E33MzpE2AZPqKLtMiPFDOOO9boVzDQN39
         oe4jqDn1L5CpwbnBeFwxB9ZI7EYh22p/6pcFQNpi9PXvPuuSCXTqPeCsMJih3CUu/V8U
         vn63bTVeI45Ec0W2SWfAJkuireJoa8OhIK+i72AlRSy6AaPShBHHbSBAk4PXKEHrrSuo
         HjhImiPwRImj7h0QJcaLCvWXgWnW874yOh9cnB057VZbpDaI9Bq/cvIXZnKBVbS+Siie
         q2tiQ1AAJhW1nX9I22bj7VUj/wzJgycLunSRXrHpiNXbBIpYBF3ivu/43VoWldFaA1OJ
         Mtlw==
X-Gm-Message-State: AOAM532bfaODIOpm90SzuLYE4qRFUQNrCoNcky1meutg02iLUH6WyE2Y
        oMoraU2WACekV+5XDLnKN99SvLfGOYEF9zzpbz/QJQ==
X-Google-Smtp-Source: ABdhPJxx0itgPizsz4hgdmhvsrxgzP9yB3BK2vfWMyhyRrpAwZAUYwfW4FBYXcd4HZTZkXgzxhNR371WnGrNUCpneLA=
X-Received: by 2002:a5d:8acf:: with SMTP id e15mr3853495iot.184.1629998247904;
 Thu, 26 Aug 2021 10:17:27 -0700 (PDT)
MIME-Version: 1.0
References: <YSPAseE6WD8dDRuz@ravnborg.org> <20210824014124.1080798-1-yangcong5@huaqin.corp-partner.google.com>
In-Reply-To: <20210824014124.1080798-1-yangcong5@huaqin.corp-partner.google.com>
From:   Doug Anderson <dianders@google.com>
Date:   Thu, 26 Aug 2021 10:17:15 -0700
Message-ID: <CAD=FV=UFDRG9TJis28Wtsz9RVhp3Xk35stpLyY5ExLx3=8yxPQ@mail.gmail.com>
Subject: Re: [v2 0/2] Add driver for BOE tv110c9m-ll3 panel
To:     yangcong <yangcong5@huaqin.corp-partner.google.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        LKML <linux-kernel@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Mon, Aug 23, 2021 at 6:41 PM yangcong
<yangcong5@huaqin.corp-partner.google.com> wrote:
>
> Hi Sam,
>   This driver support boe tv1110c9m-ll3 and inx hj110iz-01a panel.The IC chip is used NT36523, which is a new IC.
>
> 1: panel-boe-tv101wum-nl6.c driver cannot meet the timing requirements of the current two panel.
>
> 2: The screen cannot be work in HS mode, panel-boe-tv101wum-nl6.c will switch to HS mode when boe_panel_enter_sleep_mode.
>
> static int boe_panel_enter_sleep_mode(struct boe_panel *boe)
> {
>         struct mipi_dsi_device *dsi = boe->dsi;
>         int ret;
>
>         dsi->mode_flags &= ~MIPI_DSI_MODE_LPM;
>         ...
>         ...
> }

It's really up to Sam how he wants to proceed here, but certainly you
could support things with the existing driver even if there are
differences. In general you can add more things to the `struct
panel_desc` in the driver and then make them different for your panel.
Look, for instance, at `discharge_on_disable`. Not all panels
supported by this driver do that, so you could support your "cannot
work in HS mode" in a similar way.

For the timings, you could also add another bit to the `struct
panel_desc` to select a different delay for your panel or (if it's
just a small delay) you could just increase it across the board. I
guess you need a 10 ms delay instead of a 5 ms delay in probe? I'd
just make it 10 ms across the board and call it done. Similarly looks
like something needs .5 ms => 1 ms. Again, this is likely fine across
the board for all panels.

Unless Sam comes back and says "no, wait, keep it two drivers!" then
I'd suggest that you post a new version that works as Sam suggests. In
the worst case if having it combined into one driver looks too ugly
then we can always go back to a split driver.

-Doug
