Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2AC042B3CE2
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 07:15:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726784AbgKPGOP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 01:14:15 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52662 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725379AbgKPGOP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 Nov 2020 01:14:15 -0500
Received: from mail-qk1-x743.google.com (mail-qk1-x743.google.com [IPv6:2607:f8b0:4864:20::743])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B07DC0613CF
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:15 -0800 (PST)
Received: by mail-qk1-x743.google.com with SMTP id r7so15944980qkf.3
        for <devicetree@vger.kernel.org>; Sun, 15 Nov 2020 22:14:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=jms.id.au; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=A0WUX4g4NY4uKueayHkcXzqCRIBlv3Wwx1A5Wv5T3KU=;
        b=AKi1im/N8HmsEEuquAQbf+zczPV7Li1vDssMcBSSGJieaUcHcKqA/GJSShaZnfSQt1
         Y1LUR1l4emwXjNttNjoqzyichTMVUBSMoNu+mdu7ocx0PCHKd5tjol0FCEgkI6YAbc9Y
         tKb1r916IOx99xQ1Nb6jTdsANZGOGFTnT6Ov8=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=A0WUX4g4NY4uKueayHkcXzqCRIBlv3Wwx1A5Wv5T3KU=;
        b=p/uX3UqG3eVNYf5do32O6ks8QDJOPJ8mDaxYgHqWSlVmCC8OiRVaX+H2tZeQzyhk/e
         tkUnIxUr8auKEYuGO/SD+PddjQi4xA+Uy1mPdUm8ifpjECbvXXqi2mcickYNoa9ZZP+b
         SSwJbmzsmrjRII/np1xPV3UaRH2sBP+jN8D0MDf5kERobtQOOCWYe3RAabwllUr6QyZP
         nAaVrqBBTECwAlCg9y407asJvHiQevL+f3vRX82FxmtgJs5VmugqdmIJZVrNDjREqDZ5
         h12ZtFDWd6pba0Px/6F6F+nAPSgjOhkYpppwi16vZl60mafqIUwQIoiWFJHIT/rM23lA
         54ig==
X-Gm-Message-State: AOAM5333CsXx7UM/rvHVkvjd9Dip1Kg6C/geMNrBmj/qN/QEH6uhIDUT
        vOlJNzESLBUrnYJOcJ6ez2oFxs/YCJihoqr4nfs=
X-Google-Smtp-Source: ABdhPJzEk2sISyDAO75ptzfftXj/wFl6HlJ2oKhoGPesAzFw+FTP2IrHrT/YMYLD5mj9fE0/6BV146zRojjp54P54Rg=
X-Received: by 2002:a37:4a4d:: with SMTP id x74mr13150131qka.55.1605507254426;
 Sun, 15 Nov 2020 22:14:14 -0800 (PST)
MIME-Version: 1.0
References: <1605247168-1028-1-git-send-email-vishwa@linux.vnet.ibm.com> <1605247168-1028-5-git-send-email-vishwa@linux.vnet.ibm.com>
In-Reply-To: <1605247168-1028-5-git-send-email-vishwa@linux.vnet.ibm.com>
From:   Joel Stanley <joel@jms.id.au>
Date:   Mon, 16 Nov 2020 06:14:02 +0000
Message-ID: <CACPK8XfzTzDDvoEqLW3YEspqHYuFz15zoeCaMbkzsEq87dXbVA@mail.gmail.com>
Subject: Re: [PATCH 5/6] ARM: dts: aspeed: rainier: Add leds on optional DASD cards
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
> These cards are not hot pluggable and must be installed
> prior to boot. LEDs on these are controlled by PCA9552
> I2C expander
>
> Signed-off-by: Vishwanatha Subbanna <vishwa@linux.vnet.ibm.com>

Reviewed-by: Joel Stanley <joel@jms.id.au>


> ---
>  arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts | 426 +++++++++++++++++++++++++++
>  1 file changed, 426 insertions(+)
>
> diff --git a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> index 88fefc0..67c8c40 100644
> --- a/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> +++ b/arch/arm/boot/dts/aspeed-bmc-ibm-rainier.dts
> @@ -540,6 +540,162 @@
>                         gpios = <&pic4 15 GPIO_ACTIVE_LOW>;
>                 };
>         };
> +
> +       leds-optional-dasd-pyramid0 {
> +               compatible = "gpio-leds";
> +
> +               nvme0 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme1 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme2 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme3 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme4 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme5 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme6 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme7 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca2 7 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       leds-optional-dasd-pyramid1 {
> +               compatible = "gpio-leds";
> +
> +               nvme8 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme9 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme10 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme11 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme12 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme13 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme14 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme15 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca3 7 GPIO_ACTIVE_LOW>;
> +               };
> +       };
> +
> +       leds-optional-dasd-pyramid2 {
> +               compatible = "gpio-leds";
> +
> +               nvme16 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 0 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme17 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 1 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme18 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 2 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme19 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 3 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme20 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 4 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme21 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 5 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme22 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 6 GPIO_ACTIVE_LOW>;
> +               };
> +
> +               nvme23 {
> +                       retain-state-shutdown;
> +                       default-state = "keep";
> +                       gpios = <&pca4 7 GPIO_ACTIVE_LOW>;
> +               };
> +       };
>  };
>
>  &ehci1 {
> @@ -1885,6 +2041,96 @@
>                 compatible = "atmel,24c64";
>                 reg = <0x50>;
>         };
> +
> +       pca2: pca9552@60 {
> +               compatible = "nxp,pca9552";
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
>  };
>
>  &i2c14 {
> @@ -1894,6 +2140,96 @@
>                 compatible = "atmel,24c64";
>                 reg = <0x50>;
>         };
> +
> +       pca3: pca9552@60 {
> +               compatible = "nxp,pca9552";
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
>  };
>
>  &i2c15 {
> @@ -1903,6 +2239,96 @@
>                 compatible = "atmel,24c64";
>                 reg = <0x50>;
>         };
> +
> +       pca4: pca9552@60 {
> +               compatible = "nxp,pca9552";
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
>  };
>
>  &vuart1 {
> --
> 1.8.3.1
>
