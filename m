Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9097B611210
	for <lists+devicetree@lfdr.de>; Fri, 28 Oct 2022 15:00:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229473AbiJ1NAE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Oct 2022 09:00:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41414 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230023AbiJ1NAC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Oct 2022 09:00:02 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6E5D1B791
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 06:00:01 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id o70so6024533yba.7
        for <devicetree@vger.kernel.org>; Fri, 28 Oct 2022 06:00:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=google.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=e0j5a5iZpNQG2DdryJGScbsirrQGx4kQi1zIOe47cxY=;
        b=suju3c6Rt3GNQfsmDz9TEYyaxosQcCrMgZlU+pCUZkhi9SwG4iwP+SSe+45yLvOQ8U
         RyDc0NI0O0DKLdtrP4SJuISxk0qmOtx0LDwHMQVJJa5X32FTRxZBwxgBAjD6BZ+a+33H
         DkZanVr5g7acshGVfjCCUlEdJQbkEUNTSxJuenN2a4RDfDlQFiNt91ITGe/4cvng/VgR
         ZT1OFBiWaowmlDfJqy9b+Us6JeiG4uZ9sSkiBEYHHlrIG2jKGgOZZLz7ZbS0wBP5kWfk
         Z10gGAKySzTtx8qKpA+zReQbdTfRGivnmdcBc7hHU/MzeHL0//wrUql+0DjaW/H3HRQA
         RkjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=e0j5a5iZpNQG2DdryJGScbsirrQGx4kQi1zIOe47cxY=;
        b=xKS2h3PgA+j2f7e3N1YrPKZ8ky/GI22FWA5W3P1wIIzA1UilLQw6h2/tEqgxBBFfic
         alAjbMHoQ2w7FSV8vLTkog3EIVj4PosceINifNoahoQloUiiy2T9HLvvCwybENZJgmze
         11ptrD1Jv9Z5OrNrNfcPPCU9Ye1FtRQ/b018/U6CEO7seMIsU7bUAx1vHNETFDHug7Bf
         wcSDIkRHOMaHomy8OemPwq6xz+mMAoZAQn1+w6hhAsZqrTom+7haAKpZzddG6FDSx2jT
         foukjGNi4yZrwzwrNCk5yUZEUaOTvImJ24ziljLii/7FsPynOPh6MRA6WNLTxAwZ6CmG
         0DFQ==
X-Gm-Message-State: ACrzQf1Jq7Ix2g711Vx/VYsbEX6QRAhEvq/4oCzbWiEPej63RIEFHQ/5
        jSMNA5rgJN+q8NPmS45HoxWb1zPZbr5G5ZROvArdIQ==
X-Google-Smtp-Source: AMsMyM5yjFHMIfBdC0dH8EX4MhS+aaPemWVhJjUiNK2UCVeMOmyfOGcs/y8XSPc4MzOkCpK8GttTuXPSmeSaypSU1l0=
X-Received: by 2002:a25:bc3:0:b0:6ca:6427:f00d with SMTP id
 186-20020a250bc3000000b006ca6427f00dmr33872090ybl.62.1666962000888; Fri, 28
 Oct 2022 06:00:00 -0700 (PDT)
MIME-Version: 1.0
References: <20221028102450.1161382-1-ajye_huang@compal.corp-partner.google.com>
 <20221028102450.1161382-3-ajye_huang@compal.corp-partner.google.com> <Y1vDxtdNGURAT850@sirena.org.uk>
In-Reply-To: <Y1vDxtdNGURAT850@sirena.org.uk>
From:   Ajye Huang <ajye_huang@compal.corp-partner.google.com>
Date:   Fri, 28 Oct 2022 20:59:54 +0800
Message-ID: <CALprXBbTkj0Q_-3AL81Q1okRD5ZyDf_c=daPrkQstkM4_CNgGQ@mail.gmail.com>
Subject: Re: [PATCH v1 2/2] ASoC: dmic: Add optional dmic selection
To:     Mark Brown <broonie@kernel.org>
Cc:     linux-kernel@vger.kernel.org, Liam Girdwood <lgirdwood@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, robh@kernel.org,
        Shengjiu Wang <shengjiu.wang@nxp.com>,
        Charles Keepax <ckeepax@opensource.cirrus.com>,
        Takashi Iwai <tiwai@suse.com>,
        Jaroslav Kysela <perex@perex.cz>,
        Arnaud Pouliquen <arnaud.pouliquen@foss.st.com>,
        angelogioacchino.delregno@collabora.corp-partner.google.com,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIMWL_WL_MED,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Mark Brown,

Thank you for review,
I think it is appropriate to implement on audio machine side, like
this I did before,
commit 3cfbf07c6d27
("ASoC: qcom: sc7180: Modify machine driver for 2mic")

What is your suggestion?  Thank you.

On Fri, Oct 28, 2022 at 7:58 PM Mark Brown <broonie@kernel.org> wrote:
>
> On Fri, Oct 28, 2022 at 06:24:50PM +0800, Ajye Huang wrote:
>
> > +     dmic->dmic_sel = devm_gpiod_get_optional(component->dev,
> > +                                             "dmic_sel", GPIOD_OUT_LOW);
> > +     if (IS_ERR(dmic->dmic_sel))
> > +             return PTR_ERR(dmic->dmic_sel);
> > +
> >       snd_soc_component_set_drvdata(component, dmic);
> >
> >       return 0;
> > @@ -125,10 +172,15 @@ static const struct snd_soc_dapm_widget dmic_dapm_widgets[] = {
> >                              SND_SOC_NOPM, 0, 0, dmic_aif_event,
> >                              SND_SOC_DAPM_POST_PMU | SND_SOC_DAPM_POST_PMD),
> >       SND_SOC_DAPM_INPUT("DMic"),
> > +     SND_SOC_DAPM_MIC("DMIC", NULL),
> > +     SND_SOC_DAPM_MUX("Dmic Mux", SND_SOC_NOPM, 0, 0, &dmic_mux_control),
>
> If we are doing this then adding the mux needs to be conditional on
> having the GPIO, without the GPIO the control is at best confusing to
> users.
