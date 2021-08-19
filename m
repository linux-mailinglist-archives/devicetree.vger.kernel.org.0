Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AED933F0FEB
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 03:20:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234261AbhHSBVX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Aug 2021 21:21:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232954AbhHSBVW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Aug 2021 21:21:22 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EEC37C061764
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 18:20:46 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id w17so9035251ybl.11
        for <devicetree@vger.kernel.org>; Wed, 18 Aug 2021 18:20:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=3jR238mL29ayHcq8ehNBx0TNPsNwsYbo0pduyZlEib0=;
        b=sAjURJV0DPl5iuEma3MDh24U2Ka/YPHGRAUt3czsmWjDpYIxJGsgV2yVVUbrr33lP6
         RN77l8yeydxU33c80gLe/YCnN1O2KVqnqGyOW+OrDdTmy8Pefr5fQmjdI9q93973hZWX
         vADWdXpmVvFG/tdnog039ZCR1huc/bOp7frcCs8OapspSjkjWijqCxtzqUWM03Q7BK+U
         lt64M3eZAf9Sj8dWHjy9sh2+MruZxbo4NpzPNwdKUlKH9343dMXXmUh1Qb5Y3JwBUMwU
         UgBPerxUHcj6EKp06w0fTRosuDk8pDkJUbdcFiHSZytEcp8PP16KoNcwxrdB9Yixb6Yw
         DTmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=3jR238mL29ayHcq8ehNBx0TNPsNwsYbo0pduyZlEib0=;
        b=sGIrhd3ej9QICOQ/8jR/0dtO2wH3nj+ptkFnwnNHvNqRhYawsDEPJ1x5fbGIUd4wlF
         nfH5cEuO5+gBDaKqscVSHKqFsS4kJuX4MHYwIkLil5tJvqkxWT0VDf8aueL8OdX/z4Z/
         2BfGq4NncRG3AWTQiXYinduwWrP7ohm+GExcXyDHYBA8/YDWlPu0NDDWnDu+YAhIQKTc
         BRHvlBAwIms8qY/ZfO/WLTaVaq8tE8u2gYwwudlhLJ6Wh0M6dG8CaYJxz9/hxZRRO9Tb
         6HH39dEVby4g4niXrkOcBuNmI/bYFV18FBcrfUaBc4FEbDEz6+md3Xn/+Asuo70rAuQq
         2zJA==
X-Gm-Message-State: AOAM531wafG/j2Tsp8R/8ylYjzoLAU+CgLKZD6oALOz5HEUjS5JIHfL9
        sROuwVKhWNCkXrp2dfwFo1wtITHdwUmpbIkq5HRXgA==
X-Google-Smtp-Source: ABdhPJwPr1XPUwrW0ZAMTkrRFB8tYSV+KrVuPPIlTJEGG83mcyLrJI8HHKaE86XFYA+T76CahvFq+0xqER68MXdlnBk=
X-Received: by 2002:a25:614c:: with SMTP id v73mr15720483ybb.96.1629336046025;
 Wed, 18 Aug 2021 18:20:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210818130950.3715-1-Wentao_Liang_g@163.com> <CAL_JsqLfvfi42QGkM_WqKUm0GPZ6z=ybBz9kaR5UakKd0mzGEw@mail.gmail.com>
 <CAGETcx-C1avGdGLS=X7pc-q3u_BZv7wJwMWEJ6KFbDYYafeP2A@mail.gmail.com>
