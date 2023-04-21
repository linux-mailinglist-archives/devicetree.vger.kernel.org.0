Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 284E96EA42C
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 08:57:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230273AbjDUG5l (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 02:57:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45956 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230042AbjDUG5j (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 02:57:39 -0400
Received: from mail-vk1-xa32.google.com (mail-vk1-xa32.google.com [IPv6:2607:f8b0:4864:20::a32])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 69FB759D5
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 23:57:38 -0700 (PDT)
Received: by mail-vk1-xa32.google.com with SMTP id 71dfb90a1353d-44058ece4f3so831828e0c.1
        for <devicetree@vger.kernel.org>; Thu, 20 Apr 2023 23:57:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682060257; x=1684652257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=SJKGDTicdDOydwAyS5XLugqVzczoGrGZVxyOPeyI0mE=;
        b=Idit8eCqCgTG3r3YDXJ4riHvsH9dFKDnOm4WUrpndwWlD5IUcVzFvKa9odfDNhtPfP
         1aco9mVjUHcqvupq4gv2tRpyTSeCR91veQ0NNgA6NppySxMU22vOB4DF3UhsVTL5PeiF
         46bvAdmy4tRKYKlptuX6lbpjqLIh+0srq8WnI=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682060257; x=1684652257;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=SJKGDTicdDOydwAyS5XLugqVzczoGrGZVxyOPeyI0mE=;
        b=gaemNwozyVcl0mtcCXj3uHVsaZVRIXcfP9tU82FW00QVz3tMMcz8b6kX/paALOt0iT
         oq90hQgRGfaaS31PTfkAQM6LMMxufQKbjOcFDYf3ZkPB3DWxFJI0/mDumlAKnX9AsNa1
         KjaK7F8qK7NGIrY+sxPXV+nKnw57aVQoDis/GucRn0CQsSwHnYgU6X4ZIWWixVDjzuav
         TfUkQaMTWGHcexHzthrgT0+39oBzGzBY4t6M1F2R6UtOHPkMwcvWcSEiBymZek7kkMtH
         ZyrFiw6DET9ZSMlAo388FhAmOVRuRQJWLKS99ZeMHo/EcS1ONZ3QFxkG/k+yPAlUbmrU
         F3HQ==
X-Gm-Message-State: AAQBX9e7+sth0QwLsHiMevKXjtdX32HqFL9m1C1l7aDXw+snms9YPeRR
        SJGXiYu2aLGnZzZklMs5rUdcWrAiZe+cCLc5f8xLmg==
X-Google-Smtp-Source: AKy350baBuLFoDL6dTLHo8N9DcJGnnvarEUOSLvi+u2GONsBq5/4u9NgF9Gejms6x5qeKN4B4rq7fak2/O9S3xQEQDE=
X-Received: by 2002:a1f:4349:0:b0:43f:cc0e:6eae with SMTP id
 q70-20020a1f4349000000b0043fcc0e6eaemr533384vka.10.1682060257462; Thu, 20 Apr
 2023 23:57:37 -0700 (PDT)
MIME-Version: 1.0
References: <20230420094433.42794-1-angelogioacchino.delregno@collabora.com> <20230420094433.42794-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230420094433.42794-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 21 Apr 2023 14:57:26 +0800
Message-ID: <CAGXv+5GXuvw+o=JEjLP+hkKzL=stzmEHWZ18N2RJDbcWeioxnQ@mail.gmail.com>
Subject: Re: [PATCH 3/5] arm64: dts: mediatek: cherry: Configure eDP and
 internal display
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Apr 20, 2023 at 5:45=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Add the required nodes to enable the DisplayPort interface, connected
> to the Embedded DisplayPort port, where we have an internal display.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../boot/dts/mediatek/mt8195-cherry.dtsi      | 32 +++++++++++++++++++
>  1 file changed, 32 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8195-cherry.dtsi
> index 918380697a9a..46f1c8091498 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -49,6 +49,18 @@ memory@40000000 {
>                 reg =3D <0 0x40000000 0 0x80000000>;
>         };
>
> +       pp3300_disp_x: regulator-pp3300-disp-x {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp3300_disp_x";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;

From the schematics:
                  vin-supply =3D <&pp3300_z2>;

Also, this is an RT9742. The datasheet says the typical enable time is
2.1ms. For a bit of margin, I'd say we could model it as 2.5ms? So:

                  regulator-enable-ramp-delay =3D <2500>;

ChenYu

> +               enable-active-high;
> +               gpio =3D <&pio 55 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&panel_fixed_pins>;
> +               regulator-always-on;
> +       };
> +
>         /* system wide LDO 3.3V power rail */
>         pp3300_z5: regulator-pp3300-ldo-z5 {
>                 compatible =3D "regulator-fixed";
> @@ -290,6 +302,20 @@ port@1 {
>                         reg =3D <1>;
>                         edp_out: endpoint {
>                                 data-lanes =3D <0 1 2 3>;
> +                               remote-endpoint =3D <&panel_in>;
> +                       };
> +               };
> +       };
> +
> +       aux-bus {
> +               panel {
> +                       compatible =3D "edp-panel";
> +                       power-supply =3D <&pp3300_disp_x>;
> +                       backlight =3D <&backlight_lcd0>;
> +                       port {
> +                               panel_in: endpoint {
> +                                       remote-endpoint =3D <&edp_out>;
> +                               };
>                         };
>                 };
>         };
> @@ -929,6 +955,12 @@ pins-cs {
>                 };
>         };
>
> +       panel_fixed_pins: panel-pwr-default-pins {
> +               pins-vreg-en {
> +                       pinmux =3D <PINMUX_GPIO55__FUNC_GPIO55>;
> +               };
> +       };
> +
>         pio_default: pio-default-pins {
>                 pins-wifi-enable {
>                         pinmux =3D <PINMUX_GPIO58__FUNC_GPIO58>;
> --
> 2.40.0
>
>
