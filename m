Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 244134004FB
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 20:40:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348380AbhICSlq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 14:41:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40460 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348344AbhICSlq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 14:41:46 -0400
Received: from mail-ot1-x332.google.com (mail-ot1-x332.google.com [IPv6:2607:f8b0:4864:20::332])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 15FECC061757
        for <devicetree@vger.kernel.org>; Fri,  3 Sep 2021 11:40:46 -0700 (PDT)
Received: by mail-ot1-x332.google.com with SMTP id i8-20020a056830402800b0051afc3e373aso160310ots.5
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 11:40:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=g+/vVt6JhLLpX1/epBxESaopp8FQHhl77WcdHs+7WkE=;
        b=S43gOar878bmf2S/ybLy8S+qmYwiuKKN1YQkjyxZG7PrBlEr3oytcmYjl8Zvz/gTwh
         YbECImb7dEdGWbCX75zbh/ITV1FIttFEputYDhGJvuRSvPJT4vICkU9+05sCPwKXXcHa
         DPSw9qv85JWv8adTg+5LDsvHRDpraHZeLUVZ0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=g+/vVt6JhLLpX1/epBxESaopp8FQHhl77WcdHs+7WkE=;
        b=clDIWY0U2lMZm6TkqyXxBS1uuh9Gj2PlDb6wz2Iyaf4zD/2BP90ME/3GLAaturQn40
         gDiM+M9m4KsrHmObCVDmj0RAE9DyzlkHAuDhafsO5IHh5l6jTKTdkUCJQGq/9A94suBq
         99/Bf5IHZtS0LidEofsL1tZ+Rfmn5OIQPsfHvCS1prtbOmINHCzWXK40QuUnVj9RUsMc
         eE92MjGd8E6v8njTbyqKgedBypCdDSzWtB85hvqQr8pofGwV2x0BuwjPbRFlyZHeKNQM
         pLg+SyRtR8K+D5JVCpqPJExv0OjdU+aC+TnCyWnxdE75CWaHROMvEvxqpneG5sokM4lo
         67sA==
X-Gm-Message-State: AOAM532XqMybzNdbyVNUUDs0J0EyRTKm4c8z8MIjUP+yDjmC5NgI8KRP
        PH1aFcEdOMl9bmBCuIRqsbHU9gvFh3Ch6U+uWnHzkQ==
X-Google-Smtp-Source: ABdhPJycPSV0nBgcq0hjBFC/o2cbbIgqzAp7Pb8hkvRUJrUsZwaG0a7ygKqi477f1CU9FYwgWjubKMEef81F9cz435c=
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr380633ots.77.1630694445434;
 Fri, 03 Sep 2021 11:40:45 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Fri, 3 Sep 2021 14:40:45 -0400
MIME-Version: 1.0
In-Reply-To: <20210903100153.9137-1-srivasam@codeaurora.org>
References: <20210903100153.9137-1-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Fri, 3 Sep 2021 14:40:45 -0400
Message-ID: <CAE-0n50=vL0MHHHkc22ahrqqD3DskFXZzFU8qjU8=EY1kZ+__Q@mail.gmail.com>
Subject: Re: [PATCH] ASoC: qcom: lpass-platform: Reset irq clear reg post
 handling interrupts
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-09-03 03:01:53)
> Update interrupt clear register with reset value after addressing
> all interrupts. This is to fix playback or capture hanging issue in
> simultaneous playback and capture usecase.
>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---

Any Fixes tag?

>  sound/soc/qcom/lpass-platform.c | 6 ++++++
>  1 file changed, 6 insertions(+)
>
> diff --git a/sound/soc/qcom/lpass-platform.c b/sound/soc/qcom/lpass-platform.c
> index f9df76d37858..1a0a4b0b1a03 100644
> --- a/sound/soc/qcom/lpass-platform.c
> +++ b/sound/soc/qcom/lpass-platform.c
> @@ -749,6 +749,12 @@ static irqreturn_t lpass_platform_lpaif_irq(int irq, void *data)
>                 }
>         }
>
> +       rv = regmap_write(drvdata->lpaif_map, LPAIF_IRQCLEAR_REG(v, LPAIF_IRQ_PORT_HOST), 0x0);
> +       if (rv) {
> +               pr_err("error writing to irqstat reg: %d\n", rv);
> +               return IRQ_NONE;

I was thinking we should return IRQ_HANDLED still, but then I guess
failing to clear the irq be treated as a spurious irq so that if we fail
enough times we'll shut off the irq at the irqchip. Things are going bad
if the write fails.

> +       }
> +
>         return IRQ_HANDLED;
>  }
>
