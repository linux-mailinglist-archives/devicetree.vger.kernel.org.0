Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E8F8741D9FD
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 14:39:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350961AbhI3Mk6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 08:40:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37530 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350957AbhI3Mk6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Sep 2021 08:40:58 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF128C06176C
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 05:39:15 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id 76so1861943uau.5
        for <devicetree@vger.kernel.org>; Thu, 30 Sep 2021 05:39:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q3ynaUTKskJDXabMRA8M/CjVLZp++/ril0ecQ1aq2dY=;
        b=kBh7ufbntFSP7E+NK6mvw0xL134xEEb+diXvRYNv9ETVt1mik8a/fkYTk8rxLQIBgf
         EhrhcxFRBsNV4an1gix72qjx+2PkBPniXVN/8+lQlWWrpwGtrTTaguGyy53r5F7SFBoR
         7DmdtIZ35qvBsKYL1M9Jc75U13UUNvAp/iOdQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q3ynaUTKskJDXabMRA8M/CjVLZp++/ril0ecQ1aq2dY=;
        b=nznjulSlrDEVumBURj71YoHWbeWvJ+USoxqc88SVgUuXlkqS79GblBa+Gtln0BViCF
         1yiPfeZuQF/vKKuxZ8r9g2Wzlo9n9p9PJJhzP5JD4pggH/XuylXursVEaSlUDhujQBTl
         Lz0D8IEhES9I6P6tvoVm5Jxh9pc8ld9gvM3BW7gEfFDzm7mWfEGl2+JMqmVyHYg6+8u1
         sJYWQNNnnvMIlAUgbaSUohMomtUitz7ZjfcmsGy2q2+HJDIBFysKUslnR1J2T50xahNV
         ie5sn+sLb6bExdmLqUjI6mZK660/ZT6UTAmV/6mc4T4OfEmaqtljU17Rg9B89jy7rLYp
         IdlA==
X-Gm-Message-State: AOAM532FS7/XcXo1yCdxqdyLHAcuY34dcB6QHPauN5PcWtI5FfCWXLxE
        SBSrpd7Rkv4HDYOdfhz1Zh9QC1oiVmw8Cb6t+yESTQ==
X-Google-Smtp-Source: ABdhPJwGMrNEctHNKHmRvPXw5OWYAA/qckkWEMgUdpJbbj3guwYnbKilC51mbjQpeKn1zl7PD5I5vYao/yM6fpZN+IM=
X-Received: by 2002:a9f:3881:: with SMTP id t1mr4979640uaf.127.1633005554858;
 Thu, 30 Sep 2021 05:39:14 -0700 (PDT)
MIME-Version: 1.0
References: <20210914100415.1549208-1-daniel@0x0f.com> <20210914100415.1549208-3-daniel@0x0f.com>
 <87zgs7vavl.wl-maz@kernel.org> <CAFr9PXnC4hQw5_0TtciKvqF7s=4axJ5Yrq80RXGcY4VvT1Ac2A@mail.gmail.com>
 <87wnnbv6ac.wl-maz@kernel.org> <CAFr9PXmA07Up_wfJzzgZeYwE5ZrwnLqjBvLG3CERGHOLeay0Cg@mail.gmail.com>
 <87lf3quydn.wl-maz@kernel.org> <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
In-Reply-To: <CACRpkdYLURJCopH3hDuZTY8ce9-OxakELyFqwqkAVCsYmzF5kg@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Thu, 30 Sep 2021 21:39:04 +0900
Message-ID: <CAFr9PXn3hEpmAprP2XhnbX2t9+pe3Lihc2A+EGzdmv9LM5pXOg@mail.gmail.com>
Subject: Re: [PATCH 2/3] irqchip: SigmaStar SSD20xD gpi
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Marc Zyngier <maz@kernel.org>, DTML <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Linus,

On Wed, 22 Sept 2021 at 03:23, Linus Walleij <linus.walleij@linaro.org> wrote:
> I suppose it could be solved with a patch that take this route only if
> we're not using device tree or ACPI?

Is that something I could do with a small patch in my series or is
there the potential to totally break everyone else's stuff to make
mine work?

Thanks,

Daniel
