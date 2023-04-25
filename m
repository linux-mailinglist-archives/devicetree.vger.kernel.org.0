Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D367B6EDDE1
	for <lists+devicetree@lfdr.de>; Tue, 25 Apr 2023 10:24:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233255AbjDYIYd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Apr 2023 04:24:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46116 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232661AbjDYIYc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Apr 2023 04:24:32 -0400
Received: from mail-vk1-xa33.google.com (mail-vk1-xa33.google.com [IPv6:2607:f8b0:4864:20::a33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 16DDD4C1E
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 01:24:31 -0700 (PDT)
Received: by mail-vk1-xa33.google.com with SMTP id 71dfb90a1353d-4409786dab8so1784240e0c.1
        for <devicetree@vger.kernel.org>; Tue, 25 Apr 2023 01:24:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682411070; x=1685003070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=g87QtYvbyFcpRIEyNYcMCc4cgeNxfkvSk5Vpj0Hyzc8=;
        b=C5PFkPyWgHmed4xAl9jksbPjuO1O2fl9/NtlZo3jOPuJZ+9YSApk2q8BkcrCmi7hKH
         dYeKRMBDcgwB8cTSypzr4BghpfSgFTYwL549V6Qa3RCmU8Jcenh/U+SF0HCd9k/cVdy5
         GSmivlXBqNkYPv9yH3AToHRFh3b4Ol7y1obYk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682411070; x=1685003070;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=g87QtYvbyFcpRIEyNYcMCc4cgeNxfkvSk5Vpj0Hyzc8=;
        b=f4cCt0DlfjejhUa8l7d/9Z334kJVlCJmJOByICLbpG3hU1mtoHZa9zNPmklDa8HuMK
         qx5ol7quXPTZIRcuy89KUxZTjgUpgVPMp5bVlS2kTobtgW0INONWxv6dgmiH2I8bNTyb
         UPWbZcqwl8J0bEJmtJ7x1WnZo5MhYeRholFlwO9VcklERmt12B4jnS6Z7ycbXWi0QuGa
         4GwPVstkrTfQpMyR7iVPgq2zzxZMTiTqAs4k1IZVjTx4sAKx9MvYoBRmFpaA8hLRqVyx
         zRGh7PI4v/9KMk9IAtYqlXSpWoqCL5HQsB99gK1AkrCkKZgMzeUtGgTMoP5cPrZiZJMA
         VJgA==
X-Gm-Message-State: AAQBX9fh+v4zHZ82d8HPcjfGpb/I4jq8DxbNoTJG9XDJy1crFs6jiDyk
        Yabn7ExyY3qicach8d0ni1cX9ZvxOy2QYlH6ADHBYg==
X-Google-Smtp-Source: AKy350Z7WMHqqGuvOh2NxaHyv6xpmzZoT+sqVI0LpFCd9RViLaPMK29XRpHTZFU4r87tkLGoH1ciasV226IsVo/SiYU=
X-Received: by 2002:a1f:41c1:0:b0:40f:f3e1:53c with SMTP id
 o184-20020a1f41c1000000b0040ff3e1053cmr4535386vka.1.1682411070145; Tue, 25
 Apr 2023 01:24:30 -0700 (PDT)
MIME-Version: 1.0
References: <20230424112523.1436926-1-angelogioacchino.delregno@collabora.com> <20230424112523.1436926-4-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230424112523.1436926-4-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Tue, 25 Apr 2023 16:24:19 +0800
Message-ID: <CAGXv+5EHAGMYE7Z-n6Wtss-sXXa0Rvv=jkse2sqyTOtGYpqR-A@mail.gmail.com>
Subject: Re: [PATCH v2 3/4] arm64: dts: mediatek: cherry: Configure eDP and
 internal display
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, kernel@collabora.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Apr 24, 2023 at 7:25=E2=80=AFPM AngeloGioacchino Del Regno
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
> index 4229f4f7dc2f..adbda4dccdd5 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -47,6 +47,18 @@ memory@40000000 {
>                 reg =3D <0 0x40000000 0 0x80000000>;
>         };
>
> +       pp3300_disp_x: regulator-pp3300-disp-x {
> +               compatible =3D "regulator-fixed";
> +               regulator-name =3D "pp3300_disp_x";
> +               regulator-min-microvolt =3D <3300000>;
> +               regulator-max-microvolt =3D <3300000>;
> +               enable-active-high;
> +               gpio =3D <&pio 55 GPIO_ACTIVE_HIGH>;
> +               pinctrl-names =3D "default";
> +               pinctrl-0 =3D <&panel_fixed_pins>;
> +               regulator-always-on;

I think you missed my comment on v1 about this regulator's supplier and
enable delay.

ChenYu

> +       };
> +
>         /* system wide LDO 3.3V power rail */
>         pp3300_z5: regulator-pp3300-ldo-z5 {
>                 compatible =3D "regulator-fixed";
> @@ -288,6 +300,20 @@ port@1 {
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
> @@ -927,6 +953,12 @@ pins-cs {
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
