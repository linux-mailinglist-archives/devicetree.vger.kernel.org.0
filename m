Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6F13553A3A1
	for <lists+devicetree@lfdr.de>; Wed,  1 Jun 2022 13:10:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352516AbiFALJt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Jun 2022 07:09:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33450 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1352514AbiFALJs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Jun 2022 07:09:48 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B5A638A305
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 04:09:45 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id 90so435832uam.8
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 04:09:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=rQrZKdjLi/dmJaXHF0F1iD6/V/09l8/TlPIg/wPDBUs=;
        b=CZg31cYm7BSylj29y6+bz5RRI+Z3CTo57Sx6ggVCWoYcPqVGYPgfDOSRkfVRsiSMwI
         2EKcVFqptb9mQkgXQM5jyK9X3Xn54QJ4pKPRn0MGQDdOh197a6uOTtnvXfsRZ2KJ33J8
         uDAyug5DClxV0YOopNB4OesR312rN8yC6Qo/TdQuNTS0kdEIYxKBEUzvy+eueLVLhoqP
         /1lt1e7xpTleCBZ7Jde3FO3Sozqv7Qi84dU5q7F22UWg0Gh1GMimp6N+FYT4WBeKqRjp
         g6//WUKoe6m+U4iKBgJpXuUb06LE604AmqAQBHFOrQpRO2fKTrCGOJkQYk6FFqaBmdGQ
         4spw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=rQrZKdjLi/dmJaXHF0F1iD6/V/09l8/TlPIg/wPDBUs=;
        b=3GWUcylVQB5Z725H2wdf/VJOTmwvchHV7z9RYNW8CCFIUEQ6hlPdoO6yGugwBzfy+7
         UyNgzcieEsLStsilQS/HyYw7wdFgcXpKBjs2on+WTCHDma6Ujt5UXsfCzSgzhm8XkZUq
         eIh75LtGGDXKBKZ1ccLIfsO00nFCwP/3JtItbf/li6Uy+loEjmSynbdYurEL4DtzHVCB
         ICNBHQaFA1dWD1xDY0d7UwfaOxsiyscLfVGKr/EF4E9o2vDUHrNEVNTWx/ovyOTSnQF5
         oOF/zPtTbg3t6uq2C4unxhs/pE6hZ2UnAwKWp5LB3kmUakmxXmJ0eVcFp80MeaaneiTs
         3Xgg==
X-Gm-Message-State: AOAM533eOycr5EYF+6IwC8nNcj0oXvdLDtSOB9NtBBOA3BOXODga6kk6
        MWVk1LswZ+6yrYh1EbokDEF5XDMyt+oNCMVLh2s=
X-Google-Smtp-Source: ABdhPJyvRlr8Z6BDDWfUjIDaSyM5vKydNmTFSrzFMDri0ompasRie9sPZYKdEj2JF/W6tGW4dpSMVpi8BPLo/r6BayE=
X-Received: by 2002:ab0:15ae:0:b0:359:6107:43b8 with SMTP id
 i43-20020ab015ae000000b00359610743b8mr22959106uae.23.1654081784644; Wed, 01
 Jun 2022 04:09:44 -0700 (PDT)
MIME-Version: 1.0
References: <20220515202032.3046-1-stefan.wahren@i2se.com> <20220515202032.3046-8-stefan.wahren@i2se.com>
 <CALeDE9PeKvXu2AKp=RXt5yU6y5=vQw35PSGiFPpPmxVT+TYSYg@mail.gmail.com>
 <97a51373-91df-17de-8525-cd99a9166889@i2se.com> <CALeDE9Mgd3TYJo81P6++uzKHMBeYO68EFPjEhwZqri5BcHrK8w@mail.gmail.com>
 <8ea4885d-a9f6-53f6-f168-2334c574cd53@i2se.com>
