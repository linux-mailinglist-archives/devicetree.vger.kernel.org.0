Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A050B266615
	for <lists+devicetree@lfdr.de>; Fri, 11 Sep 2020 19:21:11 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726151AbgIKRVH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Sep 2020 13:21:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51822 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726239AbgIKRUv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Sep 2020 13:20:51 -0400
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com [IPv6:2a00:1450:4864:20::343])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3EC05C061757
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 10:20:50 -0700 (PDT)
Received: by mail-wm1-x343.google.com with SMTP id a9so5512671wmm.2
        for <devicetree@vger.kernel.org>; Fri, 11 Sep 2020 10:20:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=y0IusjOAMzlu0LEffu8/teWA22xcDWq2yUsAVTXhPgg=;
        b=nrtqiqrzQFIINClpSv3fM9Bge5ZuVLwMEJ0o5IkBjDr289chYtyE1GrCw6/3gVtVK6
         Djn9lLs7l/lwQgTkizVLyTBOOj3jttfWOp+DY8X9hJs5bZRs74/APQ1g18cg1iGNND0E
         z9pHWqbslF6YHfnP8lWH30Hr7rGkduixM3k3g=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=y0IusjOAMzlu0LEffu8/teWA22xcDWq2yUsAVTXhPgg=;
        b=CTnr6oZrvpr5NeXGz5ursiHWX4Qp6aUmdK8CqfuGHz9MdWNRpQRe93E3kooYzEbbhz
         DBjrY8ekbdXA07Lw3ZCGCA1H5LrOhcUtnVPRNbybCbyRyrWmxCbzhE43/vmXtNQV5ttP
         UGc4TQnE2b8D+nQ+5jju4+flQJDMsCWHXjhV0S/adwb0Kbj8lg327VwvHf6DXmdoSlp0
         I1/tdMujfs1CWRAhEQuGNm/e4wlRzcOLkdCS8ACwAOOnsaWMgbQcAFXe+OCs+ZX8hUwd
         IIz2o+nz6JzgxUYbkUo5Waq0eTBaAgjdShs1j00sMNtzit9NxHEeBXGBWiBUrLG0DKbb
         wyWQ==
X-Gm-Message-State: AOAM533hDUC8taFcmxZSWsm4c/ssCLSPB8nFwa4BYwQzptyh55olQq7d
        Er7EVHSBGzF81tLcdD0n+H+9qdGjK9xgM0a0zghmNZsWICimnQ==
X-Google-Smtp-Source: ABdhPJwdBoOxRZoIzMjovIzxIonxRQ3iSgblHos1YDPe0j4W4/ySaBtzWvU7O7+Nsx5h1p5/wZOlP1cZ1kBU4K/v1Ns=
X-Received: by 2002:a1c:1f42:: with SMTP id f63mr3104803wmf.1.1599844848452;
 Fri, 11 Sep 2020 10:20:48 -0700 (PDT)
MIME-Version: 1.0
References: <20200911102259.3667381-1-cychiang@chromium.org>
 <20200911102259.3667381-4-cychiang@chromium.org> <20200911150044.GA2352@gerhold.net>
In-Reply-To: <20200911150044.GA2352@gerhold.net>
From:   Cheng-yi Chiang <cychiang@chromium.org>
Date:   Sat, 12 Sep 2020 01:20:17 +0800
Message-ID: <CAFv8Nw+qeezhQLu9OsXrBuvRUBCB0BSnb6yt+FAF6Ov+E2tPPA@mail.gmail.com>
Subject: Re: [PATCH v9 3/3] ASoC: qcom: sc7180: Add machine driver for sound
 card registration
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Taniya Das <tdas@codeaurora.org>,
        "moderated list:SOUND - SOC LAYER / DYNAMIC AUDIO POWER MANAGEM..." 
        <alsa-devel@alsa-project.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Takashi Iwai <tiwai@suse.com>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Ajit Pandey <ajitp@codeaurora.org>,
        "open list:ARM/Rockchip SoC..." <linux-rockchip@lists.infradead.org>,
        Andy Gross <agross@kernel.org>,
        Dylan Reid <dgreid@chromium.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Tzung-Bi Shih <tzungbi@chromium.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        "moderated list:ARM/Mediatek SoC support" 
        <linux-mediatek@lists.infradead.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Doug Anderson <dianders@chromium.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Mark Brown <broonie@kernel.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Srinivasa Rao <srivasam@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Sep 11, 2020 at 11:01 PM Stephan Gerhold <stephan@gerhold.net> wrote:
