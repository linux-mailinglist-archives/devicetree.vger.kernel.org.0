Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EEF7D2CFFA2
	for <lists+devicetree@lfdr.de>; Sun,  6 Dec 2020 00:09:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725933AbgLEXJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Dec 2020 18:09:03 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725270AbgLEXJC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Dec 2020 18:09:02 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B7E1AC0613D1
        for <devicetree@vger.kernel.org>; Sat,  5 Dec 2020 15:08:16 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id u18so12747958lfd.9
        for <devicetree@vger.kernel.org>; Sat, 05 Dec 2020 15:08:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=vwb2HdHtdDZZDHnperwU4T/43GW8HXiYw6+fTYALHZ4=;
        b=SU9Mzn3kxhuqqKEDyZufnK7Jl5GgyAGR9GIYFHUx1XMFG2dsRuvATzgzMS5or8jGoq
         GKpKXyiLgp2N/icq5y6VTiGSgXjgABGy+TP5fYyjJ0Lp35u899seb57zkNzG7xvU7DpY
         MjKoPffW5FbBwPxkXy/5yx4HjPXQBeL15aFY8zEe0wMI0UpjdyUXMTL5AERuEX3qD7LG
         7qq0fcrJaTa6HlYtM8xyptVG3WIrKZ0fV53l/FbgiTBCbpYVPZ9Qw5xhge4F/0ur2SqS
         nj/UMaT20vcuXoNMSlm0bdGoS4yVN6aFYkJO3uqNzw+p8jFZjDUwXUmsJeZDJfEUQuds
         OZUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=vwb2HdHtdDZZDHnperwU4T/43GW8HXiYw6+fTYALHZ4=;
        b=UdawpWS1qBOGmFNLpyFGe333CT/5sBGSe0ubQqx1f88hHC0rynS/HTFdNEG+3ZyoNx
         llz8VElVYc/WCtjJpd9plJXzqwekK8X4n/E+DWB/rvcaZFfn7XDlQ6SnPGFUO//NkVDa
         kk3GyWs/640VJ2Pqkep0Nfnwi7Lr5jcNHw/HJZ0lpjWdF8aDUHnGbBaQjIqJKIQxAlA4
         BkKrTAPSQt2AldNfRloKJZjo+MturlZD1wsOY0dVoTbdu3QMVURNwV/1nbkBXVzywooe
         BwCIN6wiz4cwUwWjzAHNXVU9KkFdvVWHa8C80tjCSC6nxwWz9dnXbK1p2AcJ5xU/V7Ki
         FtqQ==
X-Gm-Message-State: AOAM532RuO+Y/fMEoMquqZAn7hv7vcZnXPII9DQpjd7oNoItlKG4J/g0
        uctoq3Ffz8TjfQu3vEdkktDCB8oDC/GYeSakBfrsXA==
X-Google-Smtp-Source: ABdhPJwdF479XZ7ajZEMYz/xc/9Bf8EKg6vkYwWis2eIiU1zHQw8oaYyfgNfyCcFk3hweLjiIOpUj79cCisirDSYA8M=
X-Received: by 2002:ac2:4578:: with SMTP id k24mr5761952lfm.502.1607209695139;
 Sat, 05 Dec 2020 15:08:15 -0800 (PST)
MIME-Version: 1.0
References: <20201203131242.44397-1-stephan@gerhold.net>
In-Reply-To: <20201203131242.44397-1-stephan@gerhold.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 6 Dec 2020 00:08:04 +0100
Message-ID: <CACRpkdY+SUkOZCoPgEOZ005T26hop=Tn-NjG3BwwyVFfWbZOpA@mail.gmail.com>
Subject: Re: [PATCH 1/3] dt-bindings: Input: tm2-touchkey - convert to yaml
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Linux Input <linux-input@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Dec 3, 2020 at 2:13 PM Stephan Gerhold <stephan@gerhold.net> wrote:

> Convert the device tree bindings for tm2-touchkey to the YAML format.
>
> While we're at it, clarify the descriptions a bit to make it clear that
> this driver can be used for many different MCUs that all implement
> a similar I2C protocol. Depending on the MCU the voltage requirements
> may be different, on some devices the controller uses 2.2V, 2.8V or
> even 3.3V for vcc-supply instead of 1.8V.
>
> Cc: Linus Walleij <linus.walleij@linaro.org>
> Signed-off-by: Stephan Gerhold <stephan@gerhold.net>

LGTM
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
