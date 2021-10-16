Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 35B7243055A
	for <lists+devicetree@lfdr.de>; Sun, 17 Oct 2021 00:19:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244627AbhJPWVs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 16 Oct 2021 18:21:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53924 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236084AbhJPWVj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 16 Oct 2021 18:21:39 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 03156C061768
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:19:31 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id d13so989452ljg.0
        for <devicetree@vger.kernel.org>; Sat, 16 Oct 2021 15:19:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Te7TcK+xWHfpEyw3+zLyr40/fSE5VfPJQupEEJNtpIE=;
        b=zosFtg1RUY7SeSrVtjmcQrI6QCie18c4FagMNLACq2l3vilUhmRV+qX+JqF6MFHphF
         XlZ7qJmVs3ssCFv6ifInxHqO9k+9VCLbfaVLt5MqsSs+YGpqjJCmFJhxMELaxijDb2In
         tg9EpX35aYzhbkgL2ACcSAfjKj9c2iQWe0eaRjbPt5tQTqwPLEbN9wV6tU3ITL48vVez
         xodkCSmtPm5wl/lxAjMj6/hbVIgrpTvShjuap5crMdtakEHJx7vh9jaLhqwgpYGHo6Fi
         CN7bfv3B5w6T5v+7l+74VjRHvjEblBtQR9ixXaQ4y9YXaRL51POFo5vlby/56zK+kXZj
         j0eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Te7TcK+xWHfpEyw3+zLyr40/fSE5VfPJQupEEJNtpIE=;
        b=5xKq2cUY1Kv8PMf9jGS506OFygttK+UHsb4qPhnZH/c44XfZA65G0DHYZIaJTtilY0
         uzcIV/Nzx014K95U+bxea/Ewe06FkTXfg3agRdk099xMKS63lcXtnLr1MtFKe7fXYHiE
         zG72ILkXKopaD7EdJtSOq8h8BM8YbnOzNjae6JjdclKt5xS3X8014hgf/355vCHjvxuY
         h62shiNWsDWt4s9VfWBQ5pKml2Zs7rHyDTiHrfH0zr+Uw9juNjnSgXUXgAIx7cW28GLm
         69RRi0zg+cMf6erq2DKLe90tWlBPaJiDVB1Y3/j6CJa7FAqpc006WzRtMW35T/uS0VXK
         TYRw==
X-Gm-Message-State: AOAM532L1wnNDJuQJooDD+sfZa0HqyRegh9EVBidUBFMtAdrRNA+fcBT
        sMZZyvFV2brSkqxtq2SrXRsYn/cyJ7bQr6H8bZKy6A==
X-Google-Smtp-Source: ABdhPJzvClN97mZWxBXI85XsFvY1i9aHlqDoEkDa9iQAlyo4XiR3585YcLY3h4mjhLjnUcnxflvQKQZRquy/eGZUDBs=
X-Received: by 2002:a05:651c:a05:: with SMTP id k5mr21262973ljq.288.1634422769399;
 Sat, 16 Oct 2021 15:19:29 -0700 (PDT)
MIME-Version: 1.0
References: <72c973da5670b5ae81d050c582948894ee4174f8.1634206453.git.michal.simek@xilinx.com>
In-Reply-To: <72c973da5670b5ae81d050c582948894ee4174f8.1634206453.git.michal.simek@xilinx.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Sun, 17 Oct 2021 00:19:18 +0200
Message-ID: <CACRpkdbqA5+O+6E=_Zzy0L4aXdZ6m9PW2w=B8TfZusSwrFTfoQ@mail.gmail.com>
Subject: Re: [PATCH] dt-bindings: gpio: zynq: Add missing compatible strings
To:     Michal Simek <michal.simek@xilinx.com>
Cc:     linux-kernel <linux-kernel@vger.kernel.org>,
        Michal Simek <monstr@monstr.eu>, git <git@xilinx.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Nobuhiro Iwamatsu <iwamatsu@nigauri.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
        Srinivas Neeli <srinivas.neeli@xilinx.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Oct 14, 2021 at 12:14 PM Michal Simek <michal.simek@xilinx.com> wrote:

> "xlnx,zynqmp-gpio-1.0", "xlnx,versal-gpio-1.0" and "xlnx,pmc-gpio-1.0"
> compatible strings were not moved to yaml format. But they were in origin
> text file.
>
> Fixes: 45ca16072b70 ("dt-bindings: gpio: zynq: convert bindings to YAML")
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
