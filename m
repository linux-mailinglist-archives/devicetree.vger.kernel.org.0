Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D904A6E8ED5
	for <lists+devicetree@lfdr.de>; Thu, 20 Apr 2023 12:04:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234202AbjDTKEv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Apr 2023 06:04:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46382 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234296AbjDTKEo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Apr 2023 06:04:44 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DCD210E3
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:04:42 -0700 (PDT)
Received: from mail-qk1-f198.google.com (mail-qk1-f198.google.com [209.85.222.198])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 268C34131F
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 10:04:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1681985080;
        bh=MPSX/AfZygcMhOCNuxX1ZecGolc5hbcZ2NhciybSDRM=;
        h=MIME-Version:References:In-Reply-To:From:Date:Message-ID:Subject:
         To:Cc:Content-Type;
        b=b6v/jqmA6ujYWkGJoyz6sY7E2xd9+810N4cyaOlOReZ/QBOnWRDLRSdYgE/Td26hL
         aSyFx1T5kmV7XDKlK3w8O/bAt/VGft8A9gM6euaY2O5k3cXq+zQkqDonsv6pGebYTx
         xNP8YYZk4MRr07mmmYUynHSnIziIH6av3NRg5QxkPJRnTvZ2rOAq4tlO7kYvUnPl7y
         m0ApYR7OdwJ+8pywj7+WozFoQee6GE3Q3lsb0Tfh4RLdbbGJeeGq41tf7JTm/Nsy1V
         T0ixv/5VgWr4g8V2GWygmcqyuimp9ipPfTiK1xwvnmLC724rxa+T349v462sCkDjxx
         mVfWF9whStzSA==
Received: by mail-qk1-f198.google.com with SMTP id af79cd13be357-74d0b039ecfso32776585a.2
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 03:04:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1681985079; x=1684577079;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MPSX/AfZygcMhOCNuxX1ZecGolc5hbcZ2NhciybSDRM=;
        b=N4Nw1EzGTKWeiifp59a5yLLA2MvPtgwN+oXhNbG9l3Y4tkIEo3j7lNWVAJvUELtdDX
         d1l6Z4ORicS07tXz7rzP4rapESwxZuXMMYgxC8PB7KZjK0zfMz8aIof38drnxWQeoZjO
         m/m9dlAW1mRaZfSpiz/1hWWupxRLqgKrjXBHDb4lfuXbGXflLkjCJxiZKozGB7XdZioy
         skBC8r00VQIQhnu2LYhwJ61DMT0HnFTF2SxDnsaAOJg3vDMpQqJnxlZ+vQtTEh7EpLvw
         2SPZPc7c6FOBMafHqp6ai+SVeES0xwthfD9v1xsD/28UIza2uBOL/T7urbRAaJB8ow7O
         niuw==
X-Gm-Message-State: AAQBX9dAXGMYPdqHsEbxE14KCftvg8CAiLKcUfXeJ/zdzzaMNiwZAo1O
        k06d3TuVF9ENeKo11/9KAIuAWsttlFVPqLOinlMTLoG911+N6DXC8awV36h+nwzEQrNhl5eUJE8
        Tu3c57PilHRFQMKstQprO/QYF/WZ6NI/5rqSfakL6XqsCSOjx23IkYIM=
X-Received: by 2002:ac8:5792:0:b0:3ef:5733:29e4 with SMTP id v18-20020ac85792000000b003ef573329e4mr667777qta.64.1681985079082;
        Thu, 20 Apr 2023 03:04:39 -0700 (PDT)
X-Google-Smtp-Source: AKy350YZOJhhJ2/DG8mPZrGpHZG2bUew/6AA3c59/iwkpF1lN4P7gKE74NKz6hnyMtvTbz3kA9sQrlj/oL+Xnlk50P8=
X-Received: by 2002:ac8:5792:0:b0:3ef:5733:29e4 with SMTP id
 v18-20020ac85792000000b003ef573329e4mr667740qta.64.1681985078844; Thu, 20 Apr
 2023 03:04:38 -0700 (PDT)
