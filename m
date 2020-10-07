Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D82F7285BDB
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 11:29:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727250AbgJGJ3X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 7 Oct 2020 05:29:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727181AbgJGJ3W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 7 Oct 2020 05:29:22 -0400
Received: from mail-lj1-x242.google.com (mail-lj1-x242.google.com [IPv6:2a00:1450:4864:20::242])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73802C061755
        for <devicetree@vger.kernel.org>; Wed,  7 Oct 2020 02:29:22 -0700 (PDT)
Received: by mail-lj1-x242.google.com with SMTP id a15so1277386ljk.2
        for <devicetree@vger.kernel.org>; Wed, 07 Oct 2020 02:29:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=SceNR/oD7tQAm04CP/j4aCTT/R0rZhZ+UNIW4isI3tY=;
        b=HxjsgaPs/YW7Kb1vjNYC3Tv/LiJo53znWxtLkXB7gYYA2GnjLM/F3+1ylTvx1FCbpn
         geQdbezZxe75ZA7zyN/wUYDb+uhgVAFz7O5yCmW5RWh6cqHw//S+OzFaS6OoUAS1wtwJ
         02LUW0BWd+ANlv1yb9KM1WcO9I8LOzlEjhbzsU3dUzmom+4HfqZSr/oMNCCvoj2+fkqI
         nyx2k9DPKpjglWrROYh9wr5HW9l6KMCvCaqMpawQGlQqMJ74qu3aXfIWzVkBo2XcDlmr
         Kk0rY5Xc5Y3XiumzzYBNVYNO5vFD7T6fjhDd/c230vfaEhrbYX6HXEM2KSpVJcqTw8vZ
         suiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=SceNR/oD7tQAm04CP/j4aCTT/R0rZhZ+UNIW4isI3tY=;
        b=umUne1kVDq7yyxDMG5aByfhvpsL7xeJZg473v5KDgysNy4AvT/0yVbbm6OQdFRDgqA
         UNbyiTWFdpZhhImCp3lmt4085xq+L70S0iMROt+uBV6cul6z+NchkUIwqF5D+eDZxp5f
         e0Xs72DRngCefGetyPzgUQZsOuav4IEb7qGUj0CKOcsTxdObjJgGzhUX6inC8vLuzgeu
         NMUygosjmb39RQdDbsm+MVpQxPJ5wAVoJuhXmw4PjmYv21ol0ZxigLkDlvej04Z5xnEB
         OmCmcFHDnq09GJ+RVJbc/eYJziqxgV+vBE6bmlDcjGMfUTMJ0/min/uTSBNcJkrw9Zwe
         3yJg==
X-Gm-Message-State: AOAM530rkYbFUwbUVgs1Ezv9pVo8AaTJ9WbO8qplnTVVnvXN96UWPdS/
        +QNFVved2DeaS7mVkdznokd70EbjA78zneO/UW8dXA==
X-Google-Smtp-Source: ABdhPJxEYSsSuRDWwIFH21xkK1z8YuIysSAPgqRwcgIzF62aIUR6ckFZLkJy4pS50xJ0uLTavSR+G3JTA2JzzbqsX9I=
X-Received: by 2002:a2e:9b0c:: with SMTP id u12mr782404lji.338.1602062960819;
 Wed, 07 Oct 2020 02:29:20 -0700 (PDT)
MIME-Version: 1.0
References: <20201004162908.3216898-1-martin.blumenstingl@googlemail.com> <20201004162908.3216898-4-martin.blumenstingl@googlemail.com>
In-Reply-To: <20201004162908.3216898-4-martin.blumenstingl@googlemail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 7 Oct 2020 11:29:10 +0200
Message-ID: <CACRpkdZo-U_cAhbKb4E+d+p+5FenXkGYW0RXxyk4M5uyEPCpzw@mail.gmail.com>
Subject: Re: [RFC PATCH 3/3] gpio: ej1x8: Add GPIO driver for Etron Tech Inc. EJ168/EJ188/EJ198
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-usb <linux-usb@vger.kernel.org>
Cc:     linux-pci <linux-pci@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Bjorn Helgaas <bhelgaas@google.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Martin,

