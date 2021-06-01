Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2755B3972BF
	for <lists+devicetree@lfdr.de>; Tue,  1 Jun 2021 13:47:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233628AbhFALsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Jun 2021 07:48:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231201AbhFALsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Jun 2021 07:48:51 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 27F2CC061574
        for <devicetree@vger.kernel.org>; Tue,  1 Jun 2021 04:47:10 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id o8so18846512ljp.0
        for <devicetree@vger.kernel.org>; Tue, 01 Jun 2021 04:47:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ItCVrZoVYv1v/xorZesjCk9X9iKX2f1cF8KOjlONSD8=;
        b=dHa0W5r/jaxOkqLf8O4d5U3XeqmOyFo1o+aqIJiY0wAu40HLt7tkxoxI+zOcdmDliA
         /JkYXVhVXUR1hmY7dqM5DeN00yMMBlKNR+7KW2ZxB9kHoIGfuhtwYzVkm6a7aZ4gc7mT
         0YZ9GHPty3nMIuOgIChlhaXCEX182EeCC1R3zGBckqTjM6KpfDpfPDid0QFvoaq6RbZj
         0d4UodeiOLi7iLIxrBpTvBrfuhUUnA/Kmc8E7Ad+GRSWTNzI9tLcHbxxWWQQUbO6rPY5
         VPzod4tqQZksgFGDr5xuqCraD+nTWQi+0t9NTGohzgS4CDy5jnOjHuTfFGGAp3Vs0bdu
         l2Mw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ItCVrZoVYv1v/xorZesjCk9X9iKX2f1cF8KOjlONSD8=;
        b=gPPXX8OVwoW6+nENOT+vZYEXxfUJbrIZ7mgid0GyChfJQ3oavhGT+JTVbzCY6sIYts
         WNp1qWtwv6alVEKFCDf3ndcUc2UFMxKNjES5LfuJIO6KJhGvPYCBktB28D0zfirUylMg
         wNILG9OSQ4cnXGR9nMoYFyQFgE0dwK8lMSkp9OQGBOgfaGoCYNVASnex1nnNHt7cfdv2
         /6zcjkGPK/TbUc0+enNaYiGsCGaOLimUB/Yh7UMJ8U0JvtWGh2LSHbpefCQ4D2waejvf
         arqARFWS9Yrr6VgTS+11D/XjDdv/kb/9WV72Hh9XxSjmtLlCzh8k6RUTYwZZk8+fOwrl
         jUpQ==
X-Gm-Message-State: AOAM531Pu55soeOMPHjFtiXL+W/NJSrJUIzMEgPOfaQ5gdygcddxwBWP
        W3oRNiYVKuUGN0i1e02+c8SYbuV+Dde1BgCDpkFwJw==
X-Google-Smtp-Source: ABdhPJzphdDpBI1vj78e5QFB4+8vwKRJMltmceYRijPXZT1d0zYnBwy8BBP/GtL4PeK1itYSd4lMv/4xJ1YfDgZ7PwI=
X-Received: by 2002:a2e:1319:: with SMTP id 25mr20764012ljt.200.1622548028522;
 Tue, 01 Jun 2021 04:47:08 -0700 (PDT)
MIME-Version: 1.0
References: <20210531120753.719381-1-iwamatsu@nigauri.org>
In-Reply-To: <20210531120753.719381-1-iwamatsu@nigauri.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Tue, 1 Jun 2021 13:46:57 +0200
Message-ID: <CACRpkdaqhMk-0mjUhENWODSjdc1uTSnVJ3E923kRe9t-nq33+g@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: zynq: convert bindings to YAML
To:     Nobuhiro Iwamatsu <iwamatsu@nigauri.org>
Cc:     Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-kernel <linux-kernel@vger.kernel.org>,
        Soren Brinkmann <soren.brinkmann@xilinx.com>,
        Harini Katakam <harinik@xilinx.com>,
        Anurag Kumar Vulisha <anuragku@xilinx.com>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 31, 2021 at 2:08 PM Nobuhiro Iwamatsu <iwamatsu@nigauri.org> wrote:

> Convert gpio for Xilinx Zynq SoC bindings documentation to YAML.
>
> Signed-off-by: Nobuhiro Iwamatsu <iwamatsu@nigauri.org>

Looks good to me!
Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
