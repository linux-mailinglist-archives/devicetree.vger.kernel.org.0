Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 41ACF1C85A0
	for <lists+devicetree@lfdr.de>; Thu,  7 May 2020 11:25:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726350AbgEGJZN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 May 2020 05:25:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57900 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725857AbgEGJZM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 May 2020 05:25:12 -0400
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com [IPv6:2607:f8b0:4864:20::743])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3598C061A10
        for <devicetree@vger.kernel.org>; Thu,  7 May 2020 02:25:12 -0700 (PDT)
Received: by mail-qk1-x743.google.com with SMTP id q7so5262740qkf.3
        for <devicetree@vger.kernel.org>; Thu, 07 May 2020 02:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=JbyrTxjTZIm41hIBopPv7oBGmFhzJlTGvI6JGZoJteY=;
        b=hVcFRSKFl9lmb9j77HI03fHv6Hk1v73kcQa902XWtGd6PrAdnJrdvBGI59aZDmbRnl
         QnTav+0K5mLsSEZQ+KAHILuJauchPaRpwCZ2HSvGeKxlR2yK4cJ0EcXZADu40Fwy4x1Z
         7Td0waIzoSgNxJnjGTqKuH6UjSRss+Omt6RfgBDuoNZUOr1hny/f+F+Kqz8+YBJjRvbF
         VI5sQ5IOLK/ydoybPZPeKcEAJqD5SJUS8bRmzndUxkTm6yJSD6dATGFBmttsyzC366Lk
         ATnnN77ZG4GiXFS++MXDBiLfnEwEZzbIJZrEkoVLXC2F5G/7JO9R6O9saQzfQLTr4med
         V/Tg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=JbyrTxjTZIm41hIBopPv7oBGmFhzJlTGvI6JGZoJteY=;
        b=hVe09ctRddkW8eNCKIa64UyhzCBpWlOrRrwXaJ890sOtuSFIRPx5fzxMbsRZDTqWJ2
         yWgg0qB4BMva0Pn0BiET5bIps4kZKVU2y1W/MAA2bEmtDgf91ZIpd+AVCAF1xf0ebL5t
         0RRp75RCdDH188tAlhIl24H71CfIufteooNntXdnhPQL3ATNZHIPtG1Kgf0bFqicJMYD
         CuWcRszL5yqW0y/pc/moOSk1b3+rQx5XQRsMCghfxnuK2v05m3vzcBGzNUbGdW6zf/KN
         1EyLKyRpHER7shTIpEsIDYswN3OTbhOAKYZZdfnTq/86EsPn3HaCX8omfeSQopQ1mqNx
         xbPw==
X-Gm-Message-State: AGi0PuYoEw8FwWwIPU8YuUVuav6DAhNms+FjIwUW8wapRAJZpikPsKuD
        8mPo4jGN+KQ808HS5I6s2RCxpOyXovR0hS//ShJ43A==
X-Google-Smtp-Source: APiQypLSXck1EaP6FHaf/R4OayTt1mguGYQPHoVpSdiDDIrFzvY+Z5TozNRG3W20rgYO4xwmyohpCkW+LYwhZ5sejQE=
X-Received: by 2002:a05:620a:1289:: with SMTP id w9mr12058283qki.263.1588843511709;
 Thu, 07 May 2020 02:25:11 -0700 (PDT)
MIME-Version: 1.0
References: <20200505140231.16600-1-brgl@bgdev.pl> <20200505140231.16600-6-brgl@bgdev.pl>
 <20200505103105.1c8b0ce3@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
 <CAMRc=Mf0ipaeLKhHCZaq2YeZKzi=QBAse7bEz2hHxXN5OL=ptg@mail.gmail.com> <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
In-Reply-To: <20200506101236.25a13609@kicinski-fedora-pc1c0hjn.dhcp.thefacebook.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Thu, 7 May 2020 11:25:01 +0200
Message-ID: <CAMpxmJWckQdKvUGFDAJ1WMtD9WoGWmGe3kyKYhcfRT2nOB93xw@mail.gmail.com>
Subject: Re: [PATCH 05/11] net: core: provide devm_register_netdev()
To:     Jakub Kicinski <kuba@kernel.org>
Cc:     Bartosz Golaszewski <brgl@bgdev.pl>,
        Rob Herring <robh+dt@kernel.org>,
        "David S . Miller" <davem@davemloft.net>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Felix Fietkau <nbd@openwrt.org>,
        John Crispin <john@phrozen.org>,
        Sean Wang <sean.wang@mediatek.com>,
        Mark Lee <Mark-MC.Lee@mediatek.com>,
        Arnd Bergmann <arnd@arndb.de>,
        Fabien Parent <fparent@baylibre.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        netdev <netdev@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

=C5=9Br., 6 maj 2020 o 19:12 Jakub Kicinski <kuba@kernel.org> napisa=C5=82(=
a):
>
> On Wed, 6 May 2020 08:39:47 +0200 Bartosz Golaszewski wrote:
> > wt., 5 maj 2020 o 19:31 Jakub Kicinski <kuba@kernel.org> napisa=C5=82(a=
):
> > >
> > > On Tue,  5 May 2020 16:02:25 +0200 Bartosz Golaszewski wrote:
> > > > From: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > > >
> > > > Provide devm_register_netdev() - a device resource managed variant
> > > > of register_netdev(). This new helper will only work for net_device
> > > > structs that have a parent device assigned and are devres managed t=
oo.
> > > >
> > > > Signed-off-by: Bartosz Golaszewski <bgolaszewski@baylibre.com>
> > >
> > > > diff --git a/net/core/dev.c b/net/core/dev.c
> > > > index 522288177bbd..99db537c9468 100644
> > > > --- a/net/core/dev.c
> > > > +++ b/net/core/dev.c
> > > > @@ -9519,6 +9519,54 @@ int register_netdev(struct net_device *dev)
> > > >  }
> > > >  EXPORT_SYMBOL(register_netdev);
> > > >
> > > > +struct netdevice_devres {
> > > > +     struct net_device *ndev;
> > > > +};
> > >
> > > Is there really a need to define a structure if we only need a pointe=
r?
> > >
> >
> > There is no need for that, but it really is more readable this way.
> > Also: using a pointer directly doesn't save us any memory nor code
> > here.
>
> I don't care either way but devm_alloc_etherdev_mqs() and co. are using
> the double pointer directly. Please make things consistent. Either do
> the same, or define the structure in some header and convert other
> helpers to also make use of it.

In order to use devres_find() to check if struct net_device is managed
in devm_register_netdev() I need to know the address of the release
function used by devm_alloc_etherdev_mqs(). Do you mind if I move all
networking devres routines (currently only devm_alloc_etherdev_mqs())
into a separate .c file (e.g. under net/devres.c)?

Bart
