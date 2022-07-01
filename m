Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F2D656339E
	for <lists+devicetree@lfdr.de>; Fri,  1 Jul 2022 14:45:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232260AbiGAMpH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Jul 2022 08:45:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43118 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236227AbiGAMpH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Jul 2022 08:45:07 -0400
Received: from mail-yw1-x112a.google.com (mail-yw1-x112a.google.com [IPv6:2607:f8b0:4864:20::112a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF95833A3F
        for <devicetree@vger.kernel.org>; Fri,  1 Jul 2022 05:45:05 -0700 (PDT)
Received: by mail-yw1-x112a.google.com with SMTP id 00721157ae682-31bf327d4b5so22116777b3.13
        for <devicetree@vger.kernel.org>; Fri, 01 Jul 2022 05:45:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=WeGYBPwVDixR2qJouCEO0ByS8rMRdZZ7Fc5WEDHOkR8=;
        b=fwJ/7oQxr9u0A+gZ+PAk5PGvMB3ZTFUSYKEOHOxcSmW6hg2LlJhh1bYkZAkskHhjud
         nBiWx6xjWRpRv5zrvSfNVCGJw2lM/I2mR5YZ7CWbfEBcKoJewqKDF1qGILgw1+GImUsx
         oTZz5efquRuj2iDioBDF17v7f79Dsep40ga0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=WeGYBPwVDixR2qJouCEO0ByS8rMRdZZ7Fc5WEDHOkR8=;
        b=cNFmuShxHYJtTTDAQHMV70fmYRJQj+zbSBJiryRLCbuJmmVcJZRL5pRdCORowqdkkg
         Lz8+w9lZNBgQfoRB5PIoZYn75I6FggKDvioQPgvn48Uu1bYHy3C2XQF2PnP3JIq2Drof
         nz/a2GW1vyu9xlpr8PQBzYBiwtqApgCl+kzkDoeXFEpymUWSJegus2F4m1fsEg06gACp
         JM9JWQSEZwGLO+4ltFisnH4Tu0K0596Tabb0+Aehei8FsWtHUEGjCan9aq6EgKAZc2gf
         XEDbJuE79P3KhKdMUJGevFlleabPqBqO1Q+s1a355caSOBMU1qQ/hg/5/PUlNEItBvlX
         tUFQ==
X-Gm-Message-State: AJIora968x4UpnP/UYEtuTKtuuisbTEdu5JdM2l5j95gWHCsFBWJ3GzL
        9ZxYRpCID/kzeVfodo84945Tqvcs33ol7R03Ziqp0A==
X-Google-Smtp-Source: AGRyM1sTMCFR93Cs/lcO5WPfXN00h1mu0K5SZtXz0zhdzHdEqwF3pf2Anm9v9f5YHNas1DSzoSqgOZLlmMh4l0Obodw=
X-Received: by 2002:a05:690c:316:b0:314:2147:2b90 with SMTP id
 bg22-20020a05690c031600b0031421472b90mr15915094ywb.318.1656679504880; Fri, 01
 Jul 2022 05:45:04 -0700 (PDT)
MIME-Version: 1.0
References: <20220629155956.1138955-1-nfraprado@collabora.com>
In-Reply-To: <20220629155956.1138955-1-nfraprado@collabora.com>
From:   Chen-Yu Tsai <wenst@chromium.org>
Date:   Fri, 1 Jul 2022 20:44:53 +0800
Message-ID: <CAGXv+5Epmo1=DZvoFkqj57hiO8nim=cuP1v3i9b2diZwqBe3Mw@mail.gmail.com>
Subject: Re: [PATCH v4 00/19] Introduce support for MediaTek MT8192 Google Chromebooks
To:     =?UTF-8?B?TsOtY29sYXMgRi4gUi4gQS4gUHJhZG8=?= 
        <nfraprado@collabora.com>
Cc:     Matthias Brugger <matthias.bgg@gmail.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>, kernel@collabora.com,
        Allen-KH Cheng <allen-kh.cheng@mediatek.com>,
        Fabien Parent <fparent@baylibre.com>,
        Hsin-Yi Wang <hsinyi@chromium.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Luca Weiss <luca@z3ntu.xyz>, Maxim Kutnij <gtk3@inbox.ru>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Shih <sam.shih@mediatek.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-mediatek@lists.infradead.org
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.5 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, Jun 30, 2022 at 12:00 AM N=C3=ADcolas F. R. A. Prado
<nfraprado@collabora.com> wrote:
>
>
> This series introduces Devicetrees for the MT8192-based Asurada platform
> as well as Asurada Spherion and Asurada Hayato boards.
>
> Support for the boards is added to the extent that is currently enabled
> in the mt8192.dtsi, and using only properties already merged in the
> dt-bindings, as to not add any dependencies to this series.
>
> This series was peer-reviewed internally before submission.
>
> Series tested on next-20220629.

Just FYI I also got the internal display to work after some fixes to
the dtsi [1] and copying the stuff over from the ChromeOS kernel tree.

It might be harder to enable the external display, given that we don't
have a good way of describing the weird design of using the DP bridge
also as a mux. See [2] for ongoing discussion.

ChenYu

[1] https://lore.kernel.org/linux-mediatek/CAGXv+5F_Gi_=3DvV1NSk0AGRVYCa3Q8=
+gBaE+nv3OJ1AKe2voOwg@mail.gmail.com/
[2] https://lore.kernel.org/dri-devel/20220622173605.1168416-1-pmalani@chro=
mium.org/

> v3: https://lore.kernel.org/all/20220512205602.158273-1-nfraprado@collabo=
ra.com/
> v2: https://lore.kernel.org/all/20220505194550.3094656-1-nfraprado@collab=
ora.com/
> v1: https://lore.kernel.org/all/20220316151327.564214-1-nfraprado@collabo=
ra.com/
>
> Changes in v4:
> - Added patches 17-19 enabling MMC, SCP and SPI NOR flash
> - Switched mediatek,drive-strength-adv for drive-strength-microamp
> - Switched mediatek,pull-up-adv for bias-pull-up
> - Updated Vgpu minimum voltage to appropriate value
>
> Changes in v3:
> - Renamed regulator nodes to be generic
> - Fixed keyboard layout for Hayato
>
> Changes in v2:
> - Added patches 1-2 for Mediatek board dt-bindings
> - Added patches 13-16 enabling hardware for Asurada that has since been
>   enabled on mt8192.dtsi
>
> N=C3=ADcolas F. R. A. Prado (19):
>   dt-bindings: arm64: dts: mediatek: Add mt8192-asurada-spherion
>   dt-bindings: arm64: dts: mediatek: Add mt8192-asurada-hayato
>   arm64: dts: mediatek: Introduce MT8192-based Asurada board family
>   arm64: dts: mediatek: asurada: Document GPIO names
>   arm64: dts: mediatek: asurada: Add system-wide power supplies
>   arm64: dts: mediatek: asurada: Enable and configure I2C and SPI busses
>   arm64: dts: mediatek: asurada: Add ChromeOS EC
>   arm64: dts: mediatek: asurada: Add keyboard mapping for the top row
>   arm64: dts: mediatek: asurada: Add Cr50 TPM
>   arm64: dts: mediatek: asurada: Add Elan eKTH3000 I2C trackpad
>   arm64: dts: mediatek: asurada: Add I2C touchscreen
>   arm64: dts: mediatek: spherion: Add keyboard backlight
>   arm64: dts: mediatek: asurada: Enable XHCI
>   arm64: dts: mediatek: asurada: Enable PCIe and add WiFi
>   arm64: dts: mediatek: asurada: Add MT6359 PMIC
>   arm64: dts: mediatek: asurada: Add SPMI regulators
>   arm64: dts: mediatek: asurada: Enable MMC
>   arm64: dts: mediatek: asurada: Enable SCP
>   arm64: dts: mediatek: asurada: Add SPI NOR flash memory
>
>  .../devicetree/bindings/arm/mediatek.yaml     |  13 +
>  arch/arm64/boot/dts/mediatek/Makefile         |   2 +
>  .../dts/mediatek/mt8192-asurada-hayato-r1.dts |  47 +
>  .../mediatek/mt8192-asurada-spherion-r0.dts   |  62 ++
>  .../boot/dts/mediatek/mt8192-asurada.dtsi     | 959 ++++++++++++++++++
>  5 files changed, 1083 insertions(+)
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada-hayato-r1=
.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada-spherion-=
r0.dts
>  create mode 100644 arch/arm64/boot/dts/mediatek/mt8192-asurada.dtsi
>
> --
> 2.36.1
>
