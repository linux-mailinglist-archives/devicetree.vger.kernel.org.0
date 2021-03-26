Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6624634A7E8
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 14:15:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230094AbhCZNPP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 09:15:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35470 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229933AbhCZNPL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 09:15:11 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9126C0613AA
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 06:15:10 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id hq27so8323800ejc.9
        for <devicetree@vger.kernel.org>; Fri, 26 Mar 2021 06:15:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2J16m3JBhK3o86H5FC3pePsPlAfGY4Sh+XHvCjx2klY=;
        b=qpu3G270UEuaCf9P/+CR4FdVpn3VFauM58BfowENzPNXn5RembVd4digrvdOmNadMX
         L2ECrVwQ1/moXjZdtGdD6MXb0eYSNBMnpy/kWDBpiC06uU0JZ+3Ls4FR762bRFRMltqW
         5NtJVfr5CbDKCLZKTc/1UQcHPSFbrYwUOk1+G73siskirYqPR9B54/Yyy7wctiskzlmD
         n7kP+hgrXGrjHULG3S3MiGjpUnVpEtbqKmpUGeZWK3Y98BAOAQuLwDQB2aQJ9LZO4cSX
         EKLtAMwvaJ6z5NzPBwOI/NaItjpFSWT/t7+OUkUt4bt/g2z0z+mLsJPPZFvKLDqBTcLF
         3MVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2J16m3JBhK3o86H5FC3pePsPlAfGY4Sh+XHvCjx2klY=;
        b=ZEO02d9RJ5+MJ7La0RR+GUlvFk3EaBzNC/eMyCRyDRctSKiKxaWxpc6OSrQ6VhaUx6
         i12B+LH1QFA2OtLQFZ7QEnQ+un154Tg6SEcHTE2fmDxymALPgKXZlFsTHATkqkOVQyDN
         B0yF/lLhiPklFZs9wl3CDhgD+uy9dy/fbpfk8+WQ9NcRBXagRSpIvQU61KPSfVlLv/nL
         WQkjRDK95O3tQ5esq2alAiB2nX28yTRXPBe0UTlYCtzE6pGfZ5LrQyZDdrker3n+Xjsp
         hEQocyJfqZaeFHk3R1sckGXNDYs8vxwgl9dN/7kjNIzyzjwcLEZfEF4+0yf9Q7Y1apqK
         10fg==
X-Gm-Message-State: AOAM531nFiBoPQhFhbCrhmXpwKeb15L7BcKm3YQkFEKen12cdtu7/Br4
        7JhogYu31Mk+XY/755sWYR4+q7Xqv4xbMwCzuYzLIQ==
X-Google-Smtp-Source: ABdhPJwcRSLkuHG1kkW5pQ8n1j55IpOHcz1Qepo6mqDzIWcjxnU2enWBgtTMvfvKZCY6D9oZa9fzwZkGvgTF7TGApp4=
X-Received: by 2002:a17:906:565a:: with SMTP id v26mr15636859ejr.516.1616764509533;
 Fri, 26 Mar 2021 06:15:09 -0700 (PDT)
MIME-Version: 1.0
References: <20210324081923.20379-1-noltari@gmail.com> <20210324081923.20379-3-noltari@gmail.com>
In-Reply-To: <20210324081923.20379-3-noltari@gmail.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Fri, 26 Mar 2021 14:14:59 +0100
Message-ID: <CAMpxmJUcNvg3dN0DQY1ezzdta6rAKVZSPdS0P+XMwHM7JH=WeQ@mail.gmail.com>
Subject: Re: [PATCH v9 02/22] gpio: regmap: set gpio_chip of_node
To:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>
Cc:     Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Michael Walle <michael@walle.cc>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Mar 24, 2021 at 9:19 AM =C3=81lvaro Fern=C3=A1ndez Rojas
<noltari@gmail.com> wrote:
>
> This is needed for properly registering GPIO regmap as a child of a regma=
p
> pin controller.
>
> Signed-off-by: =C3=81lvaro Fern=C3=A1ndez Rojas <noltari@gmail.com>
> Reviewed-by: Michael Walle <michael@walle.cc>
> Reviewed-by: Andy Shevchenko <andy.shevchenko@gmail.com>
> ---

Acked-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
