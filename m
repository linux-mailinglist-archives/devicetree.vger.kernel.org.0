Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2707C2B3CDA
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:14:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726774AbgKPGN6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:13:58 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726741AbgKPGN6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 01:13:58 -0500
Received: from mail-qt1-x843.google.com (mail-qt1-x843.google.com [IPv6:2607:f8b0:4864:20::843])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4234C0613CF
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:13:57 -0800 (PST)
Received: by mail-qt1-x843.google.com with SMTP id p12so12178167qtp.7
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:13:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=WKOjBlDK/Lz4Ub9TpRYGCAGqonPtxtyIwbLNf9AfxqA=;
        b=EltcBkTmqEBJnmajY77FtaV6uG0d3s83Q2D2hZ8vz6VZmCz/RM1/S6WdRs0q/wkWvK
         0Bfi/Y9/QcoEQF0c4D7DV9Ht5+QowBpv7UW9lsYKTqfrVNVLspbW2DA6crtd0+/gAZLo
         K4ojnUWF/LgkS2Zp2c1LRTR7hZohc7oWtsVZ8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=WKOjBlDK/Lz4Ub9TpRYGCAGqonPtxtyIwbLNf9AfxqA=;
        b=D47aYvYiogycHPW56jJX08GsEr+spjVJnsuiAfY889oc8YrzFF9uV0JfKo/6DCxPzd
         EL2zQw5qkXIO93qBsTcCyB0EDwSTKxSXbtn5fNfhPtMAVIcWc6LXD0LxIaOSGbTCgprd
         qca00RWfTvXBx6Tt0PgBXNYxqVuVAW8XPpUxXbpXbyx4u4oKXLweWoIAMMD0Mp7dNuMj
         Ik3PhuhRKg7ZVD1JTZftjIp0AUsc9ImgMrfV1rRSmfuqFFKpleZjZoJTe3lawoyV3x2F
         p2560ICacLnyUa4yIPLaF6ab/yAC5AbybXCatq0GEhF9ON10iouYKv7WmfNKYTT52sBd
         w1PQ==
X-Gm-Message-State: AOAM533DgGBvQS+7WVieulz/aof/jUBcYlHcK2mRFPoy+qeDwbKhsf1E
        U0ICmFvoLB2b50+F0y9Cv2VGh1bQvEgy0QtY/FA=
X-Google-Smtp-Source: ABdhPJxyI/NzoLy43TOTPSid5FX7fIXdywhFaNstLDLUyT8HXNdKHDsvRwtNqojKGMmRFlnw7OnQly5dftpIvWiqPfo=
X-Received: by 2002:ac8:4d5b:: with SMTP id x27mr12851506qtv.135.1605507236888;
 Sun, 15 Nov 2020 22:13:56 -0800 (PST)
MIME-Version: 1.0
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com> <1605247168-1028-6-git-send-email-vishwa@linux.vnet.ibm.com>
In-Reply-To: <1605247168-1028-6-git-send-email-vishwa@linux.vnet.ibm.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 16 Nov 2020 06:13:43 +0000
Message-ID: <CACPK8XfttMptuYFsocBaj2v4z1vzNjDUfe18FeDcAbmZjWKjfQ@mail.gmail.com>
Subject: Re: [PATCH 6/6] ARM: dts: aspeed: rainier: Add leds that are on
 optional PCI cable cards
To:     Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>,
        Eddie James <eajames@linux.ibm.com>,
        Andrew Jeffery <andrew@aj.id.au>,
        Brad Bishop <bradleyb@fuzziesquirrel.com>
Cc:     linux-aspeed <linux-aspeed@lists.ozlabs.org>,
        devicetree <devicetree@vger.kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 13 Nov 2020 at 05:59, Vishwanatha Subbanna