>
> Hi,
>
> Thanks for removing the weird use of auxilliary devices :)
>
Hi Stephan,
Thanks for the suggestion!

> On Fri, Sep 11, 2020 at 06:22:59PM +0800, Cheng-Yi Chiang wrote:
> > From: Ajit Pandey <ajitp@codeaurora.org>
> >
> > Add new driver to register sound card on sc7180 trogdor board and
> > do the required configuration for lpass cpu dai and external codecs
> > connected over MI2S interfaces.
> >
> > Signed-off-by: Ajit Pandey <ajitp@codeaurora.org>
> > Signed-off-by: Cheng-Yi Chiang <cychiang@chromium.org>
> > ---
> >  sound/soc/qcom/Kconfig  |  12 ++
> >  sound/soc/qcom/Makefile |   2 +
> >  sound/soc/qcom/sc7180.c | 267 ++++++++++++++++++++++++++++++++++++++++
> >  3 files changed, 281 insertions(+)
> >  create mode 100644 sound/soc/qcom/sc7180.c
> >
> > diff --git a/sound/soc/qcom/Kconfig b/sound/soc/qcom/Kconfig
> > index a607ace8b089..0459185ee243 100644
> > --- a/sound/soc/qcom/Kconfig
> > +++ b/sound/soc/qcom/Kconfig
> > @@ -116,4 +116,16 @@ config SND_SOC_SDM845
> >         SDM845 SoC-based systems.
> >         Say Y if you want to use audio device on this SoCs.
> >
> > +config SND_SOC_SC7180
> > +     tristate "SoC Machine driver for SC7180 boards"
> > +     depends on I2C
> > +     select SND_SOC_QCOM_COMMON
> > +     select SND_SOC_LPASS_SC7180
> > +     select SND_SOC_MAX98357A
> > +     select SND_SOC_RT5682_I2C
> > +     help
> > +       To add support for audio on Qualcomm Technologies Inc.
> > +       SC7180 SoC-based systems.
> > +       Say Y if you want to use audio device on this SoCs.
> > +
> >  endif #SND_SOC_QCOM
> > diff --git a/sound/soc/qcom/Makefile b/sound/soc/qcom/Makefile
> > index 7972c9479ab0..0cdcbf367ef1 100644
> > --- a/sound/soc/qcom/Makefile
> > +++ b/sound/soc/qcom/Makefile
> > @@ -17,12 +17,14 @@ snd-soc-storm-objs := storm.o
> >  snd-soc-apq8016-sbc-objs := apq8016_sbc.o
> >  snd-soc-apq8096-objs := apq8096.o
> >  snd-soc-sdm845-objs := sdm845.o
> > +snd-soc-sc7180-objs := sc7180.o
> >  snd-soc-qcom-common-objs := common.o
> >
> >  obj-$(CONFIG_SND_SOC_STORM) += snd-soc-storm.o
> >  obj-$(CONFIG_SND_SOC_APQ8016_SBC) += snd-soc-apq8016-sbc.o
> >  obj-$(CONFIG_SND_SOC_MSM8996) += snd-soc-apq8096.o
> >  obj-$(CONFIG_SND_SOC_SDM845) += snd-soc-sdm845.o
> > +obj-$(CONFIG_SND_SOC_SC7180) += snd-soc-sc7180.o
> >  obj-$(CONFIG_SND_SOC_QCOM_COMMON) += snd-soc-qcom-common.o
> >
> >  #DSP lib
> > diff --git a/sound/soc/qcom/sc7180.c b/sound/soc/qcom/sc7180.c
> > new file mode 100644
> > index 000000000000..40bc4fc98842
> > --- /dev/null
> > +++ b/sound/soc/qcom/sc7180.c
> > @@ -0,0 +1,267 @@
> > +// SPDX-License-Identifier: GPL-2.0-only
> > +//
> > +// Copyright (c) 2020, The Linux Foundation. All rights reserved.
> > +//
> > +// sc7180.c -- ALSA SoC Machine driver for SC7180
> > +
> > +#include <dt-bindings/sound/sc7180-lpass.h>
> > +#include <linux/module.h>
> > +#include <linux/of_device.h>
> > +#include <linux/platform_device.h>
> > +#include <sound/core.h>
> > +#include <sound/jack.h>
> > +#include <sound/pcm.h>
> > +#include <sound/pcm_params.h>
> > +#include <sound/soc.h>
> > +#include <uapi/linux/input-event-codes.h>
> > +
> > +#include "../codecs/rt5682.h"
> > +#include "common.h"
> > +#include "lpass.h"
> > +
> > +#define DEFAULT_SAMPLE_RATE_48K              48000
> > +#define DEFAULT_MCLK_RATE            19200000
> > +#define RT5682_PLL1_FREQ (48000 * 512)
> > +
> > +struct sc7180_snd_data {
> > +     u32 pri_mi2s_clk_count;
> > +     struct snd_soc_jack hs_jack;
> > +     struct snd_soc_jack hdmi_jack;
> > +};
>
> [...]
>
> > +
> > +static const struct snd_soc_ops sc7180_ops = {
> > +     .startup = sc7180_snd_startup,
> > +     .shutdown = sc7180_snd_shutdown,
> > +};
> > +
> > +static const struct snd_soc_dapm_widget sc7180_snd_widgets[] = {
> > +     SND_SOC_DAPM_HP("Headphone Jack", NULL),
> > +     SND_SOC_DAPM_MIC("Headset Mic", NULL),
> > +};
> > +
> > +static struct snd_soc_card sc7180_card = {
> > +     .owner = THIS_MODULE,
> > +     .dapm_widgets = sc7180_snd_widgets,
> > +     .num_dapm_widgets = ARRAY_SIZE(sc7180_snd_widgets),
> > +};
>
> Given that you modify this struct and already allocate some memory
> dynamically (sc7810_snd_data), it might be a bit cleaner to avoid
> modifying global memory and instead allocate snd_soc_card dynamically as
> well. Could just add it to sc7180_snd_data for example (see e.g. apq8016_sbc)
>
Good idea. I will modify it in v10.

