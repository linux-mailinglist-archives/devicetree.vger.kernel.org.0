Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 12E056EA4FA
	for <lists+devicetree@lfdr.de>; Fri, 21 Apr 2023 09:38:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230299AbjDUHiL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 03:38:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbjDUHiG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 03:38:06 -0400
Received: from mail-ua1-x935.google.com (mail-ua1-x935.google.com [IPv6:2607:f8b0:4864:20::935])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CA96C35B0
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:38:04 -0700 (PDT)
Received: by mail-ua1-x935.google.com with SMTP id a1e0cc1a2514c-77858d8dcb5so5618534241.1
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 00:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1682062684; x=1684654684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CVNW4QtM4eTYVeGO7r8lt2e44dC/9lAoYvvcxGHxL4k=;
        b=Jee43CIGNJgbOBrV5pWsmi+0WPPMRJW5I1mjdMBMB268AsQiiDgXfUTx6oDl9GQaRh
         WNVJg2vLzv+wRwbBMmwNilPBHGp5ui6+jcAMWwbuIfhei4Uvx3cBv2Rm1d3UNmw0to9D
         PT+M5UqLbnfUE/tTkY4u2CX7GIy7TZVRWkc84=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682062684; x=1684654684;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CVNW4QtM4eTYVeGO7r8lt2e44dC/9lAoYvvcxGHxL4k=;
        b=YLq2YLXwScdMDALY+LUFEsKuzK63SYjtJW9ngllpgHmcDf2a84TyvhL2r9I9hkfnmn
         P3K1AKcP+MjERqMjnNFbdSJWPn+b/DvA1S2CC+df3IICsEbvySlt9GfD8w7VoiQqqmUc
         xl4gPCJqJpyuW3A/79VMAJLbtYqhmpFdj7C7bhDIQKanCRq9Jsno8H9+2hBnRY3RSaT/
         9bfB0yC8l2STeXGQQH5uJVnW85g/TB0uwXa6czLcBUEoy12FPstUHD3T0lj0z0OTa6AC
         35geENIZBthe5bSi+mKM4Duwt3DqqNeIDXnRywxK42twO9RN/sw/9YTxow3UuKsVLrzY
         KZiA==
X-Gm-Message-State: AAQBX9dsHnqiKTWTNyHPlKZg18w02RDC5yDfOLxFGsfHuGa7SWpqeHSd
        6rO0/b/tCY/rXHoNC63wJr5QYutMd5zHe2oM91O2oA==
X-Google-Smtp-Source: AKy350agsBRG1USF1qYsYNGubTVbRzycwG/Aa/FdFtPpGxXj4pmd4WA8jiiMmMO66I2WyjRV+oR4zhbDbgYoI3GSimo=
X-Received: by 2002:a1f:3d93:0:b0:446:b3d7:5fee with SMTP id
 k141-20020a1f3d93000000b00446b3d75feemr699665vka.0.1682062683846; Fri, 21 Apr
 2023 00:38:03 -0700 (PDT)
