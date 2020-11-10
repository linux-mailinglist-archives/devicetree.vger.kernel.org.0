Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 081F32AD8F4
	for <lists+devicetree@lfdr.de>; Tue, 10 Nov 2020 15:40:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730786AbgKJOkK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 10 Nov 2020 09:40:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34042 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730306AbgKJOkK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 10 Nov 2020 09:40:10 -0500
Received: from mail-lf1-x141.google.com (mail-lf1-x141.google.com [IPv6:2a00:1450:4864:20::141])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 58C89C0613D1
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 06:40:10 -0800 (PST)
Received: by mail-lf1-x141.google.com with SMTP id s30so17863929lfc.4
        for <devicetree@vger.kernel.org>; Tue, 10 Nov 2020 06:40:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=XMIR0x3v/SOduiNJI+iAqXslKNdg1Phd+avxtEvAmZ0=;
        b=yMvmv62jzEb5fWYRyJZ4EfNvXQWxI0M2a6MD6A14Kx2zX0+pJwr0BFTgurkn/NFcYN
         SEuffXDjbLtIeQtWDaXAhzdEJoRKIeHAT5dvDEySvCGFrvh9bPI0L3QFezJRcPZWqkwR
         FIQqy4YacfO3Oj7lxlpiIQnlZ4lyLWMQFP58iJL3VeCk2S/Z0o+9+n36DPvrUm3djefP
         Nf8fsoRkRTr406syuJyIdGYjtpWJFYIFc/AlaHKP8gv0mbHpRynDsz7F35XR6HyAaEkO
         LEgu4epTlp38o7p3nKYvORMzrP2I8j9HTmYhHZ1PbN3l0woZQdGi2pyG9yox7ZCDvkr+
         JmKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=XMIR0x3v/SOduiNJI+iAqXslKNdg1Phd+avxtEvAmZ0=;
        b=HZTf23jC7xq7T8agbshTzVDjg2Ib9mmHhdO9MdlKG8DLJL1fxMtJEsDcrztruA8p6P
         nvePoc0/Y51tEDR0TrmTBLJYnqn2OMnYfwhRqTDP+flcVxLq47F2DDuAP0g2VCXfcV8k
         5HlzUWpuuX5aGOvMnDfOIXSDqItt2MXw162K5yJrvny6WeV8k9UPhWQHPDpQsz7V2sTT
         8RICRLeK30k8M069LAJrdBX501iYJ7XYCmi5LHicvOL7SB6KvmQo+SdyK986weGRnKXI
         VZt+WRkFsbkTMJItHhwMZJJtqAapPOrPHg2vBA847vP+UFO6kDgvH96LopzihUy9ncML
         i+tA==
X-Gm-Message-State: AOAM530+T0mKA7K0h8H/KGy1yUZI16ZzHAa1puUNMrjshN6MafeRLyad
        keT+YrOwlprTUPw3iY+B6uF/RQ7sON1gmHfp9jWc5Ut02e5VDA==
X-Google-Smtp-Source: ABdhPJwZKZCcPYORmeuUmPxVdMBipXbwsghexY2Fo6mTCT8Nwc9BfXeRqZ9vpij7/rcd11cpqaaXACeFiLO1OmB0y3k=
X-Received: by 2002:a19:ca05:: with SMTP id a5mr4591668lfg.571.1605019208781;
 Tue, 10 Nov 2020 06:40:08 -0800 (PST)
MIME-Version: 1.0
References: <20201107081420.60325-1-damien.lemoal@wdc.com> <20201107081420.60325-10-damien.lemoal@wdc.com>
In-Reply-To: <20201107081420.60325-10-damien.lemoal@wdc.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 10 Nov 2020 15:39:57 +0100
Message-ID: <CACRpkda1Pd3hTiEHWDOAz3zCMA6WK4VmvjkNv0O_ckFaWQ-zSw@mail.gmail.com>
Subject: Re: [PATCH 09/32] riscv: Fix SiFive gpio probe
To:     Damien Le Moal <damien.lemoal@wdc.com>
Cc:     Palmer Dabbelt <palmer@dabbelt.com>,
        linux-riscv@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Serge Semin <fancer.lancer@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        linux-spi <linux-spi@vger.kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        linux-clk <linux-clk@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Sean Anderson <seanga2@gmail.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, Nov 7, 2020 at 9:14 AM Damien Le Moal <damien.lemoal@wdc.com> wrote:

> Fix the check on the number of IRQs to allow up to the maximum (32)
> instead of only the maximum minus one.
>
> Signed-off-by: Damien Le Moal <damien.lemoal@wdc.com>

I just ripped this patch out of your patch set and applied it to
the GPIO tree with some minor change to the subject.

Yours,
Linus Walleij
