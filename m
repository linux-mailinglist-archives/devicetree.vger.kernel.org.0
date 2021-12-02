Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E6932465BAB
	for <lists+devicetree@lfdr.de>; Thu,  2 Dec 2021 02:31:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232602AbhLBBeg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 20:34:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243103AbhLBBeg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 20:34:36 -0500
Received: from mail-ot1-x32e.google.com (mail-ot1-x32e.google.com [IPv6:2607:f8b0:4864:20::32e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B8125C061757
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 17:31:14 -0800 (PST)
Received: by mail-ot1-x32e.google.com with SMTP id w6-20020a9d77c6000000b0055e804fa524so37839452otl.3
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 17:31:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=945C8FwdjlJfOzVlhpCF8zuWn7v4UFq1IxocPRUBqQ8=;
        b=JFAJUL9tZY0QdGu7L1QL+kV3PVnwwsUhZwZaH1jXVPBYYSHQ8c21YFx7WAGzAeNejS
         lUTNQw+jJ9+mk5C2NdJcGH3FDJ4wj/y7LYFpS7S68YC35IuO/pxhO7AAkzFbIEqL/t43
         tSgP1s16uFsjO6rBYXIKaWY5e3hiHLLXf7phQNMF7g1PyZYeOp2sIl3Q7oUOyxLg4YkM
         keipBpfYPh61GNreSuoaILjyu4vho5xHBydpsoY2ZmjVxXYT9nKQDsQI/UYMH/GQfQ/C
         Q0QnjWxjxHY8p2fKMA0KBGe78IYr09XQRcDnOApMv2bO6ENjFEtIOZCaXnzDX3r5E2s7
         Hk8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=945C8FwdjlJfOzVlhpCF8zuWn7v4UFq1IxocPRUBqQ8=;
        b=2ctxbjapekAAVN+QQCAfjV5w5Vz0dpoTODWxYhx0QFLM56R/antjVSR4Hu8sVONBee
         cjSYh5zXvtc9vcGl01WzF1rt18NSOaI214ZijO1hrnD1G9N7rGbBwbM5DJqsMKy5yLIr
         Y6i3oUIyU7gtZ5hbcG3ykeIBrfbM7O+zdu0Tzcb8eK1R92ri12wnzyyU5XnJO5+Mb+I4
         sacc07DMGAzrocGiPPh7wtoSIv0bNC+zA99lULbFxDODSE2HLt8Q2speCw5spRq2aZ40
         BLg1WEFIwFrwMG2k55W5xMq3AOSyGicbIw4SwilGkfigrros9k8akvN1GM1BcY5NGY3z
         eFYQ==
X-Gm-Message-State: AOAM531b1u3rw7f/Yqj86deHRerc47IIj4XXsG3qfEFKssteKXx00VaJ
        zkpWb6hvOCBgUyWPkLM41dp5k5z/1eAvTxD8wy9Tvg==
X-Google-Smtp-Source: ABdhPJynptUzdZ0deeCIJ/1/8Dd0Z3OuhIfbUUA5FzgOArxFCd4yyXkW1vAPE8tq+yRQ8JFHGxYe2+8Pk+7uruR1Uzg=
X-Received: by 2002:a9d:a42:: with SMTP id 60mr9321141otg.179.1638408673941;
 Wed, 01 Dec 2021 17:31:13 -0800 (PST)
MIME-Version: 1.0
References: <20211125211443.1150135-1-Mr.Bossman075@gmail.com> <20211125211443.1150135-5-Mr.Bossman075@gmail.com>
In-Reply-To: <20211125211443.1150135-5-Mr.Bossman075@gmail.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Thu, 2 Dec 2021 02:31:02 +0100
Message-ID: <CACRpkdb+W2o5Ca5jthau1yOK1n-1SNHUqCWwwjwu_S0bBuS26w@mail.gmail.com>
Subject: Re: [PATCH v3 04/13] pinctrl: freescale: Add i.MXRT1050 pinctrl
 driver support
To:     Jesse Taube <mr.bossman075@gmail.com>
Cc:     linux-imx@nxp.com, mturquette@baylibre.com, sboyd@kernel.org,
        robh+dt@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, ulf.hansson@linaro.org,
        aisheng.dong@nxp.com, stefan@agner.ch, gregkh@linuxfoundation.org,
        arnd@arndb.de, olof@lixom.net, soc@kernel.org,
        linux@armlinux.org.uk, abel.vesa@nxp.com, adrian.hunter@intel.com,
        jirislaby@kernel.org, giulio.benetti@benettiengineering.com,
        nobuhiro1.iwamatsu@toshiba.co.jp, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-mmc@vger.kernel.org,
        linux-gpio@vger.kernel.org, linux-serial@vger.kernel.org
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 25, 2021 at 10:14 PM Jesse Taube <mr.bossman075@gmail.com> wrote:

> From: Giulio Benetti <giulio.benetti@benettiengineering.com>
>
> Add the pinctrl driver support for i.MXRT1050.
>
> Signed-off-by: Giulio Benetti <giulio.benetti@benettiengineering.com>
> Signed-off-by: Jesse Taube <Mr.Bossman075@gmail.com>

Patch applied to the pinctrl tree.

Yours,
Linus Walleij
