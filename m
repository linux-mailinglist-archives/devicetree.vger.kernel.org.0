Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8AA4C2B3CE7
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:15:42 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726820AbgKPGPQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:15:16 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52830 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726748AbgKPGPQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 01:15:16 -0500
Received: from mail-qk1-x742.google.com (mail-qk1-x742.google.com [IPv6:2607:f8b0:4864:20::742])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6150EC0613CF
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:15:16 -0800 (PST)
Received: by mail-qk1-x742.google.com with SMTP id d9so15915705qke.8
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:15:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=6DA3hOjYLWWIzsKj8PYNULLwVDGEIjO9RwvpREsgkVs=;
        b=TR99GbGpiW9k41uOQtly9dNHs14I6xCqBskyqTp2gzjsBChZqQiLzmrtf7wyG4z86R
         pAnDDo7BqPE/sRdRzSp4MFU+9rgkjsuQFsQ7je0yg8AH6PTqg+4ePO3q/GYLlLlGTX+2
         TmORPPFiUiYLKni0Z54pFqRXlWVAfc+eagBKA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=6DA3hOjYLWWIzsKj8PYNULLwVDGEIjO9RwvpREsgkVs=;
        b=XOH/j899HVuIKPhO49CymkBCcXuqRCMS8yODz93n+aVIGEiggd3uD5iQj1M0oJEuZY
         F7DoOwDNSbW3qZOK3HAQwzJaSmfD3EoFxWivUOFmbvwQpwZowkjrEwiO0URx43OcSp1t
         pRm0yL1Xyz68dOoE54E5nUIRPcIUhZKrajraeSLggUnHHpFtkk2nvNkeiyDFyov/X95e
         pNpAF+/yf3dqvo/S/iEfqMKlrgelYqVmy9JXq7kGRsCCWth9XijZZz35NmqP2KC/cV/9
         L96/ft17e5CnCiYapi9le992UnqoKWN/7tOeLU3B2WoXFF3UW1QlRUTEzy4nJSPTnlEJ
         EKoQ==
X-Gm-Message-State: AOAM531zQQof3WyL6IWeXnGcgmNEHEfFlZZKeMU7yGmrDYEPZDXQPHyZ
        giSNs32gQxTT2CrqAWPLqYnpyAm/Sm7Wcvf1nXs=
X-Google-Smtp-Source: ABdhPJw5AkGElAv624sA1SEY1S+gBa0hTqbq4MUUs7ocewaiY85ZpT/hCZV0kxE3TYF6MtHQTkxfHv2jwJAnmfsqhUY=
X-Received: by 2002:a37:664d:: with SMTP id a74mr12976897qkc.487.1605507315573;
 Sun, 15 Nov 2020 22:15:15 -0800 (PST)
MIME-Version: 1.0
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com> <1605247168-1028-4-git-send-email-vishwa@linux.vnet.ibm.com>
In-Reply-To: <1605247168-1028-4-git-send-email-vishwa@linux.vnet.ibm.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 16 Nov 2020 06:15:03 +0000
Message-ID: <CACPK8XeQS3xWHGnuqpNY-cdAdNOkxZtC-YN2zO9wOR2G0W183w@mail.gmail.com>
Subject: Re: [PATCH 4/6] ARM: dts: aspeed: rainier: Add leds that are off PIC16F882
To:     Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>
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
> There are many LEDs that are connected to PIC16F882.
> PIC has the software implementation of PCA9552
>
> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>

> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 690 +++++++++++++++++++++++++++
>  1 file changed, 690 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index b7d7246..88fefc0 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -209,6 +209,336 @@
>                         default-state = "keep";
>                         gpios = <&pca0 5 GPIO_ACTIVE_LOW>;
>                 };
> +
> +               ddimm0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm2 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm3 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm4 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm5 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm6 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm7 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 7 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm8 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 8 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm9 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 9 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm10 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 10 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm11 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 11 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm12 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 12 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm13 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 13 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm14 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 14 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm15 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic1 15 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm16 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm17 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm18 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm19 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm20 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm21 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm22 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm23 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 7 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm24 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 8 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm25 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 9 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm26 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 10 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm27 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 11 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm28 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 12 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm29 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 13 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm30 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 14 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               ddimm31 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic2 15 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot2 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot3 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot4 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cpu1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cpu1-vrm0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               lcd-russel {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic3 8 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               planar {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cpu0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               dasd-pyramid0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               dasd-pyramid1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               dasd-pyramid2 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               cpu0-vrm0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               rtc-battery {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 7 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               base-blyth {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 8 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot6 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 9 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot7 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 10 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot8 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 11 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot9 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 12 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot10 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 13 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               pcieslot11 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 14 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               tpm-wilson {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pic4 15 GPIO_ACTIVE_LOW>;
> +               };
>         };
>  };
>
> @@ -981,6 +1311,366 @@
>                 reg = <(0x62 | I2C_OWN_SLAVE_ADDRESS)>;
>         };
>
> +       pic1: pca9952@32 {
> +               compatible = "ibm,pca9552";
> +               reg = <0x32>;
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
> +
> +               gpio@8 {
> +                       reg = <8>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@9 {
> +                       reg = <9>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@10 {
> +                       reg = <10>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@11 {
> +                       reg = <11>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@12 {
> +                       reg = <12>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@13 {
> +                       reg = <13>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@14 {
> +                       reg = <14>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@15 {
> +                       reg = <15>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +
> +       pic2: pca9552@31 {
> +               compatible = "ibm,pca9552";
> +               reg = <0x31>;
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
> +
> +               gpio@8 {
> +                       reg = <8>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@9 {
> +                       reg = <9>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@10 {
> +                       reg = <10>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@11 {
> +                       reg = <11>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@12 {
> +                       reg = <12>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@13 {
> +                       reg = <13>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@14 {
> +                       reg = <14>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@15 {
> +                       reg = <15>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +
> +       pic3: pca9552@30 {
> +               compatible = "ibm,pca9552";
> +               reg = <0x30>;
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
> +
> +               gpio@8 {
> +                       reg = <8>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@9 {
> +                       reg = <9>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@10 {
> +                       reg = <10>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@11 {
> +                       reg = <11>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@12 {
> +                       reg = <12>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@13 {
> +                       reg = <13>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@14 {
> +                       reg = <14>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@15 {
> +                       reg = <15>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +
> +       pic4: pca9552@33 {
> +               compatible = "ibm,pca9552";
> +               reg = <0x33>;
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
> +
> +               gpio@8 {
> +                       reg = <8>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@9 {
> +                       reg = <9>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@10 {
> +                       reg = <10>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@11 {
> +                       reg = <11>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@12 {
> +                       reg = <12>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@13 {
> +                       reg = <13>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@14 {
> +                       reg = <14>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +
> +               gpio@15 {
> +                       reg = <15>;
> +                       type = <PCA955X_TYPE_GPIO>;
> +               };
> +       };
> +
>         dps: dps310@76 {
>                 compatible = "infineon,dps310";
>                 reg = <0x76>;
> --
> 1.8.3.1
>
