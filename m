Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7A2F42C86DE
	for <lists+devicetree@lfdr.de>; Mon, 30 Nov 2020 15:35:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727070AbgK3OfS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 09:35:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48272 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726242AbgK3OfS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 09:35:18 -0500
Received: from mail-oo1-xc43.google.com (mail-oo1-xc43.google.com [IPv6:2607:f8b0:4864:20::c43])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 78CD2C0613CF
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 06:34:38 -0800 (PST)
Received: by mail-oo1-xc43.google.com with SMTP id t142so2713768oot.7
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 06:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Xx61GuftaKYVa9WLN4j9k312lVeLN++lqfRINw9TeD0=;
        b=WvasUvHCh+NQ/HAdniplRO/L7h44qR9ya9sJScI5FO76kHFJgrC37WrAne73fHlx0b
         mZwcbf3T8wjHUvjbRLX58jL+fnO4FQ9RVR13vVV74kEKKNyjzGp+Hj8pp6DqIPUUs55s
         Pse3v04OBszrAnMCcoeD55GXcMfa3TtarygagT/YcUYSWb3ImrXh2iBzHa2+/vjm6oiA
         jSLhMeweGnjxccUqFU3F3MzJCfe46wl8R774u412Hua+XyR+hOL9+5VLLqWxaNWljjYJ
         qH2ogauF4hTlChv91lTfurxuup5+ZIPf2L5JaSWuKS3NNNbmDrmaTttoByvKl53OVJsf
         J3iQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Xx61GuftaKYVa9WLN4j9k312lVeLN++lqfRINw9TeD0=;
        b=REweZw+I87P5r44yQco43K2wcRR19UBf6DrMy4kZlXCwVpFhnDJpgbtWnIUodcJnlA
         hFtqc4GY4bZlo18cZZbwOclHxKlvki/GkcmaA0+t1pCGFEJH/bDr4b7kbJLcrskXy68E
         JvDqLgM9Em6+hp8UiXDVdnybun3tWTO3eJYlWRm7yi52QZI2mCzel7MLz6Av8T9C559K
         v8/CNNu+wjPmlDMlpIwGpCOmyTGEyQSP+hGdArEDnujj6A1xXTXHwCQm/5JEmruEJwQ0
         CQhv6jYRWWxXcjmpJQZ2sIUcDrNDcgP2eOuI1006XDtXqXn2XSxm0j9/7JcZ4XVoPWyq
         znhA==
X-Gm-Message-State: AOAM530pkgsH+bIbBlyn54nk6FVzWZ6b/NxHE9mjX9LxB5bgAlR5ryw7
        ypyVvRKZj1yrzFNEAaStp2Plm98HikxeESksl6A=
X-Google-Smtp-Source: ABdhPJwTlSnkqi4iPQ9HKCKFmiuc9jxwRXyrTcUCYiuHR/IbRtKNumJ3rGJCbvQon2i1zByXq2aJM8nRe0AuA19qpAQ=
X-Received: by 2002:a4a:b548:: with SMTP id s8mr15521966ooo.77.1606746877873;
 Mon, 30 Nov 2020 06:34:37 -0800 (PST)
MIME-Version: 1.0
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-3-sergio.paracuellos@gmail.com> <20201119053059.GY50232@vkoul-mobl>
 <CAMhs-H8uyoVGUjrG_V2ueZN1UC7jSMZ-6E4YCDw1xqGKNFPv5w@mail.gmail.com> <20201130121506.GB2767@kadam>
In-Reply-To: <20201130121506.GB2767@kadam>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Mon, 30 Nov 2020 15:34:26 +0100
Message-ID: <CAMhs-H-yNWbO0vWBU2B6BfnZ0j8=p2G9ZQh-3aOxjQDEhMxVRQ@mail.gmail.com>
Subject: Re: [PATCH v4 2/4] phy: ralink: Add PHY driver for MT7621 PCIe PHY
To:     Dan Carpenter <dan.carpenter@oracle.com>
Cc:     Vinod Koul <vkoul@kernel.org>,
        "open list:STAGING SUBSYSTEM" <devel@driverdev.osuosl.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Greg KH <gregkh@linuxfoundation.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>, NeilBrown <neil@brown.name>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dan,

On Mon, Nov 30, 2020 at 1:15 PM Dan Carpenter <dan.carpenter@oracle.com> wrote:
>
> On Thu, Nov 19, 2020 at 07:05:22AM +0100, Sergio Paracuellos wrote:
> > > > +static inline void phy_write(struct mt7621_pci_phy *phy, u32 val, u32 reg)
> > > > +{
> > > > +     regmap_write(phy->regmap, reg, val);
> > >
> > > Why not use regmap_ calls directly and avoid the dummy wrappers..?
> >
> > This is because name was the dummy names are a bit shorter :) but if
> > it is also necessary I will use directly regmap_ functions.
>
> At least don't swap the last two arguments around.

You are right. I don't really know why I changed the order there but
those have been deleted in applied series.

>
> regards,
> dan carpenter

Best regards,
    Sergio Paracuellos
>
