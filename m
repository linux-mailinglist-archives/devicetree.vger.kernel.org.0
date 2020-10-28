Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 00C8D29DB3C
	for <lists+devicetree@lfdr.de>; Thu, 29 Oct 2020 00:46:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726201AbgJ1XpV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Oct 2020 19:45:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39776 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731895AbgJ1XoW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Oct 2020 19:44:22 -0400
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com [IPv6:2607:f8b0:4864:20::641])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DDC97C0613CF
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:44:21 -0700 (PDT)
Received: by mail-pl1-x641.google.com with SMTP id t22so404652plr.9
        for <devicetree@vger.kernel.org>; Wed, 28 Oct 2020 16:44:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=PZ60FuXYb6U1Q6aC/kU9yRVnANe8xECXyBf6gsnRk8M=;
        b=JsvQV9raYlCwSDzRXI97KykwGHP+OiL7R2Mehtv7Von4S82WiCXR2IdnOZDU7cLy+e
         MvegTnIN9ho04Fee3soneDU8iaWSw8fn/Lr9ytqpvRwHPmGS1YhWMvlF8S8FOSauI83E
         SIL8ZXy15CMtrMpbbDBTva1ULMeaD7kWPtjKc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=PZ60FuXYb6U1Q6aC/kU9yRVnANe8xECXyBf6gsnRk8M=;
        b=FQ6604tcd9B/8rW15kZgOJ0eTuA6kg/PxD3gPt3aSZnv4P9jObDiMVpaLGoSJUdz9D
         zE8Z4y+ngfI3Uh8n5BTbyfmI6LWo+y+qzuxnLj1gkpIKycczYj3+zh1X+9w1GUV+c2wE
         x09YJ6NSisOYPXhb16oCtOTMKeUyb9xblExgkGJnj6JaekO1ISPvNWQWAplUApzxcS12
         5q8kQzB9p8eC5Vk5p8YTa051g+g5SQJw5ZbvYIk5WV2jsFuCObkl5LT7yV0N48YI0XpC
         AmkUlJkr6lH4pffGf+E6ktZaI32ECBzkqisxA3G4kVeja/mmSghAC7sNUqWJVuXYIT+Y
         nYJw==
X-Gm-Message-State: AOAM530qXwOKVRd31VVZwTMb2BeCqjjmimjJFdycC3noBBN7FoM2kRoJ
        eNADHAmi8QSk5YcjY7d6Pig+tuSg8DhPz7OvTBCZGgK9zj0=
X-Google-Smtp-Source: ABdhPJzHzrHtoeAku7Lm8nGlrgsHTX8tMgDUBGHtDlrCQLghRc2bq0ynyPNyupIgx9PIvEqhF1wfn6owMvW1rcKOWXo=
X-Received: by 2002:a05:6214:180f:: with SMTP id o15mr5885844qvw.16.1603860035005;
 Tue, 27 Oct 2020 21:40:35 -0700 (PDT)
MIME-Version: 1.0
References: <20201016062602.20014-1-billy_tsai@aspeedtech.com> <20201016062602.20014-3-billy_tsai@aspeedtech.com>
In-Reply-To: <20201016062602.20014-3-billy_tsai@aspeedtech.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Wed, 28 Oct 2020 04:40:22 +0000
Message-ID: <CACPK8Xdjro+dNOb0SYkDb11N5JpexEbXHpikqqqHojpOveyJqw@mail.gmail.com>
Subject: Re: [PATCH 2/3] peci: aspeed: Auto calculate the adapter divisor
To:     Billy Tsai <billy_tsai@aspeedtech.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Andrew Jeffery <andrew@aj.id.au>,
        Jae Hyun Yoo <jae.hyun.yoo@linux.intel.com>,
        Haiyue Wang <haiyue.wang@linux.intel.com>,
        James Feist <james.feist@linux.intel.com>,
        Vernon Mauery <vernon.mauery@linux.intel.com>,
        devicetree <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        BMC-SW <BMC-SW@aspeedtech.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Billy,

