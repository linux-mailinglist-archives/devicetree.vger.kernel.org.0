Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DA18232CEC3
	for <lists+devicetree@lfdr.de>; Thu,  4 Mar 2021 09:51:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232524AbhCDIuF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Mar 2021 03:50:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45962 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236654AbhCDItk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Mar 2021 03:49:40 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 45546C061762
        for <devicetree@vger.kernel.org>; Thu,  4 Mar 2021 00:48:30 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id u4so41887556lfs.0
        for <devicetree@vger.kernel.org>; Thu, 04 Mar 2021 00:48:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=H2wbxkZ5EFhhbbOmwBTKlvU1xjWHEm3aG6/6XZryrvM=;
        b=aP2tQTyLBKDPBoAnWKTOPwDqLrDfAzvHWjHRByw8Q2HneMAUDwP/6S3cHX5ozzAxSc
         mr/c++GCpYQcsIn0n4iMZK9iT+3Y7/GTWYLayG5b/NiUHV292Obc1KsdVePmOAGnuFnP
         dLZ/btA6PpMa1U/KMCHGMNAhub4bmozr5RJZbJ75y+St9LLksdz4HQpeMyyM7q0NGTKb
         XJDLW/N8DaA3AIdtaanC7CBGLXPw/Uhx+oOn1uJvR86/6/n8c4BOOsXxLikhMEf/1yeJ
         Ywnj2iLiASEAeh15xadVyP/Dpk+E/MQpIq83p6oFAXLQOHQhWs+U1ByEjbei5Bug16y2
         fJyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=H2wbxkZ5EFhhbbOmwBTKlvU1xjWHEm3aG6/6XZryrvM=;
        b=RihKkAm6RCxMP5DJrWgsew3cx7IRNJoYXWpNjuIwyLMZFcHd9nw9/9qNKNXkcFc7Cn
         0zYuOD+iOgYi3sYRyMAdSb5Z7ZM7ijZKW03jSOfwhzG0tMwkeBG2ZOSiHIvTefTlnMGi
         Xw4BMA3IgotVHx03lin+V3nYNtyH+1EdrqkdDvprxH1xIuYKnh3C71c3NDIkh4A9iM0p
         aaUh9hTZLcwH1HDPpJCYdyD8UDB3eBmvBw9eRBtYKbOAkQCSgVk1/Z951rQWw0hD05fM
         d9C+hPXKG1mGqE+RIgehu/doF6JiKKxIRDSQ3KdnLrnxidFBfMIM1491mhd7PhkE96Vg
         7ceA==
X-Gm-Message-State: AOAM530Z8/4T6vtFeJ34CvPeKntrIvHnFaWVIuajRnk3rhkLVaVzUWve
        /LUw7AZcG8270p/0chtGVg5UhptbXQyllB15UKBfeQ==
X-Google-Smtp-Source: ABdhPJy1+p6e1tWc1GyX6LEEz232ReBa7exSHnMHwCH8+LPQuXuIdaQFmdvSbMVG2X4FN7uvfv/aIVi6+AmRoKuFNHc=
X-Received: by 2002:a05:6512:547:: with SMTP id h7mr1696001lfl.529.1614847708722;
 Thu, 04 Mar 2021 00:48:28 -0800 (PST)
MIME-Version: 1.0
References: <20210304034141.7062-1-brad@pensando.io> <20210304034141.7062-4-brad@pensando.io>
In-Reply-To: <20210304034141.7062-4-brad@pensando.io>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 4 Mar 2021 09:48:18 +0100
Message-ID: <CACRpkdbqkmUXTPyX8OFxBRJahEL-vdxR0wP=rMAWud34bq7tcQ@mail.gmail.com>
Subject: Re: [PATCH 3/8] spi: dw: Add support for Pensando Elba SoC SPI
To:     Brad Larson <brad@pensando.io>
Cc:     Linux ARM <linux-arm-kernel@lists.infradead.org>,
        Arnd Bergmann <arnd@arndb.de>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Mark Brown <broonie@kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Adrian Hunter <adrian.hunter@intel.com>,
        Ulf Hansson <ulf.hansson@linaro.org>,
        Olof Johansson <olof@lixom.net>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Mar 4, 2021 at 4:42 AM Brad Larson <brad@pensando.io> wrote:

> The Pensando Elba SoC uses a GPIO based chip select
> for two DW SPI busses with each bus having two
> chip selects.
>
> Signed-off-by: Brad Larson <brad@pensando.io>

I agree with Serge's comments here: the existing cs callback should
work for your SoC, you should only need the new compatible string.

I see why you need the special GPIO driver for this now, as that
is obviously driven by totally different hardware.

Yours,
Linus Walleij
