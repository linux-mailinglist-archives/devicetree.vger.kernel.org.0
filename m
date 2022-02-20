Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4154E4BD0ED
	for <lists+devicetree@lfdr.de>; Sun, 20 Feb 2022 20:28:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237888AbiBTT2X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Feb 2022 14:28:23 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:54746 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241913AbiBTT2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Feb 2022 14:28:22 -0500
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0A91142EDE
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 11:28:00 -0800 (PST)
Received: by mail-vk1-xa33.google.com with SMTP id n142so7569124vkf.5
        for <devicetree@vger.kernel.org>; Sun, 20 Feb 2022 11:28:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=4IRO5hHGYeIoylYuVK33+2BS5ReysD7fo4a7BXesZuw=;
        b=CsoFZP8P1w9w2drWP8uiM3uOSCLueumKupeIAhRAXKTGoLTlCjgBO3/rZJ/psbGFZB
         H7BVErWlwgMKE/K74azciXZT1fdQCmKJ6KRCK3mO/Xxsr5+yu9OnzweySUSYf2HA96o3
         4Yg2bfXE3e4+g7NYr1vgX4u1N/NnaIwiP+TJg9RKuxmm1SXJZ4W6+26XaAYh+q1cSlmU
         U5K4Zd/I2pt69JKKjvT859Nnz1q3g7muFJyKiFdemkqEvTRcRacwkCV6D25OoSoW7DXZ
         JeTeQx0gMoK1BKfUG6vCMmRfkbd9b2U0b2zs6mWK5YViX8lhHpBqmUFIkVCIuWX0+6WP
         9HGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=4IRO5hHGYeIoylYuVK33+2BS5ReysD7fo4a7BXesZuw=;
        b=pXBBtzuQJrn57nvggKhJFjCvkrTpU/9Leo2ggJQEtZflRzqhuY0n5WoUEGB6382dYr
         qQqBPKtMBdQjVZV1CFKtMLPtnUZvXxjyO62EKIlbuDX+AN6QvyVUvIX1PTCL4yHMkYk0
         NUOiA1Ooh4vzE6nYZ48hSjssj8uHRzzVMpwMIhBgR/d4sOWMSROgaQRxsO84kiSC7vUq
         sv8CZiXFAXNjh/3WyqsD0kHl7h9IFVvxfNhzwazuFcN4hMk4LBIIp5wAdBTs4YbVXt+N
         oAmX8pLFRFcRY/O4WHIO76qHwLJTc1p6WCARdYs/A77Lndq9DeUy9C9UImzYQf2rm7sI
         49Iw==
X-Gm-Message-State: AOAM530wQBeMNGby3PfVQpZdOIj6vBF7HInBi4annd5gEzvM6zDvsIaB
        44yrkrlBFB9I8GQEFZrf/S35cqlMhIRI/rEmojBb8Lhiqeg=
X-Google-Smtp-Source: ABdhPJwTuEFZ0bprKQguEb06qZ4ZbEct6gVWJdtqXGDtbEg9KPRdpROMAuRF4Za2EmOfRck6Tw6IYWXKP+ZNvN0AXlY=
X-Received: by 2002:a05:6122:a1f:b0:32d:a4a4:6c27 with SMTP id
 31-20020a0561220a1f00b0032da4a46c27mr6480235vkn.14.1645385279027; Sun, 20 Feb
 2022 11:27:59 -0800 (PST)
MIME-Version: 1.0
References: <20220213225646.67761-1-pbrobinson@gmail.com> <20220213225646.67761-9-pbrobinson@gmail.com>
 <27143189-0cb4-7bf5-25c1-1f5eff9c2d4d@i2se.com>
In-Reply-To: <27143189-0cb4-7bf5-25c1-1f5eff9c2d4d@i2se.com>
From:   Peter Robinson <pbrobinson@gmail.com>
Date:   Sun, 20 Feb 2022 19:27:48 +0000
Message-ID: <CALeDE9M7Km2xsK2ooheBzfy_75pSocMGdzti-LaFNpSh6tF2Fg@mail.gmail.com>
Subject: Re: [PATCH v4 08/15] soc: bcm: bcm2835-power: Add support for
 BCM2711's RPiVid ASB
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        bcm-kernel-feedback-list@broadcom.com, devicetree@vger.kernel.org,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Emma Anholt <emma@anholt.net>, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Russell King <linux@armlinux.org.uk>,
        Arnd Bergmann <arnd@arndb.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
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

