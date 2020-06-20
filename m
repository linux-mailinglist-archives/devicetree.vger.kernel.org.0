Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B8EBC2026B6
	for <lists+devicetree@lfdr.de>; Sat, 20 Jun 2020 23:13:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728983AbgFTVML (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 20 Jun 2020 17:12:11 -0400
Received: from mail-lj1-f193.google.com ([209.85.208.193]:34290 "EHLO
        mail-lj1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728874AbgFTVMK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 20 Jun 2020 17:12:10 -0400
Received: by mail-lj1-f193.google.com with SMTP id x18so15260331lji.1
        for <devicetree@vger.kernel.org>; Sat, 20 Jun 2020 14:12:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XJEVsWfbn8aRBSjCUjQoaB/zi3FIbrrLmSUqtBf4ufc=;
        b=ejwQKsS9R74OVx4oleO34kJ/97nhPXE5oUxGSV3txe70SwiGWv62+473pSxKiEXCDL
         U5tedGRDKcJ42HmweVyL/YeRulQyKi1SjAM3wF5aYfzAVtLFlSXfhdyjkmS73imjEvlu
         mUf0ycwAmGlre8Y5z0bue63mfiIvmQf9NqndNnegmKmECrygz6SfWdTy7X3xxiGd+gRR
         +yQfN3RYHAGEDVUXCzjyj1IrM2oscTM+NA2sd3pyB8aGw9ES6CX3evJhV43ja5C7okJ1
         pGlD4rxPQ9+Lg427gcKNTxNbkPUt1/zLlPM8E2ZhiDJtCxpWA0tEg/WZnrnmtzOhiXsc
         0PrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XJEVsWfbn8aRBSjCUjQoaB/zi3FIbrrLmSUqtBf4ufc=;
        b=LTFrxB5A28mYuYXOJWsm+xe3grh0mTy7Y+4ADClz5KmJEihuhan4fhhupvL5Eq1F2A
         Hq6EZZP0y8+QsmLJn435Jm4Cn7XZJOK62jCTyQwa6gLazEaEWiKAsw+HKVy12JwCfyp/
         GAt0KlD9QK/oIa2sg3emRUJ5afdRARCgD9sElfueYKqgx2AgRYWtJiZifNGdDfKYFpgb
         /BacClW8TCEAsY81L4gMWrd8++rm9N56iQEhooHwcECxw0MptwX3mjERMR0wxfrnydoi
         jivOgNjWHuc2cVFbHeQa/FrfdF4o5c+Eplvy2tEFDnMtbeq5vM0uaet9f2HfoJGioNDA
         x6HQ==
X-Gm-Message-State: AOAM531CaC0OlWHQtfwVvxOkxplD2/d/MqABKEQ0JIwOUMKENbGTBQNW
        jIrqFF6MUl6JuqDC8RWqpG1yg3YZCDRmPcYY/0TloQ==
X-Google-Smtp-Source: ABdhPJyNzj8lntNB+gPdQZorIuGyuglVZ2GRN4JTEikAZoHXf3zt4iKWY8HyVoOjoJhJdUnny/FjxeRZZMdO0eg8d0w=
X-Received: by 2002:a2e:351a:: with SMTP id z26mr4790421ljz.144.1592687468252;
 Sat, 20 Jun 2020 14:11:08 -0700 (PDT)
MIME-Version: 1.0
References: <20200615133242.24911-1-lars.povlsen@microchip.com> <20200615133242.24911-6-lars.povlsen@microchip.com>
In-Reply-To: <20200615133242.24911-6-lars.povlsen@microchip.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sat, 20 Jun 2020 23:10:57 +0200
Message-ID: <CACRpkdaWZeMCNuwUNzyYd+g9Q75F_8o7K1Npxr46V+-Y4z-6wA@mail.gmail.com>
Subject: Re: [PATCH v3 05/10] pinctrl: ocelot: Add Sparx5 SoC support
To:     Lars Povlsen <lars.povlsen@microchip.com>
Cc:     SoC Team <soc@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Stephen Boyd <sboyd@kernel.org>,
        Steen Hegelund <Steen.Hegelund@microchip.com>,
        Microchip Linux Driver Support <UNGLinuxDriver@microchip.com>,
        Olof Johansson <olof@lixom.net>,
        Michael Turquette <mturquette@baylibre.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 15, 2020 at 3:33 PM Lars Povlsen <lars.povlsen@microchip.com> wrote:

> This add support for Sparx5 pinctrl, using the ocelot drives as
> basis. It adds pinconfig support as well, as supported by the
> platform.
>
> Reviewed-by: Alexandre Belloni <alexandre.belloni@bootlin.com>
> Signed-off-by: Lars Povlsen <lars.povlsen@microchip.com>

Is it fine if I just apply this driver to the pinctrl tree?
Otherwise Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
