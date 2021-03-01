Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7AE4C328189
	for <lists+devicetree@lfdr.de>; Mon,  1 Mar 2021 15:57:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236719AbhCAO4o (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Mar 2021 09:56:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45030 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236715AbhCAO4W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Mar 2021 09:56:22 -0500
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ABE09C06178A
        for <devicetree@vger.kernel.org>; Mon,  1 Mar 2021 06:55:41 -0800 (PST)
Received: by mail-lj1-x22f.google.com with SMTP id e2so12568140ljo.7
        for <devicetree@vger.kernel.org>; Mon, 01 Mar 2021 06:55:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=tnpOO1HCMDXpZVJ4TRrGsHFf+M4ik5c2oeXAvl9URfQ=;
        b=FtuktIcgFjkP+lffETe2dQRR3faqxThx7Z+FrZdfTNEpjy2/6i+IwQQbWERlk1QYDB
         cGoAjzqc4grAlmEK4OMTydKLzH/YOZaHwJeB6/fv7VTqhI3rnmkw74olFgXvHhZd58Uo
         7Ycqofp8NnLYI0Zg7o2jGUW+YaxMnjQWxO0G8D5Krx2St2mWlOTCvEwicGwbYEwGeLSo
         kr9tnf2vSqke3OimzUbHMNpiudVKZK5w2xpozmOJWR3vOhfqclNiiIXeNI9mFBf1Y+pe
         sFM7G/Fa0gN8m/8Ru5Hc12D00IiWQMPj5LF3CUoCOTn5e2tMT7OrRnwXJ1O+Me72g7Oq
         Pmog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=tnpOO1HCMDXpZVJ4TRrGsHFf+M4ik5c2oeXAvl9URfQ=;
        b=ESITw5NY7MIsi9TSZa5sAkehVjmbzs0IbJAN2/3t4yhdkrgISZNgMZrGipti7Ig6yJ
         4FdD+cJtV8z5YwCI5c55mSBoGe3J0d+9q7Qx2UTRXynkO8AGXGfhilYeGJGiMVtswPGp
         tu8dIlDP0YDk+BQEDQrpuP425lznJvmKjbF2vbG+Po2ReUuGqDy1bJLJFSmjp6wnTYH9
         zGtmBOslkzRkhjbcbxmjHe4cX23VWJEbBk13LTDNaOOshIu0Sn/hzKDot8wJyqkrfWck
         1MwhPmoGcRBOtWqPc2Pf5aO/F4YTYyFw2+qSYKInTTL9kGVy9vdAOfeC4yBp7lIGveIi
         +DQQ==
X-Gm-Message-State: AOAM531owPtvF9LL4XahwG17o9bXI9HwIPUIF2b65HGTTkdMgRsDz68K
        zmctTeLuWdFFEldQrqlKpWMlBbwMT+ul+BlUzka+7A==
X-Google-Smtp-Source: ABdhPJybRja+1CiW+Qxg0/bCEGHOEl3HR72OhOAPLa0QQOfFepT/r7JpGuivG2pp66Ua3QULP2Q8zfRzX1u/sJEvmJA=
X-Received: by 2002:a2e:9754:: with SMTP id f20mr7184365ljj.200.1614610540264;
 Mon, 01 Mar 2021 06:55:40 -0800 (PST)
MIME-Version: 1.0
References: <20210208222203.22335-1-info@metux.net> <20210208222203.22335-13-info@metux.net>
In-Reply-To: <20210208222203.22335-13-info@metux.net>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Mon, 1 Mar 2021 15:55:29 +0100
Message-ID: <CACRpkdZzceUex8no9V6R0oW-3dRhhPypF7HsJ=ggOphJLGixLA@mail.gmail.com>
Subject: Re: [RFC PATCH 12/12] platform/x86/of: add support for PC Engines APU
 v2/3/4 boards
To:     "Enrico Weigelt, metux IT consult" <info@metux.net>
Cc:     "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Pantelis Antoniou <pantelis.antoniou@konsulko.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Feb 8, 2021 at 11:22 PM Enrico Weigelt, metux IT consult
<info@metux.net> wrote:

> +                gpio-regs = <
> +                    AMD_FCH_GPIO_REG_GPIO57 // led1
> +                    AMD_FCH_GPIO_REG_GPIO58 // led2
> +                    AMD_FCH_GPIO_REG_GPIO59_DEVSLP1 // led3
> +                    AMD_FCH_GPIO_REG_GPIO32_GE1 // modesw
> +                    AMD_FCH_GPIO_REG_GPIO33_GE2 // simawap
> +                    AMD_FCH_GPIO_REG_GPIO55_DEVSLP0 // mpcie2
> +                    AMD_FCH_GPIO_REG_GPIO51 // mpcie3
> +                >;

Please don't define registers in the DTS files. Determine the set of registers
from the compatible string and put them in the driver. If that is not possible,
the compatible string is not precise enough and needs to indicate properly
which hardware this is.

Yours,
Linus Walleij
