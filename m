Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A0CF7402F88
	for <lists+devicetree@lfdr.de>; Tue,  7 Sep 2021 22:20:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238011AbhIGUVa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 16:21:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232456AbhIGUVa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 16:21:30 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC011C061575
        for <devicetree@vger.kernel.org>; Tue,  7 Sep 2021 13:20:23 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id o16-20020a9d2210000000b0051b1e56c98fso621706ota.8
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 13:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:user-agent:date:message-id
         :subject:to:cc;
        bh=ukPiPPE2rZ88vZN1HP1lB0rTF2OeXPBUpUGvxMb6w7A=;
        b=kyqoGXnxMsNL5PFmmBaRpA3fUSFzACYYEJxAgrqLqfisBC7GAJWkod8Uqn55/K35Mi
         yM23x2n0ovoqTTeaQJXg169ZYYouKU+wFJaCdxnSrs/TVE2An7bwq6vDk8vFjK/cjlL6
         zFC7Yj++kgWDa/LOxFnG3zcLCHHyZSJ8anrw8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from
         :user-agent:date:message-id:subject:to:cc;
        bh=ukPiPPE2rZ88vZN1HP1lB0rTF2OeXPBUpUGvxMb6w7A=;
        b=Ksqm8NnRRRID6UYode1pCFmEgp8zC9OSm5mMXP2vlicPATWymL3hFWdSXXXsYgLxsS
         cFuGjxVtkl0V6hAHAedOHk8r01kB3+zCZnZZL8rXfQZ4khDKWMTeu3OUMo5EZoxk+HS1
         r1y0yk2UwujSspjyKnaKt99GvTrYquiuQEkHVhO+ur7LuSi3DODknJSwq2JVcvaND67h
         sA5Y6LT7Lm9asmC78uRMcNiqGY2L91sB9i4MnUC4FCVqoecAX1fNaJ1b5KjOdWZ+T+wz
         psF8tQFqZVwGdZ9XMipJZwisEqkqVRuDlYXqoIh4edwqy5uZ8N0laIF+jws74KpbFmef
         4fnw==
X-Gm-Message-State: AOAM531rB83IMXejCfVxVI0OHIssMM1o1kpGT/UZV7kvNf1Rl36LaCgK
        cRFHWHxvkZh2DcvSx5pVmfWPIKuyUULJeE+ccyR/9w==
X-Google-Smtp-Source: ABdhPJwYa1VNZ8SWZ957Teoa4i0325fu9DZgnTn3d3Vrdn657RvBqUeJFE1e8/tQPlx1wh3Bf/tNEWc0pG6yKORbGsk=
X-Received: by 2002:a05:6830:719:: with SMTP id y25mr174735ots.77.1631046023013;
 Tue, 07 Sep 2021 13:20:23 -0700 (PDT)
Received: from 753933720722 named unknown by gmailapi.google.com with
 HTTPREST; Tue, 7 Sep 2021 20:20:22 +0000
MIME-Version: 1.0
In-Reply-To: <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
References: <1630924867-4663-1-git-send-email-skakit@codeaurora.org> <1630924867-4663-3-git-send-email-skakit@codeaurora.org>
From:   Stephen Boyd <swboyd@chromium.org>
User-Agent: alot/0.9.1
Date:   Tue, 7 Sep 2021 20:20:22 +0000
Message-ID: <CAE-0n52Jb9nw9rbbQJrKNDQ_O2iCahDr8WLGkWORcNks9ptH-g@mail.gmail.com>
Subject: Re: [PATCH 2/3] leds: Add pm8350c support to Qualcomm LPG driver
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Pavel Machek <pavel@ucw.cz>, Rob Herring <robh+dt@kernel.org>,
        satya priya <skakit@codeaurora.org>
Cc:     mka@chromium.org, kgunda@codeaurora.org,
        linux-leds@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting satya priya (2021-09-06 03:41:06)
> Add pm8350c compatible and lpg_data to the driver.
>
> Signed-off-by: satya priya <skakit@codeaurora.org>
> ---
>  drivers/leds/rgb/leds-qcom-lpg.c | 10 ++++++++++
>  1 file changed, 10 insertions(+)
>
> diff --git a/drivers/leds/rgb/leds-qcom-lpg.c b/drivers/leds/rgb/leds-qcom-lpg.c
> index 327e81a..6ee80d6 100644
> --- a/drivers/leds/rgb/leds-qcom-lpg.c
> +++ b/drivers/leds/rgb/leds-qcom-lpg.c
> @@ -1275,9 +1275,19 @@ static const struct lpg_data pm8150l_lpg_data = {
>         },
>  };
>
> +static const struct lpg_data pm8350c_pwm_data = {
> +       .pwm_9bit_mask = BIT(2),
> +
> +       .num_channels = 1,
> +       .channels = (struct lpg_channel_data[]) {

Can this be const struct lpg_channel_data? I think that will move it to
rodata which is only a good thing.

> +               { .base = 0xeb00 },
> +       },
> +};
> +
>  static const struct of_device_id lpg_of_table[] = {
>         { .compatible = "qcom,pm8150b-lpg", .data = &pm8150b_lpg_data },
>         { .compatible = "qcom,pm8150l-lpg", .data = &pm8150l_lpg_data },
> +       { .compatible = "qcom,pm8350c-pwm", .data = &pm8350c_pwm_data },
>         { .compatible = "qcom,pm8916-pwm", .data = &pm8916_pwm_data },
>         { .compatible = "qcom,pm8941-lpg", .data = &pm8941_lpg_data },
>         { .compatible = "qcom,pm8994-lpg", .data = &pm8994_lpg_data },