MIME-Version: 1.0
References: <20230420094433.42794-1-angelogioacchino.delregno@collabora.com> <20230420094433.42794-2-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230420094433.42794-2-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 21 Apr 2023 15:37:52 +0800
Message-ID: <CAGXv+5GuEQMxYTKrnia1ipYHLt_B2h6By7EejE7MjCypfavnFg@mail.gmail.com>
Subject: Re: [PATCH 1/5] arm64: dts: mediatek: cherry: Add platform thermal configuration
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
> This platform has three auxiliary NTC thermistors, connected to the
> SoC's ADC pins. Enable the auxadc in order to be able to read the
> ADC values, add a generic-adc-thermal LUT for each and finally assign
> them to the SoC's thermal zones.
>
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  .../boot/dts/mediatek/mt8195-cherry.dtsi      | 105 ++++++++++++++++++
>  1 file changed, 105 insertions(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi b/arch/arm64=
/boot/dts/mediatek/mt8195-cherry.dtsi
> index 8ac80a136c37..0820e9ba3829 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195-cherry.dtsi
> @@ -114,6 +114,77 @@ ppvar_sys: regulator-ppvar-sys {
>                 regulator-boot-on;
>         };
>
> +       /* Murata NCP03WF104F05RL */
> +       tboard_thermistor1: thermal-sensor-t1 {
> +               compatible =3D "generic-adc-thermal";
> +               #thermal-sensor-cells =3D <0>;
> +               io-channels =3D <&auxadc 0>;
> +               io-channel-names =3D "sensor-channel";
> +               temperature-lookup-table =3D <    (-10000) 1553
> +                                               (-5000) 1485
> +                                               0 1406
> +                                               5000 1317
> +                                               10000 1219
> +                                               15000 1115
> +                                               20000 1007
> +                                               25000 900
> +                                               30000 796
> +                                               35000 697
> +                                               40000 605
> +                                               45000 523
> +                                               50000 449
> +                                               55000 384
> +                                               60000 327
> +                                               65000 279
> +                                               70000 237
> +                                               75000 202
> +                                               80000 172
> +                                               85000 147
> +                                               90000 125
> +                                               95000 107
> +                                               100000 92
> +                                               105000 79
> +                                               110000 68
> +                                               115000 59
> +                                               120000 51
> +                                               125000 44>;
> +       };
> +
> +       tboard_thermistor2: thermal-sensor-t2 {
> +               compatible =3D "generic-adc-thermal";
> +               #thermal-sensor-cells =3D <0>;
> +               io-channels =3D <&auxadc 1>;
> +               io-channel-names =3D "sensor-channel";
> +               temperature-lookup-table =3D <    (-10000) 1553
> +                                               (-5000) 1485
> +                                               0 1406
> +                                               5000 1317
> +                                               10000 1219
> +                                               15000 1115
> +                                               20000 1007
> +                                               25000 900
> +                                               30000 796
> +                                               35000 697
> +                                               40000 605
> +                                               45000 523
> +                                               50000 449
> +                                               55000 384
> +                                               60000 327
> +                                               65000 279
> +                                               70000 237
> +                                               75000 202
> +                                               80000 172
> +                                               85000 147
> +                                               90000 125
> +                                               95000 107
> +                                               100000 92
> +                                               105000 79
> +                                               110000 68
> +                                               115000 59
> +                                               120000 51
> +                                               125000 44>;
> +       };
> +
>         usb_vbus: regulator-5v0-usb-vbus {
>                 compatible =3D "regulator-fixed";
>                 regulator-name =3D "usb-vbus";
> @@ -260,6 +331,10 @@ &gpu {
>         mali-supply =3D <&mt6315_7_vbuck1>;
>  };
>
> +&auxadc {
> +       status =3D "okay";
> +};
> +
>  &i2c0 {
>         status =3D "okay";
>
> @@ -1098,6 +1173,36 @@ mt6315_7_vbuck1: vbuck1 {
>         };
>  };
>
> +&thermal_zones {
> +       soc_area_ntc {
> +               polling-delay =3D <1000>;
> +               polling-delay-passive =3D <250>;
> +               thermal-sensors =3D <&tboard_thermistor1>;
> +
> +               trips {
> +                       trip-crit {
> +                               temperature =3D <95000>;
> +                               hysteresis =3D <2000>;
> +                               type =3D "critical";
> +                       };
> +               };
> +       };
> +
> +       pmic_area_ntc {
> +               polling-delay =3D <1000>;
> +               polling-delay-passive =3D <0>;
> +               thermal-sensors =3D <&tboard_thermistor2>;
> +
> +               trips {
> +                       trip-crit {
> +                               temperature =3D <95000>;
> +                               hysteresis =3D <2000>;
> +                               type =3D "critical";
> +                       };
> +               };
> +       };

I'm still getting:

thermal_sys: Failed to find 'trips' node
thermal_sys: Failed to find trip points for thermal-sensor-t1 id=3D0
generic-adc-thermal thermal-sensor-t1: Thermal zone sensor register failed:=
 -22
generic-adc-thermal: probe of thermal-sensor-t1 failed with error -22
thermal_sys: Failed to find 'trips' node
thermal_sys: Failed to find trip points for thermal-sensor-t2 id=3D0
generic-adc-thermal thermal-sensor-t2: Thermal zone sensor register failed:=
 -22
generic-adc-thermal: probe of thermal-sensor-t2 failed with error -22
thermal_sys: Failed to find 'trips' node
thermal_sys: Failed to find trip points for thermal-sensor-t3 id=3D0
generic-adc-thermal thermal-sensor-t3: Thermal zone sensor register failed:=
 -22
generic-adc-thermal: probe of thermal-sensor-t3 failed with error -22



> +};
> +
>  &u3phy0 {
>         status =3D "okay";
>  };
> --
> 2.40.0
>
>
