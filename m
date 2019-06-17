Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5389F47F92
	for <lists+devicetree@lfdr.de>; Mon, 17 Jun 2019 12:22:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727545AbfFQKWy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Jun 2019 06:22:54 -0400
Received: from mail-lj1-f194.google.com ([209.85.208.194]:36051 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726969AbfFQKWy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Jun 2019 06:22:54 -0400
Received: by mail-lj1-f194.google.com with SMTP id i21so8750605ljj.3
        for <devicetree@vger.kernel.org>; Mon, 17 Jun 2019 03:22:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=g2oUEZzHP2whF33vnG7n908pNLNyu4ePU235OE7To5w=;
        b=g+ByyIO85CiT/cyls2vY5BdJ8YR5+16TYt0U66RxbYBWithsj4AA58h393JNAXdY00
         5Eu2+TraYBbgESsrbtnwSAr9vFoLM6ZFcexKX8MswlFpuScPljErsERZ9c6PSxbGP5d2
         YN04GWhsvjiSFSKzdmUrEyUE12f07l0nsGALcV7pct9cBoGBneYdcFHxos1w4RcvnMi2
         USPzjMwlPVjdt+YML47NYRfUR+ZsmupQwS1XVHT4um5f8eLihBmDK6aL31q+Lr9CxboB
         zsvqEQ35rA7zBApMEiu+KkaRannwbR0Ag778K4XtCk4mc6CzmtKAhJxxyXY0riSaFlnf
         XYVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=g2oUEZzHP2whF33vnG7n908pNLNyu4ePU235OE7To5w=;
        b=BAOj6H6VCrRWu5MhOTsKePxUmYojlYs4h3+d1BW5zQa5GbF78o6BVfv3x1pdGzQKA8
         OxQgsX30TW9anKghMpmiLEDrjZtClR+ZeCtq3hRLJTMyn2tT8H/N7V1rQFY0WNmg4hKh
         2rpmSS2PZ0hoOALB5VaJKWWDgZADhrr1BMcHplmDqTXIr/jtkSFFpIuAKMGBi7q19CCY
         vsedXzTAT4oyIdNupiXhNs+d4crAIps0K9PjPy2Im9LIBTGj0YOAD8i+CHlYXpuRkmDq
         5MWOfY0Z7KweSO0AV04Js9WzDLe2d9rRSFMbwDD+HYtp04tbv/M1VdrNfc1/BX4oPajN
         i4dQ==
X-Gm-Message-State: APjAAAVlyDKURsxbuKp+DKjnkeesqRZsBfEpUPRRYvw12vyf5qlwfvRJ
        jyhnRC/+iRQeNPLemXX2iH4cZxJmaC9Cttqu8o5AlQ==
X-Google-Smtp-Source: APXvYqx4hPynEVTRoMbFzeRC1RMi/6+9FpSi2w64JI1pMvwgPj2Nh1KEyMr6rGcUZcLvX4skV4KJLmtmNmIY4M2KLQ4=
X-Received: by 2002:a2e:9c03:: with SMTP id s3mr43444283lji.209.1560766972421;
 Mon, 17 Jun 2019 03:22:52 -0700 (PDT)
MIME-Version: 1.0
References: <1560745167-9866-1-git-send-email-yash.shah@sifive.com>
 <mvmtvco62k9.fsf@suse.de> <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1906170252410.19994@viisi.sifive.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Mon, 17 Jun 2019 15:52:16 +0530
Message-ID: <CAJ2_jOH-CacU9+Lce80PQzG1ytxvSZmjfSMwL9=kbXpWxyU96Q@mail.gmail.com>
Subject: Re: [PATCH v2 0/2] Add macb support for SiFive FU540-C000
To:     Paul Walmsley <paul.walmsley@sifive.com>
Cc:     Andreas Schwab <schwab@suse.de>,
        David Miller <davem@davemloft.net>, devicetree@vger.kernel.org,
        netdev <netdev@vger.kernel.org>, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Nicolas Ferre <nicolas.ferre@microchip.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 17, 2019 at 3:28 PM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> Hi Yash,
>
> On Mon, 17 Jun 2019, Andreas Schwab wrote:
>
> > On Jun 17 2019, Yash Shah <yash.shah@sifive.com> wrote:
> >
> > > - Add "MACB_SIFIVE_FU540" in Kconfig to support SiFive FU540 in macb
> > >   driver. This is needed because on FU540, the macb driver depends on
> > >   SiFive GPIO driver.
> >
> > This of course requires that the GPIO driver is upstreamed first.
>
> What's the impact of enabling CONFIG_MACB_SIFIVE_FU540 when the GPIO
> driver isn't present?  (After modifying the Kconfig "depends" line
> appropriately.)
>
> Looks to me that it shouldn't have an impact unless the DT string is
> present, and even then, the impact might simply be that the MACB driver
> may not work?

Yes, there won't be an impact other than MACB driver not working.
In any case, without GPIO driver, PHY won't get reset and the network
interface won't come up.

>
>
> - Paul
