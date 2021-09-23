Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9EF0A416794
	for <lists+devicetree@lfdr.de>; Thu, 23 Sep 2021 23:38:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243370AbhIWVjf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Sep 2021 17:39:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243232AbhIWVjf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Sep 2021 17:39:35 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C424FC061756
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:38:02 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id b20so31934036lfv.3
        for <devicetree@vger.kernel.org>; Thu, 23 Sep 2021 14:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=rjjBaXfqNNUcdJzsG6m5aGab91aTceqgqatTorcUUUI=;
        b=ZCwMPGAXGKLBFRYuYrwbs13zHz/AAN2TIIV242eDN6gPpeRYT94w+/jKCMTRc9DvDh
         Y+0ZGTUgV55tWWY9C86yQ/8vQlR2UmHBvMtGtaFTwuA1rzIdPwdTPRHGb/JRDv9I++Al
         OaIaH6dvUZfN/V2Mrl+H84/1yeY7ra2KZWYpOot5YvYopMjaEexKWuEiThQ2VKpzDtA2
         ac3abxcii/mz/96OIN3XsQvf7GTr40Iu/KAptR+LLLyHrUk1uP+c1kl0BUrF1C2iU+4T
         K5vRZj6KcX55ueG9uEbdING9AWiZX93f3/CGpU2Ktnv56imeGBn/NfD9Og+dCj7e3mBt
         njAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=rjjBaXfqNNUcdJzsG6m5aGab91aTceqgqatTorcUUUI=;
        b=Y3wx3Q7KoHe1qZbAg1tdUHU/LdJfHnXtaNbMjN1gzeQs/8+GDdtJ9LQu11FYE2m88l
         HKhLhlvHUgowyQtUL0DiZWyZIzh+MF9Z3VCPMqavuvhIIfO7ytWNnfv3LKtJkcKtQ7LP
         fpOi9nC5UHb26DJXYtONsSXmnLY1Efrp753kFjWgtGOYnaXN4kLd9iMY49nOQn2YIWz2
         wibdWcsA665Sq5zhpYspRRzcB1BDGIC4i1tUy+87J0G16HBtkbVyjaQWsvfnt9deAGzo
         NzP9S7IMmUws46mwDlE3F/4HMrcBH3etXQj4dOw6JNaEKOdNfjy1uwlh7BOPbaLErmmN
         qCRg==
X-Gm-Message-State: AOAM530NzaBBDTx8GwhTFk0V3dbVg1GqElZJ6Q6tEQS/aKdHAPFZAvV4
        JU1jxs8Yh1n58evY/JRXt2SshSaWALKFYZKLsxDhHA==
X-Google-Smtp-Source: ABdhPJxbuRwPzu0L94rKNOmRj1C3kdI9BQ3JDiEK7xvk4idHyj1uZZzgyv03ChUku7sDjSQ83R91iSJFoFMUdHdnHJA=
X-Received: by 2002:ac2:4d03:: with SMTP id r3mr6525070lfi.339.1632433081198;
 Thu, 23 Sep 2021 14:38:01 -0700 (PDT)
MIME-Version: 1.0
References: <20210921193028.13099-1-prabhakar.mahadev-lad.rj@bp.renesas.com> <20210921193028.13099-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
In-Reply-To: <20210921193028.13099-4-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 23 Sep 2021 23:37:50 +0200
Message-ID: <CACRpkdaJk-G0YE63uvH9C=G3n7k2gZqf9QrwGfAZC2O4hhps=A@mail.gmail.com>
Subject: Re: [RFC PATCH v2 3/4] pinctrl: renesas: pinctrl-rzg2l: Add IRQ
 domain to handle GPIO interrupt
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
Cc:     Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Rob Herring <robh+dt@kernel.org>,
        Magnus Damm <magnus.damm@gmail.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Linux-Renesas <linux-renesas-soc@vger.kernel.org>,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 21, 2021 at 9:30 PM Lad Prabhakar
<prabhakar.mahadev-lad.rj@bp.renesas.com> wrote:

> Add IRQ domian to RZ/G2L pinctrl driver to handle GPIO interrupt.
>
> GPIO0-GPIO122 pins can be used as IRQ lines but only 32 pins can be
> used as IRQ lines at given time. Selection of pins as IRQ lines
> is handled by IA55 (which is the IRQC block) which sits in between the
> GPIO and GIC.
>
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>

Why can't you just use the hierarchical IRQ domain handling inside
gpiolib?

See for example drivers/gpio/gpio-ixp4xx.c for an example of how this
is used.

Yours,
Linus Walleij
