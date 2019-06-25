Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4EC44526EF
	for <lists+devicetree@lfdr.de>; Tue, 25 Jun 2019 10:42:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730843AbfFYIlw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jun 2019 04:41:52 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:38326 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730469AbfFYIlh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Jun 2019 04:41:37 -0400
Received: by mail-lj1-f193.google.com with SMTP id r9so15367221ljg.5
        for <devicetree@vger.kernel.org>; Tue, 25 Jun 2019 01:41:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=yY87oqTTD0Lxu/Nod5+FQjpzkb9Bg3pO2iG7HQ35E9E=;
        b=jy18i/ewXTLgSvPyNLRaupblj/y1T6RuSuzYOmPX9Rgd5ez/9RF4JcwCLM01Ki7+VD
         Mw5HQ7AHG8KHsR5lDtc5F0J+vvOHsVnN8x7Z0VxqkiQBcWFPRj0tKwvNTVFWT7+kwa1o
         CEz4MKcqB2akH4600BMlytNemC6KpfZ33ALUx0+guDJ1Mi3r13EBkSR1eYCAzLR4vLW6
         5k1HUIjZywUQ5iTZwCWcARRV4pNq1caXQH1Z1u88Dg/rbv/Zbka2U5D1RwqR3Io1AUGC
         CfJiRiBAVFDvL+akBMKt/EM4x1oAIOFHEABhAVVZBiPpfsZMNL+2AM65JSiPMyuwqe8R
         45ow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=yY87oqTTD0Lxu/Nod5+FQjpzkb9Bg3pO2iG7HQ35E9E=;
        b=kfibDg+CdZ7pqHxHXJHHw9EJwLebRMActEkzGwG5JvQZJVts7Lpr8WVS1Q+z2n7IkP
         UnPGamEHlAAWuTJhtctmzRQMVsgrclL9kplc4v3edReIPE2T3EadoU2AlqAulrWXim1Z
         prYcITK+nX6Q5886Eb4YlVvQ0DHQHuP/+gynLptYIca2ztBAe/QE6RtcHkeDD/0+nnSo
         9ZS9dTqKNEM/mST4s3X99hztg+R4BTO40h+NS7mqYzA3HwBQ1IyOLYhcvVmeKETil85s
         vaQPFgV7BA42sqyZ92l4VRHqH1RHqSVTdlU2r/htE+ghrN1wsij9mD4z7yYssB8g4ZBR
         cvxQ==
X-Gm-Message-State: APjAAAXkJYM8aQewrjNyE4eGZmC416IFWzlU7UW6S0nHz+6fpVWhHQ6A
        IXH1fBprvU/vptkvUYey4V9vfjik8XIjXdMn51VkgA==
X-Google-Smtp-Source: APXvYqy6jIwHwap88t5Oaa18Ta0HSwKvS14nJn1eTrjidyPzk7gb5fytFaXhj7sVmPkrE39Kdr2drRh47kPrl+2xWxs=
X-Received: by 2002:a2e:a0cf:: with SMTP id f15mr8401315ljm.180.1561452095250;
 Tue, 25 Jun 2019 01:41:35 -0700 (PDT)
MIME-Version: 1.0
References: <20190611122535.23583-1-Anson.Huang@nxp.com> <20190611122535.23583-3-Anson.Huang@nxp.com>
In-Reply-To: <20190611122535.23583-3-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 25 Jun 2019 10:41:24 +0200
Message-ID: <CACRpkdZoySkQHc7sbHchR6O0UqxAjp8FS+ubdbXqESGnotDDpA@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] arm64: defconfig: Select CONFIG_PINCTRL_IMX8MN by default
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Sascha Hauer <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will.deacon@arm.com>,
        Maxime Ripard <maxime.ripard@bootlin.com>,
        Olof Johansson <olof@lixom.net>,
        Simon Horman <horms+renesas@verge.net.au>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Leonard Crestez <leonard.crestez@nxp.com>,
        Dinh Nguyen <dinguyen@kernel.org>,
        Enric Balletbo i Serra <enric.balletbo@collabora.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        NXP Linux Team <Linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 11, 2019 at 2:24 PM <Anson.Huang@nxp.com> wrote:

> From: Anson Huang <Anson.Huang@nxp.com>
>
> Enable CONFIG_PINCTRL_IMX8MN by default to support i.MX8MN
> pinctrl driver.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> ---
> Changes since V1:
>         - sort the change in alphabet order.

Acked-by: Linus Walleij <linus.walleij@linaro.org>

Please merge this through the ARM SoC tree.

Yours,
Linus Walleij
