Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A24D82D1975
	for <lists+devicetree@lfdr.de>; Mon,  7 Dec 2020 20:28:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726534AbgLGT1B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Dec 2020 14:27:01 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58376 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726516AbgLGT1B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Dec 2020 14:27:01 -0500
Received: from mail-yb1-xb41.google.com (mail-yb1-xb41.google.com [IPv6:2607:f8b0:4864:20::b41])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC531C061285
        for <devicetree@vger.kernel.org>; Mon,  7 Dec 2020 11:25:52 -0800 (PST)
Received: by mail-yb1-xb41.google.com with SMTP id k78so5118574ybf.12
        for <devicetree@vger.kernel.org>; Mon, 07 Dec 2020 11:25:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=8+tZQPXNlLpNRwKXrGfU0wAdVOOOImfIsinmDNKvGmE=;
        b=iu6kvgbq9TtuxPwNho0xw8fX1TKCuQz9gfrzrRgd+PsL1XOXTPo5mUC/cMlKU2VfdH
         x/FL5NxtSdnKNZrLOnsFmCiBYrNUiF9WvMOZUy/qX0ns3pqWKDxVqr4IBiyIotqUJw+r
         nA8JmUpC+H3vRtBZQSIpWYwGtx9Mv29ZtXVIIGsCAjgQCL8NRRZRQhho00b2w9yG7elN
         Sv6UB2LtyZsRF8bsvy7lGjTmNVkxJeS32HJogTbtZBtlKO3pkhHD59i041ecAHyLHt80
         ZqHgPS52tWFFjvpicGK4A3msh3uPdMWvt/QfgZ65tqRzW4VGR5vY/H9D9j2H3LH92LTS
         bSeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=8+tZQPXNlLpNRwKXrGfU0wAdVOOOImfIsinmDNKvGmE=;
        b=UBXH/VMtnQuPelWDXJZsGwMtvjrs5JHAkqIUK7Qat1fpWfUq1R3/5lpf/dY7BEn+Rg
         8pehVdXwehrfnFIXR3ijTXr3sHFKSdSdW0TzVR8ZWazSBDN6BcHFiD+wX/2AuX/OatOE
         BItO1x889QAduKsiLy3UvD6St+HZaKGlCSudhdiGBZ5Lj4LVU/hLOf3dJ8WCb5YeiCdH
         SAoGWW7eOyoC1MkaazmLYpSZ+QGNElmfDzr9XbjcvXsUjWZiumzZGOwJoa46cEQEL2ii
         zmft1SVHj6xz8IfkDG0p0Q3rUiez4ITbKwqBSScoUNd2YQdm9CNEvsQ2fFYsN6lhE9m/
         IUdg==
X-Gm-Message-State: AOAM532fG/1LZA1GUhmTJ4VVjKtV1rwFGjMTIkz/2ZrMPUKhCzE7FgyP
        OzUo6mxSxw1/9OFuzW+TV6eQ9g62gpR3jL6JXO2euw==
X-Google-Smtp-Source: ABdhPJzT6cEkqAvkPYLZ7+/FjCSHl+b/WvFb3DgdXgVmc9Zg+YwA95J3KT2qIX7KYt319m5Xqp/eqxxrhX05Qw/wqqY=
X-Received: by 2002:a5b:bc8:: with SMTP id c8mr24563420ybr.228.1607369151841;
 Mon, 07 Dec 2020 11:25:51 -0800 (PST)
MIME-Version: 1.0
References: <20201121020232.908850-1-saravanak@google.com> <20201121020232.908850-8-saravanak@google.com>
 <20201206072621.GA687065@unreal>
In-Reply-To: <20201206072621.GA687065@unreal>
From:   Saravana Kannan <saravanak@google.com>
Date:   Mon, 7 Dec 2020 11:25:15 -0800
Message-ID: <CAGETcx9L0f5HPgunTf_WRsr9yeaYK1Ku5ESzeb0A1pkn3Yy2aw@mail.gmail.com>
Subject: Re: [PATCH v2 07/17] driver core: Add fwnode_init()
To:     Leon Romanovsky <leon@kernel.org>
Cc:     "Rafael J. Wysocki" <rjw@rjwysocki.net>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Len Brown <lenb@kernel.org>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Ard Biesheuvel <ardb@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Marc Zyngier <maz@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Tomi Valkeinen <tomi.valkeinen@ti.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Grygorii Strashko <grygorii.strashko@ti.com>,
        Android Kernel Team <kernel-team@android.com>,
        ACPI Devel Maling List <linux-acpi@vger.kernel.org>,
        LKML <linux-kernel@vger.kernel.org>,
        linux-efi <linux-efi@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Dec 5, 2020 at 11:26 PM Leon Romanovsky <leon@kernel.org> wrote:
>
> On Fri, Nov 20, 2020 at 06:02:22PM -0800, Saravana Kannan wrote:
> > There are multiple locations in the kernel where a struct fwnode_handle
> > is initialized. Add fwnode_init() so that we have one way of
> > initializing a fwnode_handle.
> >
> > Signed-off-by: Saravana Kannan <saravanak@google.com>
> > ---
> >  drivers/acpi/property.c         | 2 +-
> >  drivers/acpi/scan.c             | 2 +-
> >  drivers/base/swnode.c           | 2 +-
> >  drivers/firmware/efi/efi-init.c | 8 ++++----
> >  include/linux/fwnode.h          | 6 ++++++
> >  include/linux/of.h              | 2 +-
> >  kernel/irq/irqdomain.c          | 2 +-
> >  7 files changed, 15 insertions(+), 9 deletions(-)
>
> In this series, I didn't find any extension of fwnode_init() to be it more
> than simple assignment. This change looks to me like unnecessary churn and
> obfuscation rather than improvement.
>
> "...ops = &...;" is pretty standard in the kernel to initialize ops
> structures.

Subsequent patches make fwnode_init() do more stuff.

-Saravana
