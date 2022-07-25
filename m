Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 79FC857FC06
	for <lists+devicetree@lfdr.de>; Mon, 25 Jul 2022 11:08:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234114AbiGYJIZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jul 2022 05:08:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49320 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234533AbiGYJIY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jul 2022 05:08:24 -0400
Received: from mail-yb1-xb2c.google.com (mail-yb1-xb2c.google.com [IPv6:2607:f8b0:4864:20::b2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7B93315A20
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 02:08:22 -0700 (PDT)
Received: by mail-yb1-xb2c.google.com with SMTP id c131so18922580ybf.9
        for <devicetree@vger.kernel.org>; Mon, 25 Jul 2022 02:08:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oSUen1zy2XKJLnLvpszCdjqmfTvZUFc64MJFQlVfVi0=;
        b=R69nZ9mZ0SdKoqNGRzCSjAak9yI9nBoYofz+j4xzGtlDFdv5pbDtadC57GP+GWd+9P
         jvhCpenqkQwVB3tTaOYKcydqfj+9lsXbXoAbyBEh70T1CIj21JlmchUawTfSerpP9itW
         GeoYN8ndVMhL6TBnSNlRrODo44no0yVdPH1l4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oSUen1zy2XKJLnLvpszCdjqmfTvZUFc64MJFQlVfVi0=;
        b=6t4fpX3dh8NmcCDAYkgVEOS7KsGVp+E8N3Ims3Y3rCGJ+SVbJ7LDHbSnbvYBhHlDm1
         62bfoTjg6RsZXBwwis3nErFMzfOmA/1m5t0BJ7+EDWtDqJILW2KyFHfEHQdJ0J8rS3SR
         69wC4U/w/JPdBdbBWOMNXZKb61ub/JbrE1a4cSwRI7ROk+5xC6M2YdrfVA3l8vYBuUEy
         7RgDnLZu/1pwSfGrAuDEMF2f3w6Q7ZmRzeCPGzlVwFNFsaElNJItOkQ+BqZgRI3tYeei
         yH5f6K+KWIES7MdZoEmF79QeofxV8eZEmJ+vVoAn2XfuklXxuXcpo++RCinfxHzdKkYT
         Ty9g==
X-Gm-Message-State: AJIora8y7/4EYGS/mMRnILZ9m9E5dgww7EWDBA7q1/P6muZa7B0hI1jM
        nVtdVAdLfZJVpa9hZZC+RUT48WefVHm5NFkOvtzUtg==
X-Google-Smtp-Source: AGRyM1vV+DR9ya4OmfTlnujVAxn1Io5/3EeD5LRkPcGkkRMbp4gKM1lvDg7+uo4ATywMehanYHIO8iDairtqInRllbM=
X-Received: by 2002:a25:6a43:0:b0:66f:d259:7918 with SMTP id
 f64-20020a256a43000000b0066fd2597918mr8618720ybc.486.1658740101673; Mon, 25
 Jul 2022 02:08:21 -0700 (PDT)
MIME-Version: 1.0
References: <20220721145017.918102-1-angelogioacchino.delregno@collabora.com> <20220721145017.918102-9-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20220721145017.918102-9-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Mon, 25 Jul 2022 17:08:10 +0800
Message-ID: <CAGXv+5Gn4CP=iJ2M8vfstdHLb6JRsgYGXQiV5WtHzv3cFWSjqA@mail.gmail.com>
Subject: Re: [PATCH v2 8/8] arm64: dts: mediatek: cherry: Enable MT6315
 regulators on SPMI bus
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Tinghan Shen <tinghan.shen@mediatek.com>
Content-Type: text/plain; charset="UTF-8"
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jul 21, 2022 at 10:54 PM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> All machines in the Cherry platform use MT6315 over SPMI: add the
> two instances, providing Vbcpu and Vgpu regulators.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>

Tested-by: Chen-Yu Tsai <wenst@chromium.org>

> ---
>  .../boot/dts/mediatek/mt8195-cherry.dtsi      | 42 +++++++++++++++++++
>  1 file changed, 42 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> index 9086a440a995..6219544e9912 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -5,6 +5,7 @@
>
>  #include <dt-bindings/gpio/gpio.h>
>  #include <dt-bindings/leds/common.h>
> +#include <dt-bindings/spmi/spmi.h>
>  #include "mt8195.dtsi"
>  #include "mt6359.dtsi"
>
> @@ -979,6 +980,47 @@ usb_c1: connector@1 {
>         };
>  };
>
> +&spmi {
> +       #address-cells = <2>;
> +       #size-cells = <0>;
> +
> +       mt6315@6 {
> +               compatible = "mediatek,mt6315-regulator";
> +               reg = <0x6 SPMI_USID>;
> +
> +               regulators {
> +                       mt6315_6_vbuck1: vbuck1 {
> +                               regulator-compatible = "vbuck1";
> +                               regulator-name = "Vbcpu";
> +                               regulator-min-microvolt = <300000>;
> +                               regulator-max-microvolt = <1193750>;

Tinghan,

Could you help confirm these numbers? They must be valid for the
big cluster supply, not the PMIC.

> +                               regulator-enable-ramp-delay = <256>;
> +                               regulator-ramp-delay = <6250>;
> +                               regulator-allowed-modes = <0 1 2>;
> +                               regulator-always-on;
> +                       };
> +               };
> +       };
> +
> +       mt6315@7 {
> +               compatible = "mediatek,mt6315-regulator";
> +               reg = <0x7 SPMI_USID>;
> +
> +               regulators {
> +                       mt6315_7_vbuck1: vbuck1 {
> +                               regulator-compatible = "vbuck1";
> +                               regulator-name = "Vgpu";
> +                               regulator-min-microvolt = <625000>;
> +                               regulator-max-microvolt = <1193750>;

Same here for the GPU.


Thanks
ChenYu


> +                               regulator-enable-ramp-delay = <256>;
> +                               regulator-ramp-delay = <6250>;
> +                               regulator-allowed-modes = <0 1 2>;
> +                               regulator-always-on;
> +                       };
> +               };
> +       };
> +};
> +
>  &u3phy0 {
>         status = "okay";
>  };
> --
> 2.35.1
>
>
