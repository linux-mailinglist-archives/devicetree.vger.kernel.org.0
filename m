Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E2DA1482A26
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:20:06 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231909AbiABGUF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:20:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231908AbiABGUE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:20:04 -0500
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40975C06173F
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:20:04 -0800 (PST)
Received: by mail-lj1-x231.google.com with SMTP id k27so51014366ljc.4
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:20:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=33p8zByIPP6vd/MVn5Q5ispXndVo3HnOt5vS5VnsFO4=;
        b=iG09u258R47bMA5zDz/ddEWi+USaMVoj7ZdpA+GfWJ8wwKh7g45jFT5+dJZ83MfeLm
         oXWLKhqzOSz0bkoA7UcVOva5QXT2Sdg57mTZbKFQ/rGiy1YaedXyCbK1FCkFddb5CM0q
         QmQDF1mXSWPv0Sdx1STzq8nzUMfMLuXYiFXwS/ce5hePsXLwBmJ/McXTnCVmFKQSTFfh
         wHtIj29gxogS4/LAwzn+StT19mhvxtzFFehMf5JZr0lw+AYFO9zdX9RrhHSt6/8AexdE
         7PYBIPbSvdv8BesqrVPgxpDJCRhDydJa5MK5aobrx1wf4d01JKa3IAc+jj32xpEmGOQN
         zsHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=33p8zByIPP6vd/MVn5Q5ispXndVo3HnOt5vS5VnsFO4=;
        b=Pt7M1raA6PTe/Tun0vV+UCrq0BtUrsJy0atCkA+tdIqfm/J02bltHTPv5+D5J3Os0m
         prB34XFZOmJ/0UCOJJqXvbeEBN6hRUBwPUsgHQtF2m8cYwzzrIbNwAVEuqcGe/T8q4LB
         EpkgdCUTQZ87NK4LgH2y4tA5oLu4b3TkURJ7DXWhYgfWb+Kf/moemWoHa+c8t0xP59qQ
         lpeg2gN4ZZgSdGkZZDtN+IEQJ+v7ExOywe2cqaEoMj5XVJ8rDYkoO3CUrQQClph6lFa+
         DlGCS68bs0DVKmcRv/q5p4C3GBJ8pfJQmcdFRxlft2qm3GNV1mNVkzqGEZmDbISvjKb0
         V6Ew==
X-Gm-Message-State: AOAM531/1gsa1GW393zsMA03GB3t6fJadRMKEoszTbpYw8nFpEW160Uy
        /09/2XQ654bmLj/YLqPNAN1Tw/oY8rglvicb1pUrUw==
X-Google-Smtp-Source: ABdhPJxVM+M7FZ5irngCc67P8eyuZ1BmrcWr9l4YZI+cHq8gDCBvA9/EAh9k8I+PvRB2/MtWngCj0Is3WMMQGdkkR+M=
X-Received: by 2002:a2e:7c01:: with SMTP id x1mr33735118ljc.145.1641104402564;
 Sat, 01 Jan 2022 22:20:02 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-35-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-35-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:19:50 +0100
Message-ID: <CACRpkdaGjWoSu+gA=HgX2zPJPvAeXHvYDUo=U2itA3Nosr+rSw@mail.gmail.com>
Subject: Re: [PATCH 34/34] brcmfmac: common: Add support for external
 calibration blobs
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

> The calibration blob for a chip is normally stored in SROM and loaded
> internally by the firmware. However, Apple ARM64 platforms instead store
> it as part of platform configuration data, and provide it via the Apple
> Device Tree. We forward this into the Linux DT in the bootloader.
>
> Add support for taking this blob from the DT and loading it into the
> dongle. The loading mechanism is the same as used for the CLM and TxCap
> blobs.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
