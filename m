Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1751D318E0A
	for <lists+devicetree@lfdr.de>; Thu, 11 Feb 2021 16:23:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229991AbhBKPTt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 Feb 2021 10:19:49 -0500
Received: from mail-41104.protonmail.ch ([185.70.41.104]:23258 "EHLO
        mail-41104.protonmail.ch" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230109AbhBKPRn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 Feb 2021 10:17:43 -0500
Received: from mail-03.mail-europe.com (mail-03.mail-europe.com [91.134.188.129])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits))
        (No client certificate requested)
        by mail-41104.protonmail.ch (Postfix) with ESMTPS id 72F6D201BADD
        for <devicetree@vger.kernel.org>; Thu, 11 Feb 2021 15:05:12 +0000 (UTC)
Authentication-Results: mail-41104.protonmail.ch;
        dkim=pass (1024-bit key) header.d=protonmail.com header.i=@protonmail.com header.b="fqEfGOTq"
Date:   Thu, 11 Feb 2021 15:01:34 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail; t=1613055699;
        bh=V6GFdB/+L/DZHe/sLaUq7G6+q6BNgR4hjKmXmpQtQlQ=;
        h=Date:To:From:Cc:Reply-To:Subject:From;
        b=fqEfGOTqtGlLdgzNDk0tSUF/ZvbwzfUbqoPsR1f7AGTUodJTf5Fvz0iHxfn2v9Dki
         5IcnAYHxntRZzP/LB9yEenADY/KIT4e026Yfu1JB2U0drgM/1vpkE6KywhVfKeeVVF
         GlZLVtwyDvdILD+yj+grEMg/qZWSHXz8BSe6Mfdo=
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
Subject: [PATCH] arm: dts: sun5i: Add GPU node
Message-ID: <3SosG1rcYyn7x4mZWYK0uLKhbdlJxf3irBb7V2qGMqgH0Adv_RvNjn5lsEsx1lii5uKgurcC-lhfQ8r_AprSs9oSl02eYxZvQBqPy0qt3pw=@protonmail.com>
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
 arch/arm/boot/dts/sun5i.dtsi | 42 ++++++++++++++++++++++++++++++++++++
 1 file changed, 42 insertions(+)

diff --git a/arch/arm/boot/dts/sun5i.dtsi b/arch/arm/boot/dts/sun5i.dtsi
index c2b4fbf552a3..81203f19b6ce 100644
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
@@ -733,6 +754,27 @@ timer@1c60000 {
 =09=09=09clocks =3D <&ccu CLK_AHB_HSTIMER>;
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
 =09=09fe0: display-frontend@1e00000 {
 =09=09=09compatible =3D "allwinner,sun5i-a13-display-frontend";
 =09=09=09reg =3D <0x01e00000 0x20000>;
--
2.30.0

