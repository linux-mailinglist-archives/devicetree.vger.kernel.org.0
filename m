Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A39D63D3D1A
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 18:06:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230343AbhGWP0T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 11:26:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57528 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229780AbhGWP0S (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 11:26:18 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8915CC061575
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:06:50 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id u3so2868604lff.9
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 09:06:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=Kj6xvWfFwqf+j2yFUlDcMp8xjoI2pIw4JqOhG1ryS+c=;
        b=pI55lJ3Dn8PMM3b5rRlEK+5aTu0hPmexBWgucGaCRB1nS8V5NFEXGQqDprU8swsOng
         Eg6n/v8/v5YbqkUk5vZLmI+iIjxBwaO2lL06Ah360QHLtrTFiaiYk5W2cAwscBfRcIr7
         /mhkDBR8KJr5ytTxUZiBtoWI1TOnCUzZSGyK5I2hH1qPdiir1DD5gW/PKeYNyo42xdR8
         EmK1+Vq4LJSmdN+0ZAgp26llCsGARXMQTRTPK7vkwNvwPF8m9n/Ye66sGzUdfkrcgdrV
         j0CxVuUlHHcLIRYAV30Vj4Iod08g96rgdoMyEGFm4FTLk9iQ/mR/b2ZpvijP4QiNkD9F
         yLpw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=Kj6xvWfFwqf+j2yFUlDcMp8xjoI2pIw4JqOhG1ryS+c=;
        b=sCd/EtaqqQ55QTLA3on+QPvt0GqE9j6iaSYnoVaWwlbhzRuiX7mT03ew2bu+E2IERn
         BZBSDEaJxp7TNpcluFHdHWWdyXA5Bf+RnB6KHW5Ro1ZsA7tuGlyM46K57M+CF3DR/MqT
         DugL3uH0C8A43/hthTeyZOJf4QAUH9FsToJF4Bmq6jWKZRAu6UkrMy4s3HgXJyIcrkfE
         niWw9peoUuE7RkKxj12g9PHUtv9WVsLHjQEo+kBN89y0zKrrMI8uvHIQmqVnmAFUH20l
         8s2oM90s5+JM/8i0Y1WKCp8wAlIBIzvMUmrfVLGkAND1cUFmhgyKIstPksMnWIqykBl3
         Y4eg==
X-Gm-Message-State: AOAM533o/KBxI/iRbBeMtwDPM7r7hSgBhfhLNWBx2ymHq+mzSy1a2qL6
        W2zk/Kuo/3v7F7aBUBMFJ01Ib1tVofHdqfMXk8Tvlw==
X-Google-Smtp-Source: ABdhPJx+jD7jf1qnUk127mvv8NVn3O2YEwCcBcfgS0zwPUolIu7jmg2pKTHFWpfpg/bg/l/wCJNzJqNhGP5ApYkCfDw=
X-Received: by 2002:a05:6512:3696:: with SMTP id d22mr3658270lfs.586.1627056407930;
 Fri, 23 Jul 2021 09:06:47 -0700 (PDT)
MIME-Version: 1.0
References: <20210625011355.3468586-1-ping.bai@nxp.com> <20210625011355.3468586-2-ping.bai@nxp.com>
In-Reply-To: <20210625011355.3468586-2-ping.bai@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 23 Jul 2021 18:06:36 +0200
Message-ID: <CACRpkdZWeFbtQWBaXWa8OC14_4rrkXZ+8isfRQOBnAvVS+Bbtg@mail.gmail.com>
Subject: Re: [PATCH v3 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp
 compatible string
To:     Jacky Bai <ping.bai@nxp.com>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Jun 25, 2021 at 3:03 AM Jacky Bai <ping.bai@nxp.com> wrote:

> Add the compatible string for i.MX8ULP.
>
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> Reviewed-by: Linus Walleij <linus.walleij@linaro.org>
> Reviewed-by: Dong Aisheng <aisheng.dong@nxp.com>
> Acked-by: Rob Herring <robh@kernel.org>
> ---
>  - v3 changes:
>    no

Send this single patch to linux-gpio@vger.kernel.org and
Bartosz (se To: line) so he can apply it to the GPIO tree.

Yours,
Linus Walleij
