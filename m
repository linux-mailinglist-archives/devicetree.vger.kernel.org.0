Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 81FB534CDE4
	for <lists+devicetree@lfdr.de>; Mon, 29 Mar 2021 12:26:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232024AbhC2KZg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Mar 2021 06:25:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231522AbhC2KZI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Mar 2021 06:25:08 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 21E90C061756
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 03:25:08 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id m12so17613250lfq.10
        for <devicetree@vger.kernel.org>; Mon, 29 Mar 2021 03:25:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=1G3I9QVPXwPvRfI745XP5a1d+4zxYuxWK2JaQBgRm0k=;
        b=avwZeUFczkCHkutqTbzePqfCEm1OJ7T/Fp4MuJSCvvr6vB4y4WsLeHrQlud93Z6WJC
         6B1m9hUlOp2Lnfgl1Gfyj58i5bh8z16NHpKKAydOS2qZxFn+p+ao44842ybeieMy4jSU
         bP2aNz+mnLoxIYbZEhDYeE5wwVYSXFEu+HQuhUdbFVD2ZnYC/7t7Rna9hLgSW6dsaZQf
         YByLXE88acpGINxfHetL5CaNzp/tjw+jgvuAMyIWT3XpQSS+MuNvm7LIdP61XKwFxL1j
         Aj5Z467dm4ByAbJQxpkxI9VvEpq0aYbHUvwMprsFEjHJMj3tthqlONey1lZrm1NPEgpY
         6xKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=1G3I9QVPXwPvRfI745XP5a1d+4zxYuxWK2JaQBgRm0k=;
        b=RZEYWI19eeERDzpkQupbCBMy8s1+whvGq+JkCHYxC4cyKFZTH0gosVPqFSAtRvkQQ/
         KxtCAmQWyLVoae7IqPB5hkla4ye8OpIGkEwdXnrroY916QGggfOhWP0Gb3gamv4FUl34
         J9nBkqLwVcaI4jo91blpAMBVXLYg+RkHFVzGHTpU8j+0teYHmEFVZIuOV67isOYzLIb1
         5qGk743quVogGYw6Ba9bK9La40fm0/2j0epWB0ThphsEGdx3jroEe/8NDUkIo1TW32tm
         PuliuVHbSUG0hjmkh/CVr8Au8Uy3UbrzpO459J+Z2Lg5DSVyvyGZYjoLGcvju3at169v
         NpHA==
X-Gm-Message-State: AOAM531pAsBbxye28aFE1RMMaZqnHxgijCyd6reSRXtlhI1e1oTmV46H
        xZKhLd/E+TFMvghTP3XnC8IFeu8uNhawbbyPRvj7Cg==
X-Google-Smtp-Source: ABdhPJx0PLBdZxf9K3TpR+fo0wrWxnHmOzpPaWyq5FE+4WoZMRpUjmhuw/h3Ad0guqZS/O6u/VLbZPpmH68mMFUijHw=
X-Received: by 2002:a19:548:: with SMTP id 69mr15859805lff.465.1617013506599;
 Mon, 29 Mar 2021 03:25:06 -0700 (PDT)
MIME-Version: 1.0
References: <20210324081923.20379-1-noltari@gmail.com> <20210324081923.20379-2-noltari@gmail.com>
 <CAMpxmJXVnKHXvvaaObTiHemxfC77u-zikPfEtprQ7qdDn9Z0cg@mail.gmail.com>
In-Reply-To: <CAMpxmJXVnKHXvvaaObTiHemxfC77u-zikPfEtprQ7qdDn9Z0cg@mail.gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 29 Mar 2021 12:24:55 +0200
Message-ID: <CACRpkda7oHHFe38oHuLXP_9OgEonc46AuXsXYv8br859-j6+pw@mail.gmail.com>
Subject: Re: [PATCH v9 01/22] gpio: guard gpiochip_irqchip_add_domain() with GPIOLIB_IRQCHIP
To:     Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     =?UTF-8?B?w4FsdmFybyBGZXJuw6FuZGV6IFJvamFz?= <noltari@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Michael Walle <michael@walle.cc>,
        Florian Fainelli <f.fainelli@gmail.com>,
        bcm-kernel-feedback-list <bcm-kernel-feedback-list@broadcom.com>,
        Jonas Gorski <jonas.gorski@gmail.com>,
        Necip Fazil Yildiran <fazilyildiran@gmail.com>,
        Andy Shevchenko <andy.shevchenko@gmail.com>,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        arm-soc <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Mar 26, 2021 at 2:14 PM Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:

> I suppose this will go through the pinctrl tree.

Yups I applied them.

To make things mess-resistant I have applied them on an
immutable branch and then merged that to devel:
https://git.kernel.org/pub/scm/linux/kernel/git/linusw/linux-pinctrl.git/log/?h=ib-bcm63xx

If we get problems between GPIO and pin control you can
pull this in, but let's hope not!

Yours,
Linus Walleij
