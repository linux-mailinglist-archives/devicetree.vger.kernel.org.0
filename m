Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8883E57E0BC
	for <lists+devicetree@lfdr.de>; Fri, 22 Jul 2022 13:22:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233944AbiGVLV5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Jul 2022 07:21:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54580 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbiGVLV5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Jul 2022 07:21:57 -0400
Received: from mail-ej1-x632.google.com (mail-ej1-x632.google.com [IPv6:2a00:1450:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F130117041
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 04:21:55 -0700 (PDT)
Received: by mail-ej1-x632.google.com with SMTP id b11so7982932eju.10
        for <devicetree@vger.kernel.org>; Fri, 22 Jul 2022 04:21:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=izkU4mah/un/nzuEYg+rATlJGvgsEy0VGKd9W+/pvrY=;
        b=ryb4OaJfzEr9ggTWevlpkTIaBHRTsw8tExgvOQ6QoWCvQyNiMGrKmWvVN5N6gIjbkS
         g5dMeWGkeIIya+vpts4sxscSIxHpkA6PjjG6JNw1WyA/vtsffh1pdMmuqE9ffGgDtB+K
         qZCB0+AfXG1OEtxDmWLeutPHdCBH+sVv5+uQs9OiHhGI7QcKyB+Fr592F7IykUFPabc5
         nfWHlazzSRSVbzWP4HKfs/9NylruAYw9iCY3V8RWweNE3zRh81u5E0qFhobWnlWmAz9X
         Ny3VsHPle/VJlnz0tJIAGJCQ0y3C3uraT09/r62C6ph/90nZeiYPd5OIGhRJIcgc+v9d
         iQzQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=izkU4mah/un/nzuEYg+rATlJGvgsEy0VGKd9W+/pvrY=;
        b=PS+lzO4VGuFOaIwIf5LSP6zybHf5Juh8U2bysI+rCdPT6eYShochBEqxH55xgpBTYb
         ULIMuivoytmAWQF036LzWD3vEv0bz0wNSwMjZTBtY3CUkF5DYoviKlAQ50KUfWDShc1n
         RNkws0GmK9O6TtPaVle21kavrb4qCKNghmbMTYGzoaAl2xG5x/5TGzy6QqwqlbvHJVav
         DnRaqjvouOt1FUB+L0Rd3btw5Akv3nuDH0Oklpn6S/qZFKAi7VbmVvQbL9bH1sEObnLB
         lB8P0UbvkHib1U0AkJVvPQRz/owsItNPq6H6igmsL7VdoGA3/0zeEWGykLLIOYIyiHRM
         gFFA==
X-Gm-Message-State: AJIora/Vs6uXVCYhCXxMkeFWrTtZxkB+ybwToX0GLYCR5UegMAS9/PeX
        AkvG4DvroVSQje/PbTJNM0TuwfC8gPUPEfNVEAr5wg==
X-Google-Smtp-Source: AGRyM1tH81A3xbL8H/MiYm3b4BfyGhy0gHIfa1xccj6sPyALKEykHh7hPIPYXSe/KSX9tjz8BmuonIyr6tZasgUnvdw=
X-Received: by 2002:a17:906:58c8:b0:6fe:91d5:18d2 with SMTP id
 e8-20020a17090658c800b006fe91d518d2mr93992ejs.190.1658488914468; Fri, 22 Jul
 2022 04:21:54 -0700 (PDT)
MIME-Version: 1.0
References: <20220623090445.1401-1-axe.yang@mediatek.com> <20220623090445.1401-4-axe.yang@mediatek.com>
In-Reply-To: <20220623090445.1401-4-axe.yang@mediatek.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 22 Jul 2022 13:21:43 +0200
Message-ID: <CACRpkdZ5G2fMCqvkXANVEmZjNcF4U4mSDzZk6aXbqFjYVN3hcA@mail.gmail.com>
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

On Thu, Jun 23, 2022 at 11:10 AM Axe Yang <axe.yang@mediatek.com> wrote:

> MSDC driver will time-share the SDIO DAT1 pin. During suspend, MSDC
> turn off clock and switch SDIO DAT1 pin to GPIO mode. And during
> resume, switch GPIO function back to DAT1 mode then turn on clock.

So what I see is that you have what the electronics chip people call
an armed pad ring, such that an asynchronous event detector is connected
to the pin when it is in GPIO mode, and in this mode the system
can enter a lower sleep state (like powering off the MMC block
silicon...)

That seems fine, this is definitely how the chip people expected
it to work.

> +       if (mmc_card_enable_async_irq(mmc->card) && host->pins_eint) {
> +               if (enb) {
> +                       /*
> +                        * In dev_pm_set_dedicated_wake_irq_reverse(), eint pin will be set to
> +                        * GPIO mode. We need to restore it to SDIO DAT1 mode after that.
> +                        * Since the current pinstate is pins_uhs, to ensure pinctrl select take
> +                        * affect successfully, we change the pinstate to pins_eint firstly.
> +                        */
> +                       pinctrl_select_state(host->pinctrl, host->pins_eint);
> +                       ret = dev_pm_set_dedicated_wake_irq_reverse(host->dev, host->eint_irq);
> +
> +                       if (ret) {
> +                               dev_err(host->dev, "Failed to register SDIO wakeup irq!\n");
> +                               host->pins_eint = NULL;
> +                               pm_runtime_get_noresume(host->dev);
> +                       } else {
> +                               dev_dbg(host->dev, "SDIO eint irq: %d!\n", host->eint_irq);
> +                       }
> +
> +                       pinctrl_select_state(host->pinctrl, host->pins_uhs);
> +               } else {
> +                       dev_pm_clear_wake_irq(host->dev);
> +               }
> +       } else {
> +               if (enb) {
> +                       /* Ensure host->pins_eint is NULL */
> +                       host->pins_eint = NULL;
> +                       pm_runtime_get_noresume(host->dev);
> +               } else {
> +                       pm_runtime_put_noidle(host->dev);
> +               }
> +       }

This looks right.

> +       /* Support for SDIO eint irq ? */
> +       if ((mmc->pm_caps & MMC_PM_WAKE_SDIO_IRQ) && (mmc->pm_caps & MMC_PM_KEEP_POWER)) {
> +               host->eint_irq = platform_get_irq_byname(pdev, "sdio_wakeup");
> +               if (host->eint_irq > 0) {
> +                       host->pins_eint = pinctrl_lookup_state(host->pinctrl, "state_eint");

I guess one of the other patches adds this to the DT binding?

With that:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
