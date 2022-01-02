Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 050DE4829B0
	for <lists+devicetree@lfdr.de>; Sun,  2 Jan 2022 06:51:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231168AbiABFvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 2 Jan 2022 00:51:13 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230511AbiABFvM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 2 Jan 2022 00:51:12 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 34694C061574
        for <devicetree@vger.kernel.org>; Sat,  1 Jan 2022 21:51:12 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id g26so68411381lfv.11
        for <devicetree@vger.kernel.org>; Sat, 01 Jan 2022 21:51:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=qDnP0Au89kxg0ZktkB8gjrBE3sK+TqWdC3PYi49Fzuc=;
        b=sqI6tb5Yhxl44aUD4rV0XWlBCd6pd+2y3MwBqKwbEexrBmOJdyv50iqeARE1vmFa7N
         O0b2YyA4CFmrRUsQ7Vk8YAg1pVIHrRzA48/Q6xRcqbcgdffYNtmyRcAtpgweggkKcCzb
         29YTlzRaR3Njp14PfiymPLUbj+54cGpdBSgkqGiFMy4AP94t9hlnA600h9K7VItiSmci
         1dvzEFHK3gNO5QPL1v7/tfvsNtoN2XyEN6ixmzMkaP7KFhhfcSzGpzg+TeEX2gLzczkm
         Olc/c1p+Dq9JoOVfZvjljCvE5eeJaesWpdQcsyFb+Ruuzktlb3vSt97B4qxwXoQSn2Nt
         mB+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=qDnP0Au89kxg0ZktkB8gjrBE3sK+TqWdC3PYi49Fzuc=;
        b=eJ6gShPg09Slpu5/1vMjgzb+agKHaJgPEYY5Dxzs0d0nIfzoJ/ZIJwT7OoFphJIMwi
         RU0ae+pZ/Hn0mkWAwBY/xshoG1DBurXUm+9B8eJ1G/XjfJHeoV9gaN+DZ6MaVqaoKied
         fMNGwhth9N3CcaG3fAvp8ThFXr74UTUgbyw7fMDOebu2YvOZGYv7yE0n+A9zOqQ5okuo
         2WHekYdUREaBtALmZvid2hocnHOyPyyl7z/oPv6MlD3T0UT74CYolNh5apj/KVo15AEL
         g9YxcDvVlC+p8hNEDhbJWBWrm/ktLsRknoCtbRCtOyysKtmOsUA3bLGuYdf3zsevW0lJ
         wGHQ==
X-Gm-Message-State: AOAM532heeRFPy8XAdtvFk83clQzYfKQNjObtYtUEomvFXYnZu9sCk9I
        msXYbMdtsibdO3OIVklq0KwcJ1LHjUJ3IYf+dw8eCw==
X-Google-Smtp-Source: ABdhPJxhmHbx0oUdcdHa07STYhT30zeD9sgrQrDqujcMSIFpQ0Tyz64sau2iz8SFac5UrBYp6N7pg6BGuOPtufdRtb4=
X-Received: by 2002:a05:6512:750:: with SMTP id c16mr37604619lfs.622.1641102670552;
 Sat, 01 Jan 2022 21:51:10 -0800 (PST)
MIME-Version: 1.0
References: <20211226153624.162281-1-marcan@marcan.st> <20211226153624.162281-12-marcan@marcan.st>
In-Reply-To: <20211226153624.162281-12-marcan@marcan.st>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 2 Jan 2022 06:50:58 +0100
Message-ID: <CACRpkdY9bm07-bJVu8KfUXzQBrLBexsPhSuEmkyi-aGpd0zyqA@mail.gmail.com>
Subject: Re: [PATCH 11/34] brcmfmac: msgbuf: Increase RX ring sizes to 1024
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

On Sun, Dec 26, 2021 at 4:38 PM Hector Martin <marcan@marcan.st> wrote:

> Newer chips used on Apple platforms have more than max_rxbufpost greater
> than 512, which causes warnings when brcmf_msgbuf_rxbuf_data_fill tries
> to put more in the ring than fit. Increase the ring sizes to 1024.
>
> Signed-off-by: Hector Martin <marcan@marcan.st>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
