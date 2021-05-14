Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 336A9380859
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 13:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229554AbhENLUo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 07:20:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhENLUl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 07:20:41 -0400
Received: from mail-ot1-x32f.google.com (mail-ot1-x32f.google.com [IPv6:2607:f8b0:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C503C061574
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 04:19:30 -0700 (PDT)
Received: by mail-ot1-x32f.google.com with SMTP id u25-20020a0568302319b02902ac3d54c25eso26202110ote.1
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 04:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YjgfjUX2VlTG4CiG2n/lTHEHRkptr4e0OLOANIP608s=;
        b=nzC03ppPbo+K138xTT5Kow2qAiZL7LbzOrfb0IN+LTsSrvpoz8hp8Bi8tg+p4xjdR0
         b21bMpAfQhyvEPkU9Q4JmBguRJvQHy6KGT91P1P3fKsIj7HjnbFpqERG0M3fDDed9gIt
         TTK4SrPp2T7/ItnZVr7mezppBQ7RAyNLwBBvb+Uq2QaKvJSLlftAr4e+RwY3PcI5Pb2/
         zldfzMuPPvFDNwWBt5pXIJiAKsujUvPLO7pAgHjDxt6cDBBDprboPWdxEyIkempz9Fgo
         tNNlbnN69sQXtthlUJzakuX/pwM0qKLFMhzYeXCY9MiejPyEqEkRN5JjlfjH0NWWjDk7
         nzig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YjgfjUX2VlTG4CiG2n/lTHEHRkptr4e0OLOANIP608s=;
        b=r6UoYXH2QKjYUJmG49up+0pQ4bH5CVbwWavb+QMXFM8RMbZaFzZLyyDMYWol7h+RtN
         6f7V+ysaoZqC7hl3lpPvSj5zgLlaIqvkbjRrzWm9ve0WCbopRfaAw9wAW6SladqVdSvF
         TLTGv725AFHMOxlSj531OY8Nh7pM0Fjio6Rpn7r8u2a3R94yzZWrKPXy9lb5PZQ8O6nn
         /vbe9cLEm5KTXCTvjmSkqRi8KCdhJljf+Y6kZeZCHfNmyRu3qGXJPKglK+icMlH2dnIW
         tC6/QHmSCBuSOyqRcmznq1xhE0bDfSd0xEPVbNF7CMFdWZDo5V7evvXw7pdgHJ3el8SE
         ZEWQ==
X-Gm-Message-State: AOAM532KRH29uB3fzxL63aiCWj14aNbhh9xxnnOeEpzgVzGlN1Mff0cN
        ytJJZ17si7HzAcUhirxlTCPtpHqvIj8Mq3yhJws=
X-Google-Smtp-Source: ABdhPJxZqT9WPVbGt2234S9Iu/njvLuxyojyILmFzUoONy9Dc6Z0JNvjG4M8ShyLK0wqh4Y6I6T3jDGTCBJARnEjKeA=
X-Received: by 2002:a9d:2ae8:: with SMTP id e95mr40372267otb.72.1620991169752;
 Fri, 14 May 2021 04:19:29 -0700 (PDT)
MIME-Version: 1.0
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com> <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
In-Reply-To: <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Fri, 14 May 2021 13:19:18 +0200
Message-ID: <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some improvements
To:     Vinod Koul <vkoul@kernel.org>
Cc:     Kishon Vijay Abraham I <kishon@ti.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-phy@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-staging@lists.linux.dev,
        Greg KH <gregkh@linuxfoundation.org>,
        NeilBrown <neil@brown.name>,
        Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 12:46 PM Vinod Koul <vkoul@kernel.org> wrote:
>
> On 08-05-21, 09:09, Sergio Paracuellos wrote:
> > Hi all,
> >
> > This series contains some improvements in the pci phy driver
> > for MT7621 SoCs.
> >
> > MT7621 SoC clock driver has already mainlined in
> > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> >
> > Because of this we can update schema documentation and device tree
> > to add related clock entries and avoid custom architecture code
> > in favour of using the clock kernel framework to retrieve clock
> > frequency needed to properly configure the PCIe related Phys.
> >
> > After this changes there is no problem to properly enable this
> > driver for COMPILE_TEST.
> >
> > Configuration has also modified from 'tristate' to 'bool' depending
> > on PCI_MT7621 which seems to have more sense.
>
> Applied 2-6, thanks

Thanks, Vinod.

Greg, can you take patch 1 through your tree?

Best regards,
    Sergio Paracuellos

>
> --
> ~Vinod
