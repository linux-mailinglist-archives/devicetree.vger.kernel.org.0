Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 656D54829D4
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 07:00:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231648AbiABGAy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 01:00:54 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41034 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231245AbiABGAw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 01:00:52 -0500
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 53195C061401
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 22:00:52 -0800 (PST)
Received: by mail-lf1-x133.google.com with SMTP id i31so68414413lfv.10
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 22:00:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=HTLmkAGe0nMUNWPjMKpLbDUGkN7ojNy65opvZtoCGow=;
        b=ngXXgI5MFCua4XE6UIuvOL3zYQCZkNeU6n0Khg3UpYyr3l07WCX0OrVf4nSBfQeEbq
         alRr1JnZ3PvXvKSeNKXQboDjsFpBF8CGwnT0a2KA1dWftbkA9oU/CB2gJIdOV2xbuqz5
         Zfj/reC5Hu+RzVnaphUVbKDvy9Bk9J8R0DTJZPuEYB/7fNiZmCyOJwHIHmulsQnGt47j
         qoGpu4AeEmvW/zi77f+SQnYyOjkH/NnFGRmtH9LTYCIOtDGvoU/Lei32PPFZvC7iteGl
         k7/2fp4iU7etc8itLW19f/8h/5/9OvOupfCfEhDTnUI+zu9WUF/LKZlsTck5AWcbhWe5
         h5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=HTLmkAGe0nMUNWPjMKpLbDUGkN7ojNy65opvZtoCGow=;
        b=tdfiSH1JwkwbkMU6WeATDUSyYzkH5H+/lLJSH2Tl4Dxro8SnCyF6j/A/DTMSSjDIqR
         cdERlrIOhqBo327nz3iu6dmd4GWB2IxiRzObscY4mdu3sNeYjWeD62SglNGKVVKOOCts
         lIWz+FQ9pDq9EuxQKfpgBHVAlN9vQdOR8QPZdsjxp/RptvicvEwTjx0hm73KkENgdRNr
         7m1GMfsHCAQkebQkLrrog+GMBw3hLjuniKRHh7CvpcWtPMtmry7VRYf9WqAWwLMWaHe7
         //WhMCjRgkydj1B1hYsmQHm48DxfgwFhm/pWNpk8jorxor7wWpk2XOKbgkXDaPL6dNw3
         4tSA==
X-Gm-Message-State: AOAM532rp4dmMt1jmOOlDaAZYm7vVFvDxg8sAaerqYDygk2Cw+tYM/K/
        j0wU64qBYdumiVvLEO4gKSW7qhhpPUL0kzhsSYSSDg==
X-Google-Smtp-Source: ABdhPJycF0PZrYIBhbNaYzZXJsO4SuCYCZ+KgaA+cK/5b51H/hols6a1ZdcsP/UHLOD7kBzjTTaIwnvv1hnAoxJDvUM=
X-Received: by 2002:a05:6512:39ce:: with SMTP id k14mr19035581lfu.508.1641103250662;
 Sat, 01 Jan 2022 22:00:50 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-19-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-19-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 07:00:38 +0100
Message-ID: <CACRpkdZ1gRO+qyEPmKMVdMcLuOdekEMye5_4gLQCdFDF8f=r0g@mail.gmail.com>
Subject: Re: [PATCH 18/34] brcmfmac: pcie: Add IDs/properties for BCM4355
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
> * hawaii: MacBook Air 13" (Late 2018)
> * hawaii: MacBook Air 13" (True Tone, 2019)
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
