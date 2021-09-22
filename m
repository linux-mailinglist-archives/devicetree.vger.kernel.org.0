Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 34FEE414C79
	for <lists+devicetree@lfdr.de>; Wed, 22 Sep 2021 16:53:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236313AbhIVOy3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Sep 2021 10:54:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236283AbhIVOy2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Sep 2021 10:54:28 -0400
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EF490C061757
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:52:57 -0700 (PDT)
Received: by mail-vk1-xa33.google.com with SMTP id 3so1258937vkg.7
        for <devicetree@vger.kernel.org>; Wed, 22 Sep 2021 07:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=0x0f.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Q1oCf+eHGJrK7EI/Ic0EVhuYku3kuJSCAesoEfoye3Y=;
        b=reJyHpYXgjQBEvg7LsrohN/MjqehG+nhoB+6QIJ/p1WGqOQC/23PUsm4+RvVgCh6ze
         rM7AQVgfAB0ZXhRtI+AilG68t41T9RvNk3cwIpbKSDZC1hnC0vak2ZQ7yT4YiNNOB1OV
         7Ipc9kb2ymZ+PslbAfrhgsjxHQi3JxGaHC0mQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Q1oCf+eHGJrK7EI/Ic0EVhuYku3kuJSCAesoEfoye3Y=;
        b=znIJB7Y8+v7GIMfMtesFBS9+YirEr1zcKZYolb47X3SedLMI54iZ0nfNxgRUx4I3I9
         hgNwPZI0VlWQo/Sg7jyPudcCt9z/ZxEwI5jo6P9Vynljamq+S7Gs599wMyGsUElPk8N5
         PcZuPMdGzl9aZL3iZFKGJ5+IbYASFiCf60bvRVxXNAk0RonLs9IH/oEQ0HlyR2BixrIl
         GU+bSKmz2jgwlBDXG3ob88Kn5oPwrcDBBkrIu8JebbXa8UTiwGVV2CgLoSxiY1w2JXdD
         oli0IXLYP09DmmTKxDcsyGKhjQ1XVvtn6mrNxR/4OiPTuyLsY6haEfUwTgPbKyhME8IU
         YUIQ==
X-Gm-Message-State: AOAM533qS/qCNg5HecUeiz9cubMHGEGz5bTvn/UbzhvyHwGXkWEoQ75E
        WRrzQMmVoARAdV3EBrfnfzwI/3JeuuXKH2FSXS+A7g==
X-Google-Smtp-Source: ABdhPJzQVpZA8a6uhZrO0hizt6cp09lmop7KUzkDiZFpZHLZXjUjfGWp054tdL2v8+Nn2MdHo2yF9uRalc4rfiorGus=
X-Received: by 2002:a1f:9f10:: with SMTP id i16mr134800vke.0.1632322376933;
 Wed, 22 Sep 2021 07:52:56 -0700 (PDT)
MIME-Version: 1.0
References: <20210717045627.1739959-1-daniel@0x0f.com> <CACRpkdbE+_DJFhBCmtz5JwJupf7QkkWZhXrgf1KG_3rPqvEm0w@mail.gmail.com>
 <CAFr9PXmFHanrx4Frg3hQwo-RbAY-UXxC=FOAj++cshSHa99z3g@mail.gmail.com>
 <CAMpxmJUoG7qPhy2CxapCn1M=w_AssOQsEmyvXO18OpedM6hBjw@mail.gmail.com>
 <CAHp75VdU52rwKY3AA0Nxt3VGOFr71XtjCDqZbSxR4GNczSqihQ@mail.gmail.com> <CAMpxmJUSvBSa=T1a1Bq_YhAGib9BcXf4xYMSOfyprHbG0t_QWw@mail.gmail.com>
In-Reply-To: <CAMpxmJUSvBSa=T1a1Bq_YhAGib9BcXf4xYMSOfyprHbG0t_QWw@mail.gmail.com>
From:   Daniel Palmer <daniel@0x0f.com>
Date:   Wed, 22 Sep 2021 23:52:46 +0900
Message-ID: <CAFr9PX=OX7wc6ixb5qXgD=g9+MVO86P=oRZFZQSLKX7ugL-X+g@mail.gmail.com>
Subject: Re: [PATCH 00/10] gpio: msc313: Add gpio support for ssd20xd
To:     Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     Andy Shevchenko <andy.shevchenko@gmail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Rob Herring <robh@kernel.org>,
        Romain Perier <romain.perier@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Bartosz,

On Wed, 22 Sept 2021 at 21:50, Bartosz Golaszewski
<bgolaszewski@baylibre.com> wrote:
> > > I only have a part of this series in my inbox and patchwork doesn't
> > > have it at all - can you resend it with me in Cc?

I just checked and the series is in patchwork  -
https://patchwork.ozlabs.org/project/linux-gpio/patch/20210717045627.1739959-2-daniel@0x0f.com/
Unless I got the wrong patchwork?

> At the same time - is it too much to ask of people to just use
> scripts/get_maintainer.pl?

Sorry about that. scripts/get_maintainer.pl can return tons of people,
I get cc'd on stuff I have no idea about because I touched a line
somewhere, so I generally try to work out who needs to see a series
from the places touched and the get_maintainer.pl output instead of
just spamming everyone. In this case I thought Linus was the subsystem
maintainer as he took the initial series for this driver and I took
the mail recipients list from that series and pasted it in.

I'll be more careful next time.

Thanks,

Daniel
