Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7DA13269AE
	for <lists+devicetree@lfdr.de>; Wed, 22 May 2019 20:14:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729430AbfEVSN7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 14:13:59 -0400
Received: from mail-vk1-f196.google.com ([209.85.221.196]:34981 "EHLO
        mail-vk1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729003AbfEVSN7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 May 2019 14:13:59 -0400
Received: by mail-vk1-f196.google.com with SMTP id k1so744428vkb.2
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 11:13:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=als0AafCzNcwDpUysRFXNRE8h4TvypenDMJfaAg3x3M=;
        b=Vkv0JYag5RXjIyQv9tMB50n4hClGqOqpOhB2GGfs8w4zpDNVkiYMS8ZJDnx0wvP5XB
         F92PsIOC6CoRrTLnhridwl8W06XlPQzWSBucGXbUj0XK8y4FlsyM1ZIF6ySGv9hgOIJN
         N3J3A51yuRx/HD8R01BubkDaT1q5W+xw/9QRY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=als0AafCzNcwDpUysRFXNRE8h4TvypenDMJfaAg3x3M=;
        b=L+EhgutcvwzwQLH+ONRNUCwa6tix6DP1XLTykuT04oqLySqJFhBB3ygVG9BjTu6UZi
         09dmTSOrJ2rHNQi4Ufm9/ZFaZzl71Et64Dw/O3X1PN1+FtB4vXlBWc+H/X0VYrR3kGs+
         b4ttyzM2uaYW3hqEmb4/hDbU97Eula7Db70kcJK8F1Owh3Yt3sK87XxuUDlxicUaAVEp
         2wcGAavgIjIHV5dzRBvPbzrXYjtHhZAWgfNbpFyiIa9YP2IuGlDwAu7XLiS/88U0mrUy
         eVOlm27CXAPda2FrnjYvIY0a3XZ1mE5zWvxtcc+vacCK4hP8SXt/oQUeT2WyN0U3Qwzf
         mnSA==
X-Gm-Message-State: APjAAAXT5HLaC5yMia+tSZ0++o62Srbe2MznKqgns8KGqYGIhgH6KeDE
        d0KsTe0SHfe9cPHzU9yeSNX/8jnKU6M=
X-Google-Smtp-Source: APXvYqwxmuYwXNqAijPM6f6fCeeJUBk8Tl2MvGqoqSBYH46SjP8+WyaQZVgcz56zGq+QRyl3/aw+4A==
X-Received: by 2002:a1f:9390:: with SMTP id v138mr15974820vkd.48.1558548838212;
        Wed, 22 May 2019 11:13:58 -0700 (PDT)
Received: from mail-vs1-f45.google.com (mail-vs1-f45.google.com. [209.85.217.45])
        by smtp.gmail.com with ESMTPSA id v141sm29434014vsc.8.2019.05.22.11.13.56
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 May 2019 11:13:57 -0700 (PDT)
Received: by mail-vs1-f45.google.com with SMTP id z11so1972142vsq.9
        for <devicetree@vger.kernel.org>; Wed, 22 May 2019 11:13:56 -0700 (PDT)
X-Received: by 2002:a67:ebd6:: with SMTP id y22mr28744866vso.87.1558548836544;
 Wed, 22 May 2019 11:13:56 -0700 (PDT)
MIME-Version: 1.0
References: <20190520220051.54847-1-mka@chromium.org> <3108277.JP5bvJISVS@phil>
In-Reply-To: <3108277.JP5bvJISVS@phil>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 22 May 2019 11:13:45 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Ww5pYOdknESUC4S06FvPzZ03Z-tW098r2N+9tbHNx7Vw@mail.gmail.com>
Message-ID: <CAD=FV=Ww5pYOdknESUC4S06FvPzZ03Z-tW098r2N+9tbHNx7Vw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] ARM: dts: rockchip: disable GPU 500 MHz OPP for veyron
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     Matthias Kaehlcke <mka@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, May 22, 2019 at 2:14 AM Heiko Stuebner <heiko@sntech.de> wrote:
>
> Am Dienstag, 21. Mai 2019, 00:00:49 CEST schrieb Matthias Kaehlcke:
> > The NPLL is the only safe way to generate 500 MHz for the GPU. The
> > downstream Chrome OS 3.14 kernel ('official' kernel for veyron
> > devices) re-purposes NPLL to HDMI and hence disables the OPP for
> > the GPU (see https://crrev.com/c/1574579). Disable it here as well
> > to keep in sync and avoid problems in case someone decides to
> > re-purpose NPLL.
> >
> > Signed-off-by: Matthias Kaehlcke <mka@chromium.org>
>
> I was actually expecting to just drop the 500MHz opp from all
> of rk3288 ;-) .
>
> To not have to respin, I just modified your patch accordingly,
> see [0] and please holler if you disagree :-D .

Seems fine to me, thanks!

-Doug
