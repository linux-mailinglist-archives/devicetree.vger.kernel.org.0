Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1D02E48F9F7
	for <lists+devicetree@lfdr.de>; Sun, 16 Jan 2022 01:22:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232701AbiAPAW3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 15 Jan 2022 19:22:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbiAPAW3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 15 Jan 2022 19:22:29 -0500
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 52936C061574
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 16:22:29 -0800 (PST)
Received: by mail-ot1-x32d.google.com with SMTP id 60-20020a9d0142000000b0059103eb18d4so14937136otu.2
        for <devicetree@vger.kernel.org>; Sat, 15 Jan 2022 16:22:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=mDz53WoKLYCM+cEGYwOUzJ6gMzNx+RSdT0XEfI9l8bY=;
        b=i2FDB81ZuePT0kBwWa0TuKZ5jmzOON/UNwQaSPwchFV2RfqPy+BvFFQKzZ3Vg7Y8m9
         iUtki4z1TJbECXA13RzIgzj1k0XL69QnLGk456uTpQo16MalJlGAh5o5yEht+4nPkMB5
         1Szyhfz51KeCGdYNrRw6/qDAG4OcenkapOGsX8wn/tGsZTprEX4gjq0QscvpHRYTshB5
         MHSKGrXMH357WNi8EGW5pZzUnUQv1mfbjBwjCcnkEVrYd7IP3Bed7GBGQZ7KZGZtPUoX
         2vU5rql2Rtg0xfAi7/2Lzes+iSjIVOlAhLsYAmVJ4jA2Tga0718Pnxn9ovqI8bJDhfyp
         cSWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=mDz53WoKLYCM+cEGYwOUzJ6gMzNx+RSdT0XEfI9l8bY=;
        b=5pnr7JmUAj8xh6RjagU1ko15IfMQ2e7m/EK09RE0RKCC4eTDNdO4sDOIN4R+nTerrj
         UBSA3OS6Ydcnt7V1M7eaVaDPs7nIPIG0y9wRiIvVj9VGDP6XBvuBZsk/RFsSrvjDBYcc
         i3aavLNWDlagy7QzUCD4J/Sx9SWJ7/4BiuTH0P9jNJXtwW3oWuaueBHgWnbVgLLrhrTO
         ln+m2n79x4wzzIFFQvYkfFjYuMKSR3EAYuH0Eb5lzLKkja6C45QiHjz/Pn88OphZ2zkI
         bY63+WOR6HdKZ9KOvsU+8otzTE8balbb9g69vc3uO90cQmuhbX/D5pHwWLb76GE6ka/K
         xbfg==
X-Gm-Message-State: AOAM531XEe6AvHssGN8oS0wsdE7ZRSI7JzGxXqKq8/grQdjwsmodBnq9
        BknyiAWcgvTHU3iRMs7TtcaowBdBXkWH3/2rE3b62Q==
X-Google-Smtp-Source: ABdhPJxSu5IhVjSwegCJrfP1eAHk6CxUX5iX80tu5ORB38oA4VXO6y/0xU0eWkH6KTtMfFqUJs5VqP7HCoxqDK37yWQ=
X-Received: by 2002:a05:6830:4:: with SMTP id c4mr218721otp.237.1642292548103;
 Sat, 15 Jan 2022 16:22:28 -0800 (PST)
MIME-Version: 1.0
References: <20220105124003.11319-1-zajec5@gmail.com>
In-Reply-To: <20220105124003.11319-1-zajec5@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 16 Jan 2022 01:22:16 +0100
Message-ID: <CACRpkdbiyi9c6XLVyOZOgr6fhibAE-D4QdcumYP4YgXr33EnSA@mail.gmail.com>
Subject: Re: [PATCH V3 1/2] dt-bindings: pinctrl: Add binding for BCM4908 pinctrl
To:     =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Randy Dunlap <rdunlap@infradead.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        linux-gpio@vger.kernel.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Jan 5, 2022 at 1:40 PM Rafa=C5=82 Mi=C5=82ecki <zajec5@gmail.com> w=
rote:

> From: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
>
> It's hardware block that is part of every SoC from BCM4908 family.
>
> Signed-off-by: Rafa=C5=82 Mi=C5=82ecki <rafal@milecki.pl>
> Reviewed-by: Rob Herring <robh@kernel.org>
> ---
> This patch targets linux-pinctrl.git for-next. It requires commit
> 896568e5b9c8 ("dt-bindings: pinctrl: convert controller description to th=
e json-schema")

That part works but instead we have a clash in MAINTAINERS.
No big deal but if you could rebase it on v5.17-rc1 when that
is out and resend I will apply it immediately so we are sure to
get these patches in early.

Yours,
Linus Walleij
