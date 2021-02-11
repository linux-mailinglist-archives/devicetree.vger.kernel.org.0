Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 10C6A3192E0
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 20:14:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231261AbhBKTOX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 14:14:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44694 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229708AbhBKTOT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 14:14:19 -0500
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15FE4C0613D6
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 11:13:38 -0800 (PST)
Received: by mail-qt1-x833.google.com with SMTP id o21so4996546qtr.3
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 11:13:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=D9fKhUI7so0qmWsIyDL2uQwyf5mTHXQCizKg/4vcqpo=;
        b=lJ5Zzw2TiP/kA7ZkNGmYepqT6SHZgeNUb3bqrGdFf70rxw4bgsf77veFYA2hDzB4f+
         06OhlwiaJ6TCUjDzB0CtHZrh15XZetEFVhFZLDFCfQlHR3D+gXl8USEm/OFKU/Dmu5m6
         u7dXazmcXLOA75KnPrzv/YvPJIB36r7ViliQRdMpEMZXc3ghCq45iaNe/9Mz6S/u4/GF
         1+Art1Lmc6XTPzr7eFsw8pVp2O30lof8vm65M68AfLvXD7OOEUVnGhf0+oJa85aYepCD
         YH4nuxYJ1qdtblUYWb6Z9M4x17UQt1gQVWfBfjNgkd+e6EAOse8uv4/WFfbRVkHTnQpR
         H1pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=D9fKhUI7so0qmWsIyDL2uQwyf5mTHXQCizKg/4vcqpo=;
        b=U8CM2bp1RedEds+92RlnLdPMNNEis0dXxYo/S70uyTcVUolN/+vbSzrz/rnY69O9jO
         K5CsM+PpXa5eh41geDfDOj54SHRxccE6r6IZW1FyJ9yIkxS9KMzg3/+pzGJL2BsrzU3s
         mN6cUuDdQRk2ziAp6K6ybvVvAKOBw99fsnJM9f96J9Q0x2QjWhZwO3vei8h8c9QuzGtL
         eNWC77/3ZDQVKDyPseHQMHmeVUsJ5RiksjAQxBwvzBKGE5yINVcl7inXMkQ2xst+ITIV
         jE5s/HXygMU+9OPGZ1CeAwGvIQSbRNYvMQvMjTAtY2n1YECzBdRJAmytPpe3K/YxqPl/
         uC8g==
X-Gm-Message-State: AOAM533R94GzBww0ZJN61pRP4sd4y1cmEl1K3vEnUSj1oJJiwW8CjYXo
        JoGWCVPqbnNazdqjPE//b+mRqm5CGeZAoS4S9h/aEA==
X-Google-Smtp-Source: ABdhPJzUhTaWmBdT1xlPCrKHuTjitHZ/jzE/lk4wud/567lLHBdRdKGZj3ugx5RlYwUnTJR7n/SKnlw273HmJcEQPcQ=
X-Received: by 2002:ac8:5c41:: with SMTP id j1mr8887277qtj.306.1613070817304;
 Thu, 11 Feb 2021 11:13:37 -0800 (PST)
MIME-Version: 1.0
References: <1612950500-9682-1-git-send-email-stefanc@marvell.com>
 <1612950500-9682-13-git-send-email-stefanc@marvell.com> <20210210.152924.767175240247395907.davem@davemloft.net>
 <CO6PR18MB3873D8B7BE3AE28A1407C05BB08C9@CO6PR18MB3873.namprd18.prod.outlook.com>
 <YCU864+AH6UioNwQ@lunn.ch>
In-Reply-To: <YCU864+AH6UioNwQ@lunn.ch>
From:   Marcin Wojtas <mw@semihalf.com>
Date:   Thu, 11 Feb 2021 20:13:24 +0100
Message-ID: <CAPv3WKd48fiZmdnP+NN_FRCT1h6xmu9zO4BWAz_pgTXW2fQt9w@mail.gmail.com>
Subject: Re: [EXT] Re: [PATCH v12 net-next 12/15] net: mvpp2: add BM
 protection underrun feature support
To:     Andrew Lunn <andrew@lunn.ch>
Cc:     Stefan Chulski <stefanc@marvell.com>,
        David Miller <davem@davemloft.net>,
        "netdev@vger.kernel.org" <netdev@vger.kernel.org>,
        "thomas.petazzoni@bootlin.com" <thomas.petazzoni@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "kuba@kernel.org" <kuba@kernel.org>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "rmk+kernel@armlinux.org.uk" <rmk+kernel@armlinux.org.uk>,
        "atenart@kernel.org" <atenart@kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "sebastian.hesselbarth@gmail.com" <sebastian.hesselbarth@gmail.com>,
        "gregory.clement@bootlin.com" <gregory.clement@bootlin.com>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

czw., 11 lut 2021 o 15:19 Andrew Lunn <andrew@lunn.ch> napisa=C5=82(a):
>
> On Thu, Feb 11, 2021 at 08:22:19AM +0000, Stefan Chulski wrote:
> >
> > >
> > > ---------------------------------------------------------------------=
-
> > > From: <stefanc@marvell.com>
> > > Date: Wed, 10 Feb 2021 11:48:17 +0200
> > >
> > > >
> > > > +static int bm_underrun_protect =3D 1;
> > > > +
> > > > +module_param(bm_underrun_protect, int, 0444);
> > > > +MODULE_PARM_DESC(bm_underrun_protect, "Set BM underrun protect
> > > > +feature (0-1), def=3D1");
> > >
> > > No new module parameters, please.
> >
> > Ok, I would remove new module parameters.
> > By the way why new module parameters forbitten?
>
> Historically, module parameters are a bad interface for
> configuration. Vendors have stuffed all sorts of random junk into
> module parameters. There is little documentation. Different drivers
> can have similar looking module parameters which do different
> things. Or different module parameters, which actually do the same
> thing. But maybe with slightly different parameters.
>
> We get a much better overall result if you stop and think for a
> while. How can this be made a generic configuration knob which
> multiple vendors could use? And then add it to ethtool. Extend the
> ethtool -h text and the man page. Maybe even hack some other vendors
> driver to make use of it.
>
> Or we have also found out, that pushing back on parameters like this,
> the developers goes back and looks at the code, and sometimes figures
> out a way to automatically do the right thing, removing the
> configuration knob, and just making it all simpler for the user to
> use.

I think of 2 alternatives:
* `ethtool --set-priv-flags` - in such case there is a question if
switching this particular feature in runtime is a good idea.
* New DT/ACPI property - it is a hardware feature after all, so maybe
let the user decide whether to enable it on the platform description
level.

What do you think?

Best regards,
Marcin
