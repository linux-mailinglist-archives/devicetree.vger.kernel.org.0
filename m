Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 59C3B318EDB
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 16:39:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230360AbhBKPgm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 10:36:42 -0500
Received: from mail-40140.protonmail.ch ([185.70.40.140]:12966 "EHLO
        mail-40140.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230031AbhBKPed (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 10:34:33 -0500
Date:   Thu, 11 Feb 2021 15:25:23 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail; t=1613057125;
        bh=9OryoUxmgqWAontORTfCdXDAEicngqdQmtwMbqTQWrI=;
        h=Date:To:From:Cc:Reply-To:Subject:From;
        b=AYAscctucsVgUolbpGWxfmiD5rfuNIZLvGRPlTBgQ1oqpVVC1lfn7x3tDKhAnkqlf
         70k7p74TJBOCG6ESnGaGLX1F5e9jQ0kUUg81tiOJOALLM6p7pOqVYJtLsBsqeCgEV1
         lYVjRYRKl3MC8sw65/ab1CsBibdpQAN80hHVWzQQ=
To:     "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>
From:   Yassine Oudjana <y.oudjana@protonmail.com>
Cc:     "robh+dt@kernel.org" <robh+dt@kernel.org>,
        "mripard@kernel.org" <mripard@kernel.org>,
        "wens@csie.org" <wens@csie.org>,
        "jernej.skrabec@siol.net" <jernej.skrabec@siol.net>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Reply-To: Yassine Oudjana <y.oudjana@protonmail.com>
Subject: [PATCH v2] arm: dts: sun5i: Add GPU node
Message-ID: <nGyI_fodh-zDD7vDOH3sqaiGbOQprYmljxEKSlTdu9Ju5OcpUcLBIHndYSnzQKT0n6Yh4H4VX8ss-XPyuBMU6n8nX5Oag_4LrqrryrZaqx8=@protonmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.2 required=10.0 tests=ALL_TRUSTED,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM shortcircuit=no
        autolearn=disabled version=3.4.4
X-Spam-Checker-Version: SpamAssassin 3.4.4 (2020-01-24) on
        mailout.protonmail.ch
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

sun5i has the same Mali 400 GPU as sun4i with the same interrupts, clocks
and resets. Add node for it in dts.

Signed-off-by: Yassine Oudjana <y.oudjana@protonmail.com>
---
 arch/arm/boot/dts/sun5i.dtsi | 21 +++++++++++++++++++++
 1 file changed, 21 insertions(+)

diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index c2b4fbf552a3..e21b4fe64cbe 100644
--- a/arch/arm/boot/dts/sun5i.dtsi
+++ b/arch/arm/boot/dts/sun5i.dtsi
@@ -726,6 +726,27 @@ i2c2: i2c@1c2b400 {
 =09=09=09#size-cells =3D <0>;
 =09=09};

+=09=09mali: gpu@1c40000 {
+=09=09=09compatible =3D "allwinner,sun4i-a10-mali", "arm,mali-400";
+=09=09=09reg =3D <0x01c40000 0x10000>;
+=09=09=09interrupts =3D <69>,
+=09=09=09=09     <70>,
+=09=09=09=09     <71>,
+=09=09=09=09     <72>,
+=09=09=09=09     <73>;
+=09=09=09interrupt-names =3D "gp",
+=09=09=09=09=09  "gpmmu",
+=09=09=09=09=09  "pp0",
+=09=09=09=09=09  "ppmmu0",
+=09=09=09=09=09  "pmu";
+=09=09=09clocks =3D <&ccu CLK_AHB_GPU>, <&ccu CLK_GPU>;
+=09=09=09clock-names =3D "bus", "core";
+=09=09=09resets =3D <&ccu RST_GPU>;
+
+=09=09=09assigned-clocks =3D <&ccu CLK_GPU>;
+=09=09=09assigned-clock-rates =3D <384000000>;
+=09=09};
+
 =09=09timer@1c60000 {
 =09=09=09compatible =3D "allwinner,sun5i-a13-hstimer";
 =09=09=09reg =3D <0x01c60000 0x1000>;
--
2.30.0

