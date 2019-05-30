Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 89F942EF6B
	for <lists+devicetree@lfdr.de>; Thu, 30 May 2019 05:55:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731592AbfE3Dz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 May 2019 23:55:27 -0400
Received: from mail-vs1-f67.google.com ([209.85.217.67]:41787 "EHLO
        mail-vs1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2387736AbfE3Dz1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 May 2019 23:55:27 -0400
Received: by mail-vs1-f67.google.com with SMTP id g24so1452010vso.8
        for <devicetree@vger.kernel.org>; Wed, 29 May 2019 20:55:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=X6NmEU4MLUbNQzagh8gX4QP4iLT9rJQT3hOjSe8ifDc=;
        b=PJS5UiBmoSH/3DJyhxGOMZG78bXAyiUF4XTie51QZ7dbgrXI1zCLR3U8Nl+oOK36ky
         kgARiC+iGA0i1LgHSOLzmR9shhXniAyk1IfzwKi+XPwvVHgfE03N/vGUPMxHyaxIlKx3
         QNXmFoxqGrKJOjqsHXU1/mJ/s9zGASzYh6YhWWPJy6CFDLEx25e8KxjsT3NBDb597sbl
         SA14y4kkxHlk4s0JDfoa3UNLmgvUQSpA1IyfYq+YUB2WaLr6p18KtYY4J1x5AtI/K0FR
         Coo5aBmnhdCVaZKubHKwmLDOMc/9dOUm9pAKRbPZ+t8jViw0uJPDgOKW9vhTA10HSM+E
         3iHw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=X6NmEU4MLUbNQzagh8gX4QP4iLT9rJQT3hOjSe8ifDc=;
        b=L7MPxHwP/KCDljhkx19u7si+/8vwDBKJ0eo5/AAbDxDG9c5b7jcfMMoIx2oG9elGJ4
         0CuY7PvdPCWtc1xyG2VzX9Mr4j1MfIagKw5jz08nGmCe5MnmuQrSpKdeDQRcIA9iPDO0
         62zxkvZvDHV+QNnovLfc5heUg0rr1ZCRqBzLISd40qluj21xEhRyWKaq0GZAKo3zEvl1
         JlWBPVt/WevI3G/+dQePF/5riAKLJilVcdJgB64BO1nZMDn78gJLABQb4Sin1Ok+tqXO
         mlE+EEZJUjZkqYOFjxD1vHwc/lTT0pTcvj0J8ck5dRjSD2IOs/DwEHmduEs9zvgEmGhK
         yFig==
X-Gm-Message-State: APjAAAVM/nEYPiQtwCscn0K65JHPCMAQOwY2SV9PCKyc5TqFI7yBL2ZO
        TgHhXDH5ru5D4/lZKAXcgb4hdmZgPHA7NCyM9Cew2A==
X-Google-Smtp-Source: APXvYqyyO5WeLJ5dPlMguAquOq6SsWs0QbvlKAigq7mHtha3TTqf4stH0xxhv4lIkvOmn1XRkHOYt60//4J8swpgBXI=
X-Received: by 2002:a67:c84:: with SMTP id 126mr769392vsm.178.1559188525890;
 Wed, 29 May 2019 20:55:25 -0700 (PDT)
MIME-Version: 1.0
References: <1559104047-13920-1-git-send-email-sagar.kadam@sifive.com>
 <1559104047-13920-4-git-send-email-sagar.kadam@sifive.com> <20190529155346.GA18059@lunn.ch>
In-Reply-To: <20190529155346.GA18059@lunn.ch>
From:   Sagar Kadam <sagar.kadam@sifive.com>
Date:   Thu, 30 May 2019 09:25:14 +0530
Message-ID: <CAARK3HnRq_pZHsS0CMbDx==P0VGb1V3AZyg078bhD49+i70TqA@mail.gmail.com>
Subject: Re: [PATCH v8 3/3] i2c-ocores: sifive: add polling mode workaround
 for FU540-C000 SoC.
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>, peter@korsgaard.com,
        Palmer Dabbelt <palmer@sifive.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Linux I2C <linux-i2c@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 29, 2019 at 9:23 PM Andrew Lunn <andrew@lunn.ch> wrote:
>
> On Wed, May 29, 2019 at 09:57:27AM +0530, Sagar Shrikant Kadam wrote:
> > The i2c-ocore driver already has a polling mode interface.But it needs
> > a workaround for FU540 Chipset on HiFive unleashed board (RevA00).
> > There is an erratum in FU540 chip that prevents interrupt driven i2c
> > transfers from working, and also the I2C controller's interrupt bit
> > cannot be cleared if set, due to this the existing i2c polling mode
> > interface added in mainline earlier doesn't work, and CPU stall's
> > infinitely, when-ever i2c transfer is initiated.
> >
> > Ref:
> >       commit dd7dbf0eb090 ("i2c: ocores: refactor setup for polling")
> >
> > The workaround / fix under OCORES_FLAG_BROKEN_IRQ is particularly for
> > FU540-COOO SoC.
> >
> > The polling function identifies a SiFive device based on the device node
> > and enables the workaround.
> >
> > Signed-off-by: Sagar Shrikant Kadam <sagar.kadam@sifive.com>
>
> Hi Sagar
>
> When you repost, you are supposed to add any reviewed-by, or acked-by
> tags you received.

Sorry Andrew, I missed it.
I will repost it, with acked by Andrew Lunn as you had Acknowledged it earlier
>
>      Andrew

Thanks,
Sagar
