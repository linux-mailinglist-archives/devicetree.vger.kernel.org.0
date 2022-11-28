Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B50A463B448
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 22:36:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231608AbiK1Vf6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 16:35:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34630 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231252AbiK1Vf5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 16:35:57 -0500
Received: from mail-pj1-x102c.google.com (mail-pj1-x102c.google.com [IPv6:2607:f8b0:4864:20::102c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10E1B2FFCA
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 13:35:57 -0800 (PST)
Received: by mail-pj1-x102c.google.com with SMTP id e7-20020a17090a77c700b00216928a3917so15361052pjs.4
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 13:35:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20210112.gappssmtp.com; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:from:to:cc:subject:date:message-id:reply-to;
        bh=yIf9zTBU9LJIPPKaIChcDQl5vn+DKZB/SGb/n+qAnQQ=;
        b=BUPX2sEuLleYl8uzjufreHFNzYcx0xDOqwP5+BOz0vyBN27YprZ6eUwiIvOZQgPvUt
         r/f2xqwM6YytgRfIfdIn7Zk0LaClIGi/1D5eTXKOp3Y9C7Sx7dyL7hQV4TXOlz8ZAP3+
         kNz4BoGAIcDtayE8WTm9pgOFqqk6uc7hCI3sO27D9lRIZqegQDqeg8TJ9DvQCp9Fbdlq
         0QPfERZc9bLn035ONTIdy7qz349lPyNkxM4mgxk2fLiG8LlwQ79kQlfTJKUn+L4jgOCG
         uQfGm3AmuYt6a/39KueF0j6IjIvlzc4u3xLu8VfT2KrzAs+ruJimZGGc28r2Du7pFbzy
         x2TA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yIf9zTBU9LJIPPKaIChcDQl5vn+DKZB/SGb/n+qAnQQ=;
        b=B5uMBzpXLuk5EujGEcSKJcSmKNcPl1mlmliwm8yr0YndPt4qORQtCV9lukooXepO9v
         s6HwQ+LGlj4XCj8q4LGOO24rYlWTRQh20GjymkMfLs1PWkigZeVA/Cmbc/uIA2L5CQEi
         thMRFM2XIaPZbWuvdxV5w5B21DpuMt/TbaV2AKNVzQ+FoEnly6CTVK6S+zU9K22p66qG
         QJLJpQHsfRbRvEqHhQCZP5F1+/cjePEBrhV5YHC9VPtRC+YcR0B02/4NWYHXBn68dg+5
         fZEFjG0HZH2sPJPy43vPGP3muA6XjB4RChxwn+IprZMMT6qJbDz+NEDZq5OLvTStOe/F
         HpNA==
X-Gm-Message-State: ANoB5pmGqj0yNwCI2YQCv41QabHnR5uiqj8hHuvfcnGskHlRnUZIBJpJ
        +0ebUMgblwFnzMMRtNy7iCjxhJA/N3fnT7ft+76R9w==
X-Google-Smtp-Source: AA0mqf5RktKdkGI0WORSQWighrvazh4o6HKFmGtuOokCNdiP9g0J/XJYgCYKpNG8xy023/G3IZeEo+xm1L0RWVgLyLc=
X-Received: by 2002:a17:902:d58d:b0:187:2502:888f with SMTP id
 k13-20020a170902d58d00b001872502888fmr38671699plh.136.1669671356493; Mon, 28
 Nov 2022 13:35:56 -0800 (PST)
MIME-Version: 1.0
References: <20221121202259.2415821-1-festevam@gmail.com>
In-Reply-To: <20221121202259.2415821-1-festevam@gmail.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 28 Nov 2022 13:35:43 -0800
Message-ID: <CAJ+vNU35SFFNyxe+zmNJ=wKjfTV_pVCAijOh6zP=WzL6nidGNA@mail.gmail.com>
Subject: Re: [PATCH] ARM: dts: imx6qdl-gw560x: Remove incorrect 'uart-has-rtscts'
To:     Fabio Estevam <festevam@gmail.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@denx.de>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Nov 21, 2022 at 12:23 PM Fabio Estevam <festevam@gmail.com> wrote:
>
> From: Fabio Estevam <festevam@denx.de>
>
> The following build warning is seen when running:
>
> make dtbs_check DT_SCHEMA_FILES=fsl-imx-uart.yaml
>
> arch/arm/boot/dts/imx6dl-gw560x.dtb: serial@2020000: rts-gpios: False schema does not allow [[20, 1, 0]]
>         From schema: Documentation/devicetree/bindings/serial/fsl-imx-uart.yaml
>
> The imx6qdl-gw560x board does not expose the UART RTS and CTS
> as native UART pins, so 'uart-has-rtscts' should not be used.
>
> Using 'uart-has-rtscts' with 'rts-gpios' is an invalid combination
> detected by serial.yaml.
>
> Fix the problem by removing the incorrect 'uart-has-rtscts' property.
>
> Fixes: b8a559feffb2 ("ARM: dts: imx: add Gateworks Ventana GW5600 support")
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> index 4bc4371e6bae..4b81a975c979 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> @@ -632,7 +632,6 @@ &ssi1 {
>  &uart1 {
>         pinctrl-names = "default";
>         pinctrl-0 = <&pinctrl_uart1>;
> -       uart-has-rtscts;
>         rts-gpios = <&gpio7 1 GPIO_ACTIVE_HIGH>;
>         status = "okay";
>  };
> --
> 2.25.1
>

Fabio,

Thanks,

Acked-by: Tim Harvey <tharvey@gateworks.com>

Best Regards,

Tim
