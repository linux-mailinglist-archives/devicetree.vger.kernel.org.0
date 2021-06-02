Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A147D398F9C
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 18:07:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231768AbhFBQJD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 12:09:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32982 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbhFBQJB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 12:09:01 -0400
Received: from mail-qk1-x72d.google.com (mail-qk1-x72d.google.com [IPv6:2607:f8b0:4864:20::72d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 46A9DC061756
        for <devicetree@vger.kernel.org>; Wed,  2 Jun 2021 09:07:18 -0700 (PDT)
Received: by mail-qk1-x72d.google.com with SMTP id c124so2880238qkd.8
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 09:07:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YAZ7ZSfiugbOhQydoUaMJhIYB+bVGqv38BgoX6VqAHE=;
        b=j/5O522W9LSYYrKW9y59tk17EqPiEy6B3Mu6d/DngVNcdt76RphieNTFg+qkPe4exg
         iBRQnfM8P80qgcNaqPaWwfvPVjh6MlmlBCULycBD0OeICSAKNTxsgOiQ55CjE11/Cl+F
         qhHg+o4kbAQ2kNsd1RWdyTiprF2aXGBdBysLs=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YAZ7ZSfiugbOhQydoUaMJhIYB+bVGqv38BgoX6VqAHE=;
        b=uYiiANdTnDYp6fmWpTZtlghQTWRPOifqH5r6LI1Nta4ufeRTI8vg5xOtYs98amy/My
         su7Pk/CK6Ns2UkEb/bLjfGFQzbbe9aPPQS5LsvoYFY+AzRxq9V5Jv0dMS/LACwcmdGE2
         MwTHuOavChQ+XN0FpZ97GBNIaMwlrCbjOkzqk5wRQ8k4FQaZ2VDtQb+/oJDH0h9k6r7Y
         xw6BQ8ZHxT9LqPCy08nxaJAJBdU7sCpTXeFSNKMdb3lRQmBCwKbbotoZi5IyBzXr3utl
         IEQb6CD0JYXsBp+JwpHAc/4iyV1BIJSiYu1s6rVm36G7+0GcElRJ7pwM/151hn380HHK
         kOlg==
X-Gm-Message-State: AOAM533GZRBQPbpbLZWtTzwOpBHwaIxgeHjG1WvM+1g7DJEnMDMrgZK+
        WaPJdNFU8C/VJDSjF0xn12rXbT2NdN4fjQ==
X-Google-Smtp-Source: ABdhPJx8rDOv+YtCQJGdSQNLu2gplcx5LmiLD2sys6J87K/OulGKLkvBgDk4BiEqREvINkdCB4+q8A==
X-Received: by 2002:a05:620a:12b0:: with SMTP id x16mr27645279qki.451.1622650037219;
        Wed, 02 Jun 2021 09:07:17 -0700 (PDT)
Received: from mail-yb1-f177.google.com (mail-yb1-f177.google.com. [209.85.219.177])
        by smtp.gmail.com with ESMTPSA id i11sm99433qtj.4.2021.06.02.09.07.17
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Jun 2021 09:07:17 -0700 (PDT)
Received: by mail-yb1-f177.google.com with SMTP id i4so4599241ybe.2
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 09:07:17 -0700 (PDT)
X-Received: by 2002:ab0:c07:: with SMTP id a7mr21690857uak.120.1622650025634;
 Wed, 02 Jun 2021 09:07:05 -0700 (PDT)
MIME-Version: 1.0
References: <20210602155312.207401-1-judyhsiao@chromium.org>
In-Reply-To: <20210602155312.207401-1-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 2 Jun 2021 09:06:53 -0700
X-Gmail-Original-Message-ID: <CAD=FV=V_-oV7A_YPOFnCqUk5o=LBvf6KP1tNyVXTp=eeRkPaYQ@mail.gmail.com>
Message-ID: <CAD=FV=V_-oV7A_YPOFnCqUk5o=LBvf6KP1tNyVXTp=eeRkPaYQ@mail.gmail.com>
Subject: Re: [v4] ASoC: qcom: lpass-cpu: Fix pop noise during audio capture begin
To:     Judy Hsiao <judyhsiao@chromium.org>
Cc:     Mark Brown <broonie@kernel.org>, Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Dylan Reid <dgreid@chromium.org>,
        Jimmy Cheng-Yi Chiang <cychiang@google.com>,
        Judy Hsiao <judyhsiao@google.com>,
        Tzung-Bi Shih <tzungbi@chromium.org>,
        Stephen Boyd <swboyd@chromium.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        ALSA Development Mailing List <alsa-devel@alsa-project.org>,
        Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Jun 2, 2021 at 8:54 AM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> From: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
>
> This patch fixes PoP noise of around 15ms observed during audio
> capture begin.
> Enables BCLK and LRCLK in snd_soc_dai_ops prepare call for
> introducing some delay before capture start and clock enable.
>
> Co-developed-by: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> (am from https://patchwork.kernel.org/patch/12276369/)
> (also found at https://lore.kernel.org/r/20210524142114.18676-1-srivasam@codeaurora.org)
>
> ---
> Chages Since V3:
>         -- Check BCLK is off before enabling it in lpass_cpu_daiops_prepare as
>            lpass_cpu_daiops_prepare can be called multiple times.
>         -- Check BCLK is on before disabling it in lpass_cpu_daiops_shutdown to
>            fix the WARN. It is because BCLK may not be enabled if
>            lpass_cpu_daiops_prepare is not called before lpass_cpu_daiops_shutdown.
>         -- Adds more comments.
> Changes Since V2:
>         -- Updated comments as per linux style
>         -- Removed unrelated changes.
> Changes Since V1:
>         -- Enableed BCLK and LRCLK in dai ops prepare API instead of startup API
>         -- Added comments
>
>  sound/soc/qcom/lpass-cpu.c | 83 +++++++++++++++++++++++++++++++++++++-
>  1 file changed, 82 insertions(+), 1 deletion(-)
>
> diff --git a/sound/soc/qcom/lpass-cpu.c b/sound/soc/qcom/lpass-cpu.c
> index af8cb64924a0..b572d7874554 100644
> --- a/sound/soc/qcom/lpass-cpu.c
> +++ b/sound/soc/qcom/lpass-cpu.c
> @@ -6,6 +6,7 @@
>   */
>
>  #include <linux/clk.h>
> +#include <linux/clk-provider.h>
>  #include <linux/kernel.h>
>  #include <linux/module.h>
>  #include <linux/of.h>
> @@ -93,8 +94,28 @@ static void lpass_cpu_daiops_shutdown(struct snd_pcm_substream *substream,
>                 struct snd_soc_dai *dai)
>  {
>         struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);
> +       struct lpaif_i2sctl *i2sctl = drvdata->i2sctl;
> +       unsigned int id = dai->driver->id;
>
>         clk_disable_unprepare(drvdata->mi2s_osr_clk[dai->driver->id]);
> +       /*
> +        * To ensure LRCLK disabled even in device node validation
> +        * Will not impact if disabled in lpass_cpu_daiops_trigger()
> +        * suspend.
> +        */
> +       if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
> +               regmap_fields_write(i2sctl->spken, id, LPAIF_I2SCTL_SPKEN_DISABLE);
> +       else
> +               regmap_fields_write(i2sctl->micen, id, LPAIF_I2SCTL_MICEN_DISABLE);
> +
> +       /*
> +        * BCLK may not be enabled if lpass_cpu_daiops_prepare is called before
> +        * lpass_cpu_daiops_shutdown. It's paired with the clk_enable in
> +        * lpass_cpu_daiops_prepare.
> +        */
> +       if (__clk_is_enabled(drvdata->mi2s_bit_clk[dai->driver->id]))
> +               clk_disable(drvdata->mi2s_bit_clk[dai->driver->id]);

Not a full review of this patch, but the above pattern is almost never
correct. There's a reason that the __clk_is_enabled() is only in
"clk-provider.h"--it's not intended to be called by clients.

Possibly a good solution (this is not code I've ever looked at) is to
just have a boolean in your structure like "was_prepared". Then if
"was_prepared" you can disable the clock. Also in the
lpass_cpu_daiops_prepare() function you should only enable the clock
if "!was_prepared" already.


> @@ -288,7 +321,8 @@ static int lpass_cpu_daiops_trigger(struct snd_pcm_substream *substream,
>
>                 ret = clk_enable(drvdata->mi2s_bit_clk[id]);
>                 if (ret) {
> -                       dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
> +                       dev_err(dai->dev,
> +                               "error in enabling mi2s bit clk: %d\n", ret);

Why is there an unrelated change to wrapping here? Seems like you
could drop this part of the change. If you really need to make this
change (you probably don't since the 80 column rule has been relaxed
and it's also existing code) then you could change it in a separate
patch.


> +       /*
> +        * Check BCLK is off before enabling it as lpass_cpu_daiops_prepare can
> +        * be called multiple times. It's paired with the clk_disable in
> +        * lpass_cpu_daiops_shutdown.
> +        */
> +       if (!__clk_is_enabled(drvdata->mi2s_bit_clk[dai->driver->id])) {
> +               ret = clk_enable(drvdata->mi2s_bit_clk[id]);
> +               if (ret) {
> +                       dev_err(dai->dev,
> +                               "error in enabling mi2s bit clk: %d\n", ret);
> +                       clk_disable(drvdata->mi2s_osr_clk[id]);

If the clk_enable() failed then you shouldn't call clk_disable().
