Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2860B39AE53
	for <lists+devicetree@lfdr.de>; Fri,  4 Jun 2021 00:42:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229961AbhFCWn4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 18:43:56 -0400
Received: from mail-qv1-f42.google.com ([209.85.219.42]:37828 "EHLO
        mail-qv1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229629AbhFCWnz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 18:43:55 -0400
Received: by mail-qv1-f42.google.com with SMTP id z1so4056041qvo.4
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 15:42:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=MakzHmrhP8vAXjgFSVERlwbbPQz/I4RXtNHBxH/9Tqs=;
        b=VHKdAmXjQ4mWJlaUmDx/2T6K5khw/jG/8HRArFGaS5PZAhyt5H9ths7x65e9eiWwVy
         wVe7U4TCdZ4W9x+r1xnAzGyfLoKSkCOg8CL1xoqwU6s8AcHLMifmR/f714catM/cJHxP
         6Q9oafZgsflYNWsgqYoAyys8ALdxUI/Wg7hF4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=MakzHmrhP8vAXjgFSVERlwbbPQz/I4RXtNHBxH/9Tqs=;
        b=LoR3NJL7ciA2WdRIXs/3gWhX1LOdrRr7XvD7dOpU/YGRa13qjUd+Xd08AJR7uVA24P
         RqJc8EjkbkCpqMBbsR7CCXPmYBwIniLFxPPvFEk2H+mhc5z4BPsoMQ1EdTfBkgsLGs4w
         JuQmF+gvp1p0QR3waF/Qt/GnRjbz/SdtObRWSNITdhxjUMXfDWmrCY69SyqLRTKd9s2a
         mtBpgC9Mc8YEKCprMO14in5nxS9ri+QBASL4f+FYUMdrz2AchKDxsBQ3X6hk+v2paQB3
         EOp5ORB0gPNS0vUZdsGR/bqLSMmot17yvYS2/Co8aG5sGqhfTZqWJy69szNpSF4SmNKv
         9nrA==
X-Gm-Message-State: AOAM531Ntb59Ldgn8U/AFiowOtOCEOhwK4Y/O6vOo3FtOu7sEotWwze+
        q+Nxrv3LwF9Ie/TvuuWYBGKcYQdA2NwiYw==
X-Google-Smtp-Source: ABdhPJx8nlmZ/O9orWwDIjbEb2N7YXh9UaKQjbixkHAE8iBsjoHUblx3XsyUoDqn0dRCaD/baP15uA==
X-Received: by 2002:ad4:55ef:: with SMTP id bu15mr1935428qvb.15.1622760070191;
        Thu, 03 Jun 2021 15:41:10 -0700 (PDT)
Received: from mail-yb1-f179.google.com (mail-yb1-f179.google.com. [209.85.219.179])
        by smtp.gmail.com with ESMTPSA id p3sm2508605qti.31.2021.06.03.15.41.10
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 03 Jun 2021 15:41:10 -0700 (PDT)
Received: by mail-yb1-f179.google.com with SMTP id n133so11025564ybf.6
        for <devicetree@vger.kernel.org>; Thu, 03 Jun 2021 15:41:10 -0700 (PDT)
X-Received: by 2002:a25:ab4b:: with SMTP id u69mr1137987ybi.276.1622760058683;
 Thu, 03 Jun 2021 15:40:58 -0700 (PDT)
MIME-Version: 1.0
References: <20210603150830.229423-1-judyhsiao@chromium.org>
In-Reply-To: <20210603150830.229423-1-judyhsiao@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Thu, 3 Jun 2021 15:40:46 -0700
X-Gmail-Original-Message-ID: <CAD=FV=VzBgbhhVQvG+UGD2yaLJkwiq0qQHdFNQ2Ey8RKmV+qTg@mail.gmail.com>
Message-ID: <CAD=FV=VzBgbhhVQvG+UGD2yaLJkwiq0qQHdFNQ2Ey8RKmV+qTg@mail.gmail.com>
Subject: Re: [v5] ASoC: qcom: lpass-cpu: Fix pop noise during audio capture begin
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

Judy,

On Thu, Jun 3, 2021 at 8:08 AM Judy Hsiao <judyhsiao@chromium.org> wrote:
>
> @@ -315,12 +353,54 @@ static int lpass_cpu_daiops_trigger(struct snd_pcm_substream *substream,
>         return ret;
>  }
>
> +static int lpass_cpu_daiops_prepare(struct snd_pcm_substream *substream,
> +               struct snd_soc_dai *dai)
> +{
> +       struct lpass_data *drvdata = snd_soc_dai_get_drvdata(dai);
> +       struct lpaif_i2sctl *i2sctl = drvdata->i2sctl;
> +       unsigned int id = dai->driver->id;
> +       int ret;
> +       /*
> +        * Ensure lpass BCLK/LRCLK is enabled bit before playback/capture
> +        * data flow starts. This allows other codec to have some delay before
> +        * the data flow.
> +        * (ex: to drop start up pop noise before capture starts).
> +        */

nit: there's usually a blank line between the variable declarations
and the first line of code, even if the first line of code is a
comment.


> +       if (substream->stream == SNDRV_PCM_STREAM_PLAYBACK)
> +               ret = regmap_fields_write(i2sctl->spken, id, LPAIF_I2SCTL_SPKEN_ENABLE);
> +       else
> +               ret = regmap_fields_write(i2sctl->micen, id, LPAIF_I2SCTL_MICEN_ENABLE);
> +
> +       if (ret) {
> +               dev_err(dai->dev, "error writing to i2sctl reg: %d\n", ret);
> +               return ret;
> +       }
> +
> +       /*
> +        * Check mi2s_was_prepared before enabling BCLK as lpass_cpu_daiops_prepare can
> +        * be called multiple times. It's paired with the clk_disable in
> +        * lpass_cpu_daiops_shutdown.
> +        */
> +       if (!drvdata->mi2s_was_prepared[dai->driver->id]) {
> +               drvdata->mi2s_was_prepared[dai->driver->id] = true;
> +               ret = clk_enable(drvdata->mi2s_bit_clk[id]);
> +               if (ret) {
> +                       dev_err(dai->dev, "error in enabling mi2s bit clk: %d\n", ret);
> +                       clk_disable(drvdata->mi2s_osr_clk[id]);

Can you explain why this clk_disable() is here? Your function didn't
turn this clock on, so why should it be turning it off in the error
case?


> +                       drvdata->mi2s_was_prepared[dai->driver->id] = false;
> +                       return ret;
> +               }

Why not put the `drvdata->mi2s_was_prepared[dai->driver->id] = true;`
_after_ you check for errors. Then you don't need to undo it in the
error case. I presume that your prepare() function isn't reentrant and
can't be called at the same time as your shutdown (right?).

Other than that, I don't have any objections to this patch anymore. I
probably won't add a formal "Reviewed-by", though, since I _really_
don't know anything about the issue at hand or the code. I just
stumbled upon this because I was getting the clock splat at bootup. If
someone feels like this needs me to spin up enough to understand /
really review this patch then please yell.

-Doug