> > +
> > +static void sc7180_add_ops(struct snd_soc_card *card)
> > +{
> > +     struct snd_soc_dai_link *link;
> > +     int i;
> > +
> > +     for_each_card_prelinks(card, i, link) {
> > +             link->ops = &sc7180_ops;
> > +             link->init = sc7180_init;
> > +     }
> > +}
> > +
> > +static int sc7180_snd_platform_probe(struct platform_device *pdev)
> > +{
> > +     struct snd_soc_card *card = &sc7180_card;
> > +     struct sc7180_snd_data *data;
> > +     struct device *dev = &pdev->dev;
> > +     int ret;
> > +
> > +     /* Allocate the private data */
> > +     data = devm_kzalloc(dev, sizeof(*data), GFP_KERNEL);
> > +     if (!data)
> > +             return -ENOMEM;
> > +
> > +     card->dev = dev;
> > +     snd_soc_card_set_drvdata(card, data);
> > +
> > +     ret = qcom_snd_parse_of(card);
> > +     if (ret) {
> > +             dev_err(dev, "Error parsing OF data\n");
>
> This will just add noise in case of probe deferral. qcom_snd_parse_of()
> already logs a message for most errors so you can just remove this one.
>

I will remove it in v10.

> > +             return ret;
> > +     }
> > +
> > +     sc7180_add_ops(card);
> > +
> > +     return devm_snd_soc_register_card(dev, card);
> > +}
> > +
> > +static const struct of_device_id sc7180_snd_device_id[]  = {
> > +     { .compatible = "qcom,sc7180-sndcard" },
>
> Will all SC7180 use the configuration in this driver? (With RT5682,
> HDMI, the jack configuration etc). Otherwise a more specific compatible
> string might be better, so other device-specific ones can be added later.
>

I thought we can do that in the next patch when we want to introduce
different board variations.
But maybe doing it earlier is better.

There will be three variations on trogdor:
rt5682 (1mic), max98357, dp
rt5682 (2mic), max98357, dp
adau7002, max98357, dp

I would like to name them

qcom,sc7180-sndcard-rt5682-m98357-1mic
qcom,sc7180-sndcard-rt5682-m98357-2mic
qcom,sc7180-sndcard-ad7002-m98357

What do you think ?

Thanks for the review and suggestions!

> Thanks!
> Stephan
