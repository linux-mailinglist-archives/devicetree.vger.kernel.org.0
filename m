Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BCFB5397D2
	for <lists+devicetree@lfdr.de>; Tue, 31 May 2022 22:11:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347708AbiEaULR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 31 May 2022 16:11:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38688 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347696AbiEaULP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 31 May 2022 16:11:15 -0400
Received: from mail-vs1-xe2b.google.com (mail-vs1-xe2b.google.com [IPv6:2607:f8b0:4864:20::e2b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4AFD9CF2D
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 13:11:13 -0700 (PDT)
Received: by mail-vs1-xe2b.google.com with SMTP id x187so3182143vsb.0
        for <devicetree@vger.kernel.org>; Tue, 31 May 2022 13:11:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Z4obN2PrlRBi/vvUEyV2UQsecnDWlqJ38oVljJMTvP0=;
        b=MRh1CfamC45E//L3a85Y0mbiAzUfXHG3gCMVCoPNHcm8q/zZPkJY26jKqNH7WNcs4V
         /Ky4vGqXVofVGIFp3R6iEWVT1b5LLBi8a95rr3nGsV/YskNEJwVbZ5mZjKzC9CQLsp0F
         KMdjzEWa5iOYDW7bVg5MjGZMwpcD3eLIcPJCfW/Fr1KLfjbUbMIWRhYu+L/hKhVn6Mi9
         y9+Nltc7nHqji7IL7php0K8NqPLXPspnB3NLnip7rezuYwhvtYtZ+qUnV3uSFwYUNWjV
         qFetHGK370jpNS493GefxqVLd+vO0hM5vY58X72TkRusRB8yxROj2WzXVgp6B892WLlA
         loOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Z4obN2PrlRBi/vvUEyV2UQsecnDWlqJ38oVljJMTvP0=;
        b=yDXFpPTkfdCwpighEMxdu7yznBTdOC/fPlv4ZqQ8BJGfqvFlmfsDPA68C3IwwvoZ2j
         de8s3Orvvrrix20W1L0LmEIjcsuMDcZSLNQVe+RtoMFWHUlHK+RXenjU3w8iXGZTdQXl
         Stb/yteHj4vGmWlbbIVuHMZobEcbaIMgT5yDk/DuZ4NAUluSPCEun2mMlQiqYJi6A4+T
         AC9lpKWQiOnylnoOVRyx00Jrgite2wvuSX2o1lUlMCkoiKuYWKIDQhh6XgECXv0zDWfz
         F46UuJlRgZU9ajNwvZDADqwkdjWLHUyEYTzohJfkeY13VsyVpCoxETsOzsqvrAQU6HcR
         Yyxg==
X-Gm-Message-State: AOAM533c/OP+PKqcwXJcx1WC1T67SJutUAW+007evZMoDzJvQ+1I+JOX
        nGKQWaisBCqYyClkcIPTCAGoRJbXAM7uRJdRzXs=
X-Google-Smtp-Source: ABdhPJwpqp0PNjWqG6eHNSmMkYh1/ESXC1HCBt46qMnqyXHLMu0gXsuccoFz7YZhVaV2BIl6en0hhmYjg3nL3o/Z03Y=
X-Received: by 2002:a05:6102:3753:b0:337:8f39:f642 with SMTP id
 u19-20020a056102375300b003378f39f642mr21378616vst.52.1654027872782; Tue, 31
 May 2022 13:11:12 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-8-stefan.wahren@i2se.com>
 <CALeDE9PeKvXu2AKp=RXt5yU6y5=vQw35PSGiFPpPmxVT+TYSYg@mail.gmail.com> <97a51373-91df-17de-8525-cd99a9166889@i2se.com>
In-Reply-To: <97a51373-91df-17de-8525-cd99a9166889@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Tue, 31 May 2022 21:11:01 +0100
Message-ID: <CALeDE9Mgd3TYJo81P6++uzKHMBeYO68EFPjEhwZqri5BcHrK8w@mail.gmail.com>
Subject: Re: [PATCH 07/11] mfd: bcm2835-pm: Add support for BCM2711
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Lee Jones <lee.jones@linaro.org>,
        Melissa Wen <melissa.srw@gmail.com>,
        Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Maxime Ripard <maxime@cerno.tech>, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Stefan,

On Tue, May 31, 2022 at 6:27 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Hi Peter,
>
> Am 31.05.22 um 17:08 schrieb Peter Robinson:
> > On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
> >> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> >> with the ISP and H264 bits, and V3D is in the same place in the new ASB
> >> as the old one.
> >>
> >> As per the devicetree bindings, BCM2711 will provide both the old and
> >> new ASB resources, so get both of them and pass them into
> >> 'bcm2835-power,' which will take care of selecting which one to use
> >> accordingly.
> >>
> >> Since the RPiVid ASB's resources were being provided prior to formalizing
> >> the bindings[1], also support the old firmwares that didn't use
> > I'm guessing this [1] is referring to "[1] See: 7dbe8c62ceeb ("ARM:
> > dts: Add minimal Raspberry Pi 4 support")" referred to in the original
> > patch [1] that Nicolas did, was there a reason to drop the
> > details/changelog here?
> Oops, the link accidently get lost.
> > The decision not to use bits makes sense I
> > believe.
> Yes, i think the new version is more elegant.
> >
> > [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220213225646.67761-8-pbrobinson@gmail.com/
> >
> >> 'reg-names.'
> >>
> >> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> >> ---
> >>   drivers/mfd/bcm2835-pm.c       | 18 ++++++++++++++++++
> >>   include/linux/mfd/bcm2835-pm.h |  1 +
> >>   2 files changed, 19 insertions(+)
> >>
> >> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
> >> index 1656d786993a..da110767c6a4 100644
> >> --- a/drivers/mfd/bcm2835-pm.c
> >> +++ b/drivers/mfd/bcm2835-pm.c
> >> @@ -28,6 +28,8 @@ static const struct mfd_cell bcm2835_power_devs[] = {
> >>   static int bcm2835_pm_get_pdata(struct platform_device *pdev,
> >>                                  struct bcm2835_pm *pm)
> >>   {
> >> +       bool is_bcm2711 = of_device_is_compatible(pm->dev->of_node, "brcm,bcm2711-pm");
> >> +
> >>          /* If no 'reg-names' property is found we can assume we're using old
> >>           * firmware.
> >>           */
> >> @@ -39,6 +41,7 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
> >>                          return PTR_ERR(pm->base);
> >>
> >>                  pm->asb = devm_platform_ioremap_resource(pdev, 1);
> >> +               pm->rpivid_asb = devm_platform_ioremap_resource(pdev, 2);
> > Shouldn't we check if is_bcm2711 before we assign rpivid_asb above?
> Yes, make sense.
> >
> >>          } else {
> >>                  struct resource *res;
> >>
> >> @@ -50,11 +53,25 @@ static int bcm2835_pm_get_pdata(struct platform_device *pdev,
> >>                                                      "asb");
> >>                  if (res)
> >>                          pm->asb = devm_ioremap_resource(&pdev->dev, res);
> >> +
> >> +               res = platform_get_resource_byname(pdev, IORESOURCE_MEM,
> >> +                                                   "rpivid_asb");
> >> +               if (res)
> >> +                       pm->rpivid_asb = devm_ioremap_resource(&pdev->dev,
> >> +                                                               res);
> >>          }
> >>
> >>          if (IS_ERR(pm->asb))
> >>                  pm->asb = NULL;
> >>
> >> +       if (IS_ERR(pm->rpivid_asb))
> >> +               pm->rpivid_asb = NULL;
> >> +
> >> +       if (pm->rpivid_asb && !is_bcm2711) {
> >> +               dev_err(pm->dev, "RPiVid ASB support only present in BCM2711\n");
> > Should we ever get into this situation? If it's an older get RPi I'm
> > guessing pm->rpivid_asb should have been set to NULL from the error
> > above.
> I think this was a warning for older BCM2711 downstream DT files which
> had rpivid_asb register but no BCM2711 compatible.

Based on the history I remember that makes sense, but the warning is a
bit misleading in the context given it would actually be a 2711. Is it
purely a DT check or is does the version of VC firmware come into play
here too, I seem to remember firmware was used to make some things
work on older OSes in the early days of RPi4 (although it's hard to
tell exactly what was done, and I've tried to forget).

> >> +               return -EINVAL;
> >> +       }
> >> +
> >>          return 0;
> >>   }
> >>
> >> @@ -95,6 +112,7 @@ static int bcm2835_pm_probe(struct platform_device *pdev)
> >>   static const struct of_device_id bcm2835_pm_of_match[] = {
> >>          { .compatible = "brcm,bcm2835-pm-wdt", },
> >>          { .compatible = "brcm,bcm2835-pm", },
> >> +       { .compatible = "brcm,bcm2711-pm", },
> >>          {},
> >>   };
> >>   MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
> >> diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2835-pm.h
> >> index ed37dc40e82a..f70a810c55f7 100644
> >> --- a/include/linux/mfd/bcm2835-pm.h
> >> +++ b/include/linux/mfd/bcm2835-pm.h
> >> @@ -9,6 +9,7 @@ struct bcm2835_pm {
> >>          struct device *dev;
> >>          void __iomem *base;
> >>          void __iomem *asb;
> >> +       void __iomem *rpivid_asb;
> >>   };
> >>
> >>   #endif /* BCM2835_MFD_PM_H */
> >> --
> >> 2.25.1
> >>
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