<vishwa@linux.vnet.ibm.com> wrote:
>
> These are LEDs on the cable cards that plug into PCIE slots.
> The LEDs are controlled by PCA9552 I2C expander
>
> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 288 +++++++++++++++++++++++++++
>  1 file changed, 288 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index 67c8c40..7de5f76 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -696,6 +696,70 @@
>                         gpios = <&pca4 7 GPIO_ACTIVE_LOW>;
>                 };
>         };
> +
> +       leds-optional-cablecard0 {

Is it necessary to have separate nodes for each of the different GPIO devices?

Would it make sense to combine them, or is it better to be separate?

Andrew, Eddie, Brad: please review this one before I merge it.

> +               compatible = "gpio-leds";
> +
> +               cablecard0-cxp-top {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca5 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cablecard0-cxp-bot {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca5 1 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       leds-optional-cablecard3 {
> +               compatible = "gpio-leds";
> +
> +               cablecard3-cxp-top {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca6 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cablecard3-cxp-bot {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca6 1 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       leds-optional-cablecard4 {
> +               compatible = "gpio-leds";
> +
> +               cablecard4-cxp-top {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca7 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cablecard4-cxp-bot {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca7 1 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       leds-optional-cablecard10 {
> +               compatible = "gpio-leds";
> +
> +               cablecard10-cxp-top {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca8 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cablecard10-cxp-bot {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca8 1 GPIO_ACTIVE_LOW>;
> +               };
> +       };
>  };
>
>  &ehci1 {
> @@ -1212,6 +1276,180 @@
>                 compatible = "atmel,24c64";
>                 reg = <0x52>;
>         };
> +
> +       pca5: pca9551@60 {
> +               compatible = "nxp,pca9551";
> +               reg = <0x60>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +
> +               gpio@0 {
> +                       reg = <0>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@1 {
> +                       reg = <1>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@2 {
> +                       reg = <2>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@3 {
> +                       reg = <3>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@4 {
> +                       reg = <4>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@5 {
> +                       reg = <5>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@6 {
> +                       reg = <6>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@7 {
> +                       reg = <7>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +};
> +
> +&i2c5 {
> +       status = "okay";
> +
> +       tmp275@48 {
> +               compatible = "ti,tmp275";
> +               reg = <0x48>;
> +       };
> +
> +       tmp275@49 {
> +               compatible = "ti,tmp275";
> +               reg = <0x49>;
> +       };
> +
> +       eeprom@50 {
> +               compatible = "atmel,24c64";
> +               reg = <0x50>;
> +       };
> +
> +       eeprom@51 {
> +               compatible = "atmel,24c64";
> +               reg = <0x51>;
> +       };
> +
> +       pca6: pca9551@60 {
> +               compatible = "nxp,pca9551";
> +               reg = <0x60>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +
> +               gpio@0 {
> +                       reg = <0>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@1 {
> +                       reg = <1>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@2 {
> +                       reg = <2>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@3 {
> +                       reg = <3>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@4 {
> +                       reg = <4>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@5 {
> +                       reg = <5>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@6 {
> +                       reg = <6>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@7 {
> +                       reg = <7>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +
> +       pca7: pca9551@61 {
> +               compatible = "nxp,pca9551";
> +               reg = <0x61>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +
> +               gpio@0 {
> +                       reg = <0>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@1 {
> +                       reg = <1>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@2 {
> +                       reg = <2>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@3 {
> +                       reg = <3>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@4 {
> +                       reg = <4>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@5 {
> +                       reg = <5>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@6 {
> +                       reg = <6>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@7 {
> +                       reg = <7>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
>  };
>
>  &i2c5 {
> @@ -2028,6 +2266,56 @@
>                 compatible = "atmel,24c64";
>                 reg = <0x51>;
>         };
> +
> +       pca8: pca9551@60 {
> +               compatible = "nxp,pca9551";
> +               reg = <0x60>;
> +               #address-cells = <1>;
> +               #size-cells = <0>;
> +
> +               gpio-controller;
> +               #gpio-cells = <2>;
> +
> +               gpio@0 {
> +                       reg = <0>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@1 {
> +                       reg = <1>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@2 {
> +                       reg = <2>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@3 {
> +                       reg = <3>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@4 {
> +                       reg = <4>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@5 {
> +                       reg = <5>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@6 {
> +                       reg = <6>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@7 {
> +                       reg = <7>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
>  };
>
>  &i2c12 {
> --
> 1.8.3.1
>
