Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A43C77E737
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 19:04:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345051AbjHPREU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 13:04:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345068AbjHPRDy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 13:03:54 -0400
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C7C14273A
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 10:03:50 -0700 (PDT)
Received: by mail-ej1-x629.google.com with SMTP id a640c23a62f3a-986d8332f50so917769366b.0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 10:03:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692205429; x=1692810229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=xA0nxblLEhHPpBIZZtW+HOiojWVRcj+llWDtNwnRsQI=;
        b=krQB+VM3K7SsNBknMDJeZDCGnkEnF65p/NWWUrlcfNPpwjM+NbuU+7Ei7qsy2sWhMD
         /Pw6dKrTOytF6GtMrtn8DIDiB0UNP3QSQ62/uaNFiQPGhLHi7lyuMU871WqOFesquHIE
         p8wI6iDAtwGE/iD3mNkLEKnqEQJ1Z6otLNjcc=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692205429; x=1692810229;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=xA0nxblLEhHPpBIZZtW+HOiojWVRcj+llWDtNwnRsQI=;
        b=d8YJL0E9JFONts0n8BzCAjWFhlGXC9xbFXStd9Ltfn74A22P/nf4sgKOta7KTQI2Mk
         izyHZ4eGSVkxKXL0an/ngXrPBny7U2n2/2KPlJNaZda0Yn006CMKxVCDEDOXEJ7zkk5t
         XIKp9pYUebadekzoMOkla8fZiDWBwbWFG8rIAgqA2AOS37t0pl2ubBfLCrJOhXchpupK
         WwbijiGq/U//bNctLclwDEDGh4CUhatxtmuCfEDbtRTsHElgWDKeXyZPrjCYio00nhoB
         z2/C7Av8/RB5QtBcMQfIucfgKgweZlpEf8bANXin6svvFkD+YKfUj9yV7B90coE6ubVA
         dDbw==
X-Gm-Message-State: AOJu0YzV7ti2cM/+1W8ipPXfandl6+1OttDtYrGtkbevnazeTlGXhxLW
        eV4i7zdF+TBg8ykka2o9Pm0vcaXPUj/2mc19wwype5nz
X-Google-Smtp-Source: AGHT+IEIPClSZMiGgob7k5gsa3QuUp8RptRGMNctQXu4RIrUbA16fE3coUqDEtcrvpDwx1yvAZcVoA==
X-Received: by 2002:a17:906:27c9:b0:966:17b2:5b0b with SMTP id k9-20020a17090627c900b0096617b25b0bmr1893941ejc.49.1692205428806;
        Wed, 16 Aug 2023 10:03:48 -0700 (PDT)
Received: from mail-wm1-f50.google.com (mail-wm1-f50.google.com. [209.85.128.50])
        by smtp.gmail.com with ESMTPSA id y21-20020a17090668d500b0099cf44adf2csm8708923ejr.46.2023.08.16.10.03.48
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 16 Aug 2023 10:03:48 -0700 (PDT)
Received: by mail-wm1-f50.google.com with SMTP id 5b1f17b1804b1-3fe1e44fd2bso4295e9.0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 10:03:48 -0700 (PDT)
X-Received: by 2002:a05:600c:4fc2:b0:3f1:6fe9:4a95 with SMTP id
 o2-20020a05600c4fc200b003f16fe94a95mr6307wmq.4.1692205427880; Wed, 16 Aug
 2023 10:03:47 -0700 (PDT)
MIME-Version: 1.0
References: <20230816104245.2676965-1-hsinyi@chromium.org> <20230816104245.2676965-2-hsinyi@chromium.org>
In-Reply-To: <20230816104245.2676965-2-hsinyi@chromium.org>
From:   Doug Anderson <dianders@chromium.org>
Date:   Wed, 16 Aug 2023 10:03:35 -0700
X-Gmail-Original-Message-ID: <CAD=FV=UH0NFH9LGk663WeWodD9oN7o8M70jy26CYBXd7=o5-VA@mail.gmail.com>
Message-ID: <CAD=FV=UH0NFH9LGk663WeWodD9oN7o8M70jy26CYBXd7=o5-VA@mail.gmail.com>
Subject: Re: [PATCH v2,2/2] arm64: dts: mediatek: mt8183: set bus rx width to
 disable quad mode
To:     Hsin-Yi Wang <hsinyi@chromium.org>
Cc:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        "Miquel Raynal )" <miquel.raynal@bootlin.com>,
        "Richard Weinberger )" <richard@nod.at>,
        "Vignesh Raghavendra )" <vigneshr@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-mtd@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        cros-qcom-dts-watchers@chromium.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

On Wed, Aug 16, 2023 at 3:43=E2=80=AFAM Hsin-Yi Wang <hsinyi@chromium.org> =
wrote:
>
> Some of the SKUs are using gigadevice gd25lq64c flash chip. The chip
> default enables quad mode, which results in the write protect pin set to
> IO pin. In mt8183 kukui, we won't use quad enable for all SKUs, so apply
> the property to disable spi nor's quad mode.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
>  arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi b/arch/arm64/=
boot/dts/mediatek/mt8183-kukui.dtsi
> index 6ce16a265e053..ef472b522f2e7 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8183-kukui.dtsi
> @@ -877,6 +877,7 @@ w25q64dw: flash@0 {
>                 compatible =3D "winbond,w25q64dw", "jedec,spi-nor";
>                 reg =3D <0>;
>                 spi-max-frequency =3D <25000000>;
> +               spi-rx-bus-width =3D <2>;

This feels wrong to me. Is your controller actually capable of "dual
SPI"? If so, why wasn't the rx-bus-width specified before? ...and if
you're truly capable of "dual SPI" then why aren't you also setting
the tx-bus-width?

My best guess (I can look up the schematic if needed) is that you're
actually _single_ lane, not dual lane SPI. Thus, a more accurate
description would probably be:

spi-rx-bus-width =3D <1>;
spi-tx-bus-width =3D <1>;

...but... I think that the default of rx/tx bus width isn't specified
is "1". Thus I think you should drop this patch.

-Doug
