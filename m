Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31C6574AA2A
	for <lists+devicetree@lfdr.de>; Fri,  7 Jul 2023 07:06:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231887AbjGGFGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 01:06:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229829AbjGGFG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 01:06:29 -0400
Received: from mail-ua1-x92f.google.com (mail-ua1-x92f.google.com [IPv6:2607:f8b0:4864:20::92f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E75C41723
        for <devicetree@vger.kernel.org>; Thu,  6 Jul 2023 22:06:27 -0700 (PDT)
Received: by mail-ua1-x92f.google.com with SMTP id a1e0cc1a2514c-791b8500a21so460202241.2
        for <devicetree@vger.kernel.org>; Thu, 06 Jul 2023 22:06:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google; t=1688706387; x=1691298387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=YixM/WLSGJf1qwL6PB1mZuYZCMWeTmuQHQ6qlOcsvIc=;
        b=LT9a2YUGDO5kQmEO3MSNtwGYuwhXfiKIwP/C/ux/OEYzIDJNALPBLLtTqOmjdc33MT
         dLsn/PIfjf/6GoE6FXyfoI/BrOPko1KUPWIVoMfKiVtz3aL8xQKxd5mzLNekZyPfe+GK
         MSLdaVW8wM483IjH/aG7rudumN8axjQRPPUD4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688706387; x=1691298387;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=YixM/WLSGJf1qwL6PB1mZuYZCMWeTmuQHQ6qlOcsvIc=;
        b=lmLUJHpwQIeEr7U7GJAjlGnOmjdXS8VDpYCtUpA3hGHoIzgmUyKXUGQVC4g9fnoV1S
         9GaV4Lhq/6APVBmSSw1ChmrEWtShIILe8gIIr/p480q7FfM01NVXphW9QbM13tCH/Vwe
         NTXGF8h/Wd/lcXe9MI23JmkLyv2pLdS4MRSV6SNjJEpY6EvRYBY8o92HV4nTbyRT+H1P
         lxwPgu3o79/8I8YvdGNhP0TuvvW7mQiahtycDQPV8IiGgI1a643KS2fqt10cB/dQWfu2
         Mo3nKh40L/YAKXs2l3Y+HuUNPstbRxZ4qu+R0FyAYaf19XVyamj5oWvsvOMi4uY/0xlH
         YjFw==
X-Gm-Message-State: ABy/qLbkUZcvirgBCwNaU9XTV/d9CONXGMBwzYtdw/6QAJftQAoUnTjV
        hi3eLZrvOJjVBcHSC12deOXoghUsmYHvwzQx6tQxyw==
X-Google-Smtp-Source: APBJJlEWfZFngfeJS3xkCxrgzBn1WgBbvbfaNP+KgVrfXaPTMaaIJkETKa31fIULWcXnv/IoqwoMwtxKZAfSG/yld2k=
X-Received: by 2002:a67:b646:0:b0:443:5b1f:12e4 with SMTP id
 e6-20020a67b646000000b004435b1f12e4mr1567954vsm.9.1688706387057; Thu, 06 Jul
 2023 22:06:27 -0700 (PDT)
MIME-Version: 1.0
References: <20230706095841.109315-1-angelogioacchino.delregno@collabora.com>
In-Reply-To: <20230706095841.109315-1-angelogioacchino.delregno@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 7 Jul 2023 13:06:16 +0800
Message-ID: <CAGXv+5HsScBVMOY4JcSNS_ZZdpLnNAYWUKohwmfQr6gJJv26CA@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: mediatek: mt8195: Fix PM suspend/resume with
 venc clocks
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>
Cc:     matthias.bgg@gmail.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org,
        yong.wu@mediatek.com, tinghan.shen@mediatek.com,
        weiyi.lu@mediatek.com, devicetree@vger.kernel.org,
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

On Thu, Jul 6, 2023 at 5:59=E2=80=AFPM AngeloGioacchino Del Regno
<angelogioacchino.delregno@collabora.com> wrote:
>
> Before suspending the LARBs we're making sure that any operation is
> done: this never happens because we are unexpectedly unclocking the
> LARB20 before executing the suspend handler for the MediaTek Smart
> Multimedia Interface (SMI) and the cause of this is incorrect clocks
> on this LARB.
>
> Fix this issue by changing the Local Arbiter 20 (used by the video
> encoder secondary core) apb clock to CLK_VENC_CORE1_VENC;
> furthermore, in order to make sure that both the PM resume and video
> encoder operation is stable, add the CLK_VENC(_CORE1)_LARB clock to
> the VENC (main core) and VENC_CORE1 power domains, as this IP cannot
> communicate with the rest of the system (the AP) without local
> arbiter clocks being operational.

Somehow I feel like this is papering over some dependency issue in Linux.

> Fixes: 3b5838d1d82e ("arm64: dts: mt8195: Add iommu and smi nodes")
> Fixes: 2b515194bf0c ("arm64: dts: mt8195: Add power domains controller")
> Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@coll=
abora.com>
> ---
>  arch/arm64/boot/dts/mediatek/mt8195.dtsi | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
>
> diff --git a/arch/arm64/boot/dts/mediatek/mt8195.dtsi b/arch/arm64/boot/d=
ts/mediatek/mt8195.dtsi
> index 95bd058d6083..5c670fce1e47 100644
> --- a/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> +++ b/arch/arm64/boot/dts/mediatek/mt8195.dtsi
> @@ -626,6 +626,8 @@ power-domain@MT8195_POWER_DOMAIN_VDEC1 {
>
>                                         power-domain@MT8195_POWER_DOMAIN_=
VENC_CORE1 {
>                                                 reg =3D <MT8195_POWER_DOM=
AIN_VENC_CORE1>;
> +                                               clocks =3D <&vencsys_core=
1 CLK_VENC_CORE1_LARB>;
> +                                               clock-names =3D "venc1-la=
rb";
>                                                 mediatek,infracfg =3D <&i=
nfracfg_ao>;
>                                                 #power-domain-cells =3D <=
0>;
>                                         };
> @@ -688,6 +690,8 @@ power-domain@MT8195_POWER_DOMAIN_VDEC2 {
>
>                                                 power-domain@MT8195_POWER=
_DOMAIN_VENC {
>                                                         reg =3D <MT8195_P=
OWER_DOMAIN_VENC>;
> +                                                       clocks =3D <&venc=
sys CLK_VENC_LARB>;
> +                                                       clock-names =3D "=
venc0-larb";
>                                                         mediatek,infracfg=
 =3D <&infracfg_ao>;
>                                                         #power-domain-cel=
ls =3D <0>;
>                                                 };
> @@ -3094,7 +3098,7 @@ larb20: larb@1b010000 {
>                         reg =3D <0 0x1b010000 0 0x1000>;
>                         mediatek,larb-id =3D <20>;
>                         mediatek,smi =3D <&smi_common_vpp>;
> -                       clocks =3D <&vencsys_core1 CLK_VENC_CORE1_LARB>,
> +                       clocks =3D <&vencsys_core1 CLK_VENC_CORE1_VENC>,
>                                  <&vencsys_core1 CLK_VENC_CORE1_GALS>,
>                                  <&vppsys0 CLK_VPP0_GALS_VDO0_VDO1_VENCSY=
S_CORE1>;
>                         clock-names =3D "apb", "smi", "gals";
> --
> 2.40.1
>
>
