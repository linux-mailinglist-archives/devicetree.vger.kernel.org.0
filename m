Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6A16F750DC3
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 18:14:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232117AbjGLQOX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 12:14:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232255AbjGLQOW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 12:14:22 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 40F511FE3
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 09:14:03 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id a640c23a62f3a-99313a34b2dso825720366b.1
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 09:14:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gateworks-com.20221208.gappssmtp.com; s=20221208; t=1689178441; x=1691770441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8hsh27VfLipK2Sy82ZMIVbK5qspq4ELXL7rgrXndros=;
        b=OJvvlyYxaTyhZ3LLzGxktzK7OzNa+/frIcP7p3nsuMQie5Suwmlrmn5qBVa4xrZtxE
         cC99Y83ZgTtOZSySyqknnWnXyhTEfmBo5yTKgQPfx/I74rCW79iMqd+MJ2aptbMoMmdc
         frwNp4vm+rJMNd8uSz1WD3hqxfYAhPwU91TYjX1YSV5hS6BhsBuUHT4PXrBXcuhF960R
         Z8JRoQnyrvvBxX5rqtfhwj+V3kx7JecXP9VeHlcEcXrjrWG1vDdgEEU4j1SLjuRRdz0P
         ayZ+FLFx7EoPV1YXKyU6wjJGQXTMsLGBW0KNuu0XNylg8xNzR1/iIi2gtN6Ajlbt6h/B
         kRcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689178441; x=1691770441;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8hsh27VfLipK2Sy82ZMIVbK5qspq4ELXL7rgrXndros=;
        b=URoRtR01kTE9iO5FQ94Si9rMiEnqW5A4P9BDQTr2KbDFl67rhotJj6mxtJrDWfrg89
         WQe2n1YGVNPq4GAtEa6i70xe93QanYBxMld6sCrGDTmPbepd4MW4XdV7KSdG7pgwOl0Q
         iI9RfbC05d/ILWi7Fw0WHO6wWWAob6XnIwnh89mbBpCNFO67MLiCbkjBeT3e2/rdKhqa
         0F9CGgG8Bb5eJ49kv29cP4HHRjYhRMkWSRN0CX+2UWlHWYK8cVwGxFslRtVVlpLJ0gA/
         AiapxqrLARB1QcuPq2tKZG5Jx4YMoHGhqKnVxhPutD48MdRTqH1pTc9++cU/IuBC9kra
         tjoQ==
X-Gm-Message-State: ABy/qLZJBPGFh8O17GvdU3oqXFR0qLQK/dTfo5Lwg9KXdzQogo5W4EPH
        +rygyvQa4NRcKDZxPdMt+8U0PaoJ0fLJruz2YnF9cQ==
X-Google-Smtp-Source: APBJJlGLJiXF89OpaVHOq/z10qnEtxaCcE8UAvCpcflnEUomKxNct43v25dOygk2HWyvOI5MpFhaPr+Fd0MvbxdRWSM=
X-Received: by 2002:a17:907:900f:b0:989:34a0:45b0 with SMTP id
 ay15-20020a170907900f00b0098934a045b0mr19759922ejc.49.1689178441228; Wed, 12
 Jul 2023 09:14:01 -0700 (PDT)
MIME-Version: 1.0
References: <20230606153238.1448463-1-tharvey@gateworks.com>
In-Reply-To: <20230606153238.1448463-1-tharvey@gateworks.com>
From:   Tim Harvey <tharvey@gateworks.com>
Date:   Wed, 12 Jul 2023 09:13:49 -0700
Message-ID: <CAJ+vNU0t0ErCcu2W-nFzgjXSwM4Oq3KCK1BQBRe3c_=vj6ZK-A@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: imx8mm-venice-gw7901: add cpu-supply node for cpufreq
To:     Shawn Guo <shawnguo@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Li Yang <leoyang.li@nxp.com>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Jun 6, 2023 at 8:32=E2=80=AFAM Tim Harvey <tharvey@gateworks.com> w=
rote:
>
> Add regulator config for cpu-supply in order to support cpufreq.
>
> Signed-off-by: Tim Harvey <tharvey@gateworks.com>
> ---
>  .../dts/freescale/imx8mm-venice-gw7901.dts     | 18 +++++++++++++++++-
>  1 file changed, 17 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts b/arc=
h/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> index df3b2c93d2d5..d022b5807a24 100644
> --- a/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> +++ b/arch/arm64/boot/dts/freescale/imx8mm-venice-gw7901.dts
> @@ -242,6 +242,22 @@ reg_wifi: regulator-wifi {
>         };
>  };
>
> +&A53_0 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&A53_1 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&A53_2 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
> +&A53_3 {
> +       cpu-supply =3D <&buck2>;
> +};
> +
>  &ddrc {
>         operating-points-v2 =3D <&ddrc_opp_table>;
>
> @@ -511,7 +527,7 @@ BUCK1 {
>                         };
>
>                         /* vdd_arm: 0.805-1.0V (typ=3D0.9V) */
> -                       BUCK2 {
> +                       buck2: BUCK2 {
>                                 regulator-name =3D "buck2";
>                                 regulator-min-microvolt =3D <700000>;
>                                 regulator-max-microvolt =3D <1300000>;
> --
> 2.25.1
>

Hi Shawn,

I noticed this and several other of my pending patches delegated to
you got marked as 'archived' and no longer appear as new in my
patchwork queue [1]. I wanted to make sure they are still in your
queue or see if I need to resubmit them. I'm not sure what the process
is that you follow and if they got archived by you or something else.
Please let me know if I need to do anything:

arm64: dts: imx8mm: add imx8mm-venice-gw73xx-0x-rpidsi overlay for display
arm64: dts: freescale: fix imx8mm-venice-gw72xx-0x-imx219 overlay
arm64: dts: freescale: Introduce imx8mp-venice-gw73xx-2x
dt-bindings: arm: Add Gateworks i.MX8M GW73xx-2x board
arm64: dts: freescale: Introduce imx8mp-venice-gw72xx-2x
dt-bindings: arm: Add Gateworks i.MX8M GW72xx-2x board
arm64: dts: freescale: Introduce imx8mp-venice-gw71xx-2x
dt-bindings: arm: Add Gateworks i.MX8M GW71xx-2x board
arm64: dts: freescale: Introduce imx8mm-venice-gw7905-0x
dt-bindings: arm: Add Gateworks i.MX8M GW7905-0x board
arm64: dts: imx8mm-venice-gw7904: disable disp_blk_ctrl
arm64: dts: imx8mm-venice-gw7903: disable disp_blk_ctrl
arm64: dts: imx8mm-venice-gw7904: enable UART1 hardware flow control
arm64: dts: imx8m{m,n}-venice-gw7902: add SDR50/SDR104 SDIO support for wif=
i
arm64: dts: imx8mm-venice-gw7901: add SDR50/SDR104 SDIO support for wifi
arm64: dts: imx8mm-venice-gw7901: add cpu-supply node for cpufreq
arm64: dts: imx8mp-venice-gw74xx: update to revB PCB

best regards,

Tim
[1] https://patchwork.kernel.org/project/linux-arm-kernel/list/?submitter=
=3D75211
