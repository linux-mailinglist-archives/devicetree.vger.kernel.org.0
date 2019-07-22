Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 85E646F896
	for <lists+devicetree@lfdr.de>; Mon, 22 Jul 2019 06:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727722AbfGVEka (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Jul 2019 00:40:30 -0400
Received: from mail-lf1-f66.google.com ([209.85.167.66]:40647 "EHLO
        mail-lf1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726547AbfGVEka (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Jul 2019 00:40:30 -0400
Received: by mail-lf1-f66.google.com with SMTP id b17so25603163lff.7
        for <devicetree@vger.kernel.org>; Sun, 21 Jul 2019 21:40:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=9ncs42SKDIyAXPYsF/YsHVruecC4cl/V7wjDZefhpkw=;
        b=k2bbZ2b2oyVs0xaDgMXk4iGhoEBB5SNlDTYlq+jwwsMrg7WYd24sYe0mDHDlQSvoDX
         vRx/T3SbjcAWD+kP5mFuzsgQ2m5N75YkNxvwp3OBsTs2n/LqG5cH18XvsLuHTHpeChRI
         58rku89FNYqjt0vAT1GR0Om4Y1TenH7EpGIEbx1Rjn+gX6+YnEx8d5l5WmPSWmKkmcc0
         Vy+VW7wLRHdd4wOYN58RXO07SK6yY7S7t8Es8IHlzBB6NdgENlcFfB3Hx77JdfFCB2mU
         KMUBU0zBbQD8GI/T4Y0iRMawLQqjbap4/KZBz40ji+Kc3r6kVLxhakPmoLkXFytcFO/C
         /vaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=9ncs42SKDIyAXPYsF/YsHVruecC4cl/V7wjDZefhpkw=;
        b=bcWERtopgZSuS6R+13byubvB6wIidErXoL0B2oSk6+lkorK7ssTwPHkBUh7b+KIiGC
         X4OHa3+L+zUCC75i6GouA1z4tzUeQbjK9Wv7bLReCN50LYHdx7v72zzEM2W34qhn2LdY
         E+ZHwaZleX/f+7Mw58Y5s5Pl7bg+JofOD806iekBjIEeFbZIRtpn/31ZNSHh4mR7RJ5o
         +JGI1qSNn1CeKSS7StYLbZ1ofVKdCiZmI5l+w2tX5nl69jRg4qRUSQv9P8qbXQuTRLJt
         bWPmZwdJ001Uid841LWBYznjF45MjNn5DCS+mf+ra3bF9mbu/4Ti6EWbq329IF+zEQrv
         KvWw==
X-Gm-Message-State: APjAAAWFlpUPgZaWrNf6O92J/eElkFq9fHQU1hGcAxf1NUugHOZfQioh
        YPY6eoUo6PpqU+wkKBolbKPVTaitIdtjhp7LFE+ZaQ==
X-Google-Smtp-Source: APXvYqwvAIdl55t6ZBi0sof5NGjfaHPKrALdFIaGt9ZEylIuJumZ5agEDn2OAQB5ZWTfVUpTC8ov8KSHgsYAMZ1msnk=
X-Received: by 2002:a19:6602:: with SMTP id a2mr29671361lfc.25.1563770428381;
 Sun, 21 Jul 2019 21:40:28 -0700 (PDT)
MIME-Version: 1.0
References: <1563534631-15897-1-git-send-email-yash.shah@sifive.com>
 <1563534631-15897-2-git-send-email-yash.shah@sifive.com> <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
In-Reply-To: <4075b955-a187-6fd7-a2e6-deb82b5d4fb6@microchip.com>
From:   Yash Shah <yash.shah@sifive.com>
Date:   Mon, 22 Jul 2019 10:09:52 +0530
Message-ID: <CAJ2_jOEHoh+D76VpAoVq3XnpAZEQxdQtaVX5eiKw5X4r+ypKVw@mail.gmail.com>
Subject: Re: [PATCH 2/3] macb: Update compatibility string for SiFive FU540-C000
To:     Nicolas Ferre <Nicolas.Ferre@microchip.com>
Cc:     David Miller <davem@davemloft.net>,
        Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        netdev <netdev@vger.kernel.org>, devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org List" <linux-kernel@vger.kernel.org>,
        linux-riscv@lists.infradead.org,
        Mark Rutland <mark.rutland@arm.com>,
        Palmer Dabbelt <palmer@sifive.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        =?UTF-8?Q?Petr_=C5=A0tetiar?= <ynezz@true.cz>,
        Sachin Ghadi <sachin.ghadi@sifive.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jul 19, 2019 at 5:36 PM <Nicolas.Ferre@microchip.com> wrote:
>
> On 19/07/2019 at 13:10, Yash Shah wrote:
> > Update the compatibility string for SiFive FU540-C000 as per the new
> > string updated in the binding doc.
> > Reference: https://lkml.org/lkml/2019/7/17/200
>
> Maybe referring to lore.kernel.org is better:
> https://lore.kernel.org/netdev/CAJ2_jOFEVZQat0Yprg4hem4jRrqkB72FKSeQj4p8P5KA-+rgww@mail.gmail.com/

Sure. Will keep that in mind for future reference.

>
> > Signed-off-by: Yash Shah <yash.shah@sifive.com>
>
> Acked-by: Nicolas Ferre <nicolas.ferre@microchip.com>

Thanks.

- Yash
