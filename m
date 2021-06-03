Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8A3A2399A87
	for <lists+devicetree@lfdr.de>; Thu,  3 Jun 2021 08:18:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229635AbhFCGT4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 3 Jun 2021 02:19:56 -0400
Received: from mail-ot1-f46.google.com ([209.85.210.46]:46655 "EHLO
        mail-ot1-f46.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229822AbhFCGT4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 3 Jun 2021 02:19:56 -0400
Received: by mail-ot1-f46.google.com with SMTP id 66-20020a9d02c80000b02903615edf7c1aso4729711otl.13
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 23:18:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to;
        bh=AORJO5loH8P1GCxBtXakps2SGxdj+XmHegIFz60ntSY=;
        b=m+a8Q1UpsGAwg2QV2ag3baMSuw4sbbIdKA/R3hm/N9Rbev/uihCBU+7ucdJCdo4I1B
         sN1FtF3Cn2NxdCrssZOG1BR3kj7NBLlERFQXgAB7OGtNUtF3rf9WinaAi86Z9EecPKOl
         Zp0/gqK7Ib3OXxPjeLHNnEAowBmn5c7TGgWq8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to;
        bh=AORJO5loH8P1GCxBtXakps2SGxdj+XmHegIFz60ntSY=;
        b=nfC7yTEQL2+9e+sy6TaTicYUbevkQZQ6hcg3q7aXqha/wbQTWIdcyiopkAEsNuqdSf
         Cph5BDQjIAyeGlcp3gplQvbz1KQDI95WgmGAGMFO4r8r1Te+bvtOzGgK0oSYM9zJjy+B
         Vt+t/QhebyTPSI3hr5mxTZrm0eGJcDV2Xd9sEAwtj4joE8L04cxSDWWqHl0Z+E/NDcwL
         0DqirSuV/tWJUQOGlvdlf5wQJZF7Cw0Yo9S8bQ8MDlttBTciu4wt+SOoGiGrjmDx64ny
         R9OGq7ho+ZgdWFp78Un51uwHJRCbL0cOtpG5W53puZgylMkJDBKjAihKfjv8URXYJrcY
         bEIg==
X-Gm-Message-State: AOAM532BpyRy3Cr9FP1hAYpCOy02PrOuKIszgWY1ciQd5NhWDwX/J6K7
        r2T155uB76UlFaVT4BbHEvDIoRutmuo2vrTSwlTb3A==
X-Google-Smtp-Source: ABdhPJxyYLeIoldjWEenrhIDKjwGFGHgDtAWhmJTqgX+kVi9DQAsE9OwTaUuSW0wIJ7tz1YPkk2udKnCFrsX4wlP32g=
X-Received: by 2002:a9d:18e:: with SMTP id e14mr9745672ote.34.1622701022184;
 Wed, 02 Jun 2021 23:17:02 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Wed, 2 Jun 2021 23:17:01 -0700
MIME-Version: 1.0
In-Reply-To: <20210603050530.15898-1-srivasam@codeaurora.org>
References: <20210603050530.15898-1-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Wed, 2 Jun 2021 23:17:01 -0700
Message-ID: <CAE-0n52CyZkRDForR7LumXL7Tcr=48UV7T-wxirMsxk7AJJsmg@mail.gmail.com>
Subject: Re: [PATCH] ASoC: qcom: Fix for DMA interrupt clear reg overwriting
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

Quoting Srinivasa Rao Mandadapu (2021-06-02 22:05:30)
> This patch fixes the DMA interrupt registers overwriting

 $ git grep "This patch" -- Documentation/process

> issue in lpass platform interrupt handler.

Can you describe the issue more?

>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---

Any Fixes tag?

>  sound/soc/qcom/lpass-platform.c | 17 +++++++++++------
>  1 file changed, 11 insertions(+), 6 deletions(-)
>
> diff --git a/sound/soc/qcom/lpass-platform.c b/sound/soc/qcom/lpass-platform.c
> index 0df9481ea4c6..e02caa121fa4 100644
> --- a/sound/soc/qcom/lpass-platform.c
> +++ b/sound/soc/qcom/lpass-platform.c
> @@ -650,7 +650,7 @@ static irqreturn_t lpass_dma_interrupt_handler(
>         struct lpass_variant *v = drvdata->variant;
>         irqreturn_t ret = IRQ_NONE;
>         int rv;
> -       unsigned int reg = 0, val = 0;
> +       unsigned int reg = 0, val = 0, val_clr = 0, val_mask = 0;

Why assign to 0 and then overwrite it?

>         struct regmap *map;
>         unsigned int dai_id = cpu_dai->driver->id;
>
> @@ -676,8 +676,9 @@ static irqreturn_t lpass_dma_interrupt_handler(
>         return -EINVAL;
>         }
>         if (interrupts & LPAIF_IRQ_PER(chan)) {
> -
> -               rv = regmap_write(map, reg, LPAIF_IRQ_PER(chan) | val);
> +               val_clr = (LPAIF_IRQ_PER(chan) | val);

Is the extra parenthesis useful?

> +               val_mask = LPAIF_IRQ_ALL(chan);
> +               rv = regmap_update_bits(map, reg, val_mask, val_clr);
>                 if (rv) {
>                         dev_err(soc_runtime->dev,
>                                 "error writing to irqclear reg: %d\n", rv);