MIME-Version: 1.0
References: <20230420093457.18936-1-nylon.chen@sifive.com> <20230420093457.18936-3-nylon.chen@sifive.com>
In-Reply-To: <20230420093457.18936-3-nylon.chen@sifive.com>
From:   Emil Renner Berthing <emil.renner.berthing@canonical.com>
Date:   Thu, 20 Apr 2023 12:04:22 +0200
Message-ID: <CAJM55Z-smXpgL+QyTSeAWt=B-RS_qtbrFZtJpP-cQS0gsQnDSw@mail.gmail.com>
Subject: Re: [PATCH v3 2/2] pwm: sifive: change the PWM controlled LED algorithm
To:     Nylon Chen <nylon.chen@sifive.com>
Cc:     aou@eecs.berkeley.edu, conor@kernel.org, geert+renesas@glider.be,
        heiko@sntech.de, krzysztof.kozlowski+dt@linaro.org,
        palmer@dabbelt.com, paul.walmsley@sifive.com, robh+dt@kernel.org,
        thierry.reding@gmail.com, u.kleine-koenig@pengutronix.de,
        devicetree@vger.kernel.org, linux-pwm@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org,
        nylon7717@gmail.com, zong.li@sifive.com, greentime.hu@sifive.com,
        vincent.chen@sifive.com, Conor Dooley <conor.dooley@microchip.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 20 Apr 2023 at 11:35, Nylon Chen <nylon.chen@sifive.com> wrote:
>
> The `frac` variable represents the pulse inactive time, and the result of
> this algorithm is the pulse active time. Therefore, we must reverse the
> result.
>
> The reference is SiFive FU740-C000 Manual[0]
>
> Link: https://sifive.cdn.prismic.io/sifive/1a82e600-1f93-4f41-b2d8-86ed8b16acba_fu740-c000-manual-v1p6.pdf [0]
>
> Acked-by: Conor Dooley <conor.dooley@microchip.com>
> Reviewed-by: Conor Dooley <conor.dooley@microchip.com>
> Signed-off-by: Nylon Chen <nylon.chen@sifive.com>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  drivers/pwm/pwm-sifive.c | 9 ++++++---
>  1 file changed, 6 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/pwm/pwm-sifive.c b/drivers/pwm/pwm-sifive.c
> index 393a4b97fc19..d5d5f36da297 100644
> --- a/drivers/pwm/pwm-sifive.c
> +++ b/drivers/pwm/pwm-sifive.c
> @@ -132,13 +132,13 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>  {
>         struct pwm_sifive_ddata *ddata = pwm_sifive_chip_to_ddata(chip);
>         struct pwm_state cur_state;
> -       unsigned int duty_cycle;
> +       unsigned int duty_cycle, period;
>         unsigned long long num;
>         bool enabled;
>         int ret = 0;
>         u32 frac;
>
> -       if (state->polarity != PWM_POLARITY_INVERSED)
> +       if (state->polarity != PWM_POLARITY_NORMAL && state->polarity != PWM_POLARITY_INVERSED)
>                 return -EINVAL;
>
>         cur_state = pwm->state;
> @@ -154,10 +154,13 @@ static int pwm_sifive_apply(struct pwm_chip *chip, struct pwm_device *pwm,
>          * calculating the register values first and then writing them
>          * consecutively
>          */
> +       period = max(state->period, ddata->approx_period);

Hi Nylon,

I don't understand this patch. You introduce this new variable,
period, and set it here but you never seem to use it. If you planned
to use it instead of state->period below, why should it be the max of
the old period and what is requested? What happens if the consumer
wants to lower the period?

Also above you now allow both PWM_POLARITY_NORMAL and
PWM_POLARITY_INVERSED but you treat both cases the same.

/Emil

>         num = (u64)duty_cycle * (1U << PWM_SIFIVE_CMPWIDTH);
>         frac = DIV64_U64_ROUND_CLOSEST(num, state->period);
> -       /* The hardware cannot generate a 100% duty cycle */
>         frac = min(frac, (1U << PWM_SIFIVE_CMPWIDTH) - 1);
> +       /* The hardware cannot generate a 100% duty cycle */
> +       frac = (1U << PWM_SIFIVE_CMPWIDTH) - 1 - frac;
> +
>
>         mutex_lock(&ddata->lock);
>         if (state->period != ddata->approx_period) {
> --
> 2.40.0
>
