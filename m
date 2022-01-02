Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A708E4829D8
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:01:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231640AbiABGBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:01:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41222 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230505AbiABGBi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:01:38 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 995B1C061746
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:01:37 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id bp20so68495783lfb.6
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:01:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=++X+4IgLBv/570wWkxuv+d3gXkmfZziDfkCYW9h+SJs=;
        b=knBJo7GhK2Jk/F9CsVp2X6EbhmF36fhL3Ch9zTgeJWn1Qy/LzVwy4JJyXgWT2b6f34
         fbGzR2BPAh+MgNvWWWX/Iok78ZD1LQDE5V4M+uK/OuehMIb8hKWXE74T8o9RAmoScAi0
         tou+kA0D69AKOyV8UPnna68NTE0to+xqItixTEtGW7vCsAulOkEoFC2XjvAKWGOY5dU4
         1XLUs5ggyFU6Ub6rRRE1vTl4x9svgt0V0u1386If311tYtRluUwEqvR8sPVBKFPESCjn
         fDvVaZZSqTcFA/Kf4a48EkM0VAms2sPyAh6oKCr+Mt9TORj1pdOrbuY5anyr9dKgV42L
         WQGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=++X+4IgLBv/570wWkxuv+d3gXkmfZziDfkCYW9h+SJs=;
        b=XlkgfgK89Uz+AAgBHM4EfONJLowP9hNfpcEi6RjjSgDJuWS0mBGEbPhWosVNEozHt5
         xpNQA4AJa/+s98fy3q3uCUQlme+QAVelpWWI4zKs5TSrRLooNEOukHj5jg/PP1GUGcBa
         mRn7Xi7r3tHtd6vTpp84xPGp7xw32gHNxh3uSx+c1u1qU7nq7OpLDAcgOE5r/+J7h/De
         t/IaD3Cp2cp+6BueKXsUQBARtZsI3e8IUogQLD74G+1Bo5TXdZLqR7ve6I5MonwBpSj4
         h3WNlYJSgj4kY99TYLidkITIhRX6cpDErTBZo7y1w0PIjqxxrfA74InI094VdIEKftmW
         qmPQ==
X-Gm-Message-State: AOAM533ZfjrQ3QD5Au6aUINt7ZPnK5SQl5eptUZagH8ZHY9NMc2Ch+EC
        8Gz57QQ/x4eftx1NxOenKtZSMYef37io3MAtVVSDwA==
X-Google-Smtp-Source: ABdhPJwo+jQV37pSOSt4QRaSzrw1bPUZLyT95BP9G5ewHKlFXkn162F6G0jabBIo80rL7nWLCT5J51HbvqCKRuYML6E=
X-Received: by 2002:a05:6512:261f:: with SMTP id bt31mr20429087lfb.400.1641103295931;
 Sat, 01 Jan 2022 22:01:35 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-20-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-20-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:01:23 +0100
Message-ID: <CACRpkdYhs9_+5iwpB7nJT6xXJ0NBtjDd97_DAxvsMXXV_jg9cA@mail.gmail.com>
Subject: Re: [PATCH 19/34] brcmfmac: pcie: Add IDs/properties for BCM4377
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

On Sun, Dec 26, 2021 at 4:39 PM Hector Martin <marcan@marcan.st> wrote:

> This chip is present on at least these Apple T2 Macs:
>
> * tahiti:  MacBook Pro 13" (2020, 2 TB3)
> * formosa: MacBook Pro 13" (Touch/2019)
> * fiji:    MacBook Air 13" (Scissor, 2020)
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
