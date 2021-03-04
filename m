Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E920932C8CC
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 02:16:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345764AbhCDAwm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 3 Mar 2021 19:52:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46310 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1392371AbhCDAOe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 3 Mar 2021 19:14:34 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7BD97C0613E6
        for <devicetree@vger.kernel.org>; Wed,  3 Mar 2021 16:13:26 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id u4so40161560lfs.0
        for <devicetree@vger.kernel.org>; Wed, 03 Mar 2021 16:13:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=OKu9rvgBil0k6tR4pYyiR6wjoHr0+cu17RpPhjhwkTc=;
        b=IpjtF+K+hruehTwmwGiSLec3MXobzKIJ30Y6ZmWQJunyXLeup+LmOCVT5Nxumb+LXq
         qIRGRRxLUv+vvqSMVM5R9D6dxubkhFTO6ayZNQiAMtwEzLbswTymeuz7Ozkv4oCczk6L
         CGKaTot0aoO4H5QxO/3lg7K/snPxuWNCpZgTFKt9efgx5VmtbYn+223I0yjuc6ElJuPU
         +NqBvtxU4Fd36vrsMJUY/djET0UEYnRbDdxCcq8eA8dcqpZvIerGhwjHFU6iNyiN/wcM
         Dfz7xc117A/msLNFmaaR9w9LEAC7eSVn0DOmpNIbhZkJuce2a4LijAnAwOJRk8s14UWG
         rKJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=OKu9rvgBil0k6tR4pYyiR6wjoHr0+cu17RpPhjhwkTc=;
        b=MfydKj0f7jB7aL6nCm3Bp7r1cDVeVjsvQhedspRMFaSEJ9EbIYs2KxGMU+sIA1LhyJ
         2Yvp/du2Nb76XLxg2aop3zC+kBs0iDixquEA0bYIXcdKDUZEzQuIJNzxZkjYIsJPpolB
         8vL9cBDGtqs+E+qQYNgbOIOi8Y58pnhV0dXi0YAsQhhceqL+szHm3D1Vu61fC8wpz/kU
         HwvGt+R3lF3p1JZSwK3fjhd3AJ5mSyzinodrmh8/ZDbwe60a1aWQZp1O46LO9NnfuIU1
         804JpiTptCsiWks/VvIl+AtKIIb2C1mP/S8tIxZ4GkqzAd0kH8jzXQRiqDcCsfZH0Obp
         nQzw==
X-Gm-Message-State: AOAM530LTWjQwba63WMlOlFCOvXN+53Ig0CFzEIgVXQ056hDHlOLvJaV
        2wVTWBO7PUstQ7C/cgoX5uHLrmASMGnAhDw4hV01pA==
X-Google-Smtp-Source: ABdhPJwUF1F8cAZ3I10nUfVKg6JQz8+hWV9fUNGUsjQoMGB56CK2zNgX/OcKAfDexLsxS2Tm4fxqKsRx+PeSf7Mqulg=
X-Received: by 2002:a05:6512:74a:: with SMTP id c10mr709694lfs.586.1614816804951;
 Wed, 03 Mar 2021 16:13:24 -0800 (PST)
MIME-Version: 1.0
References: <20210303142310.6371-1-noltari@gmail.com> <CACRpkdbi77SBsssMOnx43fP9RgqnzkUUw=TXaE2_LDexpE2WEg@mail.gmail.com>
 <D875EBA4-F881-4F1E-A251-78CEF8E6A40B@gmail.com>
In-Reply-To: <D875EBA4-F881-4F1E-A251-78CEF8E6A40B@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Mar 2021 01:13:13 +0100
Message-ID: <CACRpkdYPMT_D=pKau1c9Df7rq9gwVGtA8ZYvPHDYU6zO-y+SgQ@mail.gmail.com>
Subject: Re: [PATCH v3 00/14] pinctrl: add BCM63XX pincontrol support
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Michael Walle <michael@walle.cc>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 3, 2021 at 5:23 PM =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gm=
ail.com> wrote:

> Or maybe we could guard these lines of gpio-regmap.c with #ifdef GPIOLIB_=
IRQCHIP:
> https://github.com/torvalds/linux/blob/f69d02e37a85645aa90d18cacfff36dba3=
70f797/drivers/gpio/gpio-regmap.c#L282-L286

That's the best approach. I wasn't a big fan of this ability to insert
an external
irqdomain in the first place, so it should be as optional as possible.

Yours,
Linus Walleij