In-Reply-To: <CAGETcx-C1avGdGLS=X7pc-q3u_BZv7wJwMWEJ6KFbDYYafeP2A@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Wed, 18 Aug 2021 18:20:10 -0700
Message-ID: <CAGETcx-37i6npQpfK42bk-oyxnazvRE6_LXNW9Ske8K=PwFTxg@mail.gmail.com>
Subject: Re: [PATCH] drivers:of:property.c: fix a potential double put
 (release) bug
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Wentao_Liang <Wentao_Liang_g@163.com>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 18, 2021 at 6:11 PM Saravana Kannan <saravanak@google.com> wrote:
>
> On Wed, Aug 18, 2021 at 7:07 AM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > +Saravana
> >
> > On Wed, Aug 18, 2021 at 8:26 AM Wentao_Liang <Wentao_Liang_g@163.com> wrote:
> > >
> > > In line 1423 (#1), of_link_to_phandle() is called. In the function
> > > (line 1140, #2), "of_node_put(sup_np);" drops the reference to phandle
> > > and may cause phandle to be released. However, after the function
> > > returns, the phandle is subsequently dropped again (line 1424, #3) by
> > > the same put function. Double putting the phandle can lead to an
> > > incorrect reference count.
> > >
> > > We believe that the first put of the phandle is unnecessary (#3). We
> > > can fix the above bug by removing the redundant "of_node_put()" in line
> > > 1423.
> > >
> > > 1401 static int of_link_property(struct device_node *con_np,
> > >                                 const char *prop_name)
> > > 1402 {
> > > ...
> > > 1409     while (!matched && s->parse_prop) {
> > > ...
> > > 1414
> > > 1415         while ((phandle = s->parse_prop(con_np, prop_name, i))) {
> > > ...
> > >                  //#1 phandle is dropped in this function
> > > 1423             of_link_to_phandle(con_dev_np, phandle);
> > >
> > > 1424             //#3 the second drop to phandle
> > >                  of_node_put(phandle);
> > >
> > > 1425             of_node_put(con_dev_np);
> > > 1426         }
> > > ...
> > > 1428     }
> > > 1429     return 0;
> > > 1430 }
> > >
> > > 1095 static int of_link_to_phandle(struct device_node *con_np,
> > > 1096                   struct device_node *sup_np)
> > > 1097 {
> > > 1098     struct device *sup_dev;
> > > 1099     struct device_node *tmp_np = sup_np;
> > > ...
> > > 1140     of_node_put(sup_np);  //#2 the first drop to phandle
> > >                                //   (unnecessary)
> > > 1141
> > > 1142     return 0;
> > > 1143 }
> > >
> > > Signed-off-by: Wentao_Liang <Wentao_Liang_g@163.com>
> > > ---
> > >  drivers/of/property.c | 1 -
> > >  1 file changed, 1 deletion(-)
> > >
> > > diff --git a/drivers/of/property.c b/drivers/of/property.c
> > > index 6c028632f425..408fdde1a20c 100644
> > > --- a/drivers/of/property.c
> > > +++ b/drivers/of/property.c
> > > @@ -1137,7 +1137,6 @@ static int of_link_to_phandle(struct device_node *con_np,
> > >         put_device(sup_dev);
> > >
> > >         fwnode_link_add(of_fwnode_handle(con_np), of_fwnode_handle(sup_np));
> > > -       of_node_put(sup_np);
>
> Hi Wentao,
>
> Thanks for noticing and reporting the bug! Your analysis is correct,
> but the fix is definitely wrong. For one, the reference to the node
> phandle is pointing to can be dropped in of_link_to_phandle() when it
> calls of_get_compat_node(). It could also be dropped in one of the
> error paths. So, now you'll be incorrectly dropping the reference for
> the wrong node. Let me send out a fix and  mention you as the
> reporter.
>

I spoke too soon. I think there is no refcount problem because
of_link_to_phandle() makes sure it doesn't change the ref count of any
of the DT nodes passed in as input. If you see of_get_compat_node(),
you'll notice that it does a of_node_get() first. So it returns a node
pointer (that could be the same as the input) and it makes sure it
increments that refcount for the node it's returning. And since we are
doing:

sup_np = of_get_compat_node(sup_np);

We are ensuring that by the time of_link_phandle() returns, we haven't
changed the refcount of any of the nodes.

So, I don't think there's any bug here.

-Saravana
