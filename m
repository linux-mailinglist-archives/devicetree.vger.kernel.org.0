Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1F55B5507D
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 15:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729593AbfFYNin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 09:38:43 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:42301 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727705AbfFYNin (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 09:38:43 -0400
Received: by mail-lf1-f66.google.com with SMTP id x144so5217633lfa.9
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 06:38:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=LSvTpOLyyXh49qYBGomCHftsOmnYZkhBKlFO4JP7Wco=;
        b=M1mbYUFtUWy7KV2CuQ8M5nj8o/ooJsFihAJz7osC5AgX0PriOKLOv/57c+Ud2pPZYz
         WabUrZRYC8iJuFTzI+CQWCu+xBqiuAf8oRQcslmGumQMVZ8/HwBktQVUQspZBYce1zfd
         taGw+T6bJepqGs0Y5bw2kZRLDxW4ifJKz3myqKSs5EOoMyqCaY61mJtrIZyu7pBjOPZg
         m6FQARBJw27QQbskEvQ3AdcukASou0VIzpTSRdz1ayrC68xRuw55bhY/bfgKdqRJoDng
         cO9dQwy4TpzMe3SEJovusplELhe37+JoMC9g22TShMSob/tkCjfUqp2LJKCayQgtTFzk
         DOLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=LSvTpOLyyXh49qYBGomCHftsOmnYZkhBKlFO4JP7Wco=;
        b=Lurmrx5lpgXvBjxTEVoduanM/+h9Cs21K/wrWkWH4zD4XpR1qJZVZg6AU/c3uku2kb
         nh7rHv/GPZI4bkEjw+kfwEZeNh3eOnQwDONWuXEA5/WxuSNvzbyyTQX8tdGhFAeyvx/a
         Z8T+dqM0qupTzl6MWYtlVbUssiIkQjsWNg2ADmgn3MdI13x3/81jWHJATMVQ9rDr8Bqw
         rniCk70wvRHvpKSVgg1J4yzFXEPstIzRwGfVP9hGWUjgT839MOCXAnxGm0ePJGAo36Eo
         99Bjzppp9/CqyRNlqXpW87iOkx52gMVjrAIp4jvqmwAslKPPMnY6z9gs58uwnwycwOfp
         oGWA==
X-Gm-Message-State: APjAAAXmBdLoW+hpzV9pejEY6fVE4YYejf1OsVKEg9Y2+3II3J+2hVmD
        x0Wm3uYpSq2q9P/hLMTIsWyFCt9BaHZxPaI8cRZJAw==
X-Google-Smtp-Source: APXvYqw1szRm5IYELBubgoE074wOtxRYIQ93MVfFMiHW+jrrnby9r1otXbCpvLC/2ZO07gSJ2SF1xJN/82oqxqNsyBo=
X-Received: by 2002:ac2:50c4:: with SMTP id h4mr25221480lfm.61.1561469921507;
 Tue, 25 Jun 2019 06:38:41 -0700 (PDT)
MIME-Version: 1.0
References: <1561345379-2429-1-git-send-email-skomatineni@nvidia.com> <1561345379-2429-4-git-send-email-skomatineni@nvidia.com>
In-Reply-To: <1561345379-2429-4-git-send-email-skomatineni@nvidia.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 15:38:29 +0200
Message-ID: <CACRpkda0=HeRco8kExdf6TmiLOnCec3Ek06s-MdjNJvVGw3ZNQ@mail.gmail.com>
Subject: Re: [PATCH V4 03/18] gpio: tegra: use resume_noirq for tegra gpio resume
To:     Sowjanya Komatineni <skomatineni@nvidia.com>
Cc:     "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Jon Hunter <jonathanh@nvidia.com>,
        Thomas Gleixner <tglx@linutronix.de>,
        Jason Cooper <jason@lakedaemon.net>,
        Marc Zyngier <marc.zyngier@arm.com>,
        Stefan Agner <stefan@agner.ch>,
        Mark Rutland <mark.rutland@arm.com>,
        Peter De Schrijver <pdeschrijver@nvidia.com>,
        Prashant Gaikwad <pgaikwad@nvidia.com>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        jckuo@nvidia.com, Joseph Lo <josephl@nvidia.com>, talho@nvidia.com,
        linux-tegra@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Mikko Perttunen <mperttunen@nvidia.com>, spatra@nvidia.com,
        Rob Herring <robh+dt@kernel.org>,
        Dmitry Osipenko <digetx@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 24, 2019 at 5:03 AM Sowjanya Komatineni
<skomatineni@nvidia.com> wrote:

> During SC7 resume, PARKED bit clear from the pinmux registers may
> cause a glitch on the GPIO lines.
>
> So, Tegra GPIOs restore should happen prior to restoring Tegra pinmux
> to keep the GPIO lines in a known good state prior to clearing PARKED
> bit.
>
> This patch has fix for this by moving Tegra GPIOs restore to happen
> very early than pinctrl resume.
>
> Signed-off-by: Sowjanya Komatineni <skomatineni@nvidia.com>

Can this patch be applied in isolation from the other patches?

WOuld be nice to have at least Thierry's ACK on it before I
apply it.

Yours,
Linus Walleij
