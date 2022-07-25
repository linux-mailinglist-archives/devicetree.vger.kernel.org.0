Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27CE457FF39
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 14:46:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235206AbiGYMqq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 08:46:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235180AbiGYMqp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 08:46:45 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F91615A06
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 05:46:44 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id z23so20198571eju.8
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 05:46:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=d7+MTfcD+NFc2y/OEnklb7H3XSxJGRWVeSRrvmC4apM=;
        b=fEQX5UAxkfq+09coTXrN6rrW74oy24rWf11QXf2XtJpNLY7S8dqceObl3gEhdPrrvS
         MEdzc0jCz3s/8NdcOP34pFUfYlB+YV8EqpnYwLpwfauXAnlpmuEt+Fsyayt6i2dCLwSv
         wSq+e61Wk8owPJsRezgnp2Mj1p3r+zG7ZaYcDFYuFjl0LhVPOM/MouK0pyUasJb2M5Ni
         fSsvqKn47kYlyPOlfymvKRpuPtqmVZX1utFQHQMeWJRTxw5AlQZfPxvsWIxb2CDDY3Oh
         9c/UowiLKOEYLK8IU7oWM9tR9vynkrDxXEEpONfa34gV3kLDiGQBB7M3BjtJj6Vhy5FF
         PICg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=d7+MTfcD+NFc2y/OEnklb7H3XSxJGRWVeSRrvmC4apM=;
        b=kvAZhQcLXOSWdF+7hyD60/sUKGxM+GCCRdmgtmBsCI9YNFTpAcHN6FtATp1hsAK39c
         zgSImp9f6Oah34J+mm7yDKEnF0OX7vooZFZqRHDC5YroFoZRaom0+8iGFbvCu5Kh4i6H
         wnUgyLujlN37N17Yb0eTYT4vZ6EfwynfhQe/J2qA9bxfgdSdUo+c7mp/TiP4Sn2cjgeb
         5OxHnwgNW5o1Hcq/KqDcTiJ/2KimLMC7OROiIWAUWMHS+IF6ggaLqSkgaN7xOm6ksPB3
         KmnSMwoP9/Q+Lv1IcE5NjzWpgyYmremn0/SEm86cca61RNB2EcpGJj8qGMt/ASlpOiMp
         wjiQ==
X-Gm-Message-State: AJIora+G5bJrIlI9riRgi0tTV5NDMdPaRhZBoMCHI5mAneQsj3Q+zsmn
        eFNjiyQLd000QLDTYkOPhzvxp1F30aFzUa//qxOU6w==
X-Google-Smtp-Source: AGRyM1sCu21K/w1G5XojAxSlYHNjLDCufI94j1Lxyx/oXRqmlY5vGOzH/4OVrcFYM3tG0TTlufO236behkk0QeQyTjM=
X-Received: by 2002:a17:907:a053:b0:72b:3051:b79b with SMTP id
 gz19-20020a170907a05300b0072b3051b79bmr9552157ejc.690.1658753202304; Mon, 25
 Jul 2022 05:46:42 -0700 (PDT)
MIME-Version: 1.0
References: <20220623090445.1401-1-axe.yang@mediatek.com> <20220623090445.1401-4-axe.yang@mediatek.com>
 <CACRpkdZ5G2fMCqvkXANVEmZjNcF4U4mSDzZk6aXbqFjYVN3hcA@mail.gmail.com> <3747f246650622ef65787159af5271a79401a855.camel@mediatek.com>
In-Reply-To: <3747f246650622ef65787159af5271a79401a855.camel@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 25 Jul 2022 14:46:30 +0200
Message-ID: <CACRpkdZP-FBP8hsBfeMn1M8=VR_cYG+j9GQc9VdV-HjkvSo73w@mail.gmail.com>
Subject: Re: [PATCH v13 3/3] mmc: mediatek: add support for SDIO eint wakup IRQ
To:     Axe Yang <axe.yang@mediatek.com>
Cc:     Ulf Hansson <ulf.hansson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
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
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com,
        Yong Mao <yong.mao@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 25, 2022 at 11:13 AM Axe Yang <axe.yang@mediatek.com> wrote:
> On Fri, 2022-07-22 at 13:21 +0200, Linus Walleij wrote:
> > On Thu, Jun 23, 2022 at 11:10 AM Axe Yang <axe.yang@mediatek.com>
> > wrote:

> SDIO DAT1 pin mode is changed to GPIO mode in
> dev_pm_set_dedicated_wake_irq_reverse():
>
> https://elixir.bootlin.com/linux/latest/source/drivers/pinctrl/mediatek/pinctrl-mtk-common-v2.c#L339
>
> dev_pm_set_dedicated_wake_irq_reverse() -> ... ->request_threaded_irq()
> -> __setup_irq() -> irq_request_resources() ->
> mtk_eint_irq_request_resources()-> mtk_xt_set_gpio_as_eint()

This doesn't seem to have much to do with pin control?
No pin control functions are called on this execution path,
no pin control state is changed, right?

If what you mean is that
it happens to poke into the same hardware registers that is
mainly a matter of concurrency in the driver, sometimes two
abstractions happen to have to poke into the same hardware
registers and then it is up to the driver to maintain state for
the hardware, this is not a question for the framework.

How is Mediatek developers thinking about this thing in general?
You are a few people who developed the driver so certainly
you must have some design idea to why irq_request_resources()
poke around in these registers? Does it even perform pin
control behind the back of the pin control framework?

> To restore SDIO DAT1 pin to uhs mode. I have to call
> pinctrl_select_state() twice(change pinctrl to another state, then
> change back to uhs mode). Ulf worried we might be doing something at
> the mmc driver level, which should really be managed at the pinctrl
> layer.
>
> Do you have any comment or suggestion on this?

The pin control state transitions are really just finite automata.

Your pin control needs to be different when using wakeup from
when being used for SDIO and this is perfectly fine, it's no
different from the fact that the regulator and clock might need
to be in different states, so I don't quite understand the
question?

Yours,
Linus Walleij
