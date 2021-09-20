Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59873412867
	for <lists+devicetree@lfdr.de>; Mon, 20 Sep 2021 23:46:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232584AbhITVsN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 17:48:13 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:33401 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234203AbhITVqN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 17:46:13 -0400
Received: by mail-ot1-f53.google.com with SMTP id c42-20020a05683034aa00b0051f4b99c40cso25622307otu.0
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 14:44:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=bIDtt2LvEANX+DMoWKgdbveyTpvxNfoDgaLaSDym2c4=;
        b=UJfBFt374Z1zvwDxZ7q1ifINpbI4PdK+e7MwsLO3XszJ2tErz0S0BM7OdPAr/Xn6Lq
         f5FFU4Hxxku0QOWIQ9XH0thGwYa90P+q+pJK7k3EsrKrPyrR5ndLg3Ewa38+bLq2rf4M
         x9iLiOP+hFW7Fq1asN4Ce2bZyVgzXmAAP9+TROaTj5w3yQlm+e9BpHvFVtHb5fk3QEBY
         uaSfLYrDyzSebx2GxZqaTMoMpLs3ueNv1wU78IsJlOFveWwV+7m9+MSxU2ps9I8w+cf1
         ztBUdUq4FuNJjDZbQxw1sJyIk7AhWFWOuXJ7v9XmyVp1irQuEL3J+nM/hMCyiB7HHLvf
         dgiw==
X-Gm-Message-State: AOAM533EYUUod7cLEWp+thI9Vcp01qms8/NRXhLm/X43o9LblOHkP0Ts
        unWOgYrIkjy3vB4V/km9wRoKNX1A2Q==
X-Google-Smtp-Source: ABdhPJwOeSK18Zlw2WRvrxN1ACcmoB3fD4Z9erbKVqWA/5DACGJ9mDGd5bApR+KLp9MZJrYIDGdisw==
X-Received: by 2002:a05:6830:20cf:: with SMTP id z15mr22290766otq.7.1632174285336;
        Mon, 20 Sep 2021 14:44:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id y12sm296806otu.11.2021.09.20.14.44.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 14:44:44 -0700 (PDT)
Received: (nullmailer pid 832529 invoked by uid 1000);
        Mon, 20 Sep 2021 21:44:43 -0000
Date:   Mon, 20 Sep 2021 16:44:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Abel Vesa <abel.vesa@nxp.com>
Cc:     Jacky Bai <ping.bai@nxp.com>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        "sboyd@kernel.org" <sboyd@kernel.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "p.zabel@pengutronix.de" <p.zabel@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        dl-linux-imx <linux-imx@nxp.com>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>
Subject: Re: [PATCH v3 1/9] dt-bindings: clock: Add imx8ulp clock support
Message-ID: <YUkAyw1pGE8EOKd1@robh.at.kernel.org>
References: <20210914065208.3582128-1-ping.bai@nxp.com>
 <20210914065208.3582128-2-ping.bai@nxp.com>
 <YUCGj2fDB3VWQ+BN@ryzen>
 <DBBPR04MB7930561625265F08CD3B630887DA9@DBBPR04MB7930.eurprd04.prod.outlook.com>
 <YUDAJ18URdZRGIup@ryzen>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <YUDAJ18URdZRGIup@ryzen>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Sep 14, 2021 at 06:30:47PM +0300, Abel Vesa wrote:
> On 21-09-14 16:11:13, Jacky Bai wrote:
> > > Subject: Re: [PATCH v3 1/9] dt-bindings: clock: Add imx8ulp clock support
> > > 
> > > On 21-09-14 14:52:00, Jacky Bai wrote:
> > > > Add the clock dt-binding file for i.MX8ULP.
> > > >
> > > > For pcc node, it will also be used as a reset controller, so add the
> > > > '#reset-cells' property description and add the pcc reset IDs.
> > > >
> > > > Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> > > > ---
> > > >  v3 changes:
> > > >    - split into two binding file, one for pcc, one for cgc
> > > >
> > > >  v2 changes:
> > > >    - removed the redundant clocks & clock-names property
> > > >
> > > >  v1 changes:
> > > >    - Move this patch from dts patchset into this patchset
> > > > ---
> > > >  .../bindings/clock/imx8ulp-cgc-clock.yaml     |  43 +++
> > > >  .../bindings/clock/imx8ulp-pcc-clock.yaml     |  50 ++++
> > > >  include/dt-bindings/clock/imx8ulp-clock.h     | 258
> > > ++++++++++++++++++
> > > >  include/dt-bindings/reset/imx8ulp-pcc-reset.h |  59 ++++
> > > >  4 files changed, 410 insertions(+)
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > > >  create mode 100644
> > > > Documentation/devicetree/bindings/clock/imx8ulp-pcc-clock.yaml
> > > >  create mode 100644 include/dt-bindings/clock/imx8ulp-clock.h
> > > >  create mode 100644 include/dt-bindings/reset/imx8ulp-pcc-reset.h
> > > >
> > > > diff --git
> > > > a/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > > > b/Documentation/devicetree/bindings/clock/imx8ulp-cgc-clock.yaml
> > > 
> > > I'm not sure but I think the Documentation part is usually done in a separate
> > > patch.
> > > 
> > 
> > The clk-imx8ulp.c file highly depends on the clock/reset index in this dt-binding patch.
> > 
> 
> Yeah, I get that, but I was suggesting splitting the Documentation part
> and the binding header part into two separate patches. It's up to you.

The header is part of the binding ABI, so it belongs in this patch.

Rob
