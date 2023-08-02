Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5152276D92F
	for <lists+devicetree@lfdr.de>; Wed,  2 Aug 2023 23:08:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229693AbjHBVId (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Aug 2023 17:08:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229528AbjHBVIc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Aug 2023 17:08:32 -0400
Received: from mout.gmx.net (mout.gmx.net [212.227.15.15])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 43EA526AB
        for <devicetree@vger.kernel.org>; Wed,  2 Aug 2023 14:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=gmx.net;
 s=s31663417; t=1691010495; x=1691615295; i=p.jungkamp@gmx.net;
 bh=LZhk0aX26Z6tj2qfl3wdEK5XqWb5+cl5JAwmfjVDm28=;
 h=X-UI-Sender-Class:From:To:Cc:Subject:Date;
 b=c9PL/HstWU7SWB6h0GumsXEYLUvxbPyW545xpRnpu3SLp3MXSLq/ejXMWzCRPkBM0J9XuXP
 VAb9aCd+cGQ+pJzJCtLrHLcrFGpjvl51dd8kyEHCadq+pD+OlbTe5dhk+XjdvvWu+Jc//R0Lu
 1e+Nfm1tbn9QGC0V4kG9Nz2fAANHttcx/zSkkB7/77GRDVtsyvGJcvdPgqMMv/ifwTz3ab+t6
 xCYuLDoSP2pcv9Xg9qPN0BTLD/bvu+cBJOPUwWH8U9vWMWodlA9ucbOYq8iaTi6uRIvHC77Od
 dfjKm0rkXPcrlDERHaI0aMeJZ0b8/MLYG4hPgMVSl3AxErhdlKhA==
X-UI-Sender-Class: 724b4f7f-cbec-4199-ad4e-598c01a50d3a
Received: from localhost.localdomain ([95.223.44.203]) by mail.gmx.net
 (mrgmx004 [212.227.17.190]) with ESMTPSA (Nemesis) id
 1N4QsO-1pjgXA3LJG-011RYp; Wed, 02 Aug 2023 23:08:14 +0200
From:   Philipp Jungkamp <p.jungkamp@gmx.net>
To:     =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Sebastian Krzyszkowiak <sebastian.krzyszkowiak@puri.sm>,
        Martin Kepplinger <martink@posteo.de>,
        Angus Ainslie <angus@akkea.ca>
Cc:     devicetree@vger.kernel.org, Philipp Jungkamp <p.jungkamp@gmx.net>
Subject: [PATCH] dts: adjust proximity near level
Date:   Wed,  2 Aug 2023 23:07:46 +0200
Message-ID: <20230802210746.1240625-1-p.jungkamp@gmx.net>
X-Mailer: git-send-email 2.41.0
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
X-Provags-ID: V03:K1:abH5IQSqwt+xl3YfDwWMM+dHDGd2TbLBtItC+8I09faF+mGCasI
 djZhpR/mgoaol791w0YgtjCX5shbPNBcy8Kv3CNMlMqPUmsLxiRW8Vm7++aQO2Pf0M2VNPd
 m7VoUDGWRPilL1rzWmSmpmHcYF7rPff8vxFvqKKsf7fo9HHYtl7L6HaWi8SmP5q2usKE7Nq
 ErLQDqdMMd2dIjsqkg1sQ==
UI-OutboundReport: notjunk:1;M01:P0:wzCMQ8BSsLc=;Uq/31fvBqI87Rb+wE4m8+zOQjSJ
 R/vndx1lHLBRPV6OGKjb1v9cQ927RhW04mzSsqj9yIOCSV7/rg7dPZGQWhh+6MQ3qVUovCx87
 rGSOjqi6Ylq6rNeuW5p0jMK4r+16aE1vyTNTfUgyW75bo5TkLIp4zUu5UJ6oPHV3lPRm9Avot
 7LdJ1uNuJcgrwevPftYTxQD69zXcqMCNSbUZJcpCZDo/5LATvDjdYpxEHnrY5x7FRWttIya9h
 05qqG85Ody13FUtQNi/duUvgzkJYCburwwgDWwmhpeFmikqmAuz/XLg3qosaUX9NUcLy6C7ct
 SfyeDAznQBLpWn+kPb0IOlpLRJ5/MRLFQ3/AGnqKSNRl2O6wZET3VsLoF+5fV2PCFl1z6XEiK
 34G96CjlKYKwKmMqpAZGehK4tUUgSZ+qk6vzZs7C0y9O18fU9enxvo0wmmI9tB4kY8i7PH2VF
 lzKCbDumliz+tMVV5LXwZPTULe0QkHGA7C+Bz9vlUIRneN0whbKu7IrrfeGJmCQLWSzO/nWv+
 qJ2hEVYLwz0Hukod/fGLu9djUJl2SCiokh5j3diijsOVhkOdNMJsNxLzaprLeaqxMOUkkPdag
 UjkeZoPosDjWz87teDK1+p56XAI4G3+OUNKPUeGWJtboMBAz6vl99a/UuP/1KNweU1i6K+9Hy
 rqLJdtpcZ5HProZceQ2mKC6viHpc+kWu3X+C3bO6b3qToYJqNbbH+DEpuMKW+sgRar+0kK/Xr
 WrGAVVDDzJatdd/rfLFYpVW+IJLkc8JWvyJFj/IAbvcj4Ko9LoIice38tnkKq2MkvfQfiRyf3
 rD0LbxbNk4KmA6aSE81Xpv5m/Z4A1PlpmiEtpZ1gRNexF9XzDSvxI+QTsYpLSwCrKVEIj2e28
 uSv2ynN97gXkkgpYdnuLF/XFhfqayBS0ODJP52BOdu+47Rp9EITztZ0nsefAtUYOxabGyWrdc
 EDF0ckFoA+O9M5y3IeXNsnkUs20=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_BLOCKED,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Adjust the proximity-near-level by one to account for an error in
calibration using iio-sensor-proxy, which interpreted the
in_proximity_nearlevel attribute slightly differently than specified in
the kernel documentation.

Signed-off-by: Philipp Jungkamp <p.jungkamp@gmx.net>
=2D--
Hello,

Most userspace programs seem to use the in_proximity_nearlevel sysfs attri=
bute
implicitly through the iio-sensor-proxy dbus daemon. But the proximity sen=
sor
near level detection does not adhere to the kernel documentation for the s=
ysfs
attribute. This is, next to some techical defficulties in iio-sensor-proxy=
, the
reason that I proposed to fix the near level criterion there.
See: https://gitlab.freedesktop.org/hadess/iio-sensor-proxy/-/merge_reques=
ts/364

It has been pointed out that devices with a DT calibrated against
iio-sensor-proxy will see a slight change in the interpretation of the nea=
r
level criterion.

I want this more or less serious patch to be a heads up for the users and
implementors of the iio proximity sensors on linux.

Regards,
Philipp Jungkamp

 arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts  | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi | 2 +-
 arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts  | 2 +-
 arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts | 2 +-
 4 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts b/arch/ar=
m64/boot/dts/freescale/imx8mq-librem5-r2.dts
index 2b3d437a642a..31426cf055b4 100644
=2D-- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r2.dts
@@ -23,5 +23,5 @@ &bq25895 {
 };

 &proximity {
-	proximity-near-level =3D <50>;
+	proximity-near-level =3D <51>;
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi b/arch/a=
rm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi
index 7fd0176e4bd3..12ccc20afc8a 100644
=2D-- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r3.dtsi
@@ -45,5 +45,5 @@ &magnetometer {
 };

 &proximity {
-	proximity-near-level =3D <10>;
+	proximity-near-level =3D <11>;
 };
diff --git a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts b/arch/ar=
m64/boot/dts/freescale/imx8mq-librem5-r4.dts
index 97577c0a7715..fab872ecbf1c 100644
=2D-- a/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts
+++ b/arch/arm64/boot/dts/freescale/imx8mq-librem5-r4.dts
@@ -23,5 +23,5 @@ &lcd_panel {
 };

 &proximity {
-	proximity-near-level =3D <5>;
+	proximity-near-level =3D <6>;
 };
diff --git a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts b/arch/a=
rm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
index 97262b8519b3..19173d9efa22 100644
=2D-- a/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
+++ b/arch/arm64/boot/dts/qcom/msm8916-longcheer-l8150.dts
@@ -156,7 +156,7 @@ magnetometer@12 {
 	light-sensor@23 {
 		compatible =3D "liteon,ltr559";
 		reg =3D <0x23>;
-		proximity-near-level =3D <75>;
+		proximity-near-level =3D <76>;

 		interrupt-parent =3D <&tlmm>;
 		interrupts =3D <115 IRQ_TYPE_EDGE_FALLING>;
=2D-
2.41.0

