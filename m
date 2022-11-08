Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 18F7B621E21
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 21:56:58 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229603AbiKHU45 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 15:56:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33056 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230002AbiKHU44 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 15:56:56 -0500
Received: from mail-pl1-x62a.google.com (mail-pl1-x62a.google.com [IPv6:2607:f8b0:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2270B5D6BA
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 12:56:52 -0800 (PST)
Received: by mail-pl1-x62a.google.com with SMTP id p12so9746026plq.4
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 12:56:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=0onMt+air2lNK6el66wGss5pMPyUXTVLi3zz0gmD1tU=;
        b=Bkzc2mkmAhE0IfooRK3Sqm+LJEDbscvB/8Mtcavis1yMpw3YbvTuzd92c69U6SDhz2
         0MXN/D7PjXKOaohVDWk/7fK9jeU08WfIQmlPOI/ud26TW1vpPFga1JJzVlCPvMYvhOgt
         MCBYFHAwDkAlYxK7K3LzL4j2BlVZdQ49bT+GWcXBxmB6NnWkKBiy1H6Z4X+uoiI4MTpZ
         YrdywVH2mQ90EIROULO3rnpsZomcMQQDis7SVMhTv+UmvTJzAn4nFOivziiLKPEX1iMZ
         B1GWw8h1SDgPWA0A6IFvzoRnF6OJpu9hzjTPRSr4gkXKcmdrCPSI4FuBql/IMc3IhCtB
         EBZQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0onMt+air2lNK6el66wGss5pMPyUXTVLi3zz0gmD1tU=;
        b=uU2WrGhrYQH4GsfTbvC3SPh5AXw8mw2RCHYBx7FzdeIcCN5s1yUuLD74jGMW2tjSVt
         HJmqRQrCl+v/9AB1OO8OTdXezO2Xeo7n9MSXtKDatpQqRG7i/DmH+9DARR7viLtLa5xg
         SmOiiawJAcnxzKERPdVHdP6go6x3QrIeNJHposv9+hQcAR5IF8Z7HjHuEdzhfoOmbmzY
         nio5pG2kxWZJb28dqip8D9lmZO0kI0jd1QhaU+cp6E7Wj+dL3JZySUGqmX9KKeKMHPAY
         ywfG7EHw3OXYEYcYE46pdi2pSHpcC4I4GRT+f2nrC5fm7VIwh/HcBX6ezQPuI88JMAaq
         YGag==
X-Gm-Message-State: ACrzQf2mHuCPW5tiDqIY6bwxiu9FcpycelKprCGDQBe75xQNnpLdn4Mz
        H8vuwELe2oK93dcO8Ba00ugus6JxnlIJcXnH+lkrBA==
X-Google-Smtp-Source: AMsMyM4gITR694JEoUnHOm2v2lMU0mdPEvB4EDyjuKZCqRozgFfRmPYW4lW2mOdcVea8X79bo6W2zY2H2Bz1Z24VxCA=
X-Received: by 2002:a17:902:f786:b0:180:6f9e:23b with SMTP id
 q6-20020a170902f78600b001806f9e023bmr58978856pln.37.1667941011429; Tue, 08
 Nov 2022 12:56:51 -0800 (PST)
MIME-Version: 1.0
References: <20221103210650.2325784-1-sean.anderson@seco.com>
 <20221103210650.2325784-9-sean.anderson@seco.com> <20221107201010.GA1525628-robh@kernel.org>
 <20221107202223.ihdk4ubbqpro5w5y@skbuf> <7caf2d6a-3be9-4261-9e92-db55fe161f7e@seco.com>
 <CAL_JsqKw=1iP6KUj=c6stgCMo7V6hGO9iB+MgixA5tiackeNnA@mail.gmail.com>
In-Reply-To: <CAL_JsqKw=1iP6KUj=c6stgCMo7V6hGO9iB+MgixA5tiackeNnA@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Tue, 8 Nov 2022 12:56:15 -0800
Message-ID: <CAGETcx-=Z4wo8JaYJN=SjxirbgRoRvobN8zxm+BSHjwouHzeJg@mail.gmail.com>
Subject: Re: [PATCH net-next v2 08/11] of: property: Add device link support
 for PCS
To:     Rob Herring <robh@kernel.org>
Cc:     Sean Anderson <sean.anderson@seco.com>,
        Vladimir Oltean <olteanv@gmail.com>,
        Heiner Kallweit <hkallweit1@gmail.com>,
        Russell King <linux@armlinux.org.uk>, netdev@vger.kernel.org,
        Eric Dumazet <edumazet@google.com>,
        Paolo Abeni <pabeni@redhat.com>,
        Jakub Kicinski <kuba@kernel.org>, linux-kernel@vger.kernel.org,
        Andrew Lunn <andrew@lunn.ch>,
        Ioana Ciornei <ioana.ciornei@nxp.com>,
        Madalin Bucur <madalin.bucur@nxp.com>,
        "David S . Miller" <davem@davemloft.net>,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 7, 2022 at 1:36 PM Rob Herring <robh@kernel.org> wrote:
>
> On Mon, Nov 7, 2022 at 2:50 PM Sean Anderson <sean.anderson@seco.com> wrote:
> >
> > On 11/7/22 15:22, Vladimir Oltean wrote:
> > > On Mon, Nov 07, 2022 at 02:10:10PM -0600, Rob Herring wrote:
> > >> On Thu, Nov 03, 2022 at 05:06:47PM -0400, Sean Anderson wrote:
> > >> > This adds device link support for PCS devices. Both the recommended
> > >> > pcs-handle and the deprecated pcsphy-handle properties are supported.
> > >> > This should provide better probe ordering.
> > >> >
> > >> > Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> > >> > ---
> > >> >
> > >> > (no changes since v1)
> > >> >
> > >> >  drivers/of/property.c | 4 ++++
> > >> >  1 file changed, 4 insertions(+)
> > >>
> > >> Seems like no dependency on the rest of the series, so I can take this
> > >> patch?
> > >
> > > Is fw_devlink well-behaved these days, so as to not break (forever defer)
> > > the probing of the device having the pcs-handle, if no driver probed on
> > > the referenced PCS? Because the latter is what will happen if no one
> > > picks up Sean's patches to probe PCS devices in the usual device model
> > > way, I think.
> >
> > Last time [1], Saravana suggested to move this to the end of the series to
> > avoid such problems. FWIW, I just tried booting a LS1046A with the
> > following patches applied
> >
> > 01/11 (compatibles) 05/11 (device) 08/11 (link) 09/11 (consumer)
> > =================== ============== ============ ================
> > Y                   N              Y            N
> > Y                   Y              Y            Y
> > Y                   Y              Y            N
> > N                   Y              Y            N
> > N                   N              Y            N
> >
> > and all interfaces probed each time. So maybe it is safe to pick
> > this patch.
>
> Maybe? Just take it with the rest of the series.
>
> Acked-by: Rob Herring <robh@kernel.org>

Let's have Vladimir ack this. I'm not sure if it's fully safe yet. I
haven't done the necessary fixes for phy-handle yet, but I don't know
how pcs-handle and pcsphy-handle are used or if none of their uses
will hit the chicken and egg problem that some uses of phy-handle hit.

-Saravana
