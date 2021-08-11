Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B51CD3E9448
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 17:12:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232859AbhHKPM7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 11:12:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40178 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232850AbhHKPMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 11:12:53 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FD02C0613D5
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 08:12:29 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id m17so1400408ljp.7
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 08:12:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=xcci7RbOniWr10zlQhNO9X9j0cPC+wiKIP31/PpgIfA=;
        b=aBg8VdW5FsdEAePlPJH13bN3EGjKQiYuBEI7QK4LybN3HujK+s4J/53haGtC051uKu
         u/Ft45mxut7bj9HPFYdlsUlulR71M47lG/HWA1wmt41myYVug2e12sGVofWo34pKTQJP
         zZA8NRctNZCEmiRrefD+3tP9U4TM/EEA257JrQaNC3P9CN9OHWgyjVCaRelX7jjtNyxT
         VDbAaTld2VVI/d9pIyWwlBt2oLJePJJ/sQAZ/n65IhOxbWPBKsN8CcHzKi4IcTiR5cmy
         U31xN+pdX8lyKp9sQ9xAoO20nWHVDQLdOn4+VeHb6Tl3J3mQ2KkdWqCdKuNwC7KhzFBB
         nEpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=xcci7RbOniWr10zlQhNO9X9j0cPC+wiKIP31/PpgIfA=;
        b=knY1Dt6Jp/s00A9JpqU+HyMTQUXy4Tczcqccz8Qv0DAlm/xKSw2usOB167VZJ8OgfF
         xW+Smj5s2XzIyjTqxYnDvdpB/9lnwdNKLPRNjtpiWDm8m2rin+zSZPIwLozvgGGKSJzV
         FW/hN+7n/6dTj575azicimQqvlNPQ9q9WASaHXEuXkbXLM2lcROHR7QBFgeiuux0jNiE
         ytGGvVODxRwWAjkkLqTSjJkd3x5gqN7Uo6B3DTIntLrdmq+ulsD1dzP5EGxkZf+LFrXD
         xm0rP3ERPTbeAXEFIiVbeVbonAJZ5M3GMDZOqrGxUkFalDYBh7ohdk3A4bhKjBVMuv15
         xDKA==
X-Gm-Message-State: AOAM533t7zbO8mDCT8Qn+2mptVA06IW3DUb/qFEgDwI9n4k2AgS81/Is
        b+p9amFBZrEx+l5CkyMuMmofogzcLpWElryD171cNQ==
X-Google-Smtp-Source: ABdhPJx462fjlywiVaui00FxiTLW/TFgPDucoKoZKMXEMDAoyevvbE5UZsTda0Uw4SRiYpRinJx0h99Kju7l4PisMLI=
X-Received: by 2002:a2e:a4ab:: with SMTP id g11mr1187108ljm.273.1628694747373;
 Wed, 11 Aug 2021 08:12:27 -0700 (PDT)
MIME-Version: 1.0
References: <20210805174219.3000667-1-piyush.mehta@xilinx.com> <20210805174219.3000667-4-piyush.mehta@xilinx.com>
In-Reply-To: <20210805174219.3000667-4-piyush.mehta@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 17:12:16 +0200
Message-ID: <CACRpkdYGD3s_7QEMa2cgx+5XFFJK_VwcN_km-Dbtr35hCSoFtw@mail.gmail.com>
Subject: Re: [PATCH V2 3/3] gpio: modepin: Add driver support for modepin GPIO controller
To:     Piyush Mehta <piyush.mehta@xilinx.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Zou Wei <zou_wei@huawei.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Michal Simek <michal.simek@xilinx.com>, wendy.liang@xilinx.com,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>, rajan.vaja@xilinx.com,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, git <git@xilinx.com>,
        Srinivas Goud <sgoud@xilinx.com>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Aug 5, 2021 at 7:43 PM Piyush Mehta <piyush.mehta@xilinx.com> wrote:

> This patch adds driver support for the zynqmp modepin GPIO controller.
> GPIO modepin driver set and get the value and status of the PS_MODE pin,
> based on device-tree pin configuration. These four mode pins are
> configurable as input/output. The mode pin has a control register, which
> have lower four-bits [0:3] are configurable as input/output, next four-bits
> can be used for reading the data  as input[4:7], and next setting the
> output pin state output[8:11].
>
> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
> ---
> Changes in v2:

After discussion with Michal:
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
