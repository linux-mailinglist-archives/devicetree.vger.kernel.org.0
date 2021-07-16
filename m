Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2BDCE3CB7FF
	for <lists+devicetree@lfdr.de>; Fri, 16 Jul 2021 15:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232837AbhGPNmr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jul 2021 09:42:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59340 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232808AbhGPNmr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jul 2021 09:42:47 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5BF90C06175F
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 06:39:51 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id y7so13705122ljm.1
        for <devicetree@vger.kernel.org>; Fri, 16 Jul 2021 06:39:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=kUM3JL5hjPOPu+isckwjYj/XASwzSg41JvYmaRzMJWs=;
        b=s2r1vMS2bPciLn2x6Ap5sbAHw7Vd+xGO9rYeGeJY53Q36bLoobOQMY3alg9J4U6uX5
         sXLp/77P9/WB80Lueyw41lYtV34n65DG4vdM7/2jhH4yl1B8T5u5Cmo6zo3cq+Nsupyz
         URBXMKdx0aQy3SmDeZUjLOLHxf2h4UPFjIIR9UZ2cKuUPWYSobwj5f8/PxjWd8XlCLgH
         w4kDIvVe5x5zrIl/FvBeozXbIxytiDgGDMneh+5YjqhW9N7Dpqy672bYr8ZJ9MmwocQH
         iwkHwrFGiqtjakGRbngz3nU0uHUdjXNOgocPqlSmwBb+xnBwkoVsW9w4KOvfY4MdBLij
         p2fg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=kUM3JL5hjPOPu+isckwjYj/XASwzSg41JvYmaRzMJWs=;
        b=gccqyumh5L9d4B8B9V0NPpROSnWUyap/zsOEllaVNpIjKY+H3tQXnT6GYVPJf+b7+V
         M2i0Q4lJDuuA3CBHQJBX6D8gEFCBtk+QhubiRNmuJEYGlSdvARHrMUfQ9AyP1H/Iv9td
         oxFIScioSxFSO8mua/1yeG2bzfwiD4NbZK26wptJSX4cHUO4l0ymbwg0FQ1I03ZRdp8x
         b3WFxlYxg4jVUow934Gg2+jHT46ZY0wOyLIxz3xiEjDfqUyADZ5+qo9kvFQyTJFnM7rK
         ULAhUDSbmjoFwe5T/dQB3MM3WsxIP+Rk9VgjC9EQPM79OoqBcau2JBBgZdM9eS7FvB33
         HJDw==
X-Gm-Message-State: AOAM53188cOJNYdQjeiugxH3n/UIyRwF5Kza7MLOehiut+gb/7ly8Gna
        t0+daLc77ejZF/dvicDc5iecZPtUwXZfPmf57A0=
X-Google-Smtp-Source: ABdhPJwfCP2CQ+7GzTOhDfgDD+7FW08sG1+170j/2F9leOTivsI1CDrU8P3u8PZVLtfy7b6MLmf11I6nWW5Aee084tM=
X-Received: by 2002:a05:651c:329:: with SMTP id b9mr9216346ljp.116.1626442789375;
 Fri, 16 Jul 2021 06:39:49 -0700 (PDT)
MIME-Version: 1.0
References: <20210716100414.12840-1-qiangqing.zhang@nxp.com>
In-Reply-To: <20210716100414.12840-1-qiangqing.zhang@nxp.com>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Fri, 16 Jul 2021 10:39:38 -0300
Message-ID: <CAOMZO5A5ro6KS6x2dkJRnGbScaGsAZMmJyWK0BXv-xanE8f5xQ@mail.gmail.com>
Subject: Re: [PATCH V2] arm64: dts: imx8mp: remove fallback compatible string
 for FlexCAN
To:     Joakim Zhang <qiangqing.zhang@nxp.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Sascha Hauer <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>, Dong Aisheng <aisheng.dong@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Joakim,

On Fri, Jul 16, 2021 at 7:03 AM Joakim Zhang <qiangqing.zhang@nxp.com> wrote:
>
> FlexCAN on i.MX8MP is not derived from i.MX6Q, instead resues from
> i.MX8QM with extra ECC added and default is enabled, so that the FlexCAN
> would be put into freeze mode without FLEXCAN_QUIRK_DISABLE_MECR quirk.
>
> This patch removes "fsl,imx6q-flexcan" fallback compatible string since
> it's not compatible with the i.MX6Q.
>
> Signed-off-by: Joakim Zhang <qiangqing.zhang@nxp.com>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
