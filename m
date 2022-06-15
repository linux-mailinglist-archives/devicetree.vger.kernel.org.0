Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9EEE354CA10
	for <lists+devicetree@lfdr.de>; Wed, 15 Jun 2022 15:44:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348993AbiFONoT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jun 2022 09:44:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52774 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347165AbiFONoS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jun 2022 09:44:18 -0400
Received: from mail-yb1-xb31.google.com (mail-yb1-xb31.google.com [IPv6:2607:f8b0:4864:20::b31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C78382BB39
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 06:44:16 -0700 (PDT)
Received: by mail-yb1-xb31.google.com with SMTP id w2so20590564ybi.7
        for <devicetree@vger.kernel.org>; Wed, 15 Jun 2022 06:44:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=hp1aAAlFAq4/A1NH4phA+P7Vi5cvcSnxaSA1EwmzOjs=;
        b=lVfAk6c7MPyRfXkCYOWdVQURkSp+OBByvpe056Tgq9IMl2OauUoGqFUnhviTFb2AA7
         tXjeTRjUn04Ib4a9agWf/BW6v1+t9bnOMpPlIk5o5CFJmoXlocEzwCkrP+0K5pj/nEPH
         aDv8LKc+BLj2jMBaKCSoMqp253iGg+GgWOMTUrh92DiDz2nN3xzGtbNEigp2bT+lUZwW
         myZ/G45CpWEsSYjoHFTMDx2qQGWMl0eg3K0p86rOSedi3yBGeh1pOi7P0mhvV/S4b3sG
         U4p5XmESE0mUSpPZZhUtNh3JDlRWOYlEHyn8IXpD9Jk95y29uBi8BBDPzbsRgbpO+vip
         xiiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=hp1aAAlFAq4/A1NH4phA+P7Vi5cvcSnxaSA1EwmzOjs=;
        b=fZZVUkBqTgCb1CkHQvVC/2SBWdNrgGCnvONh3KUtPAQRjRsjFU4+pIG/62rsFKAqlQ
         BmBoIhhQFBzBQ06/6ixYS1ZdrGOMfjCapFNAS5wXPGSUkpZl2xNofWOBqfBSgJHSTeQx
         6ZfSItHc/tnb++p5bgE5YfcSCZ7qCCile2qoJAZgokkuosPBnWX+xHoIOqHPXsD59Y8+
         wJtDtW1pONyNHMzVoN5SPMAnSUgaji+JGPuT17iaLKNifSnEFFGJliNz5GQvy5Y7/Vx0
         sUGkNmJ8x8uGaKtRCd7Rqci/GV45dEB9btm+5G7hPTvlFdZAK3wp06XgQaxTOGDe75lc
         jafw==
X-Gm-Message-State: AJIora+ZkkZOy/MCw+WFfUtiolQr7+oo8U2iucSc26FEdqfbznGPXjFD
        u5F0eCnT0FnrSkzCA6nCR+9ZMi77XArT3SGf8q0l3g==
X-Google-Smtp-Source: AGRyM1vwXQw90on1sHsRQC4/H0k1Bofmho0MnG9UWhioWNDMZYti404KFNThV3NhBXgLu5NZbUKp/nAL98zAv6yclsA=
X-Received: by 2002:a25:1256:0:b0:65d:6433:7993 with SMTP id
 83-20020a251256000000b0065d64337993mr10084424ybs.626.1655300656100; Wed, 15
 Jun 2022 06:44:16 -0700 (PDT)
MIME-Version: 1.0
References: <20220603135714.12007-1-aidanmacdonald.0x0@gmail.com> <20220603135714.12007-11-aidanmacdonald.0x0@gmail.com>
In-Reply-To: <20220603135714.12007-11-aidanmacdonald.0x0@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 15 Jun 2022 15:44:04 +0200
Message-ID: <CACRpkdbObQ5WrzVC_xYobJPSBVSMyaz0HHXesLP+g1HCzCGJtQ@mail.gmail.com>
Subject: Re: [PATCH 10/10] pinctrl: Add AXP192 pin control driver
To:     Aidan MacDonald <aidanmacdonald.0x0@gmail.com>,
        Michael Walle <michael@walle.cc>
Cc:     brgl@bgdev.pl, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, wens@csie.org, jic23@kernel.org,
        lee.jones@linaro.org, sre@kernel.org, broonie@kernel.org,
        gregkh@linuxfoundation.org, lgirdwood@gmail.com, lars@metafoo.de,
        rafael@kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-iio@vger.kernel.org,
        linux-pm@vger.kernel.org, linux-kernel@vger.kernel.org
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

On Fri, Jun 3, 2022 at 3:56 PM Aidan MacDonald
<aidanmacdonald.0x0@gmail.com> wrote:

> The AXP192 PMIC's GPIO registers are much different from the GPIO
> registers of the AXP20x and AXP813 PMICs supported by the existing
> pinctrl-axp209 driver. It makes more sense to add a new driver for
> the AXP192, rather than add support in the existing axp20x driver.
>
> The pinctrl-axp192 driver is considerably more flexible in terms of
> register layout and should be able to support other X-Powers PMICs.
> Interrupts and pull down resistor configuration are supported too.
>
> Signed-off-by: Aidan MacDonald <aidanmacdonald.0x0@gmail.com>

Looks good to me (TM) but I'd like Michael Walle to take a look
to check if this is one of those drivers that could make use of
gpio-regmap.c CONFIG_GPIO_REGMAP to make it even
simpler.

Yours,
Linus Walleij
