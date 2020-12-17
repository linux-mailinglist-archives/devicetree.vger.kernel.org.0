Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 827BF2DD674
	for <lists+devicetree@lfdr.de>; Thu, 17 Dec 2020 18:43:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727368AbgLQRms (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Dec 2020 12:42:48 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37978 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728998AbgLQRmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Dec 2020 12:42:46 -0500
Received: from mail-ed1-x52e.google.com (mail-ed1-x52e.google.com [IPv6:2a00:1450:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1EB2BC0617B0
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 09:42:06 -0800 (PST)
Received: by mail-ed1-x52e.google.com with SMTP id q16so29488042edv.10
        for <devicetree@vger.kernel.org>; Thu, 17 Dec 2020 09:42:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=R5jtbbq89EOWcMD5xRFUxvGbx0DAm4t3paIGf1OGL84=;
        b=FxKb9CyeVXLX0RZE6YVPYu/xqRypCcDzV2ElXEC+2Q0LqCOE2A1smoPthyfdY2UABS
         7uU6Btqr/9XTS/UE9H+ws2mk5X4KpDuoMVuClEPebp/nOKdNc1Izq/HSDy9MKViMv80C
         vKTBVDOZpuZU76FLwUhCC9ziITG3BcMr7ezt8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=R5jtbbq89EOWcMD5xRFUxvGbx0DAm4t3paIGf1OGL84=;
        b=YT+wJP4sN81BG6Ormyfllxyrot+k3UQSf6qTmBCI56PIhbyNOvg2N/2hv8EaAh5CIg
         EXHkUNXtMrhu5QdSIHBrHVstQKo3wh2pch5Bx8oZCs7h924zgxanQNB7ERx/bkoL8dw/
         gGJ413qY+h92uz+GYVU2EcRxil1yu241+zLd6+dsMrrbA7U5YDzoMqGYjOEtUcuiTr+V
         FpwGHe3/F2wHgy2zyx8+IGWvu6f7AJAxmS/e11thD502Z/TKKXpxX9asUSj9u49gA2hS
         cwkKNmrl+BqiviOu0JBbz83Zu2dOT0a0bSJbhgzgqWHEh+ZXJ/MODVKt35QJooh9jfPZ
         77kA==
X-Gm-Message-State: AOAM530XJnREbBsExmZufb0SOCL4EEdkhM3LO86mF1xALktRS9SrM6Jl
        n1rzip6e3wJ2weDm7IPWGDjIjhFrdkWYzHo6K2cdpw==
X-Google-Smtp-Source: ABdhPJyYio/s0bRTDE/FJgEu8kJlj+SUW67A7ePhGrHVjZZEWg2UiqQligEC8CR8B3JvkzmZCG028pO1RRGPyA+se5Q=
X-Received: by 2002:aa7:c355:: with SMTP id j21mr460295edr.338.1608226924260;
 Thu, 17 Dec 2020 09:42:04 -0800 (PST)
MIME-Version: 1.0
References: <20201215235639.31516-1-adrien.grassein@gmail.com> <20201215235639.31516-8-adrien.grassein@gmail.com>
In-Reply-To: <20201215235639.31516-8-adrien.grassein@gmail.com>
From:   Jagan Teki <jagan@amarulasolutions.com>
Date:   Thu, 17 Dec 2020 23:11:52 +0530
Message-ID: <CAMty3ZDgyAx-maPqEOR_cBizQDfRZB0EMGj6iddK1BhGvziFkA@mail.gmail.com>
Subject: Re: [PATCH v2 7/7] regulator: pf8x00: fix nxp,phase-shift
To:     Adrien Grassein <adrien.grassein@gmail.com>
Cc:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        devicetree <devicetree@vger.kernel.org>,
        Troy Kisky <troy.kisky@boundarydevices.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Dec 16, 2020 at 5:27 AM Adrien Grassein
<adrien.grassein@gmail.com> wrote:
>
> Fix the ternary condition which is a bad coding style
> in the kernel
>
> I also remove the defering configuration of the nxp,phase-shift.
> The configuration is now done at parsing time. It save some memory
> and it's better for comprehension.
>
> I also use the OTP default configuration when the paramater is wrong
> or not specified.
> I think that it's better to use the default configuration from the chip
> than an arbitrary value.
>
> Signed-off-by: Adrien Grassein <adrien.grassein@gmail.com>
> ---
>  drivers/regulator/pf8x00-regulator.c | 45 +++++++++++++---------------
>  1 file changed, 20 insertions(+), 25 deletions(-)
>
> diff --git a/drivers/regulator/pf8x00-regulator.c b/drivers/regulator/pf8x00-regulator.c
> index 5ad940b3db0a..b8b3ac393ee8 100644
> --- a/drivers/regulator/pf8x00-regulator.c
> +++ b/drivers/regulator/pf8x00-regulator.c
> @@ -107,7 +107,6 @@ enum pf8x00_ldo_states {
>
>  #define PF8X00_SWXILIM_MASK            GENMASK(4, 3)
>  #define PF8X00_SWXPHASE_MASK           GENMASK(2, 0)
> -#define PF8X00_SWXPHASE_DEFAULT                0

Keep this as it is and assign it 1 as the below code assigns 1.

>  #define PF8X00_SWXPHASE_SHIFT          7
>
>  enum pf8x00_devid {
> @@ -121,7 +120,6 @@ enum pf8x00_devid {
>
>  struct pf8x00_regulator {
>         struct regulator_desc desc;
> -       u8 phase_shift;
>  };
>
>  struct pf8x00_chip {
> @@ -167,17 +165,13 @@ static const int pf8x00_vsnvs_voltages[] = {
>         0, 1800000, 3000000, 3300000,
>  };
>
> -static struct pf8x00_regulator *desc_to_regulator(const struct regulator_desc *desc)
> -{
> -       return container_of(desc, struct pf8x00_regulator, desc);
> -}
> -
>  static int pf8x00_of_parse_cb(struct device_node *np,
>                               const struct regulator_desc *desc,
>                               struct regulator_config *config)
>  {
> -       struct pf8x00_regulator *data = desc_to_regulator(desc);
>         struct pf8x00_chip *chip = config->driver_data;
> +       unsigned char id = desc->id - PF8X00_LDO4;
> +       unsigned char reg = PF8X00_SW_BASE(id) + SW_CONFIG2;
>         int phase;
>         int val;
>         int ret;
> @@ -185,21 +179,30 @@ static int pf8x00_of_parse_cb(struct device_node *np,
>         ret = of_property_read_u32(np, "nxp,phase-shift", &val);
>         if (ret) {
>                 dev_dbg(chip->dev,
> -                       "unspecified phase-shift for BUCK%d, use 0 degrees\n",
> -                       desc->id - PF8X00_LDO4);
> -               val = PF8X00_SWXPHASE_DEFAULT;
> +                       "unspecified phase-shift for BUCK%d, using OTP configuration\n",
> +                       id);
> +               goto end;
>         }
>
> -       phase = val / 45;
> -       if ((phase * 45) != val) {
> +       if (val < 0 || val > 315 || val % 45 != 0) {
>                 dev_warn(config->dev,
> -                        "invalid phase_shift %d for BUCK%d, use 0 degrees\n",
> -                        (phase * 45), desc->id - PF8X00_LDO4);
> -               phase = PF8X00_SWXPHASE_SHIFT;
> +                        "invalid phase_shift %d for BUCK%d, using OTP configuration\n",
> +                        val, id);
> +               goto end;
>         }
>
> -       data->phase_shift = (phase >= 1) ? phase - 1 : PF8X00_SWXPHASE_SHIFT;
> +       phase = val / 45;
> +
> +       if (phase >= 1)
> +               phase -= 1;
> +       else
> +               phase = PF8X00_SWXPHASE_SHIFT;
> +
> +       regmap_update_bits(chip->regmap, reg,
> +                       PF8X00_SWXPHASE_MASK,
> +                       phase);

Add all these arguments in the same line.