In-Reply-To: <8ea4885d-a9f6-53f6-f168-2334c574cd53@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Wed, 1 Jun 2022 12:09:33 +0100
Message-ID: <CALeDE9OPNBeFOPn9oVAsMAO=Px1QGkdZyCc+7EGie8T2xNnhqg@mail.gmail.com>
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
Content-Transfer-Encoding: quoted-printable
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

> Am 31.05.22 um 22:11 schrieb Peter Robinson:
> > Hi Stefan,
> >
> > On Tue, May 31, 2022 at 6:27 PM Stefan Wahren <stefan.wahren@i2se.com> =
wrote:
> >> Hi Peter,
> >>
> >> Am 31.05.22 um 17:08 schrieb Peter Robinson:
> >>> On Sun, May 15, 2022 at 9:21 PM Stefan Wahren <stefan.wahren@i2se.com=
> wrote:
> >>>> In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still pr=
esent
> >>>> with the ISP and H264 bits, and V3D is in the same place in the new =
ASB
> >>>> as the old one.
> >>>>
> >>>> As per the devicetree bindings, BCM2711 will provide both the old an=
d
> >>>> new ASB resources, so get both of them and pass them into
> >>>> 'bcm2835-power,' which will take care of selecting which one to use
> >>>> accordingly.
> >>>>
> >>>> Since the RPiVid ASB's resources were being provided prior to formal=
izing
> >>>> the bindings[1], also support the old firmwares that didn't use
> >>> I'm guessing this [1] is referring to "[1] See: 7dbe8c62ceeb ("ARM:
> >>> dts: Add minimal Raspberry Pi 4 support")" referred to in the origina=
l
> >>> patch [1] that Nicolas did, was there a reason to drop the
> >>> details/changelog here?
> >> Oops, the link accidently get lost.
> >>> The decision not to use bits makes sense I
> >>> believe.
> >> Yes, i think the new version is more elegant.
> >>> [1] https://patchwork.kernel.org/project/linux-arm-kernel/patch/20220=
213225646.67761-8-pbrobinson@gmail.com/
> >>>
> >>>> 'reg-names.'
> >>>>
> >>>> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> >>>> ---
> >>>>    drivers/mfd/bcm2835-pm.c       | 18 ++++++++++++++++++
> >>>>    include/linux/mfd/bcm2835-pm.h |  1 +
> >>>>    2 files changed, 19 insertions(+)
> >>>>
> >>>> diff --git a/drivers/mfd/bcm2835-pm.c b/drivers/mfd/bcm2835-pm.c
> >>>> index 1656d786993a..da110767c6a4 100644
> >>>> --- a/drivers/mfd/bcm2835-pm.c
> >>>> +++ b/drivers/mfd/bcm2835-pm.c
> >>>> @@ -28,6 +28,8 @@ static const struct mfd_cell bcm2835_power_devs[] =
=3D {
> >>>>    static int bcm2835_pm_get_pdata(struct platform_device *pdev,
> >>>>                                   struct bcm2835_pm *pm)
> >>>>    {
> >>>> +       bool is_bcm2711 =3D of_device_is_compatible(pm->dev->of_node=
, "brcm,bcm2711-pm");
> >>>> +
> >>>>           /* If no 'reg-names' property is found we can assume we're=
 using old
> >>>>            * firmware.
> >>>>            */
> >>>> @@ -39,6 +41,7 @@ static int bcm2835_pm_get_pdata(struct platform_de=
vice *pdev,
> >>>>                           return PTR_ERR(pm->base);
> >>>>
> >>>>                   pm->asb =3D devm_platform_ioremap_resource(pdev, 1=
);
> >>>> +               pm->rpivid_asb =3D devm_platform_ioremap_resource(pd=
ev, 2);
> >>> Shouldn't we check if is_bcm2711 before we assign rpivid_asb above?
> >> Yes, make sense.
> >>>>           } else {
> >>>>                   struct resource *res;
> >>>>
> >>>> @@ -50,11 +53,25 @@ static int bcm2835_pm_get_pdata(struct platform_=
device *pdev,
> >>>>                                                       "asb");
> >>>>                   if (res)
> >>>>                           pm->asb =3D devm_ioremap_resource(&pdev->d=
ev, res);
> >>>> +
> >>>> +               res =3D platform_get_resource_byname(pdev, IORESOURC=
E_MEM,
> >>>> +                                                   "rpivid_asb");
> >>>> +               if (res)
> >>>> +                       pm->rpivid_asb =3D devm_ioremap_resource(&pd=
ev->dev,
> >>>> +                                                               res)=
;
> >>>>           }
> >>>>
> >>>>           if (IS_ERR(pm->asb))
> >>>>                   pm->asb =3D NULL;
> >>>>
> >>>> +       if (IS_ERR(pm->rpivid_asb))
> >>>> +               pm->rpivid_asb =3D NULL;
> >>>> +
> >>>> +       if (pm->rpivid_asb && !is_bcm2711) {
> >>>> +               dev_err(pm->dev, "RPiVid ASB support only present in=
 BCM2711\n");
> >>> Should we ever get into this situation? If it's an older get RPi I'm
> >>> guessing pm->rpivid_asb should have been set to NULL from the error
> >>> above.
> >> I think this was a warning for older BCM2711 downstream DT files which
> >> had rpivid_asb register but no BCM2711 compatible.
> > Based on the history I remember that makes sense, but the warning is a
> > bit misleading in the context given it would actually be a 2711. Is it
> > purely a DT check or is does the version of VC firmware come into play
> > here too, I seem to remember firmware was used to make some things
> > work on older OSes in the early days of RPi4 (although it's hard to
> > tell exactly what was done, and I've tried to forget).
>
> Sorry, my fault. This isn't a warning. It's an error. This driver bail
> out as soon the DT is unexpected, which could otherwise lead to
> unexpected behavior of the power driver (rpivid_asb will be interpret as
> BCM2711). There is no firmware involved, just a pure DT. Maybe i should
> add a comment about this assumption here.
>
> Suggested error message:
>
> "Unexpected rpivid_asb register, please fix your DTB.\=C5=86"

Maybe "please fix/update your DTB" but either way is good for me.

> >
> >>>> +               return -EINVAL;
> >>>> +       }
> >>>> +
> >>>>           return 0;
> >>>>    }
> >>>>
> >>>> @@ -95,6 +112,7 @@ static int bcm2835_pm_probe(struct platform_devic=
e *pdev)
> >>>>    static const struct of_device_id bcm2835_pm_of_match[] =3D {
> >>>>           { .compatible =3D "brcm,bcm2835-pm-wdt", },
> >>>>           { .compatible =3D "brcm,bcm2835-pm", },
> >>>> +       { .compatible =3D "brcm,bcm2711-pm", },
> >>>>           {},
> >>>>    };
> >>>>    MODULE_DEVICE_TABLE(of, bcm2835_pm_of_match);
> >>>> diff --git a/include/linux/mfd/bcm2835-pm.h b/include/linux/mfd/bcm2=
835-pm.h
> >>>> index ed37dc40e82a..f70a810c55f7 100644
> >>>> --- a/include/linux/mfd/bcm2835-pm.h
> >>>> +++ b/include/linux/mfd/bcm2835-pm.h
> >>>> @@ -9,6 +9,7 @@ struct bcm2835_pm {
> >>>>           struct device *dev;
> >>>>           void __iomem *base;
> >>>>           void __iomem *asb;
> >>>> +       void __iomem *rpivid_asb;
> >>>>    };
> >>>>
> >>>>    #endif /* BCM2835_MFD_PM_H */
> >>>> --
> >>>> 2.25.1
> >>>>
> >>> _______________________________________________
> >>> linux-arm-kernel mailing list
> >>> linux-arm-kernel@lists.infradead.org
> >>> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
> > _______________________________________________
> > linux-arm-kernel mailing list
> > linux-arm-kernel@lists.infradead.org
> > http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
