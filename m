Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2756E30F368
	for <lists+devicetree@lfdr.de>; Thu,  4 Feb 2021 13:49:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236112AbhBDMrS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 4 Feb 2021 07:47:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60402 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236085AbhBDMrR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 4 Feb 2021 07:47:17 -0500
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com [IPv6:2607:f8b0:4864:20::42e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CFDF1C061573
        for <devicetree@vger.kernel.org>; Thu,  4 Feb 2021 04:46:36 -0800 (PST)
Received: by mail-pf1-x42e.google.com with SMTP id q131so2046858pfq.10
        for <devicetree@vger.kernel.org>; Thu, 04 Feb 2021 04:46:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=2cnJptlRTVOiLiSGMvqVuUaiHccX94PhRB5dSTZcDUY=;
        b=Bwk9SQdUOzFP1KrCCnWXOgU3BRDLCOuNQhh/mviTD0nQfhCaC869VhOsbwQSdsESZ+
         LkcaYhPlnjh7gbsNqoG/M8Y/dHYcjvEIAEhKo7Ytv7rkmpCUUm8/qmjXwNVppOqASbHb
         U4CP6C+F1hzgnvOprpXrTGdco1WTLF+2W/Vhow6fEU71wY4x3oxXngSPB3hqVP//zn6V
         /SWJVOxiBGwKXQTk0q7DiSNd64h/AV9EDDVL3jDETEZppAqS2aI8wXEgnBjGi/F+G6ws
         3Zdv78JB+bhZJlN9BhxSgkgcZ58Z+pAi98wbwDMW1g9qnARQkoBtUfE/BOISMzpS5CqT
         QLHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=2cnJptlRTVOiLiSGMvqVuUaiHccX94PhRB5dSTZcDUY=;
        b=Tf9QaVjf5kByOamw7PU2YmaPhpShyQDecEvx82qhQuLMSuQcPVU4VVFmsp2o8utkER
         S29dz9zY3BAImxYJZR51uROZW5EeYzyZSlT54YL6DYkvxe4wRLSw8jA2T/jxqMB/mOK1
         WwMNol5ptRrBpxmRQW8xiS/Gt1wEyjGn/8wZ8pCKA+7Fs8MrP3A/5cSwFH/T05L2g9+7
         XVOr8v6QeYBqsrwfoBr0qho7YyRMakJ2BqRNBUGWUioiXKFF/ii3ikdXbC5h+KqFYQXa
         78UeL/4kssJzLpItQBFhPsyThwSCy8mgtXB72Ze5aNThpZD1tLs3smut66VpzXF9wD/M
         5u4A==
X-Gm-Message-State: AOAM532RK7uFnJjau8xXO+s5/Cl/aCtVt/0m+w/t0Xs6gPUVfmDeHIfY
        Kn0K6U+bAtzmufFdjpLloZDdU1QCVokyr7vTEK8=
X-Google-Smtp-Source: ABdhPJw2tYjZow2TDSBDLCdS4HwyXDAt0T7ri4HUJfzRDjCCJjW0KoMOk5mcRLZn4oL2Lz2hSZ6bJvZZVTEzLHnzmxE=
X-Received: by 2002:a63:db54:: with SMTP id x20mr8717833pgi.200.1612442796224;
 Thu, 04 Feb 2021 04:46:36 -0800 (PST)
MIME-Version: 1.0
References: <20201003224555.163780-1-marex@denx.de>
In-Reply-To: <20201003224555.163780-1-marex@denx.de>
From:   Adam Ford <aford173@gmail.com>
Date:   Thu, 4 Feb 2021 06:46:25 -0600
Message-ID: <CAHCN7xJACjzApH+HPGykgnHaoqu617LMZS_sD7YyTXsQSRi0wA@mail.gmail.com>
Subject: Re: [PATCH 1/5] Documentation: bindings: clk: Add bindings for
 i.MX8MM BLK_CTL
To:     Marek Vasut <marex@denx.de>
Cc:     arm-soc <linux-arm-kernel@lists.infradead.org>,
        Dong Aisheng <aisheng.dong@nxp.com>,
        Abel Vesa <abel.vesa@nxp.com>,
        devicetree <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        =?UTF-8?Q?Guido_G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Oct 4, 2020 at 12:53 AM Marek Vasut <marex@denx.de> wrote:
>
> Add the i.MX8MM BLK_CTL compatible string to the list.

It seems that NXP has updated the TRM to Rev 3 for the i.MX8M.  For
what it's worth, section 13.2 calls this DISPLAY_BLK_CTRL

They better document the missing registers.

adam
>
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Abel Vesa <abel.vesa@nxp.com>
> Cc: Dong Aisheng <aisheng.dong@nxp.com>
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Guido G=C3=BCnther <agx@sigxcpu.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml=
 b/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
> index 5e9eb402b9b6..346429f49093 100644
> --- a/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
> +++ b/Documentation/devicetree/bindings/clock/fsl,imx-blk-ctl.yaml
> @@ -20,6 +20,7 @@ properties:
>    compatible:
>      items:
>        - enum:
> +         - fsl,imx8mm-dispmix-blk-ctl
>           - fsl,imx8mp-audio-blk-ctl
>           - fsl,imx8mp-hdmi-blk-ctl
>           - fsl,imx8mp-media-blk-ctl
> --
> 2.28.0
>
>
> _______________________________________________
> linux-arm-kernel mailing list
> linux-arm-kernel@lists.infradead.org
> http://lists.infradead.org/mailman/listinfo/linux-arm-kernel
