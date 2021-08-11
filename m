Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C92B43E8C02
	for <lists+devicetree@lfdr.de>; Wed, 11 Aug 2021 10:40:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236136AbhHKIlJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 11 Aug 2021 04:41:09 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59130 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235282AbhHKIlI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 11 Aug 2021 04:41:08 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D0C2EC0613D3
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:40:44 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id n7so3398973ljq.0
        for <devicetree@vger.kernel.org>; Wed, 11 Aug 2021 01:40:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=u0/JFmRN+jLiFlsbFV1jDgNRSkGXtfaI3xkXbWCWbbw=;
        b=gBdNRuUj6j2hoWFHOKgBLHiS6WqZSo/4mh2GPZF8zitgThcDOOo+ulwhq79mKjIbKZ
         Sk4QFrrTt59GoZDddnzkDIx7gWO2Qme0COzbsol2gFiGHq/qFJ156/xbCFMIYWDmtnF+
         0gsgL4gyakMgzw573XR4GqiCxprmMi9e/TE9PGikV80MK2Kc4SDun1eSXbjkSLqHqoqe
         0fuGRLxcRhtSbhiQeXLjI2bXmGuY4aJpVRQ0QBcl1ItAkykggZ7TY+x2RIGw5eWU6N9v
         BTLfGtqOi8ZQTG6n/mpw5vnEhvXUFCvZwsTCoQ/lxMFtAULdg95bKe30FZa4RBcnH9gg
         AKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=u0/JFmRN+jLiFlsbFV1jDgNRSkGXtfaI3xkXbWCWbbw=;
        b=m81gvRmx3SAe8BwUsIVh+JK/BN0SKXXdTv9iBX1Svr68GSSmdBzbkJtU3yNwgXvuCW
         fZbMegLun1tfo5yO4k7d0tXaIaPspGZgqaRDgZw2MnYB+IeKT4J6QfJEeGN3Rlgi2SFJ
         bnWzKTG00kCHKyw9APoErPKVezolzz9EupYnT5uJwh6GTsXNI8hwkSahN5k2i3AkCNOZ
         iTKs5sAs7DEWGTJwR9F0DNOGdrtVv3Xg7PDo+b1w6WeOAZ1fnMQxddcA2F8js1LL8Txv
         /u9eLMFckAmwAcrFnJkwg8r8MtiYHZzgPDvIzaCWws6/5AIN+pH0lM+xEpFc35WReM9G
         c89A==
X-Gm-Message-State: AOAM533bKJdpyyluFG6YKwQcnols4LdTBI5sDQH1n/hcJ5CUaJT7gPEV
        e34TsLRJC2yAtRxK8dchbOBCHb7J06DRg7JS6HDScg==
X-Google-Smtp-Source: ABdhPJyKY11CsX8POuFsbhhkTn7PEiJyGx0qnB+fs2AezXG0mSfLmuf2zHM34jWu4PXsEqH8mNAQgr3jWcUvzzlugCM=
X-Received: by 2002:a2e:a804:: with SMTP id l4mr15576225ljq.273.1628671243215;
 Wed, 11 Aug 2021 01:40:43 -0700 (PDT)
MIME-Version: 1.0
References: <20210726142943.27008-1-lukas.bulwahn@gmail.com> <20210726142943.27008-7-lukas.bulwahn@gmail.com>
In-Reply-To: <20210726142943.27008-7-lukas.bulwahn@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Wed, 11 Aug 2021 10:40:32 +0200
Message-ID: <CACRpkdb-3nesRvmwO8t-sQxxb1HAXe-GVL98MZnmisnf_0ji+A@mail.gmail.com>
Subject: Re: [PATCH v3 6/8] MAINTAINERS: rectify entries to mtd-physmap.yaml
To:     Lukas Bulwahn <lukas.bulwahn@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Nobuhiro Iwamatsu <nobuhiro1.iwamatsu@toshiba.co.jp>,
        Yu Chen <chenyu56@huawei.com>,
        Anitha Chrisanthus <anitha.chrisanthus@intel.com>,
        Jonathan Cameron <Jonathan.Cameron@huawei.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Naga Sureshkumar Relli <nagasure@xilinx.com>,
        Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        Deepak Saxena <dsaxena@plexity.net>,
        Mirela Rabulea <mirela.rabulea@nxp.com>,
        Nishanth Menon <nm@ti.com>, Tero Kristo <kristo@kernel.org>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Shubhrajyoti Datta <shubhrajyoti.datta@xilinx.com>,
        Wilken Gottwalt <wilken.gottwalt@posteo.net>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Brendan Higgins <brendanhiggins@google.com>,
        Joakim Zhang <qiangqing.zhang@nxp.com>,
        Joe Perches <joe@perches.com>,
        Ralf Ramsauer <ralf.ramsauer@oth-regensburg.de>,
        kernel-janitors@vger.kernel.org,
        linux-kernel <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jul 26, 2021 at 4:30 PM Lukas Bulwahn <lukas.bulwahn@gmail.com> wrote:

> Commit 63f8e9e0ac65 ("dt-bindings: mtd: Convert mtd-physmap to DT schema")
> aggregated, amongst others, arm-versatile.txt and cypress,hyperflash.txt,
> into mtd-physmap.yaml in ./Documentation/devicetree/bindings/mtd/.
>
> The two .txt files are however mentioned in MAINTAINERS; hence,
> ./scripts/get_maintainer.pl --self-test=patterns complains about broken
> references.
>
> Refer to mtd-physmap.yaml, so that the maintainers and reviewers of
> ARM INTEGRATOR, VERSATILE AND REALVIEW SUPPORT and HYPERBUS SUPPORT are
> informed on any changes in the yaml file.
>
> Signed-off-by: Lukas Bulwahn <lukas.bulwahn@gmail.com>

Reviewed-by: Linus Walleij <linus.walleij@linaro.org>

Yours,
Linus Walleij
