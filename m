Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0F5893F464C
	for <lists+devicetree@lfdr.de>; Mon, 23 Aug 2021 10:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235274AbhHWIDO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Aug 2021 04:03:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52698 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235243AbhHWIDO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Aug 2021 04:03:14 -0400
Received: from mail-yb1-xb32.google.com (mail-yb1-xb32.google.com [IPv6:2607:f8b0:4864:20::b32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EC610C061757
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 01:02:31 -0700 (PDT)
Received: by mail-yb1-xb32.google.com with SMTP id i8so32451458ybt.7
        for <devicetree@vger.kernel.org>; Mon, 23 Aug 2021 01:02:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oXzMxxld3s2Dy1bK0gxfs2jef+dVB9Nrv3kOY/Biy+g=;
        b=JYiPssS2z4+oMXz3A3i/ogjMwXw45BTvgVH6vJCtqr0i1eAOotuf+6rhihEizx5jQm
         HjofxSO+AcH01QRqdNEPaikNcdYnl9lT4JRMdoVsgwDQcgYx4+0tCQlB1O+IS29tCUo3
         IXGvzMILUOsG1LrKR054CjvSVkHRsAvcX4UTEvIBGh93PL67dGh0NbnYBLwQMBpujmt0
         fI+xjz6fOo+j/Q/rT6vmGdWTwtmoiN8Zwihrit09ngz5TQNYmrCJ3lVllrr29uigz4ZZ
         3plDvYtNtstB5JUtvIxnjQ+gMZtrhDan4QP/DBnKwGCIYPGBdq93E7JZWpPMj7Jra6of
         aLog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oXzMxxld3s2Dy1bK0gxfs2jef+dVB9Nrv3kOY/Biy+g=;
        b=Jfw6fR3QZxXnUDi8jJBObUXUZSFHMt+QK5ig2cQqU+CMLJmKcCsUAOxhxTyG/1Ob/S
         wGbpbkwjgASNFTzyjOU24GAoD4jnVXISLUBbcR9UKII9y0qjrShfnRx9Syr9n3DFKvQq
         OC2PSDhcGVqYX4xyfdCg9dHa6MN/j5r0dtp30Y+BDLP5mvXermNTJgrevtMipRHoMzZn
         H+OFcAAuOiOZ5GVkDbLQwuug3GM2kMZXACk97TpW+710ZWU9tb3kVwNXDTnoqf8EbCrj
         H/SS7kWnNd2chf5/uuSXYDYseIzOj8OjRxS7H60AkT1SCVgpqz/97D9D7S4pxU4gbgL9
         DGag==
X-Gm-Message-State: AOAM533TR7Yx+HHS2e6TCUhH5WJK8Cu9GGkagiitvzWVw3uF0u1Tu0ZR
        G4UnVyN62GdTuf3d9K3TMnjUHLT0R2wmsawNbJM0Kw==
X-Google-Smtp-Source: ABdhPJxZ0SNxd8m59bIsv9eTzocBS/hTPHlPQXnS+yKhs/4v6dJs5M2U6pP7eBBjzio13VxL0AUVgCXT48b5Eqnh2JU=
X-Received: by 2002:a25:48c7:: with SMTP id v190mr39791370yba.312.1629705751134;
 Mon, 23 Aug 2021 01:02:31 -0700 (PDT)
MIME-Version: 1.0
References: <20210818081018.2620544-1-piyush.mehta@xilinx.com> <20210818081018.2620544-4-piyush.mehta@xilinx.com>
In-Reply-To: <20210818081018.2620544-4-piyush.mehta@xilinx.com>
From:   Bartosz Golaszewski <bgolaszewski@baylibre.com>
Date:   Mon, 23 Aug 2021 10:02:20 +0200
Message-ID: <CAMpxmJUvPg3LvT1EJa-ZecXMWpR82EQMr8vhTjBpO3_6iiGecQ@mail.gmail.com>
Subject: Re: [PATCH V3 3/3] gpio: modepin: Add driver support for modepin GPIO controller
To:     Piyush Mehta <piyush.mehta@xilinx.com>
Cc:     Arnd Bergmann <arnd@arndb.de>, Zou Wei <zou_wei@huawei.com>,
        Greg KH <gregkh@linuxfoundation.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>, wendy.liang@xilinx.com,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        Rob Herring <robh+dt@kernel.org>, rajan.vaja@xilinx.com,
        linux-gpio <linux-gpio@vger.kernel.org>,
        linux-devicetree <devicetree@vger.kernel.org>,
        git <git@xilinx.com>, Srinivas Goud <sgoud@xilinx.com>,
        arm-soc <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Aug 18, 2021 at 10:11 AM Piyush Mehta <piyush.mehta@xilinx.com> wrote:
>
> This patch adds driver support for the zynqmp modepin GPIO controller.
> GPIO modepin driver set and get the value and status of the PS_MODE pin,
> based on device-tree pin configuration. These four mode pins are
> configurable as input/output. The mode pin has a control register, which
> have lower four-bits [0:3] are configurable as input/output, next four-bits
> can be used for reading the data  as input[4:7], and next setting the
> output pin state output[8:11].
>
> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
> Acked-by: Michal Simek <michal.simek@xilinx.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> ---

Which tree should this go through?

Bart
