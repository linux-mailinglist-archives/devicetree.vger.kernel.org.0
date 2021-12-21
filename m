Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5635447C3F1
	for <lists+devicetree@lfdr.de>; Tue, 21 Dec 2021 17:38:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236550AbhLUQi2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Dec 2021 11:38:28 -0500
Received: from guitar.tcltek.co.il ([84.110.109.230]:47314 "EHLO mx.tkos.co.il"
        rhost-flags-OK-OK-OK-FAIL) by vger.kernel.org with ESMTP
        id S231744AbhLUQi2 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 21 Dec 2021 11:38:28 -0500
Received: from sapphire.tkos.co.il (unknown [10.0.4.11])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mx.tkos.co.il (Postfix) with ESMTPS id A63B5440AEE;
        Tue, 21 Dec 2021 18:38:19 +0200 (IST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=tkos.co.il;
        s=default; t=1640104699;
        bh=9XYsrbBnHsAAg5lSCXiOqjc1O4cYSrEkTOgJpR3Joqs=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=hfgfCyUCDWUVeOF6hyg/OZJSArQxlkDS1pCqh3yglOrdFRiUc4O95T0v5njE8h/An
         obvtMD98jAZFB4jbpaoB+jemK5QhByRw7KCuS5z9BHRr/UZslopvRwzsuVEGm0z4V2
         iwUH3T1DsBLALnZz/4lE/OppFuv0/uNq+/76VENRG566oMg0nJ+jkA5X3S/VTGF0N/
         1VqOKSK3dwvCywC+uYcua1YljhiWnz77LD5i9POBbxWlnyDGPfxJFtxPWUZX8sPlC1
         fhCN/WSYrX09cAwRHzc2Ro9i/llKSOuToUtF8miNChHjHtoMsGdMww+w2c/yUNr7F5
         rFuSCamB8M0NQ==
Date:   Tue, 21 Dec 2021 18:38:24 +0200
From:   Baruch Siach <baruch@tkos.co.il>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Frank Rowand <frowand.list@gmail.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] of: base: Improve argument length mismatch error
Message-ID: <20211221163824.yrpr5rojjxocukxz@sapphire.tkos.co.il>
References: <88f6428288756fb777d9fe6b910673c987757d10.1640076602.git.baruch@tkos.co.il>
 <4cd1b24a2f4d185cf96799ab02ea4283437de67b.1640076602.git.baruch@tkos.co.il>
 <CAL_JsqKNjPsBCZjP5BuYsXjLpc+YMaPJhq2NA=qU5NGtwifUwg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAL_JsqKNjPsBCZjP5BuYsXjLpc+YMaPJhq2NA=qU5NGtwifUwg@mail.gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Rob,

On Tue, Dec 21, 2021 at 07:24:34AM -0400, Rob Herring wrote:
> On Tue, Dec 21, 2021 at 4:51 AM Baruch Siach <baruch@tkos.co.il> wrote:
> >
> > The cells_name field of of_phandle_iterator might be NULL. Use the
> > phandle name instead. With this change we get the more helpful messages:
> >
> >   OF: /soc/pinctrl@1000000: phandle pinctrl@1000000 needs 3, found 2
> 
> How is printing the same thing twice better?

This is not the same thing. The first node is the parent node (it->parent), 
the second is the phandle target (it->node). They happen to be the same in the 
case I encountered[1]. I can generate a better example if it helps.

Printing the property name would have been even better. But 
of_phandle_iterator_init() does not preserve list_name.

[1] https://lore.kernel.org/all/8a744cfd96aff5754bfdcf7298d208ddca5b319a.1638862030.git.baruch@tkos.co.il/

baruch

> > instead of:
> >
> >   OF: /soc/pinctrl@1000000: (null) = 3 found 2
> >
> > That should make DT debugging easier.
> >
> > Signed-off-by: Baruch Siach <baruch@tkos.co.il>
> > ---
> >  drivers/of/base.c | 11 ++++++++---
> >  1 file changed, 8 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/of/base.c b/drivers/of/base.c
> > index 64218c614a85..7c03de370913 100644
> > --- a/drivers/of/base.c
> > +++ b/drivers/of/base.c
> > @@ -1349,9 +1349,14 @@ int of_phandle_iterator_next(struct of_phandle_iterator *it)
> >                  * property data length
> >                  */
> >                 if (it->cur + count > it->list_end) {
> > -                       pr_err("%pOF: %s = %d found %ld\n",
> > -                              it->parent, it->cells_name,
> > -                              count, it->list_end - it->cur);
> > +                       if (it->cells_name)
> > +                               pr_err("%pOF: %s = %d found %ld\n",
> > +                                       it->parent, it->cells_name,
> > +                                       count, it->list_end - it->cur);
> > +                       else
> > +                               pr_err("%pOF: phandle %s needs %d, found %ld\n",
> > +                                       it->parent, of_node_full_name(it->node),
> > +                                       count, it->list_end - it->cur);
> >                         goto err;
> >                 }
> >         }

-- 
                                                     ~. .~   Tk Open Systems
=}------------------------------------------------ooO--U--Ooo------------{=
   - baruch@tkos.co.il - tel: +972.52.368.4656, http://www.tkos.co.il -
