Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC3E558A07E
	for <lists+devicetree@lfdr.de>; Thu,  4 Aug 2022 20:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239989AbiHDS1i (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Aug 2022 14:27:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58574 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229660AbiHDS1h (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Aug 2022 14:27:37 -0400
Received: from mail-yw1-x1134.google.com (mail-yw1-x1134.google.com [IPv6:2607:f8b0:4864:20::1134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7EFB31D0C4
        for <devicetree@vger.kernel.org>; Thu,  4 Aug 2022 11:27:36 -0700 (PDT)
Received: by mail-yw1-x1134.google.com with SMTP id 00721157ae682-2ef5380669cso3726487b3.9
        for <devicetree@vger.kernel.org>; Thu, 04 Aug 2022 11:27:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=eX8vBdPif72AOCUJ7zNNVFek4nz2akIAnOhX0YOIrkY=;
        b=LuZu0Ou/YgZIzgjMKDbHl+R0wB/6H/k9edimEwdI91oFh0iP12UJy5wg27oD9TmSik
         AHBmMfm8N99XSQPgEVhEzhJnrWj+/i5saSv7vIOk45CUPV1kgZ0V/PHRd3LUHd8iQHwz
         p8mNT9kgcxQQ2w5IbvvDxlxdZErHgdPMfuYWqkL4eYcKMiFhSb6LaVoN7HKKLqp3yEx5
         iFTMpX2iffHDNdomN48pWCVnH2Kp428CANAN4rbBjvkjEkkOkuRftYjgdIbo72JPF0ZE
         lPbr6jqt17aRChsotgl3Bjkg8x+1l00+OiKZ9CdNvMuWKCvOmONY0ng462Q0hJTLSovo
         8/Aw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=eX8vBdPif72AOCUJ7zNNVFek4nz2akIAnOhX0YOIrkY=;
        b=X4VzVlvy5LhzulEWjpw8RNwb0oGLST1J7y9oAvEHoB94x2BQR+FOP/3LHrr93/c4Ox
         StLOYhac7Ioxe4cdUtIs65Quq9ezD+zIR+lUQ5iv7IwHgF44cz1jcIwcSu8J+mpFQS57
         34dGMqZHe8L+EA52+iGPP4c+U0DSLcqiGXWDnSHiPOuw/kErVbdUxOqbHTfCgu//lc7f
         HkcA4lD38PSrla78UL7SDNS5YE9H6dJetWU95rkrMBNgBk+s+xGZ925i2a8UBLRhm942
         FaEi+nytXo36lB+NeElVSY1vYYFY8efsYGO59O5pD6/uu+d7ebASF0Ggq8XGwtN7rkkq
         NIiQ==
X-Gm-Message-State: ACgBeo29WDj3099YQeIlj49+WhyBrpViaEiCmP42BRerhO5q2jWPIiUY
        vT86elIknYPhRMFHxvxsS61AtB6OIwbGhYFiLZw9tQ==
X-Google-Smtp-Source: AA6agR7LdJ6XIMIA+KJyTSzFSbHsNimiVZHMY8XMW1klW1NNcy0mp80qvlVqIg7vzvT4Yfv022i2v5WunDitOL7XDSQ=
X-Received: by 2002:a81:50d4:0:b0:31f:5f85:566a with SMTP id
 e203-20020a8150d4000000b0031f5f85566amr2783119ywb.218.1659637655607; Thu, 04
 Aug 2022 11:27:35 -0700 (PDT)
MIME-Version: 1.0
References: <20220804061133.4110734-1-victor.liu@nxp.com> <20220804061133.4110734-2-victor.liu@nxp.com>
 <CAL_Jsq+B5PMOmZO4hz5DyEsA4V=UkrNn-6b58h8VbcPa2iaQ1g@mail.gmail.com>
In-Reply-To: <CAL_Jsq+B5PMOmZO4hz5DyEsA4V=UkrNn-6b58h8VbcPa2iaQ1g@mail.gmail.com>
From:   Saravana Kannan <saravanak@google.com>
Date:   Thu, 4 Aug 2022 11:26:58 -0700
Message-ID: <CAGETcx94De-wofRjtPgNxa+YQoU3+j+we+4K9Evm=vtzhopX8g@mail.gmail.com>
Subject: Re: [PATCH v3 1/3] drivers: bus: simple-pm-bus: Populate simple MFD
 child devices
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Liu Ying <victor.liu@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-17.6 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        ENV_AND_HDR_SPF_MATCH,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        USER_IN_DEF_DKIM_WL,USER_IN_DEF_SPF_WL autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 4, 2022 at 5:18 AM Rob Herring <robh+dt@kernel.org> wrote:
>
> On Thu, Aug 4, 2022 at 12:10 AM Liu Ying <victor.liu@nxp.com> wrote:
> >
> > There could be simple MFD device(s) connected to a simple PM bus as child
> > node(s), like Freescale i.MX8qxp pixel link MSI bus. Add a child match
> > table as an argument to of_platform_populate() function call to specify
> > the simple MFD devices so that they can be populated.
>
> There could be a simple-bus under it as well. You should just use
> of_platform_default_populate() instead.

I'm confused why we even need this patch. Wouldn't this driver
automatically probe simple-mfd buses and populate its child devices?
We already have it in simple_pm_bus_of_match.

I'm wondering if you are trying to workaround the behavior of having
"ONLY_BUS" set in simple_pm_bus_of_match for "simple-mfd". Have you
tried deleting that field and see if it does what you want?

And we wouldn't need to use of_platform_default_populate() because
this driver would take care of doing that recursively. Especially when
you need the clocks and power domain to be able to access the child
devices, you want the driver to probe and do that at each level before
automatically recursively adding all the grand-children devices.

-Saravana

>
> >
> > Signed-off-by: Liu Ying <victor.liu@nxp.com>
> > ---
> > v1->v3:
> > * No change.
> >
> >  drivers/bus/simple-pm-bus.c | 7 ++++++-
> >  1 file changed, 6 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/bus/simple-pm-bus.c b/drivers/bus/simple-pm-bus.c
> > index 6b8d6257ed8a..ff5f8ca5c024 100644
> > --- a/drivers/bus/simple-pm-bus.c
> > +++ b/drivers/bus/simple-pm-bus.c
> > @@ -13,6 +13,11 @@
> >  #include <linux/platform_device.h>
> >  #include <linux/pm_runtime.h>
> >
> > +static const struct of_device_id simple_pm_bus_child_matches[] = {
> > +       { .compatible = "simple-mfd", },
> > +       {}
> > +};
> > +
> >  static int simple_pm_bus_probe(struct platform_device *pdev)
> >  {
> >         const struct device *dev = &pdev->dev;
> > @@ -49,7 +54,7 @@ static int simple_pm_bus_probe(struct platform_device *pdev)
> >         pm_runtime_enable(&pdev->dev);
> >
> >         if (np)
> > -               of_platform_populate(np, NULL, lookup, &pdev->dev);
> > +               of_platform_populate(np, simple_pm_bus_child_matches, lookup, &pdev->dev);
> >
> >         return 0;
> >  }
> > --
> > 2.25.1
> >
