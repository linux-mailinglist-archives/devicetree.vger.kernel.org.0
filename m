Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 682564A6285
	for <lists+devicetree@lfdr.de>; Tue,  1 Feb 2022 18:35:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240409AbiBARfK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Feb 2022 12:35:10 -0500
Received: from mail-oi1-f181.google.com ([209.85.167.181]:45612 "EHLO
        mail-oi1-f181.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233776AbiBARfK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Feb 2022 12:35:10 -0500
Received: by mail-oi1-f181.google.com with SMTP id m9so34658409oia.12
        for <devicetree@vger.kernel.org>; Tue, 01 Feb 2022 09:35:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=KjRXCGNM0itfmkq/azDMHF/U1mKtGwK0RrCt3CeCubE=;
        b=ZUuKoUYcdiBWT6nF2neDG+eSc/LA1IsaNYlBn6l7JmKOpxPXCM0nEk/pwAe/x/t+Hr
         QLEgFQfelmDNyPhUZewY2v7rYoE84/m5ZbaO3dEimWmCpYIkdrRHQdnp7HNd4W7bb/rt
         OR/j0WcomxPI39WvjvCpoAsdSgUK4Y7UoFnBh6KxAUXgHG1lMiI/ngIXdanK/dN/6eT6
         imo4A12+1JNJJ6xIu39esaivAoaEZpR/KnO3FDyZ9FGAVxql64ojKCP+R5Aeg6HyXGNw
         gf9Dcq6q5ZwWO8koCrWGA4qu5mgo8hCngGPFPZeve02t4O0PIICjs8MDQ5oVYI+JAjml
         UeMQ==
X-Gm-Message-State: AOAM532B9kywSVjBcvTzY6a0xNrcU9F1sR8E4qqA5HBvwZ8Nre/L1NVc
        LhYQEYb2S81/aZae0yubzw==
X-Google-Smtp-Source: ABdhPJzmxtTsWo1Cd2DHJ8F3SlyConbFkELIvf4LsPjf1C4OhylpblwFxY7s+euAiFbaparvTZgFnw==
X-Received: by 2002:a05:6808:68d:: with SMTP id k13mr1994052oig.280.1643736909773;
        Tue, 01 Feb 2022 09:35:09 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id h1sm16893452otb.58.2022.02.01.09.35.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Feb 2022 09:35:08 -0800 (PST)
Received: (nullmailer pid 252996 invoked by uid 1000);
        Tue, 01 Feb 2022 17:35:07 -0000
Date:   Tue, 1 Feb 2022 11:35:07 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@linux.ie>,
        Shawn Guo <shawnguo@kernel.org>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>
Subject: Re: [PATCH 1/2] dt-bindings: display: imx: Add fsl,imx21-lcdc docs
Message-ID: <YflvS007gL5mLa9k@robh.at.kernel.org>
References: <20220128105849.368438-1-u.kleine-koenig@pengutronix.de>
 <20220128105849.368438-2-u.kleine-koenig@pengutronix.de>
 <CAL_JsqJjTf2zY-n69Ozh+S1gSi5Eoa5T44Qnq9RPNgJWDLmzKQ@mail.gmail.com>
 <20220128175829.vjm66rs7eu7pk2my@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220128175829.vjm66rs7eu7pk2my@pengutronix.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jan 28, 2022 at 06:58:29PM +0100, Uwe Kleine-König wrote:
> Hello Rob,
> 
> On Fri, Jan 28, 2022 at 07:04:10AM -0600, Rob Herring wrote:
> > On Fri, Jan 28, 2022 at 4:59 AM Uwe Kleine-König
> > <u.kleine-koenig@pengutronix.de> wrote:
> > >
> > > From: Marian Cichy <m.cichy@pengutronix.de>
> > >
> > > This files documents the device tree for the new imx21-lcdc DRM driver.
> > 
> > No, bindings document h/w and the h/w has not changed. We already have
> > a binding for the LCDC.
> 
> Just to be sure we're talking about the same thing: You're refering to
> Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt, right?

Looks right...

> I'm unsure what to do now. Should the two different bindings just be
> described in the same file? Should I stick to fsl,imx21-fb even for the
> new binding? (The hardware unit is named LCDC, so the name chosen here
> is the better one.) Please advise.

Yes, the name is unfortunate, but it should be 1 binding, 1 file, and 
unchanged (unless you want to add new optional properties). 

Rob
