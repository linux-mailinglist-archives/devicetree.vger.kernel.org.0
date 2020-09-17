Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2375426E718
	for <lists+devicetree@lfdr.de>; Thu, 17 Sep 2020 23:07:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726353AbgIQVHi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 17 Sep 2020 17:07:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36084 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726104AbgIQVHi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 17 Sep 2020 17:07:38 -0400
Received: from mail-ej1-x642.google.com (mail-ej1-x642.google.com [IPv6:2a00:1450:4864:20::642])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 49052C061756
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 14:07:38 -0700 (PDT)
Received: by mail-ej1-x642.google.com with SMTP id nw23so5214941ejb.4
        for <devicetree@vger.kernel.org>; Thu, 17 Sep 2020 14:07:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=ZLPIFqmOpuZBruUHp3l18k9PeqDA8K70keqtKFWuBvA=;
        b=qUbqArMtLnslN4hZE9C58h8tbzqTr8yyZi+vRFRSg+KTFfuoi32APXnvxRVAzUq7H8
         TkegtlEnpSCi39iG84+u0h8FXMj/X+DwuuuO3ZjrnyJ769DS8QvneZR+4SvathuoBvEr
         C29NAKj4jUJ7MuRDpZ8TKqnmdrORAVZlwVCFAHf2/EiT7Iyd6Zhox0pawAkY7oxBHlqF
         6GmsnbigIWDvGw0QqJjNj3a/uc1xP44SnXqfbVs0vPVT3kdLEnEyMWBvCnK0BwERjPsa
         gr+Aqb87wGNRlsk1EqfO7a/LiSHXHillYs9jNNeFpiKwiBwPV0fNsDl0CWWPSeUOP+IU
         BZdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=ZLPIFqmOpuZBruUHp3l18k9PeqDA8K70keqtKFWuBvA=;
        b=m5/VyZcsYo4G1tk2/KKyRGLATuveSM/+xEVZsyN6LbQXbGJPz39ITzxxNM1icnjXK1
         EO6DCmdD9jul7AYnZN29Skq5ib+jhamqinpCkVsq+g3uF2wkjJatc1ruCdqVttBGrfZV
         KXfHKB85DjiACuv2XEJMEPSyesE9A3WC/VjOTAVrFO68q3IoE8/uE9++wSCkLr7ezytI
         HpOV1g8zrwHWNvllKdcoAvpAG/SKaIjifEsS4ZFaFL7dMHuraiDu4QCfyvlqdlU4odmP
         rZcVdUZTuZ89YeH/THpqkk2OTYsfsGcLR/+dEfWmG6ze3VAdXeDlty+twUjaiE5wmnxY
         Pqpg==
X-Gm-Message-State: AOAM530/NE/m2eQDRRIW2DdNu1ZCZQrsBpPLKEz+Zfd+PCGtVYWIdzB9
        S78uDiEPF7nn1gU9HGr9o3MacXXY4XLscG8oX3sh+mOscatI3Q==
X-Google-Smtp-Source: ABdhPJwK/n3WP8r/2NUFgW+dV6PxseRxCw4pWewYNRtqxRfV3pPkA5e6kuui17/rlKB70eHybGKbXTUJifHkOw3E8Js=
X-Received: by 2002:a17:906:eb11:: with SMTP id mb17mr32020191ejb.255.1600376856595;
 Thu, 17 Sep 2020 14:07:36 -0700 (PDT)
MIME-Version: 1.0
References: <20200917185449.5687-1-krzk@kernel.org>
In-Reply-To: <20200917185449.5687-1-krzk@kernel.org>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Thu, 17 Sep 2020 14:07:24 -0700
Message-ID: <CAJ+vNU189235n+ucj3O+zArkRkWAzK2Zr5RLtw4j+VvBXivFkQ@mail.gmail.com>
Subject: Re: [PATCH v2 1/4] ARM: dts: imx6qdl-gw5xxx: correct interrupt flags
To:     Krzysztof Kozlowski <krzk@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Adam Ford <aford173@gmail.com>,
        Daniel Baluta <daniel.baluta@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Jacky Bai <ping.bai@nxp.com>, Robin Gong <yibin.gong@nxp.com>,
        Peter Chen <peter.chen@nxp.com>,
        Device Tree Mailing List <devicetree@vger.kernel.org>,
        Linux ARM Mailing List <linux-arm-kernel@lists.infradead.org>,
        open list <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Sep 17, 2020 at 11:54 AM Krzysztof Kozlowski <krzk@kernel.org> wrote:
