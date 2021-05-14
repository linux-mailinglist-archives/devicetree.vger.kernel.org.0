Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 80F07380877
	for <lists+devicetree@lfdr.de>; Fri, 14 May 2021 13:30:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229516AbhENLbm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 14 May 2021 07:31:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229445AbhENLbj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 14 May 2021 07:31:39 -0400
Received: from mail-oi1-x235.google.com (mail-oi1-x235.google.com [IPv6:2607:f8b0:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4202DC061574
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 04:30:28 -0700 (PDT)
Received: by mail-oi1-x235.google.com with SMTP id c3so28107270oic.8
        for <devicetree@vger.kernel.org>; Fri, 14 May 2021 04:30:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=I9A3nXY3kUs1dCLrxrDBTwMVEeu4aFNeSYtm9K3Kp8M=;
        b=Zu0kMNaA+VfdfU/cHDDtfr8znlbneoVWuur733RqIN4ZBC0OuXa/1ESBC9MKcs+yPV
         /3+grRzw6qjrCQmJssWN3/mN4sGd8q7dtv13xguBZr+OjR/jxL4N42JgtJb3m1SSM579
         Jrhj+faVyCFWmCikRk8hXucEfqbYHw5nPWa+Z4XGgwq7XrhihB67SQ+aghSKvtTWP2lD
         a+N+W95KUieb2Y5gyTH3BkDtkjyFXzyfrtqFRYxNJViYA1CkdOxd9JmUegm+xh+7RAaB
         kdXwPYuwAsqde8TfSBJhgKdYsuBTLQhHSartMAwBkhijZyhESWtibNa4w7L1+2qjyCAp
         vAcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=I9A3nXY3kUs1dCLrxrDBTwMVEeu4aFNeSYtm9K3Kp8M=;
        b=jilgF4/RKuq0YReubkChIO8LO6ODzZUmXe4Zi3I3YEjK2FaWQCAur4fWQbo+txoHRG
         H0wRu5pxDg67sOanjks2OoAMaBCyoMC8IQ5J2LB2Y9tJ2SLLgODfPfnCg3pYPpMAAdm4
         vSAIim1Rt/g+bsrJjuy50NFqwcMwIh/unoaw6q3IjhrD3hXCnTPTEo3fsf/2oBlLQOB1
         2G1V8CFWQcPydvB8FrCS+Krl5+jKgA1iGSkNq4D9VafdHHnVWKZLIacINnFwcaY1rTGy
         nCMU2PlG2yQ1+YDyD4qVi9feUw72N3uLNALl1bAlJZG6CCRJLENFWZpCjkqiPkIKA+M8
         hZ6A==
X-Gm-Message-State: AOAM530ZqbWTtohbB5M3bkjE+JwYu8PjIXnm/o/k5HUXZCkozEw5Y02u
        q4Y5BPQgkTteervK74hQUpOJAX8XJZfY8YDbE6A=
X-Google-Smtp-Source: ABdhPJz/ERXhEYZDgOaIYDv7u7TRctVMeZb1O535axRV9MDzBlsvmc6AlLq+npWyEpXhKg16Cv0rRZvByOjuJxWekg8=
X-Received: by 2002:aca:ab8c:: with SMTP id u134mr6631520oie.158.1620991827668;
 Fri, 14 May 2021 04:30:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210508070930.5290-1-sergio.paracuellos@gmail.com>
 <YJ5VHnZaLi4o31vL@vkoul-mobl.Dlink> <CAMhs-H8A1o3_TJGjPNUO3K_gf+kDkbj7mFy21LJfUEB0sEhvSg@mail.gmail.com>
 <YJ5ddkGytGI+kAt9@kroah.com>
In-Reply-To: <YJ5ddkGytGI+kAt9@kroah.com>
From:   Sergio Paracuellos <sergio.paracuellos@gmail.com>
Date:   Fri, 14 May 2021 13:30:16 +0200
Message-ID: <CAMhs-H8kjL-TdX97mvw+Q3X-HybR3Ox8KrXUY3vJp2jKwv4Q8g@mail.gmail.com>
Subject: Re: [PATCH RESEND v2 0/6] phy: ralink: mt7621-pci-phy: some improvements
To:     Greg KH <gregkh@linuxfoundation.org>
Cc:     Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, linux-phy@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        linux-staging@lists.linux.dev, NeilBrown <neil@brown.name>,
        Ilya Lipnitskiy <ilya.lipnitskiy@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, May 14, 2021 at 1:22 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, May 14, 2021 at 01:19:18PM +0200, Sergio Paracuellos wrote:
> > On Fri, May 14, 2021 at 12:46 PM Vinod Koul <vkoul@kernel.org> wrote:
> > >
> > > On 08-05-21, 09:09, Sergio Paracuellos wrote:
> > > > Hi all,
> > > >
> > > > This series contains some improvements in the pci phy driver
> > > > for MT7621 SoCs.
> > > >
> > > > MT7621 SoC clock driver has already mainlined in
> > > > 'commit 48df7a26f470 ("clk: ralink: add clock driver for mt7621 SoC")'
> > > >
> > > > Because of this we can update schema documentation and device tree
> > > > to add related clock entries and avoid custom architecture code
> > > > in favour of using the clock kernel framework to retrieve clock
> > > > frequency needed to properly configure the PCIe related Phys.
> > > >
> > > > After this changes there is no problem to properly enable this
> > > > driver for COMPILE_TEST.
> > > >
> > > > Configuration has also modified from 'tristate' to 'bool' depending
> > > > on PCI_MT7621 which seems to have more sense.
> > >
> > > Applied 2-6, thanks
> >
> > Thanks, Vinod.
> >
> > Greg, can you take patch 1 through your tree?
>
> Sure, can you resend it?

Thanks, I have just resent it.

>
> thanks,
>
> greg k-h

Best regards,
     Sergio Paracuellos
