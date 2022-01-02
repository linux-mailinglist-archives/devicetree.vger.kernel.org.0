Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EB334829AB
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 06:50:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231127AbiABFu2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 00:50:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230471AbiABFu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 00:50:27 -0500
Received: from mail-lf1-x12a.google.com (mail-lf1-x12a.google.com [IPv6:2a00:1450:4864:20::12a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 30EA7C061574
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 21:50:27 -0800 (PST)
Received: by mail-lf1-x12a.google.com with SMTP id x6so15620909lfa.5
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 21:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=nhN7NWahO9J/KN17ys1dyhTURCCVE5feduyNTBCD4xM=;
        b=n/TD9+cCUnrBWb1Y58ieKNbFn60JI2jFQKV2YEBjPI64whoto8M8+MwAAqxzOan8vs
         uS992VBDhpbqXVlRaeYGypHTx0YphkvM0KjCpM9L4DFqTyTirAr/ojZKMkRiZ4h3Kasg
         DbkdXHAFqUzXMtZTJTRq0iyB0xKNiJQpiQu6D4IRz9Q+bLZGJ5U3nXT/EfLeb+G5fsER
         9fNzDFi/fGjX5JcPRTI+WT36n9OUnWk0djDmBRVhzNpm7HEGKTDKXOAmHUydwm77Tog9
         SDUoWE3AmDVstIlBx9m/PXdl83AL/O+4cP/o4zxSA/s0ujJCUtLuvzfhxJAQgNm6N7yF
         kkqQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=nhN7NWahO9J/KN17ys1dyhTURCCVE5feduyNTBCD4xM=;
        b=yIUFv91WPEIt+BdaIUVt7FOckmsjo1kjfN0vINt+i516U4bPXl6jX5hlb3038Jlh2j
         I9TWjkUGCOo5zju//0shmxAYGppLKJz4rukXBV7zd1oXQDmQYiEfGjpuriBDq8ogo6yK
         aIaOUfH2I6sJju5/CehpFUxUDUF41NpzQbWXjDKyRP0aD0O/GgY1+D/0XtDt+s6OrjJZ
         6ihdKKlDls8JWgv7UFmE/NYA96I2q9c95IhqSeIiUvNzPxM5v9R2DG6JmLE9kaCG4JKU
         cKcsM+uERGIeq6PBu3N+tYow3yNeDau+tAsIGjpOb/s1EIxHhSC4mGgf03oLxvf6eShV
         2+3Q==
X-Gm-Message-State: AOAM530TAEd3h54rBWxvoLm5HXmeO3mZ4wOdWumHzNaGl2izVgif5njf
        6QE9oim85BKFhYJ/8AjlISPZVrh9Hq+DyU6QDr/idQ==
X-Google-Smtp-Source: ABdhPJxHWrcdDvJHL6Eo2PnCIxuGE9o8ruut2xQF63lFp6SbHL/k+lqi4MUG2iE58N3HEMEz7ldXBICcoY0TohhP++Q=
X-Received: by 2002:a05:6512:261f:: with SMTP id bt31mr20407633lfb.400.1641102625444;
 Sat, 01 Jan 2022 21:50:25 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-11-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-11-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 06:50:13 +0100
Message-ID: <CACRpkdbviGvBoAOLfLPe-auabYd-iMmpxerTiB4whQ3r+QTMeg@mail.gmail.com>
Subject: Re: [PATCH 10/34] brcmfmac: firmware: Allow platform to override macaddr
To:     Hector Martin <marcan@marcan.st>
Cc:     Kalle Valo <kvalo@codeaurora.org>,
        "David S. Miller" <davem@davemloft.net>,
        Jakub Kicinski <kuba@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Arend van Spriel <aspriel@gmail.com>,
        Franky Lin <franky.lin@broadcom.com>,
        Hante Meuleman <hante.meuleman@broadcom.com>,
        Chi-hsien Lin <chi-hsien.lin@infineon.com>,
        Wright Feng <wright.feng@infineon.com>,
        Chung-hsien Hsu <chung-hsien.hsu@infineon.com>,
        Sven Peter <sven@svenpeter.dev>,
        Alyssa Rosenzweig <alyssa@rosenzweig.io>,
        Mark Kettenis <kettenis@openbsd.org>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>,
        Pieter-Paul Giesberts <pieter-paul.giesberts@broadcom.com>,
        Hans de Goede <hdegoede@redhat.com>,
        "John W. Linville" <linville@tuxdriver.com>,
        "Daniel (Deognyoun) Kim" <dekim@broadcom.com>,
        "brian m. carlson" <sandals@crustytoothpaste.net>,
        linux-wireless@vger.kernel.org, netdev@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-acpi@vger.kernel.org, brcm80211-dev-list.pdl@broadcom.com,
        SHA-cyfmac-dev-list@infineon.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Dec 26, 2021 at 4:37 PM Hector Martin <marcan@marcan.st> wrote:

> On Device Tree platforms, it is customary to be able to set the MAC
> address via the Device Tree, as it is often stored in system firmware.
> This is particularly relevant for Apple ARM64 platforms, where this
> information comes from system configuration and passed through by the
> bootloader into the DT.
>
> Implement support for this by fetching the platform MAC address and
> adding or replacing the macaddr= property in nvram. This becomes the
> dongle's default MAC address.
>
> On platforms with an SROM MAC address, this overrides it. On platforms
> without one, such as Apple ARM64 devices, this is required for the
> firmware to boot (it will fail if it does not have a valid MAC at all).
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

This looks very helpful.

> +       /* Add space for properties we may add */
> +       size += strlen(BRCMF_FW_DEFAULT_BOARDREV) + 1;
> +       size += BRCMF_FW_MACADDR_LEN + 1;

Add some note to the commit log why you also make space for
boardrev? (Looks useful.) Is the boardrev spacing in the right
patch?

With that addressed:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
