Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3BA2577AAB2
	for <lists+devicetree@lfdr.de>; Sun, 13 Aug 2023 20:59:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231402AbjHMS7p (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 13 Aug 2023 14:59:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41912 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231491AbjHMS7o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 13 Aug 2023 14:59:44 -0400
Received: from mail-ua1-x92b.google.com (mail-ua1-x92b.google.com [IPv6:2607:f8b0:4864:20::92b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DFFAB1704
        for <devicetree@vger.kernel.org>; Sun, 13 Aug 2023 11:59:45 -0700 (PDT)
Received: by mail-ua1-x92b.google.com with SMTP id a1e0cc1a2514c-79aa1f24ba2so824339241.2
        for <devicetree@vger.kernel.org>; Sun, 13 Aug 2023 11:59:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=bgdev-pl.20221208.gappssmtp.com; s=20221208; t=1691953185; x=1692557985;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mvSEBb+mluam1nmVpoK29fUncMJsHTGSApagTYFZ+Nw=;
        b=pFVAQ/sNHiDXrGMz9gVFrGk2RoyqRTEw1A8tOgJUVd9tH/SoMcC4+2/HnhEgNGyqry
         y5eF3PH4E5Ljq8EAuiT4NILGWvm9UpdMnZN+PPX7q4BfSDcUQdZi08uoijQXZTyvTc1N
         sQExNrek1/cDxrigvgPUQTrFENNXxGF0C29mUtIV5UayKQEolEHPhIwNqoKkFarvejJE
         1/qkbE7EyLKltNSugm7eoJtMJUz8wmSUlxm3n8qP/n/OH1ipG9b3P4KBBqt5v+L45imk
         u17e8fPs0O8H0YPNEKv35qJS4NW6FrC7lgI7FPLc9427hSnejGg2qIvsAOXUJHzI0eOj
         YR2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691953185; x=1692557985;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mvSEBb+mluam1nmVpoK29fUncMJsHTGSApagTYFZ+Nw=;
        b=Dcxu02Iq1TD84xekzMIjfxtdYqWA7PTSO46sOx9Y06Q/B0a+ZmoT63tWdrjSup0A2E
         Ld9dPEcw8nmdtBZ9RBSg2eqBgBfGLscvjCeNUfBt9xsLXZdi9Ck0dJiDh9ln3bPdHflp
         XT/TXL/P7VztFWMdysATTQLoXJtuv9nYoO5wbKFsyaEi1KO3lpGgIrJplnZBzuQhbKZx
         D5iS/Zu5V5dWsUW46Oqxzs/3Und36Pb2wL1yEEbaM6Ohm7T4dPQUArREKiia852lvigy
         yZAXa+Ask6BDD404uRn9FOWhF5vDBMb1zT93wHOr+Ip3OVFq8RhCwmCuiGiKxJ3pcFHx
         AAng==
X-Gm-Message-State: AOJu0YzTyuCvKvHYwUBqVMh2SMdgyGHXov+vxDJSqaBQ8p2LswT1WlP5
        54U+yN4LKN0sGlFNnRrHjjiGMPDzADpKnBSKqaDlbQ==
X-Google-Smtp-Source: AGHT+IGluhxjUnvE0HEw7R1pBnoP9kfF80Uw2gAE8xhlQCTYodKi9s2rNhKVE9dOn2oFx7nOecRGqHm+O1G5Ai9/VuY=
X-Received: by 2002:a67:f28b:0:b0:447:6965:7284 with SMTP id
 m11-20020a67f28b000000b0044769657284mr7883113vsk.8.1691953185055; Sun, 13 Aug
 2023 11:59:45 -0700 (PDT)
MIME-Version: 1.0
References: <20230812-pxa1908-lkml-v5-0-a5d51937ee34@skole.hr> <20230812-pxa1908-lkml-v5-1-a5d51937ee34@skole.hr>
In-Reply-To: <20230812-pxa1908-lkml-v5-1-a5d51937ee34@skole.hr>
From:   Bartosz Golaszewski <brgl@bgdev.pl>
Date:   Sun, 13 Aug 2023 20:59:34 +0200
Message-ID: <CAMRc=MfS7Ybr0sxCmgh98+7+3pnRmWFVutTgz4+sa1nsTdh3Hg@mail.gmail.com>
Subject: Re: [PATCH v5 1/8] gpio: pxa: disable pinctrl calls for MMP_GPIO
To:     =?UTF-8?Q?Duje_Mihanovi=C4=87?= <duje.mihanovic@skole.hr>
Cc:     Robert Jarzmik <robert.jarzmik@free.fr>,
        Linus Walleij <linus.walleij@linaro.org>,
        Andy Shevchenko <andy@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Lubomir Rintel <lkundrak@v3.sk>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-gpio@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-hardening@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        afaerber@suse.de
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_NONE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Aug 12, 2023 at 12:26=E2=80=AFPM Duje Mihanovi=C4=87 <duje.mihanovi=
c@skole.hr> wrote:
>
> Similarly to PXA3xx and MMP2, pinctrl-single isn't capable of setting
> pin direction on MMP either.
>
> Fixes: a770d946371e ("gpio: pxa: add pin control gpio direction and reque=
st")
> Signed-off-by: Duje Mihanovi=C4=87 <duje.mihanovic@skole.hr>
> Reviewed-by: Andy Shevchenko <andy@kernel.org>
> ---
>  drivers/gpio/gpio-pxa.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/gpio/gpio-pxa.c b/drivers/gpio/gpio-pxa.c
> index a1630ed4b741..d92650aecb06 100644
> --- a/drivers/gpio/gpio-pxa.c
> +++ b/drivers/gpio/gpio-pxa.c
> @@ -238,6 +238,7 @@ static bool pxa_gpio_has_pinctrl(void)
>         switch (gpio_type) {
>         case PXA3XX_GPIO:
>         case MMP2_GPIO:
> +       case MMP_GPIO:
>                 return false;
>
>         default:
>
> --
> 2.41.0
>
>

Acked-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