On Sat, Feb 19, 2022 at 3:39 PM Stefan Wahren <stefan.wahren@i2se.com> wrote:
>
> Hi Peter,
>
> Am 13.02.22 um 23:56 schrieb Peter Robinson:
> > From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> >
> > In BCM2711 the new RPiVid ASB took over V3D. The old ASB is still present
> > with the ISP and H264 bits, and V3D is in the same place in the new ASB
> > as the old one.
> >
> > Use the fact that 'pm->rpivid_asb' is populated as a hint that we're on
> > BCM2711. On top of that introduce the macro ASB_BASE() which will select
> > the correct ASB register base, based on whether we're trying to access
> > V3D and which platform we're on.
> >
> > Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
> > Signed-off-by: Peter Robinson <pbrobinson@gmail.com>
> > ---
> > Changes since v2:
> >  - Correct names again
> >
> > Changes since v1:
> >  - Correct names
> >
> >  drivers/soc/bcm/bcm2835-power.c | 66 ++++++++++++++++++++-------------
> >  1 file changed, 41 insertions(+), 25 deletions(-)
> >
> > diff --git a/drivers/soc/bcm/bcm2835-power.c b/drivers/soc/bcm/bcm2835-power.c
> > index 1e0041ec8132..eea31f75dc64 100644
> > --- a/drivers/soc/bcm/bcm2835-power.c
> > +++ b/drivers/soc/bcm/bcm2835-power.c
> > @@ -126,8 +126,9 @@
> >
> >  #define ASB_AXI_BRDG_ID                      0x20
> >
> > -#define ASB_READ(reg) readl(power->asb + (reg))
> > -#define ASB_WRITE(reg, val) writel(PM_PASSWORD | (val), power->asb + (reg))
> > +#define ASB_BASE(is_v3d) (is_v3d && power->rpivid_asb ? power->rpivid_asb : power->asb)
> > +#define ASB_READ(reg, is_v3d) readl(ASB_BASE(is_v3d) + (reg))
> > +#define ASB_WRITE(reg, val, is_v3d) writel(PM_PASSWORD | (val), ASB_BASE(is_v3d) + (reg))
> just a general note: passing parameter to decide which register should
> be used is not the preferred way. It's harder to maintain. A more data
> driven approach is better in the long run.
> >
> >  struct bcm2835_power_domain {
> >       struct generic_pm_domain base;
> > @@ -142,13 +143,16 @@ struct bcm2835_power {
> >       void __iomem            *base;
> >       /* AXI Async bridge registers. */
> >       void __iomem            *asb;
> > +     /* RPiVid bridge registers. */
> > +     void __iomem            *rpivid_asb;
> >
> >       struct genpd_onecell_data pd_xlate;
> >       struct bcm2835_power_domain domains[BCM2835_POWER_DOMAIN_COUNT];
> >       struct reset_controller_dev reset;
> >  };
> >
> > -static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
> > +static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg,
> > +                           bool is_v3d)
> >  {
> >       u64 start;
> >
> > @@ -158,8 +162,8 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
> >       start = ktime_get_ns();
> >
> >       /* Enable the module's async AXI bridges. */
> > -     ASB_WRITE(reg, ASB_READ(reg) & ~ASB_REQ_STOP);
> > -     while (ASB_READ(reg) & ASB_ACK) {
> > +     ASB_WRITE(reg, ASB_READ(reg, is_v3d) & ~ASB_REQ_STOP, is_v3d);
> > +     while (ASB_READ(reg, is_v3d) & ASB_ACK) {
> >               cpu_relax();
> >               if (ktime_get_ns() - start >= 1000)
> >                       return -ETIMEDOUT;
> > @@ -168,7 +172,8 @@ static int bcm2835_asb_enable(struct bcm2835_power *power, u32 reg)
> >       return 0;
> >  }
> >
> > -static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
> > +static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg,
> > +                            bool is_v3d)
> >  {
> >       u64 start;
> >
> > @@ -178,8 +183,8 @@ static int bcm2835_asb_disable(struct bcm2835_power *power, u32 reg)
> >       start = ktime_get_ns();
> >
> >       /* Enable the module's async AXI bridges. */
> > -     ASB_WRITE(reg, ASB_READ(reg) | ASB_REQ_STOP);
> > -     while (!(ASB_READ(reg) & ASB_ACK)) {
> > +     ASB_WRITE(reg, ASB_READ(reg, is_v3d) | ASB_REQ_STOP, is_v3d);
> > +     while (!(ASB_READ(reg, is_v3d) & ASB_ACK)) {
> >               cpu_relax();
> >               if (ktime_get_ns() - start >= 1000)
> >                       return -ETIMEDOUT;
> > @@ -274,7 +279,8 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
> >                               u32 pm_reg,
> >                               u32 asb_m_reg,
> >                               u32 asb_s_reg,
> > -                             u32 reset_flags)
> > +                             u32 reset_flags,
> > +                             bool is_v3d)
> >  {
> >       struct bcm2835_power *power = pd->power;
> >       int ret;
> > @@ -301,13 +307,13 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
> >               goto err_enable_resets;
> >       }
> >
> > -     ret = bcm2835_asb_enable(power, asb_m_reg);
> > +     ret = bcm2835_asb_enable(power, asb_m_reg, is_v3d);
> >       if (ret) {
> >               dev_err(power->dev, "Failed to enable ASB master for %s\n",
> >                       pd->base.name);
> >               goto err_disable_clk;
> >       }
> > -     ret = bcm2835_asb_enable(power, asb_s_reg);
> > +     ret = bcm2835_asb_enable(power, asb_s_reg, is_v3d);
> >       if (ret) {
> >               dev_err(power->dev, "Failed to enable ASB slave for %s\n",
> >                       pd->base.name);
> > @@ -317,7 +323,7 @@ static int bcm2835_asb_power_on(struct bcm2835_power_domain *pd,
> >       return 0;
> >
> >  err_disable_asb_master:
> > -     bcm2835_asb_disable(power, asb_m_reg);
> > +     bcm2835_asb_disable(power, asb_m_reg, is_v3d);
> >  err_disable_clk:
> >       clk_disable_unprepare(pd->clk);
> >  err_enable_resets:
> > @@ -329,22 +335,23 @@ static int bcm2835_asb_power_off(struct bcm2835_power_domain *pd,
> >                                u32 pm_reg,
> >                                u32 asb_m_reg,
> >                                u32 asb_s_reg,
> > -                              u32 reset_flags)
> > +                              u32 reset_flags,
> > +                              bool is_v3d)
> >  {
> >       struct bcm2835_power *power = pd->power;
> >       int ret;
> >
> > -     ret = bcm2835_asb_disable(power, asb_s_reg);
> > +     ret = bcm2835_asb_disable(power, asb_s_reg, is_v3d);
> >       if (ret) {
> >               dev_warn(power->dev, "Failed to disable ASB slave for %s\n",
> >                        pd->base.name);
> >               return ret;
> >       }
> > -     ret = bcm2835_asb_disable(power, asb_m_reg);
> > +     ret = bcm2835_asb_disable(power, asb_m_reg, is_v3d);
> >       if (ret) {
> >               dev_warn(power->dev, "Failed to disable ASB master for %s\n",
> >                        pd->base.name);
> > -             bcm2835_asb_enable(power, asb_s_reg);
> > +             bcm2835_asb_enable(power, asb_s_reg, is_v3d);
> >               return ret;
> >       }
> >
> > @@ -369,7 +376,7 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
> >       case BCM2835_POWER_DOMAIN_GRAFX_V3D:
> >               return bcm2835_asb_power_on(pd, PM_GRAFX,
> >                                           ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
> > -                                         PM_V3DRSTN);
> > +                                         PM_V3DRSTN, true);
> >
> >       case BCM2835_POWER_DOMAIN_IMAGE:
> >               return bcm2835_power_power_on(pd, PM_IMAGE);
> > @@ -377,17 +384,17 @@ static int bcm2835_power_pd_power_on(struct generic_pm_domain *domain)
> >       case BCM2835_POWER_DOMAIN_IMAGE_PERI:
> >               return bcm2835_asb_power_on(pd, PM_IMAGE,
> >                                           0, 0,
> > -                                         PM_PERIRSTN);
> > +                                         PM_PERIRSTN, false);
> >
> >       case BCM2835_POWER_DOMAIN_IMAGE_ISP:
> >               return bcm2835_asb_power_on(pd, PM_IMAGE,
> >                                           ASB_ISP_M_CTRL, ASB_ISP_S_CTRL,
> > -                                         PM_ISPRSTN);
> > +                                         PM_ISPRSTN, false);
> >
> >       case BCM2835_POWER_DOMAIN_IMAGE_H264:
> >               return bcm2835_asb_power_on(pd, PM_IMAGE,
> >                                           ASB_H264_M_CTRL, ASB_H264_S_CTRL,
> > -                                         PM_H264RSTN);
> > +                                         PM_H264RSTN, false);
> >
> >       case BCM2835_POWER_DOMAIN_USB:
> >               PM_WRITE(PM_USB, PM_USB_CTRLEN);
> > @@ -435,7 +442,7 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
> >       case BCM2835_POWER_DOMAIN_GRAFX_V3D:
> >               return bcm2835_asb_power_off(pd, PM_GRAFX,
> >                                            ASB_V3D_M_CTRL, ASB_V3D_S_CTRL,
> > -                                          PM_V3DRSTN);
> > +                                          PM_V3DRSTN, true);
> >
> >       case BCM2835_POWER_DOMAIN_IMAGE:
> >               return bcm2835_power_power_off(pd, PM_IMAGE);
> > @@ -443,17 +450,17 @@ static int bcm2835_power_pd_power_off(struct generic_pm_domain *domain)
> >       case BCM2835_POWER_DOMAIN_IMAGE_PERI:
> >               return bcm2835_asb_power_off(pd, PM_IMAGE,
> >                                            0, 0,
> > -                                          PM_PERIRSTN);
> > +                                          PM_PERIRSTN, false);
> >
> >       case BCM2835_POWER_DOMAIN_IMAGE_ISP:
> >               return bcm2835_asb_power_off(pd, PM_IMAGE,
> >                                            ASB_ISP_M_CTRL, ASB_ISP_S_CTRL,
> > -                                          PM_ISPRSTN);
> > +                                          PM_ISPRSTN, false);
> >
> >       case BCM2835_POWER_DOMAIN_IMAGE_H264:
> >               return bcm2835_asb_power_off(pd, PM_IMAGE,
> >                                            ASB_H264_M_CTRL, ASB_H264_S_CTRL,
> > -                                          PM_H264RSTN);
> > +                                          PM_H264RSTN, false);
> >
> >       case BCM2835_POWER_DOMAIN_USB:
> >               PM_WRITE(PM_USB, 0);
> > @@ -626,13 +633,22 @@ static int bcm2835_power_probe(struct platform_device *pdev)
> >       power->dev = dev;
> >       power->base = pm->base;
> >       power->asb = pm->asb;
> > +     power->rpivid_asb = pm->rpivid_asb;
> >
> > -     id = ASB_READ(ASB_AXI_BRDG_ID);
> > +     id = ASB_READ(ASB_AXI_BRDG_ID, false);
> >       if (id != 0x62726467 /* "BRDG" */) {
> >               dev_err(dev, "ASB register ID returned 0x%08x\n", id);
> >               return -ENODEV;
> >       }
> >
> > +     if (pm->rpivid_asb) {
> > +             id = ASB_READ(ASB_AXI_BRDG_ID, true);
> > +             if (id != 0x62726467 /* "BRDG" */) {
>
> It would be nice to use a define for this id, since we use it twice.

Any preferences or suggestion as to what it should be called?

Also are you prepared to add/ok if I add your reviewed-by to the
patches you've reviewed?

Peter

> Best regards
>
> > +                     dev_err(dev, "RPiVid ASB register ID returned 0x%08x\n", id);
> > +                     return -ENODEV;
> > +             }
> > +     }
> > +
> >       power->pd_xlate.domains = devm_kcalloc(dev,
> >                                              ARRAY_SIZE(power_domain_names),
> >                                              sizeof(*power->pd_xlate.domains),
>
