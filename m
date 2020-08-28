Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4CB702557EA
	for <lists+devicetree@lfdr.de>; Fri, 28 Aug 2020 11:42:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728362AbgH1Jmq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 28 Aug 2020 05:42:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728764AbgH1Jmk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 28 Aug 2020 05:42:40 -0400
Received: from mail-lj1-x244.google.com (mail-lj1-x244.google.com [IPv6:2a00:1450:4864:20::244])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3528DC061233
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 02:42:39 -0700 (PDT)
Received: by mail-lj1-x244.google.com with SMTP id y2so607592ljc.1
        for <devicetree@vger.kernel.org>; Fri, 28 Aug 2020 02:42:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=aOHxtM5yk1gvAYHJqAG90Qc4zP0j2G+j6TpnDxaoDIA=;
        b=L98VAkj/cNInmoKUxH8AOMVGrtQB6tuwlU+TtqyN5Ybq0OUUvv1/WwZwP/2Q2BHyKh
         vqUlX41ul/3RpVcXqGfRbkUmVVvq6H1hEWgDQMRDV/7DaH91K3EGhG9soVvrYxzDayLX
         Eqax3EwZJned8+IDqYNTwphOYkkSSaXo2hXUr/bYJbdL0c1Fcq87vv4Q3drcyo/ypkPU
         uHS6o48yHpMIBAWuJqv1j5jmWKbAs7euGm039AzZib3oBy7mF/xCc8cB+9yD3drlKdM8
         Vu8bGjLkz3mCqUOQuR1k2EBXuw7/zEKf7s116YtbCzzU427zzOjEE516m3pOeDUBdRQZ
         vWdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=aOHxtM5yk1gvAYHJqAG90Qc4zP0j2G+j6TpnDxaoDIA=;
        b=UbF1SksSAMmd+RBhncAgkazBtXi0Q7BTuWemkoNHGBOgQKh/X0TQ5hfOpaH+juXtz0
         oG+/IQ1SzAS9KVmpcLvEUgy9HTQNicmsMPg6XycgSqjod1f5+ZU/PxZ4qMDwB/l4lsDn
         I1ni557+YZw0BZOb7wVDuISo5AjEDjhx0xW3qQRblvyd2bu+MWU/tu3n710oLX9Kaxe6
         O3oEKhu4gil014NCrwIyZClEBR+9yCkU+qA3clNtJ3oKpJWjM/gmiYPLNz+yO3WQO4Py
         eRe2gbsPSjYbt1ChpeArAGAX/e0tr/DR0EWVqFAQrZbQqjlFj9INH5Keh8s5gLKqSH4r
         IVbw==
X-Gm-Message-State: AOAM532mVmGtbuT3h6iyCN2pPPYBFcnNFuTFSoqxd20tD26Oz5FoF6ps
        CB9nn7b78Mr7Auj2Q0GIJTMFEhYSp/XBa0n5hNYGIg==
X-Google-Smtp-Source: ABdhPJyoS2eg46/tyZ0yOApwD8OZKfUAZkgcEVLTK+EqD3GisGxH98dOWf4tudhOdF9/ATIaddWgil7TZpkYIeZMjNY=
X-Received: by 2002:a2e:558:: with SMTP id 85mr495792ljf.293.1598607758211;
 Fri, 28 Aug 2020 02:42:38 -0700 (PDT)
MIME-Version: 1.0
References: <20200823161550.3981-1-krzk@kernel.org>
In-Reply-To: <20200823161550.3981-1-krzk@kernel.org>
From:   Linus Walleij <linus.walleij@linaro.org>
Date:   Fri, 28 Aug 2020 11:42:27 +0200
Message-ID: <CACRpkdYRk=1m0+FoE2YKYtwh+Vt6sFbh6w-m1t04YMV0WJR5VA@mail.gmail.com>
Subject: Re: [PATCH 01/22] dt-bindings: gpio: fsl-imx-gpio: Add i.MX 8 compatibles
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bartosz Golaszewski <bgolaszewski@baylibre.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        "open list:OPEN FIRMWARE AND FLATTENED DEVICE TREE BINDINGS" 
        <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "open list:GPIO SUBSYSTEM" <linux-gpio@vger.kernel.org>,
        Linux ARM <linux-arm-kernel@lists.infradead.org>,
        linux-mmc <linux-mmc@vger.kernel.org>,
        linux-mtd@lists.infradead.org, linux-pwm@vger.kernel.org,
        "open list:SERIAL DRIVERS" <linux-serial@vger.kernel.org>,
        Linux PM list <linux-pm@vger.kernel.org>,
        LINUXWATCHDOG <linux-watchdog@vger.kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Anson Huang <Anson.Huang@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Aug 23, 2020 at 6:16 PM Krzysztof Kozlowski <krzk@kernel.org> wrote:

> DTSes with new i.MX 8 SoCs introduce their own compatibles so add them
> to fix dtbs_check warnings like:
>
>   arch/arm64/boot/dts/freescale/imx8mm-evk.dt.yaml: gpio@30200000:
>     compatible:0: 'fsl,imx8mm-gpio' is not one of ['fsl,imx1-gpio', 'fsl,imx21-gpio', 'fsl,imx31-gpio', 'fsl,imx35-gpio', 'fsl,imx7d-gpio']
>     From schema: Documentation/devicetree/bindings/gpio/fsl-imx-gpio.yaml
>
>   arch/arm64/boot/dts/freescale/imx8mm-evk.dt.yaml: gpio@30200000:
>     compatible: ['fsl,imx8mm-gpio', 'fsl,imx35-gpio'] is too long
>
>   arch/arm64/boot/dts/freescale/imx8mm-evk.dt.yaml: gpio@30200000:
>     compatible: Additional items are not allowed ('fsl,imx35-gpio' was unexpected)
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>

I'm just waiting for some review from the i.MX people on these FSL things,
then I can apply it.

Yours,
Linus Walleij
