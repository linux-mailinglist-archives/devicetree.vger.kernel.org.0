Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C93BE482A3F
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:26:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232006AbiABG0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:26:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231978AbiABG0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:26:18 -0500
Received: from mail-lj1-x230.google.com (mail-lj1-x230.google.com [IPv6:2a00:1450:4864:20::230])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2FFAC061746
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:26:17 -0800 (PST)
Received: by mail-lj1-x230.google.com with SMTP id h15so37679921ljh.12
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:26:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=7Ny9IOrp5AKhlKTAYswE45XRnsrR6ugsPgi1A08bE1w=;
        b=TKg2YDlA4UU2vpZUOddZ+gAYQofb8wN0yjqnKj8J888QfbSRQVOoL7VmuWZgDhSvfK
         cadBoTx+ddiKnJl+yr0VTL3S+0hDUi5IqxqKuS0qvOW1O21OmiilONgxAUlBxU7rfRpH
         FLKQgrAYMm/7CJftZ3vmOpeGT0vSpT6y3Qfs//tdUGswleZFB2+CPxZQkyU9K3WKP1aB
         ZW8Yian1Tm6Ij3UoYAHNOpoMQecvP9t/HOo/nT3sLavAKL4b04gj5kXQIWh+xUec9lje
         KmDLdjigN4cnRCg7LNxjt6QGcYfIxc7drNymNAaxY5rg3Y5jeG4QzYeYxYv+VUI9c1GE
         0AAg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=7Ny9IOrp5AKhlKTAYswE45XRnsrR6ugsPgi1A08bE1w=;
        b=UtlQ/YYsmzE0k1SDJ5f+2EhLF90vkKj2U8XI4+dw5fb0/F7QYrvKh81ywkAPRKtXFw
         ZAhYY3iEqSrbRiSzkWhYcd7pzP2E8YFjKdtczsEGYnXbQA08zV217z7L35J+ik2AtP+W
         uRvf/xZQ1EYVSBthEvAbdjKszmkrW48jML2EUrOOEH8HlcRQ91NnocV57r6L2Jfmzo4C
         aoKcexmhZQdtKW/2KcxAMHgA4DRq+okDuSsW8+GauqxGDhBltXmodAvAmaQ0KvbIfGzj
         OJoBl1ErbdPB1ZZxs5Vn5GC1bnUOcFFL3MEFOHF3A0pOIvA6PgVJIzIER5nM0ROK2k+c
         8XYg==
X-Gm-Message-State: AOAM533AakJ6ovRjW9YiRrziPhIzmumXT37QeMH5aB8LiHb1HfbqMBp3
        Iyxlw2wYgTq16PP5in702aCI6eT9wrTq57o/OLW8IA==
X-Google-Smtp-Source: ABdhPJyRzuMEVAx8+y8buo4E3ptNZEMM3+VBbQLibGlevyTYSkZ6ULIp8S7z3qvrnwEJadDN6IFlYjiNNsX6dqdcAtI=
X-Received: by 2002:a2e:7c01:: with SMTP id x1mr33744057ljc.145.1641104776175;
 Sat, 01 Jan 2022 22:26:16 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-1-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:25:27 +0100
Message-ID: <CACRpkdY1qL6s45qMq65mCrdDDjNfoksadO3Va=zSUhT41pBktw@mail.gmail.com>
Subject: Re: [RFC PATCH 00/34] brcmfmac: Support Apple T2 and M1 platforms
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

On Sun, Dec 26, 2021 at 4:36 PM Hector Martin <marcan@marcan.st> wrote:

> Merry Christmas! This year Santa brings us a 34-patch series to add
> proper support for the Broadcom FullMAC chips used on Apple T2 and M1
> platforms:

I tried to review as best I could, when I think I know what I'm doing I state
Reviewed-by and when I think it just LooksGoodToMe(TM) I replied
Acked-by. If I missed some patch you can assume Acked-by from me
on these as well.

Thanks for doing this, some really old bugs and code improvements long
overdue is in the series, much appreciated.

Yours,
Linus Walleij
