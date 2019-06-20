Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CAD264DB40
	for <lists+devicetree@lfdr.de>; Thu, 20 Jun 2019 22:31:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726098AbfFTUb0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Jun 2019 16:31:26 -0400
Received: from mail-io1-f66.google.com ([209.85.166.66]:44371 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726018AbfFTUb0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Jun 2019 16:31:26 -0400
Received: by mail-io1-f66.google.com with SMTP id s7so221731iob.11
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 13:31:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=/RIT3PGSIDktw6riBTCLlesL4b2Jegy8h8HP+jn0p40=;
        b=Iz+3qSD6WbRhUE+tFCZqsR6W+T43RQqlhJuaueVgnsR+UHXqI6yGDiXDmoAN2KQV+J
         K7hg/B5bhJJNeAfOcSvC9amZalXql2GlhpAuSC3SORlAuoH0aFCsWHNWnVuqQGKr3bWe
         AvfJ6cVBI86oXbCiPbIGzMw+OcyhdOGqhwB0E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=/RIT3PGSIDktw6riBTCLlesL4b2Jegy8h8HP+jn0p40=;
        b=DAS6jZ8YLqTTNYpX/92ZREopkSoNH4NnzO4V3b95Difs0WAZH41Rgrd8FzpRFryaWY
         ypkpXQjg7BZllC3uGhR4GuC8SJLcU4FVthMyupInpcJBYkSTmGUh/XDr/rRqDHsBrDzg
         tSdMoAOJ7xqOF3N4uwZ8hJ9FaYeGwUkl5pfcpfZkYLUtNRxTpByNgqCKYZvYz3GG+I5P
         v1c/MTIklK3C5VnYxDumAFujUpCJ6yJbDHZ7b708FSaU7g56wJuLDGKR7X2kXKz/AFHy
         RkNYvPyUqaCgCWYnDQMDYNeUpm+9OP3ZA9J3NHaYQm/QzmDS4DoHkJigklzzKU5en7B6
         ALqQ==
X-Gm-Message-State: APjAAAVYbS+LPaW7BZz2s+QnU6aEWd8HCvTCxjzK1Xt/dXcYdDai54rk
        DmXm9UwBS/fd4ThwX7llW/I86+FthGI=
X-Google-Smtp-Source: APXvYqziENnC6CqghxooQpdevzjXoGrgF7ZLnipKphO0bCNYBfSFVYhp6jQgNk+bcQ7PwDkH/aBDqA==
X-Received: by 2002:a6b:2bcd:: with SMTP id r196mr5570352ior.73.1561062685091;
        Thu, 20 Jun 2019 13:31:25 -0700 (PDT)
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com. [209.85.166.47])
        by smtp.gmail.com with ESMTPSA id p25sm1080250iol.48.2019.06.20.13.31.23
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=AEAD-AES128-GCM-SHA256 bits=128/128);
        Thu, 20 Jun 2019 13:31:23 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id j6so32713ioa.5
        for <devicetree@vger.kernel.org>; Thu, 20 Jun 2019 13:31:23 -0700 (PDT)
X-Received: by 2002:a5d:8ccc:: with SMTP id k12mr9824185iot.141.1561062682954;
 Thu, 20 Jun 2019 13:31:22 -0700 (PDT)
MIME-Version: 1.0
References: <20190620182056.61552-1-dianders@chromium.org>
In-Reply-To: <20190620182056.61552-1-dianders@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 20 Jun 2019 13:31:09 -0700
X-Gmail-Original-Message-ID: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
Message-ID: <CAD=FV=Wi21Emjg7CpCJfSRiKr_EisR20UO1tbPjAeJzdJNbSVw@mail.gmail.com>
Subject: Re: [PATCH] Revert "ARM: dts: rockchip: add startup delay to
 rk3288-veyron panel-regulators"
To:     =?UTF-8?Q?Heiko_St=C3=BCbner?= <heiko@sntech.de>
Cc:     Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        Matthias Kaehlcke <mka@chromium.org>,
        devicetree@vger.kernel.org, LKML <linux-kernel@vger.kernel.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Thu, Jun 20, 2019 at 11:21 AM Douglas Anderson <dianders@chromium.org> wrote:
>
> This reverts commit 1f45e8c6d0161f044d679f242fe7514e2625af4a.
>
> This 100 ms mystery delay is not on downstream kernels and no longer
> seems needed on upstream kernels either [1].  Presumably something in the
> meantime has made things better.  A few possibilities for patches that
> have landed in the meantime that could have made this better are
> commit 3157694d8c7f ("pwm-backlight: Add support for PWM delays
> proprieties."), commit 5fb5caee92ba ("pwm-backlight: Enable/disable
> the PWM before/after LCD enable toggle."), and commit 6d5922dd0d60
> ("ARM: dts: rockchip: set PWM delay backlight settings for Veyron")
>
> Let's revert and get our 100 ms back.
>
> [1] https://lkml.kernel.org/r/2226970.BAPq4liE1j@diego
>
> Signed-off-by: Douglas Anderson <dianders@chromium.org>
> ---
>
>  arch/arm/boot/dts/rk3288-veyron-jaq.dts    | 1 -
>  arch/arm/boot/dts/rk3288-veyron-jerry.dts  | 1 -
>  arch/arm/boot/dts/rk3288-veyron-minnie.dts | 1 -
>  arch/arm/boot/dts/rk3288-veyron-speedy.dts | 1 -
>  4 files changed, 4 deletions(-)

Maybe wait before applying.  I've been running reboot tests now with
this patch applied (among others) and with enough reboots I managed to
see:

[    5.682418] rockchip-dp ff970000.dp: eDP link training failed (-5)

I'll see if I can confirm that it's this patch and why things are
different compared to downstream.

-Doug
