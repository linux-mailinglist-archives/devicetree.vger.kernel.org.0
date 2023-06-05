Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DD1147233C0
	for <lists+devicetree@lfdr.de>; Tue,  6 Jun 2023 01:42:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230328AbjFEXmt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 19:42:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58920 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230150AbjFEXmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 19:42:46 -0400
Received: from mail-yw1-x1132.google.com (mail-yw1-x1132.google.com [IPv6:2607:f8b0:4864:20::1132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97497CD
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 16:42:45 -0700 (PDT)
Received: by mail-yw1-x1132.google.com with SMTP id 00721157ae682-568af2f6454so52892547b3.1
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 16:42:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20221208.gappssmtp.com; s=20221208; t=1686008565; x=1688600565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=FWEmN72tSuT121qLjRj5zqV8DqiPMX6/C4ygy0CrmcU=;
        b=wbXOgOagGK/xJRGAsfT7jynGwj3rGC1ssyFHvN5DvdJvUT/pkFBj9RiN/l2biGOuYf
         O3k4jJQtxftSeYXII9uovUViZxT87EIZ7As/nQ2Ja6lFILj1EpoYa5G5JZd7rchHx4Sq
         64qY0L12JMlSnKjb4fpoPEPYpZ8yQ57NzMiedcSa055SMwgHLot3q/85XTQbqAVnjm1O
         tEsB6fISue63IFa7hEviGeHO9ea9g/lllH+ALJCYl9SwvxU4RojHR4fFzM5SaQczQ/DD
         PkSA6HyvBHpDbzqR167jekUVx1sVHJurxMSl5EdmVGHZZIj3LZ5wU4fTNobSqs/xmD5X
         dRjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686008565; x=1688600565;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=FWEmN72tSuT121qLjRj5zqV8DqiPMX6/C4ygy0CrmcU=;
        b=fblgAg+34oF2C7Y3b5WGVOO0cZ+ksc7RQupibvJ77xttxcRoqFP4ggEf7R9qVrI8cb
         GQ2/S+7Y2vNEHT3j0s06vpGNKki39TtXqHpf+OyGMRFWutaGnFcrUMwPitEvlcR7h4kE
         qDZSVHmacOHrp9feFtnR+Wu1+dyZxZRoOLEedrcpt4e1gLyx0mv+CU7km5EvA5ftSXHk
         Czt6zmixktTMRvGG07WEo9m6yMecZpD2gIbiwkK8KNyY3yZDPEBbAYk2ynRNH2n62waB
         EKh7qLeUKYg/zKJ3BLL/jTuOzipuSbp2cQVoFbsBc6XHA4ZXrR02+N+d3kC4M7WFgK4f
         d3xg==
X-Gm-Message-State: AC+VfDy5BYMBvo80Shuyd605Kd9AZUxyx9ckuMjosS6YaJsgNlKEck1I
        PPT+O37FdFe7j4kme2s3IxUo5U2KKhcD8Thy4cjO1A==
X-Google-Smtp-Source: ACHHUZ48tYtuK+uxw6BOnNab1jPfJmBLAB+Z8k/5oCKqNX4LZafsuUnPcgMGNv2dxUO90HRZ4UEMyO1dIaPPkg1YvuE=
X-Received: by 2002:a0d:eb0c:0:b0:565:de9d:be6b with SMTP id
 u12-20020a0deb0c000000b00565de9dbe6bmr119693ywe.21.1686008564641; Mon, 05 Jun
 2023 16:42:44 -0700 (PDT)
MIME-Version: 1.0
References: <20230605090442.11316-1-nicolas.cavallari@green-communications.fr>
In-Reply-To: <20230605090442.11316-1-nicolas.cavallari@green-communications.fr>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Mon, 5 Jun 2023 16:42:33 -0700
Message-ID: <CAJ+vNU1=Gv9COt_hmSuhqvA1wJvSraB2H03c=JHCLncuiia0QA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice: Fix GSC vdd_bat data size.
To:     Nicolas Cavallari <nicolas.cavallari@green-communications.fr>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Jun 5, 2023 at 2:05=E2=80=AFAM Nicolas Cavallari
<nicolas.cavallari@green-communications.fr> wrote:
>
> On these boards, vdd_bat is 16bit, not 24bit.  Reading them as 24bit
> values yield garbage values because of the additional byte, which is a
> configurable fan trippoint[1].
>
> So set their mode to mode_voltage_16bit =3D 3 instead of
> mode_voltage_24bit =3D 1.
>
> [1]: http://trac.gateworks.com/wiki/gsc#SystemTemperatureandVoltageMonito=
r
>
> Only tested on GW7100.
>
> Signed-off-by: Nicolas Cavallari <nicolas.cavallari@green-communications.=
fr>
> ---
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts  | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts  | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts  | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts  | 2 +-
>  arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts  | 2 +-
>  6 files changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi b/ar=
ch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> index 9e7d38872157..c3c9a00f9dfe 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw700x.dtsi
> @@ -149,7 +149,7 @@ channel@6 {
>                         };
>
>                         channel@8 {
> -                               gw,mode =3D <1>;
> +                               gw,mode =3D <3>;
>                                 reg =3D <0x08>;
>                                 label =3D "vdd_bat";
>                         };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arc=
h/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> index df3b2c93d2d5..0ec2ce3dd721 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> @@ -354,7 +354,7 @@ channel@6 {
>                         };
>
>                         channel@8 {
> -                               gw,mode =3D <1>;
> +                               gw,mode =3D <3>;
>                                 reg =3D <0x08>;
>                                 label =3D "vdd_bat";
>                         };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts b/arc=
h/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
> index c33ec6826d32..03cd29063312 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7902.dts
> @@ -327,7 +327,7 @@ channel@6 {
>                         };
>
>                         channel@8 {
> -                               gw,mode =3D <1>;
> +                               gw,mode =3D <3>;
>                                 reg =3D <0x08>;
>                                 label =3D "vdd_bat";
>                         };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts b/arc=
h/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
> index 363020a08c9b..6f26914602c8 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7903.dts
> @@ -293,7 +293,7 @@ channel@6 {
>                         };
>
>                         channel@8 {
> -                               gw,mode =3D <1>;
> +                               gw,mode =3D <3>;
>                                 reg =3D <0x08>;
>                                 label =3D "vdd_bat";
>                         };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts b/arc=
h/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
> index 7c12518dbc96..2ddba4213001 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mn-venice-gw7902.dts
> @@ -325,7 +325,7 @@ channel@6 {
>                         };
>
>                         channel@8 {
> -                               gw,mode =3D <1>;
> +                               gw,mode =3D <3>;
>                                 reg =3D <0x08>;
>                                 label =3D "vdd_bat";
>                         };
> diff --git a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts b/arc=
h/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> index eb51d648359b..92514b71b5f4 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mp-venice-gw74xx.dts
> @@ -281,7 +281,7 @@ channel@6 {
>                         };
>
>                         channel@8 {
> -                               gw,mode =3D <1>;
> +                               gw,mode =3D <3>;
>                                 reg =3D <0x08>;
>                                 label =3D "vdd_bat";
>                         };
> --
> 2.40.1

Hi Nicolas,

Thanks for noticing this - these do indeed need to be changed.

Acked-by: Tim Harvey <tharvey@gateworks.com>

Best Regards,

Tim
