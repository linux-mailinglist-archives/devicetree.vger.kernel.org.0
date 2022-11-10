Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D874623DE7
	for <lists+devicetree@lfdr.de>; Thu, 10 Nov 2022 09:50:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232483AbiKJIul (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Nov 2022 03:50:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229551AbiKJIuk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Nov 2022 03:50:40 -0500
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0D5FE64C5
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 00:50:40 -0800 (PST)
Received: by mail-ed1-x534.google.com with SMTP id l11so2035677edb.4
        for <devicetree@vger.kernel.org>; Thu, 10 Nov 2022 00:50:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=+/0zI2jI6FYsEnOqb22IvUzFOZdF0rtkWAEWPsANlNE=;
        b=RbiH0RwK0PSQtei4cjoWTFlrWi3WyDlTAl/SM43otykv3VeUYmJLKxqQSBDbg6EqRa
         hEFVUQehvwcHFhlmBsOI0PGFw28JPIZfFR66W8M4g1+ob8xi2dyTeOxwUiuaL8p42apu
         kcmNVoQIzRaShYt82Nc4ZNKaA0rRo1/N8Gx5oOHRU0dhGXLwv3qgundaHOuLfrl7PG1f
         u/QdcGj2dhiLP53j9euIAMgvbsBbvuq7jHh5+ssyeFiyur7ZbLDuzNrWRKU+6X6xRdNe
         F/1kjshAdLmxcJYqeg9j7fz8t+KtyRwrvM5tyDSIl+VYlevC84zxFAgbvihm64libFLc
         GHpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=+/0zI2jI6FYsEnOqb22IvUzFOZdF0rtkWAEWPsANlNE=;
        b=3oIB5u45J6ih5P95GWvpt2FPYdi3ckwUhp6/YCHXySlQos7CL8ZI/3KQURG3ObzZx8
         p0dhy6ZK2NzggzW+dJEGaD8jzoE0hF9PIKM05Sv73JQ3323fBNVGwiv7oDtiAc8LY8yv
         PdoStVWQG0xWRs19SMqe03quzRlAjPpj+QTjujKsKkzMImRHtSI5ppIGatkTWQhReKtF
         MVwZ5dgvHY8Mqh37f/nsWQwc86c0rDmHntQs/ccCe1wxH+ygZ9zOtwbbqRTOqkqPc0bQ
         RAbmVoEGyo2FwHz0aW9FR5/Ke/C51KuQdzvZu4gv1zMjMEkOMFUa1i3QwNZ9zYrD8Tp8
         evgw==
X-Gm-Message-State: ACrzQf3UNzdVkkOh3bIKh2nyNtUr7Uj7cr9fJYdSUShvzdsmQBNfgkqS
        m4QNr0+3otKhRXeR/h+SKuZ5b+WE8Nt0bScsTgkqzQ==
X-Google-Smtp-Source: AMsMyM5EvvqS8SaVjeVz+ADM4dzJk//5A5i2I8oIYOAoumJBV2yvSDCTByjZRSlFG9pcCtT3nFyEpRrX58so41S/h0I=
X-Received: by 2002:a05:6402:659:b0:463:a83c:e0af with SMTP id
 u25-20020a056402065900b00463a83ce0afmr1824173edx.158.1668070238553; Thu, 10
 Nov 2022 00:50:38 -0800 (PST)
MIME-Version: 1.0
References: <20221028205009.15105-1-macroalpha82@gmail.com> <20221028205009.15105-4-macroalpha82@gmail.com>
In-Reply-To: <20221028205009.15105-4-macroalpha82@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 10 Nov 2022 09:50:27 +0100
Message-ID: <CACRpkdZ5q8y2iH7ZhfLUGXyxuVePE6Lz-_=TKYTbAqxZZMQTAw@mail.gmail.com>
Subject: Re: [PATCH V4 3/3] drm/panel: Add NewVision NV3051D MIPI-DSI LCD panel
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, sam@ravnborg.org,
        Chris Morgan <macromorgan@hotmail.com>, robh+dt@kernel.org,
        thierry.reding@gmail.com
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Chris,

thanks for your patch!

On Fri, Oct 28, 2022 at 10:50 PM Chris Morgan <macroalpha82@gmail.com> wrote:

> From: Chris Morgan <macromorgan@hotmail.com>
>
> Support NewVision NV3051D panels as found on the Anbernic RG353P and
> RG353V. The underlying LCD part number for the RG353x devices is
> unknown, so the device name and a fallback for the driver IC is
> used instead.
>
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>

(...)
> +struct panel_nv3051d {
> +       struct device *dev;
> +       struct drm_panel panel;
> +       struct gpio_desc *reset_gpio;
> +       const struct nv3051d_panel_info *panel_info;
> +       struct regulator *vdd;
> +       bool prepared;

I think you want to get rid of prepared. The framework keeps track of state.

> +#define dsi_dcs_write_seq(dsi, cmd, seq...) do {                       \
> +               static const u8 b[] = { cmd, seq };                     \
> +               int ret;                                                \
> +               ret = mipi_dsi_dcs_write_buffer(dsi, b, ARRAY_SIZE(b)); \
> +               if (ret < 0)                                            \
> +                       return ret;                                     \
> +       } while (0)

This is a reimplementation of mipi_dsi_dcs_write_seq() so use that
instead. (Found in include/drm/drm_mipi_dsi.h)

> +       /*
> +        * Init sequence was supplied by device vendor with no
> +        * documentation.
> +        */

Grrrr but not your fault. What *can* work is to look in related
datasheets and infer some of the magic variables from there.
Anyways best effort is best effort and as long as it's working
that's OK.

An experiment you can do if you have time is to see if you can read out
MTP ID from the panel (3 bytes, check how other drivers do it)
and use that to figure out who manufactured the actual display
controller. It's a bit of sleuthing.

> +       ctx->reset_gpio = devm_gpiod_get_optional(dev, "reset", GPIOD_OUT_LOW);
> +       if (IS_ERR(ctx->reset_gpio)) {
> +               dev_err(dev, "cannot get reset gpio\n");
> +               return PTR_ERR(ctx->reset_gpio);
> +       }

I usually get it with GPIOD_OUT_HIGH so that reset i asserted at probe().

You do have active low flagged in your DTS do you not?

Yours,
Linus Walleij
