Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 234F66E5C1C
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 10:33:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229756AbjDRIde (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 18 Apr 2023 04:33:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41300 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229838AbjDRId3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 18 Apr 2023 04:33:29 -0400
Received: from mail-yw1-x112d.google.com (mail-yw1-x112d.google.com [IPv6:2607:f8b0:4864:20::112d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C19397AA9
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 01:32:48 -0700 (PDT)
Received: by mail-yw1-x112d.google.com with SMTP id 00721157ae682-54fa9da5e5bso247701237b3.1
        for <devicetree@vger.kernel.org>; Tue, 18 Apr 2023 01:32:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681806765; x=1684398765;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=Zx9sLlnqlOZjd6yEIsiTu/BBjp44dTQyzvDnp70eYm8=;
        b=swjKzcvAN32jeZvEshQ/vtH2R7c9QJ9Qfmsht67lFgv03sJxnJhaKEnkpdHBEVNBnQ
         4yLX7RWjJzuwtHymyFpVjJ+78xIbyNiRSaVHkhR1yvyLx57kxI14O/PPUoQo2ERHIIPJ
         yCv00TYeR7wIuh987ftdTaxA6gf8RLQ1V9ehc7/GsNPzq5VnMKSeiHIANeDuwMfhf1ER
         zh8vu0VDWzAjRWFcfe9zuNs8GTqFHMcEO+qm54UN6vqUm1W8XqE+44cwdIt8BNpjW+HU
         p47x5+11IUOYFbfgf5lBdICuLE6/5rtPqruSjvbw4DNwIHnw3IJ2HQZ+rPlMMgp4P3lT
         4sww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681806765; x=1684398765;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=Zx9sLlnqlOZjd6yEIsiTu/BBjp44dTQyzvDnp70eYm8=;
        b=KbbT2fRm8f97e1Of96c7LvxOTpERTeQ0RRYZOw7PZ08l/5bFz8Gbni6q5hCpE48WCJ
         9e+5KCWnuIgAm4YhiTSCwu8/qfry/a43KtoCxlhaRhUoRmBV/OMQtjEU3QYeP4544G7o
         Yzd+tk4Ja5V1Jd+XlGX6ene9xFCAgKvBhRerHE5yzWxYU1nubJA/GMDkuw7LKJlYp2ZV
         vLMQejgyU9o3NyMLRqOZ3jES388bxJAL5Qi9EO5wAsEsLegYYsll0vmfa4I4R0MJmUra
         4G5T91iM4U96sjfNCi7jEFjG3Yvr+qBu7lKsC9kxTS0yfiDCRSetjnCqKipsSsrgLNhi
         QH4A==
X-Gm-Message-State: AAQBX9fiPrqxI5bqqSbF9OdOW/0IvNfO7/UAmsrbOLlJWdRi4VVSUMEz
        v9DCHq7Zi5SzkP/rbnowwARIppZfZ2Lc1v30ex+6Uw==
X-Google-Smtp-Source: AKy350aE1HacagOuu/fNc38OeZciL5OE9jAYIiAGsoYZCy6awnzONSE/Lk4w4QpUwFvVBpJQIMKRkSts77glUyoLKfI=
X-Received: by 2002:a81:4896:0:b0:552:a840:9da8 with SMTP id
 v144-20020a814896000000b00552a8409da8mr9009367ywa.52.1681806765312; Tue, 18
 Apr 2023 01:32:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230323093141.4070840-1-peng.fan@oss.nxp.com>
 <20230323093141.4070840-2-peng.fan@oss.nxp.com> <ZDN00vwyCOzFrDYt@google.com>
 <DU0PR04MB94172C2BBB554E472576B2BA889B9@DU0PR04MB9417.eurprd04.prod.outlook.com>
 <DU0PR04MB9417185EB8243ED2D60A6E43889B9@DU0PR04MB9417.eurprd04.prod.outlook.com>
In-Reply-To: <DU0PR04MB9417185EB8243ED2D60A6E43889B9@DU0PR04MB9417.eurprd04.prod.outlook.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Tue, 18 Apr 2023 10:32:09 +0200
Message-ID: <CAPDyKFruZOP65k0SEEmCGtopp8ywJA92ChGZs2ZR=nVxqUC0OQ@mail.gmail.com>
Subject: Re: [PATCH 2/2] input: imx_sc_key: add wakeup support
To:     Peng Fan <peng.fan@nxp.com>
Cc:     Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "shawnguo@kernel.org" <shawnguo@kernel.org>,
        Aisheng Dong <aisheng.dong@nxp.com>,
        "linux-input@vger.kernel.org" <linux-input@vger.kernel.org>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        "s.hauer@pengutronix.de" <s.hauer@pengutronix.de>,
        "kernel@pengutronix.de" <kernel@pengutronix.de>,
        "festevam@gmail.com" <festevam@gmail.com>,
        dl-linux-imx <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 Apr 2023 at 17:58, Peng Fan <peng.fan@nxp.com> wrote:
>
> +Ulf
>
> > Subject: RE: [PATCH 2/2] input: imx_sc_key: add wakeup support
> >
> > > Subject: Re: [PATCH 2/2] input: imx_sc_key: add wakeup support
> > >
> > > On Thu, Mar 23, 2023 at 05:31:41PM +0800, Peng Fan (OSS) wrote:
> > > > From: Peng Fan <peng.fan@nxp.com>
> > > >
> > > > Add support for waking up from system wide suspend.
> > > >
> > > > Signed-off-by: Peng Fan <peng.fan@nxp.com>
> > > > ---
> > > >  drivers/input/keyboard/imx_sc_key.c | 2 ++
> > > >  1 file changed, 2 insertions(+)
> > > >
> > > > diff --git a/drivers/input/keyboard/imx_sc_key.c
> > > b/drivers/input/keyboard/imx_sc_key.c
> > > > index d18839f1f4f6..234f23cf9990 100644
> > > > --- a/drivers/input/keyboard/imx_sc_key.c
> > > > +++ b/drivers/input/keyboard/imx_sc_key.c
> > > > @@ -151,6 +151,8 @@ static int imx_sc_key_probe(struct
> > > platform_device *pdev)
> > > >   priv->input = input;
> > > >   platform_set_drvdata(pdev, priv);
> > > >
> > > > + device_init_wakeup(&pdev->dev,
> > > device_property_read_bool(&pdev->dev, "wakeup-source"));
> > > > +
> > >
> > > I wonder - could we move this to the device core?
> >
> > I see lots device drivers parse wakeup-source, so I also follow That. Not sure
> > whether could move this feature to device core, but anyway I could give a
> > try.
>
> Do you think it is feasible to move device_init_wakeup into device core
> part?

Not sure it would really improve things that much. Subsystems/drivers
need to make additional configurations based upon whether this DT
property is set anyway.

Perhaps an option is to make this a part of the common input subsystem
helper functions instead? Other subsystems do this, but I am not sure
how feasible that would be in the input case.

Kind regards
Uffe
