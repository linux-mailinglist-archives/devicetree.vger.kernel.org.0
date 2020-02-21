Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 225531680A3
	for <lists+devicetree@lfdr.de>; Fri, 21 Feb 2020 15:46:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728866AbgBUOqY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Feb 2020 09:46:24 -0500
Received: from mail-lj1-f194.google.com ([209.85.208.194]:40069 "EHLO
        mail-lj1-f194.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728668AbgBUOqY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Feb 2020 09:46:24 -0500
Received: by mail-lj1-f194.google.com with SMTP id n18so2441101ljo.7
        for <devicetree@vger.kernel.org>; Fri, 21 Feb 2020 06:46:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=waGJfSnKuz5Whg0VE3ZVzv9qVxBuSbpj70uILmP2Ivg=;
        b=VkzWREGTp7Bjm1wyNpj+BjndkW/Psw5esJTRWPAPtyqml4qmpjVrccP0XwPCwtPizv
         bevOoC05/3yTjsEPs328Jb+b+YjzWhd+gnuFR+GhJcPVJoZEc1R3tINWg/wH6PKpO75u
         YINoj1kfxfXaHfsurkZqBId+dXBnnZcKeyj0pEt/yNVNSbRWGbPzbUc5py4MYLA50kYz
         0k+xB1Q7Tzbo64Tl6Y74l0sVou4LX8IixjK17vNoGsbXeUK+iRh5jpfXlGGBE6Bg5SlB
         YmSHaa/kmJmr4/ohzSzGzr2T4tQWE3h5NHaXZ4Nh9HiCTPPuKffova/RU1Wo7qvid8hX
         +FYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=waGJfSnKuz5Whg0VE3ZVzv9qVxBuSbpj70uILmP2Ivg=;
        b=Qg6AwmdHB6RQXD1eQs1v+rYWfF1g7/KdSf5MeqAfay6VOxPyZ4h+qb94/l6SOHt3ks
         HC2MJ+lC8ERvsfIYLYoJuLQ93agoxJ51CJqwq26ITUAZORJhltITjIEXWEmruD6iP1yT
         OWHOoW2MnuOvCtCfSW8feE91O5M75nLVH2n4tzMj3u6aV+dFTGRTBznE5XeSTiZiKrHk
         n8pr/Cwwmcp5O3rzU+vktKjd5le/Mj17IzxV38HK06lyKA00Hbli+EVs80xdqMbCObck
         9xZ/GxuJA+4AecCVlrBqDGTilknlTVQ7OpYn6RvLRfaQPgkSVQC60ccBNf+oWm+0PyRh
         b7dg==
X-Gm-Message-State: APjAAAWC6FUGr944twiSOwrEkWhLPoT3ZKN9SzLI+1whRdW5lInmestN
        G4ePqhCFfu6G+j5OdzqA1xz3eKEiZXiY4TcAHP/CsQ==
X-Google-Smtp-Source: APXvYqw5j4vfsF/PCucfrEwr1KM3EVEcvZAIwXM3njxOgxbwoaEJQPdnlMwSb8ApzxbWptYhMoaOJ0Y2vHiILaWKUng=
X-Received: by 2002:a05:651c:2c7:: with SMTP id f7mr21702206ljo.125.1582296381916;
 Fri, 21 Feb 2020 06:46:21 -0800 (PST)
MIME-Version: 1.0
References: <1582012300-30260-1-git-send-email-Anson.Huang@nxp.com> <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
In-Reply-To: <1582012300-30260-4-git-send-email-Anson.Huang@nxp.com>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 21 Feb 2020 15:46:10 +0100
Message-ID: <CACRpkdYWHMrDTKrc+ZvQ2h_ttoxynOAEGoHZJwWvvVT6dRsd7Q@mail.gmail.com>
Subject: Re: [PATCH V4 4/4] dt-bindings: pinctrl: imx8mp: Replace the
 uint32-array with uint32-matrix
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     Dong Aisheng <aisheng.dong@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stefan Agner <stefan@agner.ch>,
        Sascha Hauer <kernel@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        NXP Linux Team <Linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Feb 18, 2020 at 8:57 AM Anson Huang <Anson.Huang@nxp.com> wrote:

> The items of mux_reg/conf_reg/input_reg/mux_val/input_val/pad_setting
> should be uint32-matrix instead of uint32-array, fix it and improve the
> schema and example.
>
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>

Patch applied with Rob's review tag.

Yours,
Linus Walleij
