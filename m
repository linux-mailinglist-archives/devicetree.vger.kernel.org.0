Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F009227C302
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 13:01:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725306AbgI2LBp (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 07:01:45 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60636 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725283AbgI2LBp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 07:01:45 -0400
Received: from mail-ej1-x643.google.com (mail-ej1-x643.google.com [IPv6:2a00:1450:4864:20::643])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4E558C0613D0
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 04:01:45 -0700 (PDT)
Received: by mail-ej1-x643.google.com with SMTP id lo4so14361243ejb.8
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 04:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/NGkCRdAxVvDNNKCou+ksytIQxzsUvDmkHUnGehaqGY=;
        b=AV85gLZtjAIuu/6w+t7jc32Sfs3B+ULapNH/s4ZtmpsFjLoDyoBl11/nycHUFYDQDv
         JpIcANSDgP0g65eI8Z+9laUgsJs+X9FgQBinPKY8oxu5D0EkGIc978vi0qBrsckKQTZg
         4xwj/8oBJkE1nSZRu64Sll1OhBAQDGufyEn10hJ40i9/SZQiV2g+XhWqxQv6Lq5Gz/j5
         B4zBwad9JhWzgJcYBWFil50TUJ2YrLrbH/z02+I/XU1MpWNtCxRS23Qzri/ItujYX6tM
         okXVAtTSuYNCJrj6blrJNlIor3lytu4smU7kXiZUOAwwWn1/dvhimsijZMQ8G7U/xYBX
         1u2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/NGkCRdAxVvDNNKCou+ksytIQxzsUvDmkHUnGehaqGY=;
        b=Uo6TdMoH+wqyN441TjVQ7J4v668seAeP/BPeKyjiDaTq1jYJ4JFHglQI8Src5xgN5q
         OE0pb1bZ/O5Vy+PuhaMCf0d4RpTGwJ2fOYKC/oZuGAqyCOGVFI065o6SU0hhJh7fGaXl
         6GIXD5CBIeWRe6p8WperWf4ERqPfvoglNlRmY/ZoJF423OGAJs8LBDtItyudC5DwB6bv
         029Cro7SksaO1s0RRrBlFkYCGTPLJbsOVtAOu6nFI+ra3vuJnvL2DvjmEyZ2ddqyMBIU
         C5xskJtDx+PvJ7nXD9qk6OnH8aXQ6n67ctxYHxKo4JOPGISpWcgtuXRb68gYpTXP5iPD
         kY1Q==
X-Gm-Message-State: AOAM531ksbNyYIEmMVdOzQJkXRk611KVezA1VvS7GwWPhIc3XWOxTcSj
        6t9IU2PnDE5qoYtBk/B4NSobv/2KnjMV/pb4k44mSiL9JEQ=
X-Google-Smtp-Source: ABdhPJyagmdqO9i110OKKt9CIldJETZCbP5/9axeKPpcP+jcrKtuoUFXyLmal9+le7InbAChDSVGHiUJtfrTQfhBY60=
X-Received: by 2002:a17:906:4b41:: with SMTP id j1mr3148076ejv.1.1601377303694;
 Tue, 29 Sep 2020 04:01:43 -0700 (PDT)
MIME-Version: 1.0
References: <1a69c3fa0291f991ffcf113ea222c713ba4d4ff0.1598264917.git.michal.simek@xilinx.com>
In-Reply-To: <1a69c3fa0291f991ffcf113ea222c713ba4d4ff0.1598264917.git.michal.simek@xilinx.com>
From:   Michal Simek <monstr@monstr.eu>
Date:   Tue, 29 Sep 2020 13:01:32 +0200
Message-ID: <CAHTX3dK__pxO8HBDgKkokGD823Y7jDCF_cncbE74NsF1yYQwfw@mail.gmail.com>
Subject: Re: [PATCH] arm64: dts: zynqmp: Fix leds subnode name for
 zcu100/ultra96 v1
To:     U-Boot <u-boot@lists.denx.de>, git <git@xilinx.com>
Cc:     Anurag Kumar Vulisha <anurag.kumar.vulisha@xilinx.com>,
        Rajan Vaja <rajan.vaja@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        DTML <devicetree@vger.kernel.org>,
        linux-arm <linux-arm-kernel@lists.infradead.org>,
        LKML <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

po 24. 8. 2020 v 12:28 odes=C3=ADlatel Michal Simek <michal.simek@xilinx.co=
m> napsal:
>
> Fix the leds subnode names to match (^led-[0-9a-f]$|led).
>
> Similar change has been also done by commit 08dc0e5dd9aa ("arm64: dts:
> meson: fix leds subnodes name").
>
> The patch is fixing this warning:
> avnet-ultra96-rev1.dt.yaml: leds: 'ds2', 'ds3', 'ds4', 'ds5' do not match
> any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'
>
> Signed-off-by: Michal Simek <michal.simek@xilinx.com>
> ---
>
> vbus-det led is not fixed because it is not LED. It should be likely
> handled as gpio hog.
> ---
>  arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm=
64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
> index d60110ad8367..2352dc553ba7 100644
> --- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
> +++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
> @@ -56,27 +56,27 @@ sw4 {
>
>         leds {
>                 compatible =3D "gpio-leds";
> -               ds2 {
> +               led-ds2 {
>                         label =3D "ds2";
>                         gpios =3D <&gpio 20 GPIO_ACTIVE_HIGH>;
>                         linux,default-trigger =3D "heartbeat";
>                 };
>
> -               ds3 {
> +               led-ds3 {
>                         label =3D "ds3";
>                         gpios =3D <&gpio 19 GPIO_ACTIVE_HIGH>;
>                         linux,default-trigger =3D "phy0tx"; /* WLAN tx */
>                         default-state =3D "off";
>                 };
>
> -               ds4 {
> +               led-ds4 {
>                         label =3D "ds4";
>                         gpios =3D <&gpio 18 GPIO_ACTIVE_HIGH>;
>                         linux,default-trigger =3D "phy0rx"; /* WLAN rx */
>                         default-state =3D "off";
>                 };
>
> -               ds5 {
> +               led-ds5 {
>                         label =3D "ds5";
>                         gpios =3D <&gpio 17 GPIO_ACTIVE_HIGH>;
>                         linux,default-trigger =3D "bluetooth-power";
> --
> 2.28.0
>

Applied.
M


--=20
Michal Simek, Ing. (M.Eng), OpenPGP -> KeyID: FE3D1F91
w: www.monstr.eu p: +42-0-721842854
Maintainer of Linux kernel - Xilinx Microblaze
Maintainer of Linux kernel - Xilinx Zynq ARM and ZynqMP ARM64 SoCs
U-Boot custodian - Xilinx Microblaze/Zynq/ZynqMP/Versal SoCs
