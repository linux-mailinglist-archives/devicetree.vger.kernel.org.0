Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B5F08412C06
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 04:40:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1352343AbhIUCmY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 22:42:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36492 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241538AbhIUCE4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 22:04:56 -0400
Received: from mail-oo1-xc33.google.com (mail-oo1-xc33.google.com [IPv6:2607:f8b0:4864:20::c33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77482C143A48
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:17:22 -0700 (PDT)
Received: by mail-oo1-xc33.google.com with SMTP id m14-20020a4ad50e000000b002912a944a47so6163806oos.12
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 11:17:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=JjZwsjLoE1v3IYa2GVHYD3KilZhhQVThWYCXDu9nvYo=;
        b=a63x+bgfAIdvw+z6zqMvEu6JrCNqun+9IqImsNVfxFsirapOdMZ+eBj0e2g1IRZA8g
         AhQnWYI3S1LMtRTf3cyc5VHr2OowcGQUtv7/UympQw8t+7yyJIH+q8S1hc4KHM47rWK6
         ICe0PLjGSWwqVqs4PwDznSR8RBSF3gFpTPQfI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=JjZwsjLoE1v3IYa2GVHYD3KilZhhQVThWYCXDu9nvYo=;
        b=uij/Rbw+QyhOcAynJlxEYvRZnHo7RkVkCDmCuV2jm/goXpQ7FePGasvuEmgmufTzvG
         u24E8NX5+a/8uZmEZ+vJpZ0+Ef0wnLeO1l0plR0V+xT3WB6P5Ca7bAd2fUUU8qYkNGiZ
         CwnASOsnYLmxI4HTcY9HQcXg/FZtFK+sFvf8GdTkfQhbKByHr4Vwrd5XbP1R0Mb+7c/j
         PKrmeVx+alT+xKrM2x0TnwWpzlQFjnioh6BS//t9/XR3dzDoiESVB8H2IZlT+qBY8C7o
         T1sJviG95llNEtqXH8E1QTHvysfQgAuZtbWbBG78/PA+ewRr0UB9OtmWWDSaeZUasS4u
         QuQw==
X-Gm-Message-State: AOAM532JF3TvXNME+is/94d4yyV9m6uPagMRR3yQUCMEVlkFibzIUZv2
        jNyQSrb/ZIcam5Yfow+b9XzJpVS6fMQKTatCDnS37w==
X-Google-Smtp-Source: ABdhPJwVjR/WftKlNJXp2AGVuRgbTEYRYkgthir6kT3bKkja1m6mMkzqMgaNf1nOTAkyliApojmA+4e7jQQ/i3tbxgo=
X-Received: by 2002:a4a:c3c2:: with SMTP id e2mr7886842ooq.8.1632161840976;
 Mon, 20 Sep 2021 11:17:20 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Mon, 20 Sep 2021 11:17:20 -0700
MIME-Version: 1.0
In-Reply-To: <1632123331-2425-2-git-send-email-srivasam@codeaurora.org>
References: <1632123331-2425-1-git-send-email-srivasam@codeaurora.org> <1632123331-2425-2-git-send-email-srivasam@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Mon, 20 Sep 2021 11:17:20 -0700
Message-ID: <CAE-0n51L7YSA4FDLv_2Q9U3nzxK1YY8hRtZ-G0cs42nomySMTA@mail.gmail.com>
Subject: Re: [PATCH 1/7] ASoC: qcom: Add compatible names in va,wsa,rx,tx
 codec drivers for sc7280
To:     Srinivasa Rao Mandadapu <srivasam@codeaurora.org>,
        agross@kernel.org, alsa-devel@alsa-project.org,
        bgoswami@codeaurora.org, bjorn.andersson@linaro.org,
        broonie@kernel.org, devicetree@vger.kernel.org,
        judyhsiao@chromium.org, lgirdwood@gmail.com,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        perex@perex.cz, plai@codeaurora.org, robh+dt@kernel.org,
        rohitkr@codeaurora.org, srinivas.kandagatla@linaro.org,
        tiwai@suse.com
Cc:     Venkata Prasad Potturu <potturu@codeaurora.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Srinivasa Rao Mandadapu (2021-09-20 00:35:25)
> Add compatible names for sc7280 based targets in digital codec drivers
> va,wsa,rx and tx.
>
> Signed-off-by: Venkata Prasad Potturu <potturu@codeaurora.org>
> Signed-off-by: Srinivasa Rao Mandadapu <srivasam@codeaurora.org>
> ---
>  sound/soc/codecs/lpass-rx-macro.c  | 1 +
>  sound/soc/codecs/lpass-tx-macro.c  | 1 +
>  sound/soc/codecs/lpass-va-macro.c  | 1 +
>  sound/soc/codecs/lpass-wsa-macro.c | 1 +
>  4 files changed, 4 insertions(+)
>
> diff --git a/sound/soc/codecs/lpass-rx-macro.c b/sound/soc/codecs/lpass-rx-macro.c
> index 196b068..520c760 100644
> --- a/sound/soc/codecs/lpass-rx-macro.c
> +++ b/sound/soc/codecs/lpass-rx-macro.c
> @@ -3578,6 +3578,7 @@ static int rx_macro_remove(struct platform_device *pdev)
>
>  static const struct of_device_id rx_macro_dt_match[] = {
>         { .compatible = "qcom,sm8250-lpass-rx-macro" },
> +       { .compatible = "qcom,sc7280-lpass-rx-macro" },

Please sort alphabetically on compatible string.

>         { }
>  };
>  MODULE_DEVICE_TABLE(of, rx_macro_dt_match);
