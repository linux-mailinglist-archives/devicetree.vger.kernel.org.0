Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7C10637A5EC
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 13:44:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230501AbhEKLpT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 07:45:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230400AbhEKLpT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 07:45:19 -0400
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0BC08C061574
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 04:44:12 -0700 (PDT)
Received: by mail-lf1-x12c.google.com with SMTP id x2so28150679lff.10
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 04:44:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=YO4TjVWcPtqNNzMr61EsFlpq55QiNyR1/uGAVe+7KS0=;
        b=u6sbnZIXFUnrYo7hLErOug/6/RJf4E1s6i0GYI59q431jjd3OjdZ+u0fkupRQ7SNxa
         h49onyaitqi7fLamZtlvY1Zh9CvN60yV2lfBkQqZ0IlOW0w2BTp7Av1pnHTrXKf7jLNZ
         5RxIY4wINCCWHmDTUeSaDJlgCCJo1NuKg3fzcqqRF+04KC3Bvjk1RJoMbtOmqG2qpeWD
         F9LZBE5kwJ+BDJCd6sk64cLZhTlHgLqCqoUiUcFxE3wsYgfRRPA4u4jkLK6hS/LAnRCO
         AcD6onRXfC4T9G94N4CksZZU6ObDnVuuagxKFp4PaWzUbbW7cHpLSWOqKI9700XHHV+M
         3Pag==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=YO4TjVWcPtqNNzMr61EsFlpq55QiNyR1/uGAVe+7KS0=;
        b=SCXUrmMAUqGd82crexEmIx01JPqHQ4ic2JP/yPa7dEtJJr2cMdqS+22SQi4i8hE3vv
         tIrzv/PY8ts6Afo4FiMo8dARq/F2I1P5bX88cGYCYAPwC/sBk046/xPp+zOVklKpcima
         1+Z3hUW1enCiSGbRPMAucuZ1czLwdgOkA8NamQn8fuFnl31/VBGQgjctAmPxHV3RuPaK
         6EvsQ7Tm6lM9xxUY0Rxbi+O91QhNKDZjUAZwXUmySP8nCJsPZrS/+NN5nSTCfSpFjMXo
         WYUcxrk2yR+kNynx7gAL6sRK+KOf7Ciz/14N+9jdX+CZn2uElKxoE0ZDgoZwlWUbCOrK
         wk7A==
X-Gm-Message-State: AOAM532FTy37d2Y7FqymM0fBRiAcqBO52w6Bilmi2QIyC9jffox0H7sj
        VAhp7s8jpuj9OKBmzpj8VLtdyzk7InEG3fKTm0zlsfJU1k8=
X-Google-Smtp-Source: ABdhPJz3KhU5z7JrPIxuEQQ//e1PqNsIytDsJv0oT+2m1KldlGhZpEQymGRnLH6e9G8rASh0rpnW2hLfGA2lu8myuKA=
X-Received: by 2002:a19:c391:: with SMTP id t139mr21712345lff.295.1620733450532;
 Tue, 11 May 2021 04:44:10 -0700 (PDT)
MIME-Version: 1.0
References: <20210510185931.104780-1-l.stach@pengutronix.de>
In-Reply-To: <20210510185931.104780-1-l.stach@pengutronix.de>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Tue, 11 May 2021 08:43:57 -0300
Message-ID: <CAOMZO5BGOg31gaR58PmVx6yyJE-D0q6+Sm2tyQrnccCBtSGULw@mail.gmail.com>
Subject: Re: [PATCH v2 1/3] arm64: dts: imx8mq: add Nitrogen8 SoM
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        "Lukas F . Hartmann" <lukas@mntre.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Sascha Hauer <kernel@pengutronix.de>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "moderated list:ARM/FREESCALE IMX / MXC ARM ARCHITECTURE" 
        <linux-arm-kernel@lists.infradead.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Lucas,

On Mon, May 10, 2021 at 4:00 PM Lucas Stach <l.stach@pengutronix.de> wrote:
>
> From: Lucas Stach <dev@lynxeye.de>
>
> This adds the description of the Nitrogen8 System on Module. The module
> is quite simple with only a few (almost) fixed regulators and a eMMC
> on-board.
>
> The eMMC is currently limited to 50MHz modes via the pinctrl, as the board
> has not wired up the data strobe line, which prevents HS400 mode from
> working. As both the controller and the eMMC support this mode, it is
> automatically selected when we allow the faster modes, leading to failing
> transfers. Until we have a proper solution to only disable HS400 mode,
> keep the eMMC at the slow bus modes.
>
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Reviewed-by: Fabio Estevam <festevam@gmail.com>