On Fri, 16 Oct 2020 at 06:26, Billy Tsai <billy_tsai@aspeedtech.com> wrote:
>
> This pach change the meaning of clk-frequency property from original
> controller clock to bit frequency of peci negotiation stage and auto
> calculate the adapter divisor setting to close aim.
> The expected frequency and real frequency may have errors because of the
> granularities of the divisor.

This patch can't go to the mainline lists as the authors (Intel) have
not yet had it merged.

Cheers,

Joel

>
> Signed-off-by: Billy Tsai <billy_tsai@aspeedtech.com>
> ---
>  arch/arm/boot/dts/aspeed-g6.dtsi  |  4 +-
>  drivers/peci/busses/peci-aspeed.c | 91 ++++++++++++++++++-------------
>  2 files changed, 53 insertions(+), 42 deletions(-)
>
> diff --git a/arch/arm/boot/dts/aspeed-g6.dtsi b/arch/arm/boot/dts/aspeed-g6.dtsi
> index cb053a996e87..6e1e5b5733e6 100644
> --- a/arch/arm/boot/dts/aspeed-g6.dtsi
> +++ b/arch/arm/boot/dts/aspeed-g6.dtsi
> @@ -750,9 +750,7 @@
>                 interrupts = <GIC_SPI 38 IRQ_TYPE_LEVEL_HIGH>;
>                 clocks = <&syscon ASPEED_CLK_GATE_REF0CLK>;
>                 resets = <&syscon ASPEED_RESET_PECI>;
> -               clock-frequency = <24000000>;
> -               msg-timing = <1>;
> -               addr-timing = <1>;
> +               clock-frequency = <1000000>;
>                 rd-sampling-point = <8>;
>                 cmd-timeout-ms = <1000>;
>                 status = "disabled";
> diff --git a/drivers/peci/busses/peci-aspeed.c b/drivers/peci/busses/peci-aspeed.c
> index d6039b1c4494..9e7c7582e4bb 100644
> --- a/drivers/peci/busses/peci-aspeed.c
> +++ b/drivers/peci/busses/peci-aspeed.c
> @@ -133,6 +133,11 @@
>  #define ASPEED_PECI_64B_R_DATAE  0xF8
>  #define ASPEED_PECI_64B_R_DATAF  0xFC
>
> +/* Bus Frequency */
> +#define ASPEED_PECI_BUS_FREQ_MAX       2000000
> +#define ASPEED_PECI_BUS_FREQ_MIN       2000
> +#define ASPEED_PECI_BUS_FREQ_DEFAULT   1000000
> +
>  /* Timing Negotiation */
>  #define ASPEED_PECI_RD_SAMPLING_POINT_DEFAULT  8
>  #define ASPEED_PECI_RD_SAMPLING_POINT_MAX      15
> @@ -324,51 +329,47 @@ static irqreturn_t aspeed_peci_irq_handler(int irq, void *arg)
>  static int aspeed_peci_init_ctrl(struct aspeed_peci *priv)
>  {
>         u32 msg_timing, addr_timing, rd_sampling_point;
> -       u32 clk_freq, clk_divisor, clk_div_val = 0;
> +       u32 clk_freq, clk_div_val = 0;
> +       u32 msg_timing_idx, clk_div_val_idx;
> +       int delta_value, delta_tmp, clk_divisor, clk_divisor_tmp;
>         int ret;
>
> -       priv->clk = devm_clk_get(priv->dev, NULL);
> -       if (IS_ERR(priv->clk)) {
> -               dev_err(priv->dev, "Failed to get clk source.\n");
> -               return PTR_ERR(priv->clk);
> -       }
> -
> -       ret = clk_prepare_enable(priv->clk);
> -       if (ret) {
> -               dev_err(priv->dev, "Failed to enable clock.\n");
> -               return ret;
> -       }
> -
>         ret = device_property_read_u32(priv->dev, "clock-frequency", &clk_freq);
> -       if (ret) {
> -               dev_err(priv->dev,
> -                       "Could not read clock-frequency property.\n");
> -               clk_disable_unprepare(priv->clk);
> -               return ret;
> -       }
> -
> -       clk_divisor = clk_get_rate(priv->clk) / clk_freq;
> -
> -       while ((clk_divisor >> 1) && (clk_div_val < ASPEED_PECI_CLK_DIV_MAX))
> -               clk_div_val++;
> -
> -       ret = device_property_read_u32(priv->dev, "msg-timing", &msg_timing);
> -       if (ret || msg_timing > ASPEED_PECI_MSG_TIMING_MAX) {
> +       if (ret ||
> +       clk_freq > ASPEED_PECI_BUS_FREQ_MAX ||
> +       clk_freq < ASPEED_PECI_BUS_FREQ_MIN) {
>                 if (!ret)
>                         dev_warn(priv->dev,
> -                                "Invalid msg-timing : %u, Use default : %u\n",
> -                                msg_timing, ASPEED_PECI_MSG_TIMING_DEFAULT);
> -               msg_timing = ASPEED_PECI_MSG_TIMING_DEFAULT;
> -       }
> -
> -       ret = device_property_read_u32(priv->dev, "addr-timing", &addr_timing);
> -       if (ret || addr_timing > ASPEED_PECI_ADDR_TIMING_MAX) {
> -               if (!ret)
> -                       dev_warn(priv->dev,
> -                                "Invalid addr-timing : %u, Use default : %u\n",
> -                                addr_timing, ASPEED_PECI_ADDR_TIMING_DEFAULT);
> -               addr_timing = ASPEED_PECI_ADDR_TIMING_DEFAULT;
> +                                "Invalid clock-frequency : %u, Use default : %u\n",
> +                                clk_freq, ASPEED_PECI_BUS_FREQ_DEFAULT);
> +               clk_freq = ASPEED_PECI_BUS_FREQ_DEFAULT;
>         }
> +       /*
> +        * PECI bus clock = (Ref. clk) / (1 << PECI00[10:8])
> +        * PECI operation clock = (PECI bus clock)/ 4*(PECI04[15:8]*4+1)
> +        * (1 << PECI00[10:8]) * (PECI04[15:8]*4+1) =
> +        * (Ref. clk) / (4 * PECI operation clock)
> +        */
> +       clk_divisor = clk_get_rate(priv->clk) / (4*clk_freq);
> +       delta_value = clk_divisor;
> +       /* Find the closest divisor for clock-frequency */
> +       for (msg_timing_idx = 1; msg_timing_idx <= 255; msg_timing_idx++)
> +               for (clk_div_val_idx = 0; clk_div_val_idx < 7;
> +                       clk_div_val_idx++) {
> +                       clk_divisor_tmp = (1 << clk_div_val_idx) *
> +                                       (msg_timing_idx * 4 + 1);
> +                       delta_tmp = abs(clk_divisor - clk_divisor_tmp);
> +                       if (delta_tmp < delta_value) {
> +                               delta_value = delta_tmp;
> +                               msg_timing = msg_timing_idx;
> +                               clk_div_val = clk_div_val_idx;
> +                       }
> +               }
> +       addr_timing = msg_timing;
> +       dev_info(priv->dev, "Expect frequency: %d Real frequency is about: %lu",
> +               clk_freq,
> +               clk_get_rate(priv->clk) /
> +               (4 * (1 << clk_div_val) * (msg_timing * 4 + 1)));
>
>         ret = device_property_read_u32(priv->dev, "rd-sampling-point",
>                                        &rd_sampling_point);
> @@ -463,6 +464,18 @@ static int aspeed_peci_probe(struct platform_device *pdev)
>         priv->adapter->xfer = aspeed_peci_xfer;
>         priv->adapter->use_dma = false;
>
> +       priv->clk = devm_clk_get(priv->dev, NULL);
> +       if (IS_ERR(priv->clk)) {
> +               dev_err(priv->dev, "Failed to get clk source.\n");
> +               return PTR_ERR(priv->clk);
> +       }
> +
> +       ret = clk_prepare_enable(priv->clk);
> +       if (ret) {
> +               dev_err(priv->dev, "Failed to enable clock.\n");
> +               return ret;
> +       }
> +
>         priv->rst = devm_reset_control_get(&pdev->dev, NULL);
>         if (IS_ERR(priv->rst)) {
>                 dev_err(&pdev->dev,
> --
> 2.17.1
>
