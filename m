Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 004C633A0D2
	for <lists+devicetree@lfdr.de>; Sat, 13 Mar 2021 20:58:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234269AbhCMT6S (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 Mar 2021 14:58:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234182AbhCMT6E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 Mar 2021 14:58:04 -0500
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B025BC061574
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 11:58:03 -0800 (PST)
Received: by mail-lf1-x12d.google.com with SMTP id r3so42637496lfc.13
        for <devicetree@vger.kernel.org>; Sat, 13 Mar 2021 11:58:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:from:date:message-id:subject:to:cc
         :content-transfer-encoding;
        bh=qYoDx+ru3fDvoVPH1za/wKyI1qmkH/f+JEOyt7RgYW0=;
        b=eu66st7Lt9Qk64DQ85eTpg9kTF73OUSVvX0Hm46RIa5ydO9Ve7NbAmzY2VRDCa8fu6
         dZdbL6WwaoBNx1he0Q2ni2yv61RdnBPasuuM35mXWQNKROYPsO35FFeObSAnFHg7C01U
         ByBBA107RBwk7SVghWMswIwomJyZ3qFNGu4Gmxtme9f18uCfa3PD+7t7+0y3OuxfT+Sg
         ToejgR8a/15UHYvMyvE3VQgY+E5GVmUsXp3nwgEHXI1v7g+mNVp83kGFrhf4pdqiAPhM
         NS3HFAPsXn/KtIGWGlKFhwrPX13pgG9tBqiy9WSOnHuo9FarDrerVjik6MzOt2OUEjl4
         Paaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:from:date:message-id:subject
         :to:cc:content-transfer-encoding;
        bh=qYoDx+ru3fDvoVPH1za/wKyI1qmkH/f+JEOyt7RgYW0=;
        b=SfpkCSiOWv9oT6B+4iEquLkvQ39Tws6N5KyH1HFmMLM14qvSLLgySXenO6FgXA6qO5
         pcWhMERqzhHWbIuJ9puogCtZi+f0FmBOH2ZFNHOUPify9H19I3ZkFHgdeeTwzl9yUBK6
         AJxaQQE6MdjVeyK34yBwcB6o03dYQdJ0N4if4i0ofuiUSvwDyTl500Nc7YKcXjmX4SsC
         GlQf8qc+t03IG+EPdHYlJ4AicbeNocJcktGOgGrNMvcj89AcoInNwZyny7M9jqEllv9J
         Ic1XXh3e3lQvsOecHW8lYIlHXzcZjnoTAw9uBz8b7vjybC38fzuYbQcIUd8Yxw+q4xeA
         2ujg==
X-Gm-Message-State: AOAM531TLWqkbkEaUmK2QQFlhCtX9lnkgbojTf2MglISehxeQDJ6t7nU
        K33CaJADCSmjhUH+cDb83aq3NHv276zyfu+CGfI=
X-Google-Smtp-Source: ABdhPJxoQQCQwaB78elW30Q9VxUV6jNnFqovRNg5zmggbAUCwyZwDLxZAdmGPP5OPqBJR6uYLrLIGNgjGqKZ6+MFjp8=
X-Received: by 2002:a05:6512:2356:: with SMTP id p22mr3201110lfu.3.1615665482286;
 Sat, 13 Mar 2021 11:58:02 -0800 (PST)
MIME-Version: 1.0
Sender: jprofesorek@gmail.com
Received: by 2002:ac2:520e:0:0:0:0:0 with HTTP; Sat, 13 Mar 2021 11:58:01
 -0800 (PST)
From:   Jan K <jan.z.konczak@gmail.com>
Date:   Sat, 13 Mar 2021 20:58:01 +0100
X-Google-Sender-Auth: Sc36z28bOswP_qpQhi35C8Q7-TU
Message-ID: <CAH89FsrxE-knFkExpYHn4XkLGxLvFX5DHOTYOkUq_UVp6brOUQ@mail.gmail.com>
Subject: [PATCH] ARM: dts: sun7i: bananapro: amending axp209 definition
To:     linux-sunxi@googlegroups.com, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Hans de Goede <hdegoede@redhat.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Current "Lemaker Banana Pro" sun7i A20-based SBC device tree is missing
right definition of AXP209 (CPU-dedicated PMU). It does not include the
axp209.dtsi and does not include regulator configuration, which becomes
vital once AXP209 regulators are recognized by kernel.

Missing AXP209 regulators mean no CPU frequency scaling, missing AXP209
supply status "okay" in device tree means no monitoring of amperage and
voltage. Patch brings all that back (it was fine at least up to 4.10.1).

With regulators support some regulators must stay on, so they have been
assigned to correct subsystems or set always-on.


Signed-off-by: Jan Ko=C5=84czak <jan.z.konczak@gmail.com>
---
 arch/arm/boot/dts/sun7i-a20-bananapro.dts | 58 +++++++++++++++++++----
 1 file changed, 50 insertions(+), 8 deletions(-)

diff --git a/arch/arm/boot/dts/sun7i-a20-bananapro.dts
b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
index e22f0e8bb..1640f1702 100644
--- a/arch/arm/boot/dts/sun7i-a20-bananapro.dts
+++ b/arch/arm/boot/dts/sun7i-a20-bananapro.dts
@@ -90,10 +90,6 @@ reg_gmac_3v3: gmac-3v3 {
        };
 };

-&ahci {
-       status =3D "okay";
-};
-
 &codec {
        status =3D "okay";
 };
@@ -119,16 +115,62 @@ &i2c0 {
        status =3D "okay";

        axp209: pmic@34 {
-               compatible =3D "x-powers,axp209";
                reg =3D <0x34>;
                interrupt-parent =3D <&nmi_intc>;
                interrupts =3D <0 IRQ_TYPE_LEVEL_LOW>;
-
-               interrupt-controller;
-               #interrupt-cells =3D <1>;
        };
 };

+#include "axp209.dtsi"
+
+&ac_power_supply {
+        status =3D "okay";
+};
+
+&battery_power_supply {
+        status =3D "okay";
+};
+
+&cpu0 {
+       cpu-supply =3D <&reg_dcdc2>;
+};
+
+&ahci {
+       target-supply =3D <&reg_ldo4>;
+       status =3D "okay";
+};
+
+// axp209 regulators
+&reg_dcdc2 {
+        regulator-always-on;
+        regulator-min-microvolt =3D <1000000>;
+        regulator-max-microvolt =3D <1400000>;
+        regulator-name =3D "vdd-cpu";
+};
+
+&reg_dcdc3 {
+        regulator-always-on;
+        regulator-min-microvolt =3D <1000000>;
+        regulator-max-microvolt =3D <1400000>;
+        regulator-name =3D "vdd-int-dll";
+};
+
+&reg_ldo1 {
+        regulator-name =3D "vdd-rtc";
+};
+
+&reg_ldo2 {
+        regulator-always-on;
+        regulator-min-microvolt =3D <3000000>;
+        regulator-max-microvolt =3D <3000000>;
+        regulator-name =3D "avcc";
+};
+
+&reg_ldo4 {
+       regulator-name =3D "vdd-sata";
+       regulator-always-on;
+};
+
 &i2c2 {
        status =3D "okay";
 };
--=20
2.26.2
