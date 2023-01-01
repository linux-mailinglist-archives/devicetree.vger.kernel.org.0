Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E37AE65AAAC
	for <lists+devicetree@lfdr.de>; Sun,  1 Jan 2023 17:34:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231421AbjAAQeW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 1 Jan 2023 11:34:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46074 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231132AbjAAQeV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 1 Jan 2023 11:34:21 -0500
Received: from mail-pf1-x433.google.com (mail-pf1-x433.google.com [IPv6:2607:f8b0:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9E7F2100D
        for <devicetree@vger.kernel.org>; Sun,  1 Jan 2023 08:34:20 -0800 (PST)
Received: by mail-pf1-x433.google.com with SMTP id w203so748931pfc.12
        for <devicetree@vger.kernel.org>; Sun, 01 Jan 2023 08:34:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=5QmpB6w2eTszonb1ei5svsq+jt7QbOAjcjqCoLLi2GU=;
        b=CMY1S63FWZKBaOZiNDBrz7zsy8/vvCMBWXu0odLIWro3F+B8ZX9cnXUNxES1U251eZ
         KXQhXiz6rRnjMDhc880+D6RAEVcNyiTEBQffndLO/Ozrlk+46BtDC9qMhLyYjn9EplGf
         IrQoNVx1EfHlnEDr1WWrX35YfOCmWdAY1g9Qgi9fEj/mcBj/pCbH/AIosZfYgehCs9uk
         3Br/9I5ZdYnl/OSoq0QXKCx6lyXptJ7i3Yx2Y4TaipRmmHqL2UgI1h/uBRbRdGz8iNty
         5in/cLBzGOjmtbdYaMlZBn3WStiah0y3xNLpxCfWrrKWixC668IG5PfbltA1JTikjsrh
         3BHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=5QmpB6w2eTszonb1ei5svsq+jt7QbOAjcjqCoLLi2GU=;
        b=sk8wGIWYq2kWg44IswECiETFgfw5B0z1x6uTbOlbyR9Hqnk21II6KHKUgtNAgdQ2QP
         NTdbN5PjCDHhQlO7N8QmIwSz0KvlkAnx5LLXwrgwmA9lFz5ALCB2WsetgBKYoRy2fuIo
         v0WjRU/J+9WWKABvNCCYpzphunZaq6SZDmgSh+ZaU6KjvHfljb89bxTDKrkKPeHVI5oq
         lUzBJoLNTwXarxfvmFVwAphKY7uQlaVMVl8G+k+N1vjhfuYwkNSSVdQVB9s3Oyhdr+bc
         E9mpPlSDr/lpjlMlMH+tj7uxK2y2pSOg11jsNr3RnlwB1bWoYfqFMDT7kng6EUjCjtLO
         VOvQ==
X-Gm-Message-State: AFqh2krla6B+N8H884R0gCBLSVuHwXijhaD0pXp+Quz6wzlqX21kzclm
        0BtP2XlOnzkC5FBNvhuXEsrfSUO3hRyxuE4irhA=
X-Google-Smtp-Source: AMrXdXv90SRZVnQ5VAOXjdVevqfQ/bpePtmnrC0sV0hb5BuCKLwvR9ISAhDuBSrAmu5HneVNuGnMrp0kb5k2azRT3M4=
X-Received: by 2002:a63:585c:0:b0:434:911a:301 with SMTP id
 i28-20020a63585c000000b00434911a0301mr1767465pgm.50.1672590859922; Sun, 01
 Jan 2023 08:34:19 -0800 (PST)
MIME-Version: 1.0
References: <20230101004954.613652-1-dmitry.baryshkov@linaro.org>
In-Reply-To: <20230101004954.613652-1-dmitry.baryshkov@linaro.org>
From:   Fabio Estevam <festevam@gmail.com>
Date:   Sun, 1 Jan 2023 13:34:08 -0300
Message-ID: <CAOMZO5Bwni0EusHQMWvN5Sr1joCX=r4_LosVy+qz38XQyTyiuw@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx: Add support for SK-iMX53 board
To:     Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Dmitry,

On Sat, Dec 31, 2022 at 9:49 PM Dmitry Baryshkov
<dmitry.baryshkov@linaro.org> wrote:

> +/ {
> +       model = "StarterKit SK-iMX53 Board";
> +       compatible = "starterkit,sk-imx53", "fsl,imx53";
> +
> +       aliases {
> +               /*
> +                * iMX RTC is not battery powered on this boart.

s/boart/board

> +&fec {
> +       pinctrl-names = "default";
> +       pinctrl-0 = <&pinctrl_fec>;
> +       phy-mode = "rmii";
> +       phy-reset-gpios = <&gpio1 1 GPIO_ACTIVE_LOW>;

This property is deprecated. It is better to pass the standard
'reset-gpios' property inside the mdio node.

> +       phy-handle = <&phy0>;
> +       mac-address = [000000000000]; /* placeholder; will be overwritten by bootloader */
> +       status = "okay";
> +
> +       mdio {
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               phy0: ethernet-phy@0 {
> +                       reg = <0>;
> +                       device_type = "ethernet-phy";
> +               };
> +       };
> +};

> +
> +&iomuxc {
> +       pinctrl_audmux: audmuxgrp {
> +               fsl,pins = <
> +                       MX53_PAD_SD2_DATA3__AUDMUX_AUD4_TXC     0x80000000

Please use the real pinctrl value instead of 0x80000000.

The same applies globally.

> +&vpu {
> +       status = "okay";
> +};

No need to enable the vpu node here as it is not disabled in imx53.dtsi.
