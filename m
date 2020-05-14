Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 979B91D29F8
	for <lists+devicetree@lfdr.de>; Thu, 14 May 2020 10:24:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726169AbgENIYm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 May 2020 04:24:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34816 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-FAIL-OK-FAIL)
        by vger.kernel.org with ESMTP id S1726163AbgENIYl (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Thu, 14 May 2020 04:24:41 -0400
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com [IPv6:2a00:1450:4864:20::243])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F4B0C061A0E
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 01:24:41 -0700 (PDT)
Received: by mail-lj1-x243.google.com with SMTP id o14so2535471ljp.4
        for <devicetree@vger.kernel.org>; Thu, 14 May 2020 01:24:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Jkb8BxKnl71QcTSlAQifB2QDBHTd1utKf7Tuku0XIK4=;
        b=iIm3W3vxPyvQT8hBr8kR8u+6yVBH0h6bfGPXKdobARfet5qpx6e2NJwbGUoVD4BTiz
         kvpn1tyKA+LwVUJc8z8fF1ZwXlCreaNrldq4vaEDBNH9cKFjh4tAUHQkvEkgZrv38eDN
         o2gz3Js+ZsuW3daffpbxtnkSsvbVGjH/1ch+B53s3SDAzYlJpVIgVSGq9BIdUF43U3J3
         PYEdm9THYdzNqhqnu0YtajA3OhEFK2moz2+zytOAdmmOqgbfZNV8YpRwBfYf+FcYfKP1
         slXNCbKogiAPZuvMbATklfcba8DSvlZ/NhggKTK4KlzEC8fEhJbI/SNZCFcSB3u8yrD/
         oIKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Jkb8BxKnl71QcTSlAQifB2QDBHTd1utKf7Tuku0XIK4=;
        b=f5Q73T5JCGiatxGm2S4bQHRYx2hVzoXzpItasQzARXt7xbs3GCdpxT5RG/ITpUxIFn
         JEKbM15M6jwRcfL0klPtS4y5WV5tj0b+CNgbnqgf4K0w2bnOtapdVLjYOQLFNL5K1/cb
         iQbwLo+r8OaqEz/EHvqsalyAOt7MBCLZc+vxLKIp3ceet5cu25BM3Io2HltZUSJ8imtk
         Tfnsj7bWHbb4Rd+kr8KyrggRoWoV6+u/y5aqc/v9kTLCPQ1AZgHcSzuuP74w5y1i4t4Q
         K9Q+kJgnMPdRePfaLz4w/RXoVBqJn49r+65KsD2hxvUiM7w/kpOau5+BDvSI1zee54SK
         Ei3A==
X-Gm-Message-State: AOAM532unOGH+xAB+uFJ41Rgaq5oACN2inP3nhhFxZGozYa70hld3uaj
        xOLUfTllLixIYdymX8GMSTiGR5eUzw7N1tFMZ04lEw==
X-Google-Smtp-Source: ABdhPJzbR0lONsL+LHNQ562bI+zZx3vzCrNYamk5GJI5zjbv9WVScZ7rOiUe3C6sarzGNmAWB4jF6RMUNqx0dbXgSxU=
X-Received: by 2002:a2e:8805:: with SMTP id x5mr2073815ljh.223.1589444679816;
 Thu, 14 May 2020 01:24:39 -0700 (PDT)
MIME-Version: 1.0
References: <1589267017-17294-1-git-send-email-dillon.minfei@gmail.com> <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
In-Reply-To: <1589267017-17294-4-git-send-email-dillon.minfei@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 14 May 2020 10:24:28 +0200
Message-ID: <CACRpkda5VjjBdbruXTi33QBNb=VU6vK2zDE8yyQXoWw7=NQFeg@mail.gmail.com>
Subject: Re: [PATCH v3 3/5] ARM: dts: stm32: enable ltdc binding with ili9341
 on stm32429-disco board
To:     dillon.minfei@gmail.com
Cc:     Rob Herring <robh+dt@kernel.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Alexandre TORGUE <alexandre.torgue@st.com>,
        "thierry.reding@gmail.com" <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Dave Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        linux-stm32@st-md-mailman.stormreply.com,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:DRM PANEL DRIVERS" <dri-devel@lists.freedesktop.org>,
        linux-clk <linux-clk@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 12, 2020 at 9:04 AM <dillon.minfei@gmail.com> wrote:

> From: dillon min <dillon.minfei@gmail.com>
>
> Enable the ltdc & ili9341 on stm32429-disco board.
>
> Signed-off-by: dillon min <dillon.minfei@gmail.com>

This mostly looks good but...

> +&spi5 {
> +       status = "okay";
> +       pinctrl-0 = <&spi5_pins>;
> +       pinctrl-names = "default";
> +       #address-cells = <1>;
> +       #size-cells = <0>;
> +       cs-gpios = <&gpioc 2 GPIO_ACTIVE_LOW>;
> +       dmas = <&dma2 3 2 0x400 0x0>,
> +              <&dma2 4 2 0x400 0x0>;
> +       dma-names = "rx", "tx";

These DMA assignments seem to be SoC things and should
rather be in the DTS(I) file where &spi5 is defined, right?
stm32f429.dtsi I suppose?

It is likely the same no matter which device is using spi5.

Yours,
Linus Walleij