>
> GPIO_ACTIVE_x flags are not correct in the context of interrupt flags.
> These are simple defines so they could be used in DTS but they will not
> have the same meaning:
> 1. GPIO_ACTIVE_HIGH = 0 = IRQ_TYPE_NONE
> 2. GPIO_ACTIVE_LOW  = 1 = IRQ_TYPE_EDGE_RISING
>
> Correct the interrupt flags, assuming the author of the code wanted same
> logical behavior behind the name "ACTIVE_xxx", this is:
>   ACTIVE_LOW  => IRQ_TYPE_LEVEL_LOW
>
> Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
>
> ---
>
> Not tested on HW.
>
> Changes since v1:
> 1. Correct title
> ---
>  arch/arm/boot/dts/imx6qdl-gw51xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw52xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw53xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw54xx.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw551x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw552x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw553x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw560x.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5903.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5904.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5907.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5910.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5912.dtsi | 3 ++-
>  arch/arm/boot/dts/imx6qdl-gw5913.dtsi | 3 ++-
>  14 files changed, 28 insertions(+), 14 deletions(-)
>
> diff --git a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> index 4d01c3300b97..3c04b5a4f3cb 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw51xx.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -152,7 +153,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> index f6182a9d201c..736074f1c3ef 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw52xx.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -217,7 +218,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> index a28e79463d0c..8072ed47c6bb 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw53xx.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -210,7 +211,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> index 55f368e192c0..8c9bcdd39830 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw54xx.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/sound/fsl-imx-audmux.h>
>
>  / {
> @@ -247,7 +248,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #address-cells = <1>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> index 1516e2b0bcde..e5d803d023c8 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw551x.dtsi
> @@ -48,6 +48,7 @@
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/media/tda1997x.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>  #include <dt-bindings/sound/fsl-imx-audmux.h>
>
>  / {
> @@ -219,7 +220,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> index 0da6e6f7482b..290a607fede9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw552x.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -144,7 +145,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> index faf9a3ba61b2..c15b9cc63bf8 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw553x.dtsi
> @@ -47,6 +47,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -180,7 +181,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> index f68f9dada5b0..093a219a77ae 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw560x.dtsi
> @@ -47,6 +47,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/input.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -294,7 +295,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> index fbe6c32bd756..e1c8dd233cab 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5903.dtsi
> @@ -47,6 +47,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         chosen {
> @@ -235,7 +236,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> index 23c6e4047621..3cd2e717c1da 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5904.dtsi
> @@ -47,6 +47,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -257,7 +258,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> index b1ff7c859c4d..21c68a55bcb9 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5907.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -154,7 +155,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> index 6c943a517ad7..ed4e22259959 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5910.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -163,7 +164,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> index 441d8ce97aa4..797f160249f7 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5912.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -158,7 +159,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #address-cells = <1>;
> diff --git a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> index d62a8da49367..4cd7d290f5b2 100644
> --- a/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> +++ b/arch/arm/boot/dts/imx6qdl-gw5913.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/input/linux-event-codes.h>
> +#include <dt-bindings/interrupt-controller/irq.h>
>
>  / {
>         /* these are used by bootloader for disabling nodes */
> @@ -139,7 +140,7 @@
>                 compatible = "gw,gsc";
>                 reg = <0x20>;
>                 interrupt-parent = <&gpio1>;
> -               interrupts = <4 GPIO_ACTIVE_LOW>;
> +               interrupts = <4 IRQ_TYPE_LEVEL_LOW>;
>                 interrupt-controller;
>                 #interrupt-cells = <1>;
>                 #size-cells = <0>;
> --
> 2.17.1
>

for series:
Acked-By: Tim Harvey <tharvey@gateworks.com>

Thanks Krzysztof

Tim


Tim
