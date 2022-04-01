Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C50FD4EEA52
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 11:23:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231925AbiDAJYp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 05:24:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54052 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1344489AbiDAJYm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 05:24:42 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 98981269A6A
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 02:22:51 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id m3so3718829lfj.11
        for <devicetree@vger.kernel.org>; Fri, 01 Apr 2022 02:22:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kqDhQ6uz5tP7E/u76ETFJKOp+CrWLSoKcxKKyX0RqW4=;
        b=VvgYSKL81nZLAs4hoT9cuIsMhmP8h+p1g8wsI7YmSZnBeQWKpXBsjn0tFPK6mWo+U2
         38yZO++R3yRrPbTkM8dEjkga/lPr9tEW/5pUICD57kN2HDO3BhHC5axSG09Ik5EDogUC
         odEYy8MIWeo6kBwh2h5eip/pRRkKQhCifIcNTOZB3KSe2PCRUY+eZnDarzCNA6n2gYST
         SOkZAmrZ5l3VSV9pwY4R233uVdLQNubqwwsEHybGBF3sXnxmo5DLZK7DHk/Hj+e+73GQ
         p8Fz+9RGcb5+Sjw4wE9P5FkohTTgEP7sHGYookmt7H+nWkL+ROTUng18DaKcREcp96yR
         6G4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kqDhQ6uz5tP7E/u76ETFJKOp+CrWLSoKcxKKyX0RqW4=;
        b=B5Vo2HKbYmtTP99mKPkaUYu9KOg8witRVFfwlA0LCOJpBYeOduF9fy3flWfC8hDY8x
         5RCQyfwO1bFE5Vmj+6Jnv95aZ/8VvULY2bFvGbHjKlS2MXWFWolao5TE4+PKp6xEQQfJ
         OMn7zW52VMPYCaDw+o0LW6HWc2JzO/WmW0cU0lR8DoljMnrhNnva3q0OM0dn6lqWAk9Y
         c4EDGiqJcoL76fdfWpABOfoiCbZHJgMtQJAtaseMm+oWoEHxUyh96nQ5lbN0LJqT7XKV
         7YVtESS46MX+9ePQMdPMciMwvDwqcPaJ9dD2xp36FQTI8Soa+hTwIvsnXavmtIXO/sbt
         0i5g==
X-Gm-Message-State: AOAM532zED2gaF5h67fVw1H9B9dB2+oFAlGonI+cvGRQGgCpsIX55zL3
        iwkHDynfxkPwiuPttcWWxYzHlVwbsATIT6sul/q4FA==
X-Google-Smtp-Source: ABdhPJwJrDnSzRPA1QW45MFiPs0C/KCemCmZtTlay3kzIbYxlsxllBZdkUFbUM0hK5gl/cOTN43YhXEhrJYg4D4w6LI=
X-Received: by 2002:a05:6512:3b0e:b0:44a:547d:c8b8 with SMTP id
 f14-20020a0565123b0e00b0044a547dc8b8mr13429451lfv.373.1648804969656; Fri, 01
 Apr 2022 02:22:49 -0700 (PDT)
MIME-Version: 1.0
References: <20220329032913.8750-1-axe.yang@mediatek.com> <20220329032913.8750-2-axe.yang@mediatek.com>
In-Reply-To: <20220329032913.8750-2-axe.yang@mediatek.com>
From:   Ulf Hansson <ulf.hansson@linaro.org>
Date:   Fri, 1 Apr 2022 11:22:13 +0200
Message-ID: <CAPDyKFqoTN1pF-L6qCHxpdMCmPtHP0aHHaDURN2QJsN3v+wZBw@mail.gmail.com>
Subject: Re: [PATCH v9 1/3] dt-bindings: mmc: mtk-sd: extend interrupts and
 pinctrls properties
To:     Axe Yang <axe.yang@mediatek.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Chaotian Jing <chaotian.jing@mediatek.com>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Yoshihiro Shimoda <yoshihiro.shimoda.uh@renesas.com>,
        Satya Tangirala <satyat@google.com>,
        Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        Wolfram Sang <wsa+renesas@sang-engineering.com>,
        Lucas Stach <dev@lynxeye.de>,
        Eric Biggers <ebiggers@google.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        Stephen Boyd <swboyd@chromium.org>,
        Kiwoong Kim <kwmad.kim@samsung.com>,
        Yue Hu <huyue2@yulong.com>, Tian Tao <tiantao6@hisilicon.com>,
        angelogioacchino.delregno@collabora.com, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 29 Mar 2022 at 05:29, Axe Yang <axe.yang@mediatek.com> wrote:
>
> Extend interrupts and pinctrls for SDIO wakeup interrupt feature.
> This feature allow SDIO devices alarm asynchronous interrupt to host
> even when host stop providing clock to SDIO card. An extra wakeup
> interrupt and pinctrl states for SDIO DAT1 pin state switching are
> required in this scenario.
>
> Signed-off-by: Axe Yang <axe.yang@mediatek.com>
> ---
>  .../devicetree/bindings/mmc/mtk-sd.yaml         | 17 ++++++++++++++++-
>  1 file changed, 16 insertions(+), 1 deletion(-)
>
> diff --git a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> index 297ada03e3de..3872a6ce2867 100644
> --- a/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> +++ b/Documentation/devicetree/bindings/mmc/mtk-sd.yaml
> @@ -69,12 +69,22 @@ properties:
>        - const: ahb_cg
>
>    interrupts:
> -    maxItems: 1
> +    description:
> +      Should at least contain MSDC GIC interrupt. To support SDIO in-band wakeup, an extended
> +      interrupt is required and be configured as wakeup source irq.

If I understand correctly, the extended interrupt (a GPIO irq) may not
necessarily share the same interrupt parent as the primary device
interrupt.

Perhaps it's then better to extend this with "interrupts-extended"
instead. See Documentation/devicetree/bindings/interrupt-controller/interrupts.txt.

> +    minItems: 1
> +    maxItems: 2
>
>    pinctrl-names:
> +    description:
> +      Should at least contain default and state_uhs. To support SDIO in-band wakeup, dat1 pin
> +      will be switched between GPIO mode and SDIO DAT1 mode, state_eint and state_dat1 are
> +      mandatory in this scenarios.
> +    minItems: 2
>      items:
>        - const: default
>        - const: state_uhs
> +      - const: state_eint
>
>    pinctrl-0:
>      description:
> @@ -86,6 +96,11 @@ properties:
>        should contain uhs mode pin ctrl.
>      maxItems: 1
>
> +  pinctrl-2:
> +    description:
> +      should switch dat1 pin to GPIO mode.
> +    maxItems: 1
> +
>    assigned-clocks:
>      description:
>        PLL of the source clock.
> --
> 2.25.1
>

Kind regards
Uffe
