Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 90BC73E923D
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 15:08:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231467AbhHKNJM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 09:09:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231447AbhHKNJL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 09:09:11 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 090B5C0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 06:08:48 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id w20so5585993lfu.7
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 06:08:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=0Q/OipXg5g+bBy7pKTFAJBo2h8NmRufFU0TcCTZHVxQ=;
        b=AEXFKHPH/3LxE48BApNLzNCXADbLmx6mJVTDYzP/UWXVBa8MGkwlfj61fz+YT+n/iF
         3QQ7XxyzctODusGygoOKQQiUOvB4iIMwB/jr4J0c2z68EOP0yP5mRj0LcbMqRHUqRX8y
         Ifo7slj7QlHMDleExdEmQNrKgWcEh+xM/U8ofNrSmEaIOXQxEoK2qH7yncdNhLWY2SBL
         Ww4xGrpQSR81gkDVkoxX0lpbVa2Z8OiJEPSnHHJO0/cjgykb7uuF/N04nJJ3jVMkycpd
         T11rjgEA/i671M5tagCGiB24spbPA+wSw31MGHVjvLEQu9ZR8aIAtoXRcSyNScf6UtUb
         /hmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=0Q/OipXg5g+bBy7pKTFAJBo2h8NmRufFU0TcCTZHVxQ=;
        b=ShDRpXLyVmXHrJ2ifVmt2vW9oYqcExHWYVj6K4hOxC0xm9S7SX7ph/WyaHr1kKtc/N
         t6+k2WPb4uek553JmnfNOHzwRt3+56hCmX2CWJt/cFJsGu7HRUXr2ZSBVMIKiGG4vAXG
         XNeLp8H7p7uRxtj2R8vzuyCSxCWfFzS7O+Yi/IVGL7mfoU1SMfle5q93/3uIAzu//Gqh
         HBDTY17wbIxgKtJxN2QKlACqBUqUpNjWcgNCkMmyV74AS5YkPfxp9VV5wsIwLD8Q1EO0
         T1/oot5IMKM8JvPmvC9m22oTX/B7B6TO1B5Bcro64FMl+moWVO7Y4CJu/Ft/x/8P7CaH
         eXfw==
X-Gm-Message-State: AOAM531+NTNuSXgbEWVju8ez9FcIpPCgW4QgoaMTcPwLZiMrbBZpf1H7
        ZWFpH+dpD6r87lHbaRnKCpzyEG/SmWYggch+bVJvvQ==
X-Google-Smtp-Source: ABdhPJzngrlz2QK7UpQplrwK8nq9N3R5uqem/ckB0ImAfMdAQvhtKbnN9URtS6Tro73RTdIez51pslkCrnGNaLO3pIo=
X-Received: by 2002:a05:6512:32a3:: with SMTP id q3mr13907141lfe.157.1628687326222;
 Wed, 11 Aug 2021 06:08:46 -0700 (PDT)
MIME-Version: 1.0
References: <20210805174219.3000667-1-piyush.mehta@xilinx.com> <20210805174219.3000667-2-piyush.mehta@xilinx.com>
In-Reply-To: <20210805174219.3000667-2-piyush.mehta@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 15:08:35 +0200
Message-ID: <CACRpkdYo5e7uTJJRqnK1R4QLtUzRGNbsvNvm-47UFZOr4_R9Cw@mail.gmail.com>
Subject: Re: [PATCH V2 1/3] firmware: zynqmp: Add MMIO read and write support
 for PS_MODE pin
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

On Thu, Aug 5, 2021 at 7:42 PM Piyush Mehta <piyush.mehta@xilinx.com> wrote:

> Add Xilinx ZynqMP firmware MMIO APIs support to set and get PS_MODE
> pins value and status. These APIs create an interface path between
> mode pin controller driver and low-level API to access GPIO pins.
>
> Signed-off-by: Piyush Mehta <piyush.mehta@xilinx.com>
> ---
> Changes in v2:
> - Added Xilinx ZynqMP firmware MMIO API support to set and get pin
>   value and status.

I doubt this is "GPIO".
General Purpose? I think not. It seems to be about boot mode.

If you need a userspace ABI, then add sysfs files to this firmware
driver instead of bridging it to the GPIO subsystem.

However I can be argued down from usecases etc that it is used as
GPIO but I need to push back on this.

Yours,
Linus Walleij
