Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6637D77DF99
	for <lists+devicetree@lfdr.de>; Wed, 16 Aug 2023 12:50:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234727AbjHPKtv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Aug 2023 06:49:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243520AbjHPKtV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Aug 2023 06:49:21 -0400
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com [IPv6:2607:f8b0:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D2D662D4D
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 03:49:01 -0700 (PDT)
Received: by mail-ot1-x334.google.com with SMTP id 46e09a7af769-6bc886d1504so5524452a34.0
        for <devicetree@vger.kernel.org>; Wed, 16 Aug 2023 03:49:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1692182866; x=1692787666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=IqfltUzO9/7XC4DYmyYNWNOkXYukgueL2I3mGg1oQAA=;
        b=Fq65ng7kO+56O688EyACOxLCzvqd//sLdtPogj3dPsTM8xaGxawYIleaF4EvMy/j4X
         dgjU3gcW3l+SJpPFMN4HY0cM5ju/GLbX1EsXHNcfhQZs7FuAVRK3Mkr+Wlrztg+2IJff
         3n22RO5sbjmW2j0UJXPerWGEDMHTaZLuM5ZeU=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692182866; x=1692787666;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=IqfltUzO9/7XC4DYmyYNWNOkXYukgueL2I3mGg1oQAA=;
        b=gMA4dYRhQ68dlaK332lAocg7qPTXMdMmVwY7oVFTxDIdimOUPaIIN3p7O6BxTnJt1S
         F3ejduNBNdZ6+NRWThyfsaJwWDmb5OYUOgUGtv8ThgiLOuC/axbXCnlHcHXgXAkYDHMH
         LqK6fFabR1kXS46z46u95LieqIAu3ToUAPZqe+aWAnz3Kk0vuA4zE8QpCpVO3YirhGXW
         jpymlEIxggn819b7frD57s5HgvGdY24dps3Qj2lypfZK11fWp5jvXzqtyOhv+BtJb0Ye
         GB+ANL1wc67PeWvMte1l0424XOvEJ1H88uXGwucxfPFeDKTqYH4dSOWRsOMSsz8iODS7
         5kgw==
X-Gm-Message-State: AOJu0YyNkegDGEShuXaUOgMpKbWXLTR22iEVmgoB2CzTKZBWLb8w3man
        CC7Q6iuD3OcdwpZnzS3e0M11qAAc1aQILOIEWnB4sSFQEQ/7fHCgEJs=
X-Google-Smtp-Source: AGHT+IFP9WgOa+Uiy6lzdS/I4FjriYORF5bZW6c+fXS5Unla5QE6KDKixuRVgSimwfA4N1KJgy/utNzBq8HRGuK/BQA=
X-Received: by 2002:a05:6830:154a:b0:6b9:350e:4051 with SMTP id
 l10-20020a056830154a00b006b9350e4051mr1202859otp.4.1692182866233; Wed, 16 Aug
 2023 03:47:46 -0700 (PDT)
MIME-Version: 1.0
References: <20230816104245.2676965-1-hsinyi@chromium.org> <20230816104245.2676965-2-hsinyi@chromium.org>
In-Reply-To: <20230816104245.2676965-2-hsinyi@chromium.org>
From:   Hsin-Yi Wang <hsinyi@chromium.org>
Date:   Wed, 16 Aug 2023 18:47:20 +0800
Message-ID: <CAJMQK-j2LNvPOC4G=jwdZ3+F+ynpicnVA-ZZ1B6cdDmOnsCxhA@mail.gmail.com>
Subject: Re: [PATCH v2,2/2] arm64: dts: mediatek: mt8183: set bus rx width to
 disable quad mode
To:     Tudor Ambarus <tudor.ambarus@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Pratyush Yadav <pratyush@kernel.org>,
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

On Wed, Aug 16, 2023 at 6:42=E2=80=AFPM Hsin-Yi Wang <hsinyi@chromium.org> =
wrote:
>
> Some of the SKUs are using gigadevice gd25lq64c flash chip. The chip
> default enables quad mode, which results in the write protect pin set to
> IO pin. In mt8183 kukui, we won't use quad enable for all SKUs, so apply
> the property to disable spi nor's quad mode.
>
> Signed-off-by: Hsin-Yi Wang <hsinyi@chromium.org>
> ---
change log:
v1->v2: use existing property.
v1 link: https://lore.kernel.org/lkml/20230815154412.713846-1-hsinyi@chromi=
um.org/
---
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
>         };
>  };
>
> --
> 2.41.0.694.ge786442a9b-goog
>
