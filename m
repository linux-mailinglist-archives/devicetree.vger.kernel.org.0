Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CEBF0482A21
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:19:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231374AbiABGT2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:19:28 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45356 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231241AbiABGT2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:19:28 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA139C06173F
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:19:27 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id h21so39157526ljh.3
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:19:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ghFlkQwtpFZle9fRX3OIytUtB+LtWsXwrtzMbGq2Ook=;
        b=QWaWYEkaiKHWtUPW5E9OP5/d0ezin7XI6byBRUim488xNn77UuTFsZ0PVzkpo6YUee
         rLIO1nRF1ypdO545s1Q33dtUuCKlwXYWM5EgOv9EqY2DOfKPYvjEuc3cWzmO0gbc7Q4B
         WVSsyxTB3Viyae+3WH6QQ/qeHpYkL5eyJuj6hHCq2mdleDa4HFyWSbZTiQlNT9lnhUS8
         pizKj88ybEpzwDXgYudEk4BGAl2UQawkmEtJMTqaRhZjAuq0RErHTbzZav2p2MO5j6t8
         Wz0nevKC9MWBVXh9i9ZcPxnd2vK6icI28cvW3lAnezfjFLOQjwrqjrhiZ0MSs9qPa0ac
         cWog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ghFlkQwtpFZle9fRX3OIytUtB+LtWsXwrtzMbGq2Ook=;
        b=1Fb3qqQ7o6XW0xQY9glkKQEmNxd0EiEQSfvRfN2FMwDmg08/lga4TxrYi+lN/kt6Z3
         RQLcwkw51ccw7+Zyw3M1cg+uyK0LxDcx7lclXUPaKpaHoSSztD4uDTXysa76h7DhDV/F
         GEn7uzGVIsTOTiXYyJx09vZV+CTv60H/xMKXQv9Cd3FyFh9VVXoRqjrJ7G+hJ3Yauv1b
         ufKvE0vxKrz27JTJ0fFa3me+xdlajL6Qr0hmXJ64oKf8qgnPTG4Q5t99n6Me7pN++nID
         CIK0XcKdH6GJ+0hwb8Ibwz+gn29WiTLe+Pa3qXO5aXtXd7YsAxLifdeVoI+6madKKdD0
         7gNQ==
X-Gm-Message-State: AOAM530miSm78121ClRdrfT07D5H6+hfp/rhuAqEvxj/jv7DB4TxWpyV
        Lp2QJtq8p18wRxEudLNtv3IVonRs97yMwXwp2IqOSA==
X-Google-Smtp-Source: ABdhPJw4eXqQQgKISxZskwxOq4PpMVZbJLQ7rU1C/WPZxezRc07IeaL7/JZeSzY2fgnSTEU/0k0KWPsmQ++kmflw09Y=
X-Received: by 2002:a2e:8810:: with SMTP id x16mr31143976ljh.78.1641104366005;
 Sat, 01 Jan 2022 22:19:26 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-34-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-34-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:19:13 +0100
Message-ID: <CACRpkdYHN5_XQEMjY-PSmf_1sr4Wna7T-GQhSbP4aZaefaSvUA@mail.gmail.com>
Subject: Re: [PATCH 33/34] brcmfmac: pcie: Load and provide TxCap blobs
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

On Sun, Dec 26, 2021 at 4:41 PM Hector Martin <marcan@marcan.st> wrote:

> These blobs are named .txcap_blob, and exist alongside the existing
> .clm_blob files. Use the existing firmware machinery to provide them to
> the core.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
