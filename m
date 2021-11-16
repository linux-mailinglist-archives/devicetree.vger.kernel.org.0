Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 244EC4538FA
	for <lists+devicetree@lfdr.de>; Tue, 16 Nov 2021 18:57:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239228AbhKPSAO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Nov 2021 13:00:14 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60000 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239188AbhKPSAM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Nov 2021 13:00:12 -0500
Received: from mail-pg1-x529.google.com (mail-pg1-x529.google.com [IPv6:2607:f8b0:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8C9F6C061746
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 09:57:14 -0800 (PST)
Received: by mail-pg1-x529.google.com with SMTP id 136so13670892pgc.0
        for <devicetree@vger.kernel.org>; Tue, 16 Nov 2021 09:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=sa65/ZE9h1qzWynmnBdCmRbLMl55VjRQMOwYHfoESIQ=;
        b=0UWRl7wXxIRuc+vbGmYE/2N56zC3mO02m5rsLsJngIxKQYXSgo14hQsLhFw6rD47gA
         JkOTUg/LYydrTqrqcxGzWJqyqATiGmoyoeWkuF+543qi+YPGwjX3tsbfHEnRmgMtQ0VX
         +RdLf8y7i+qjbVJBlNVJb4rR5UuUW84aaBZdKXMkY+zOK9ZXUvI7/GaBrMrfzWFBaCaH
         C5e03o9VygF4rDe+o0yvoJ0iAiv4eIUmCWQ2zUuQb6jAfj86KFAg2t/s5sBMGMp7iYdQ
         dUzk6ECn4eu+uQmeu6pFgLhqHkl3//ZsGWRUqB9DvkimTLCJYkytMV3D6oT9g+qUVWyY
         HoiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=sa65/ZE9h1qzWynmnBdCmRbLMl55VjRQMOwYHfoESIQ=;
        b=1P7x8Vffqmdp4r0pgm3o2Uzs3jQbStxIZ5WwdqCS4PYLOMeBbHUO1WWvFHjbTqPg2h
         ftVH7c2rtm4PVI2yrR+Vtn2AxuBs3iSuv1FfKyv/7VTlRwyz4rLeHi37QrO2sFD0hoY/
         D7afVs41u2z0UWbbFW7reUyVSk25z+QXeHFC+aXZ3ziV6v2T6rAsgOCE7UO5SfRNpTwC
         hs4r05WnQsEL4PSEx0ohyjK153/a3yNqXkM2ycLHIH83ZMkeTD2L5T93jSNg98rOk1Jb
         LsAiBTtmvKDlpzUczM+rEP1pF+Je5ramYzUZJyyZpBfn6WBpwbRBlA1FqzjpGhqC9cYi
         Q4rA==
X-Gm-Message-State: AOAM533cOzZG7FSAvfe8uS628q2QQUdVZafNe5pZ6kBwwWC5+Z6/1LcC
        a0Fu6gprpoN8ZkvSashJp2hQ9UOvbHlzm0ZRIrnOnw==
X-Google-Smtp-Source: ABdhPJwW+jKX109KdnnMcln5jZoaf2HNSEPWCS5I92cCEexFhgsh3em/VILGZ1mtRJxr/E7+6GLjEHAcW7uaW/gEnDI=
X-Received: by 2002:aa7:888d:0:b0:46b:72b2:5d61 with SMTP id
 z13-20020aa7888d000000b0046b72b25d61mr41532241pfe.73.1637085433944; Tue, 16
 Nov 2021 09:57:13 -0800 (PST)
MIME-Version: 1.0
References: <20211104161804.587250-1-aford173@gmail.com>
In-Reply-To: <20211104161804.587250-1-aford173@gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Tue, 16 Nov 2021 09:57:02 -0800
Message-ID: <CAJ+vNU2jcWyCm3UyiOnvknS0t+mSdpaB+CgGWYO3jxXTa3LhRA@mail.gmail.com>
Subject: Re: [PATCH V3 0/9] arm64: imx8mn: Enable more imx8m Nano functions
To:     Adam Ford <aford173@gmail.com>
Cc:     Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        Adam Ford-BE <aford@beaconembedded.com>,
        ariel.dalessandro@collabora.com,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Lucas Stach <l.stach@pengutronix.de>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Nov 4, 2021 at 9:18 AM Adam Ford <aford173@gmail.com> wrote:
>
> The i.MX8M Nano is similar to the i.MX8M Mini in some ways, but very
> different in others.  With the blk-ctrl driver for Mini in place,
> this series expands the blk-ctrl driver to support the Nano which
> opens the door for additional functions in the future.  As part of
> this series, it also addresses some issues in the GPCv2 driver and
> finally adds support for enabling USB and GPU.
>
> V3:  Fixes an the yaml example
> V2:  Fixes the clock count in the blk-ctrl
>
> Adam Ford (9):
>   soc: imx: gpcv2: keep i.MX8MN gpumix bus clock enabled
>   soc: imx: gpcv2: Add dispmix and mipi domains to imx8mn
>   dt-bindings: power: imx8mn: add defines for DISP blk-ctrl domains
>   dt-bindings: soc: add binding for i.MX8MN DISP blk-ctrl
>   soc: imx: imx8m-blk-ctrl: add i.MX8MN DISP blk-ctrl
>   arm64: dts: imx8mn: add GPC node
>   arm64: dts: imx8mn: put USB controller into power-domains
>   arm64: dts: imx8mn: add DISP blk-ctrl
>   arm64: dts: imx8mn: Enable GPU
>
>  .../soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml     |  97 +++++++++++++++++
>  arch/arm64/boot/dts/freescale/imx8mn.dtsi     | 103 ++++++++++++++++++
>  drivers/soc/imx/gpcv2.c                       |  26 +++++
>  drivers/soc/imx/imx8m-blk-ctrl.c              |  75 ++++++++++++-
>  include/dt-bindings/power/imx8mn-power.h      |   5 +
>  5 files changed, 305 insertions(+), 1 deletion(-)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mn-disp-blk-ctrl.yaml
>

Adam,

Thanks for the patches. I'm not sure how best to test this but on an
imx8mm-venice-gw7902 which has USB, but no display.

I find that if DRM_ETNAVIV is enabled I hang at 'etnaviv etnaviv:
bound 38000000.gpu (ops 0xffff800010964748)'.

If DRM_ETNAVIV is not enabled:
- boots fine
- usb works
- soft reboot works (does not hang)

Best regards,

Tim