thanks for your patch!

As noted on the earlier patches I think this should be folded into the
existing XHCI USB driver in drivers/usb/host/xhci-pci.c or, if that
gets messy, as a separate bolt-on, something like
xhci-pci-gpio.[c|h] in the drivers/usb/host/* directory.
You can use a Kconfig symbol for the GPIO portions or not.

On Sun, Oct 4, 2020 at 8:00 PM Martin Blumenstingl
<martin.blumenstingl@googlemail.com> wrote:

> EJ168/EJ188/EJ198 are USB xHCI controllers. They also contain four GPIO
> lines which are used on some systems to toggle an LED based on whether a
> USB device is connected.
>
> There is no public datasheet available for this hardware. All
> information in this driver is taken from the
> "F9K1115v2.03.97-GPL-10.2.85-20140313" GPL code dump of the Belkin
> F9K1115v2. This board comes with an EJ168 USB xHCI controller and the
> USB 3.0 LED is connected to one of the GPIOs. Inside the GPL source
> archive the related code can be found in:
>   linux/kernels/mips-linux-2.6.31/drivers/usb/host/etxhci-pci.c
>
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
(...)

> +config GPIO_EJ1X8
> +       tristate "Etron Tech Inc. EJ168/EJ188/EJ198 GPIO driver"
> +       depends on OF_GPIO && PCI

It is fine to just select GPIOLIB if you want this to always be
compiled-in (if the USB maintainers agree).

> +       help
> +         Selecting this option will enable the GPIO pins present on
> +         the Etron Tech Inc. EJ168/EJ188/EJ198 USB xHCI controllers.
> +
> +         If unsure, say N.

(...)
> +#define EJ1X8_GPIO_INIT                                        0x44
> +#define EJ1X8_GPIO_WRITE                               0x68
> +#define EJ1X8_GPIO_READ                                        0x6c
> +
> +#define EJ1X8_GPIO_CTRL                                        0x18005020
> +#define EJ1X8_GPIO_CTRL_READ_ALL_MASK                  GENMASK(7, 0)
> +#define EJ1X8_GPIO_CTRL_WRITE_ALL_MASK                 GENMASK(23, 16)
> +#define EJ1X8_GPIO_CTRL_OUT_LOW                                0x0
> +#define EJ1X8_GPIO_CTRL_OUT_HIGH                       0x1
> +#define EJ1X8_GPIO_CTRL_IN                             0x2
> +#define EJ1X8_GPIO_CTRL_MASK                           0x3
> +
> +#define EJ1X8_GPIO_MODE                                        0x18005022
> +#define EJ1X8_GPIO_MODE_READ_WRITE_ALL_MASK            GENMASK(23, 16)
> +#define EJ1X8_GPIO_MODE_DISABLE                                0x0
> +#define EJ1X8_GPIO_MODE_ENABLE                         0x1
> +#define EJ1X8_GPIO_MODE_MASK                           0x3

Nice that you got all of this out of reverse-engineering!

> +static LIST_HEAD(ej1x8_gpios);

This should not be necessary. Tie the GPIO state into the PCI device
driver state, possibly using some #ifdefs.

> +static u8 ej1x8_gpio_shift(unsigned int gpio, u8 mask)
> +{
> +       return (gpio * fls(mask));
> +}
> +
> +static u8 ej1x8_gpio_mask(unsigned int gpio, u8 mask)
> +{
> +       return mask << ej1x8_gpio_shift(gpio, mask);
> +}

This looks a bit like regmap but trying to use regmap for this
would probably be overengineering.

Looking at the code I get annoyed that it uses the config space to
manipulate the GPIOs, else you could have used GPIO_GENERIC
but now you can't, how typical.

Other than that the code looks nice, but fold it into the USB
host driver somehow unless there is a compelling argument
as to why not.

Yours,
Linus Walleij
