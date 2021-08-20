Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4FD163F35DB
	for <lists+devicetree@lfdr.de>; Fri, 20 Aug 2021 23:05:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239615AbhHTVFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 Aug 2021 17:05:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42348 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231171AbhHTVFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 Aug 2021 17:05:43 -0400
Received: from mail-il1-x129.google.com (mail-il1-x129.google.com [IPv6:2607:f8b0:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8A3B6C061756
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 14:05:05 -0700 (PDT)
Received: by mail-il1-x129.google.com with SMTP id r6so10767267ilt.13
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 14:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=AHuE68SZeZJgo+ZJ5047NRixzSrlnFN0gqAr82i7YR8=;
        b=mn6E6ELoWiFgPJPOOfbw3ckSVf0xoK3tXZ1RucjWFtWtIdk6bbX+bhVl69KHevLS6o
         5eT2qowd6SG4JEwqxjmWQcE+aL1SElXiJ+ofmGEyhpny9Fr8O6OEd3blMOBTfn4xPnFj
         Y0EcBTzvH76uzG2rh5QuY6BYihUcoEm2QMrQs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=AHuE68SZeZJgo+ZJ5047NRixzSrlnFN0gqAr82i7YR8=;
        b=JhPAlDZHIW8YXSvTC74VVnfu0uCTaKpm+e3kxFEIsDuD8pA6HVwErbF8ciz8/nbNXv
         4yHwsP+/j3lX0YiTAuZRaxJYlcQsqitx9RfGJd0IzMB50vPXzYvUdM0K8AKQJ2N01Ulh
         Ygxulcte5FXlqZ3LX5Ja0todPybbZECrnhySIoCoqG7gW8RQj4xTG0QnKm4NrA5+LL7V
         yFGNohp2HROus8RJKGD4FdXgRpYLZSo2QwBjdpbUwGkEj+5Q/FYEDmKxViLE83ryuOy1
         B8vr6K/czzrJKe8ndt5ld6FxYhdYq12sgRv5Wt2VQcstgXMKBU0l/Ax295Y4itUsCRM0
         zuKA==
X-Gm-Message-State: AOAM530sjiwcCI8XcBmRj3/QbqdrRGV7xuaeK7FWnin/XVQkBgo6MZL4
        QbR5AA1s3uMe0jQ/+F9vl7SDjhKubyeGsA==
X-Google-Smtp-Source: ABdhPJzuQRDQWAznQGrh8Uo4PIVdYqOzruQDPImd2DFEXpJZUCnZ0JVw4Ae8nOXGgyDmMJ+VTbgc6Q==
X-Received: by 2002:a05:6e02:13f3:: with SMTP id w19mr14528744ilj.164.1629493504650;
        Fri, 20 Aug 2021 14:05:04 -0700 (PDT)
Received: from mail-il1-f170.google.com (mail-il1-f170.google.com. [209.85.166.170])
        by smtp.gmail.com with ESMTPSA id h8sm3868055ile.39.2021.08.20.14.05.04
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Aug 2021 14:05:04 -0700 (PDT)
Received: by mail-il1-f170.google.com with SMTP id h29so10816325ila.2
        for <devicetree@vger.kernel.org>; Fri, 20 Aug 2021 14:05:04 -0700 (PDT)
X-Received: by 2002:a92:d304:: with SMTP id x4mr15198676ila.82.1629493503689;
 Fri, 20 Aug 2021 14:05:03 -0700 (PDT)
MIME-Version: 1.0
References: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
In-Reply-To: <20210820133829.1.Ica46f428de8c3beb600760dbcd63cf879ec24baf@changeid>
From:   Doug Anderson <dianders@chromium.org>
Date:   Fri, 20 Aug 2021 14:04:51 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
Message-ID: <CAD=FV=UwAcJEDE3BQYuCDq4kRKPFAsuzPOseGY66wfXcW8Wn7A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: rockchip: add RK3399 Gru gpio-line-names
To:     Brian Norris <briannorris@chromium.org>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Fri, Aug 20, 2021 at 1:38 PM Brian Norris <briannorris@chromium.org> wrote:
>
> It's convenient to get nice names for GPIOs. In particular, Chrome OS
> tooling looks for "AP_FLASH_WP" and "AP_FLASH_WP_L". The rest are
> provided for convenience.
>
> Gru-Bob and Gru-Kevin share the gru-chromebook.dtsi, and for the most
> part they share pin meanings. I omitted a few areas where components
> were available only on one or the other.
>
> Signed-off-by: Brian Norris <briannorris@chromium.org>
> ---
>
>  .../dts/rockchip/rk3399-gru-chromebook.dtsi   | 176 +++++++++++++++++
>  .../boot/dts/rockchip/rk3399-gru-scarlet.dtsi | 180 ++++++++++++++++++
>  2 files changed, 356 insertions(+)

I didn't walk through the schematics and double-check the rails
personally, but the idea here is right. This matches the type of thing
we did for veyron, like in commit ca3516b32cd9 ("ARM: dts: rockchip:
Add pin names for rk3288-veyron-minnie")

I guess one minor nit (now that I look back on the veyron patch where
I mentioned it explicitly in the commit message) is that on the veyron
ones we sorted this down at the bottom with the other pinctrl stuff
instead of sorting it alphabetically with everything else. I'll let
Heiko say which he likes better.

I also notice for veyron that we had a second "ABI" exception for the
recovery mode pin, but I believe that goes through a different
mechanism now so we're good there.

Even though I didn't do a line-by-line review, I'll still give:

Reviewed-by: Douglas Anderson <dianders@chromium.org>

...though it's possible an "Acked-by" would be more in the spirit of
that? Not sure...

-Doug
