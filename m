Return-Path: <devicetree+bounces-35-lists+devicetree=lfdr.de@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from am.mirrors.kernel.org (am.mirrors.kernel.org [IPv6:2604:1380:4601:e00::3])
	by mail.lfdr.de (Postfix) with ESMTPS id EBD9379F8B4
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 05:16:20 +0200 (CEST)
Received: from smtp.subspace.kernel.org (wormhole.subspace.kernel.org [52.25.139.140])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by am.mirrors.kernel.org (Postfix) with ESMTPS id 5306B1F2154D
	for <lists+devicetree@lfdr.de>; Thu, 14 Sep 2023 03:16:20 +0000 (UTC)
Received: from localhost.localdomain (localhost.localdomain [127.0.0.1])
	by smtp.subspace.kernel.org (Postfix) with ESMTP id 22DD6ECE;
	Thu, 14 Sep 2023 03:16:15 +0000 (UTC)
X-Original-To: devicetree@vger.kernel.org
Received: from lindbergh.monkeyblade.net (lindbergh.monkeyblade.net [23.128.96.19])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 137A27F
	for <devicetree@vger.kernel.org>; Thu, 14 Sep 2023 03:16:14 +0000 (UTC)
Received: from fd01.gateway.ufhost.com (fd01.gateway.ufhost.com [61.152.239.71])
	by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2C0891BD9;
	Wed, 13 Sep 2023 20:16:13 -0700 (PDT)
Received: from EXMBX165.cuchost.com (unknown [175.102.18.54])
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client CN "EXMBX165", Issuer "EXMBX165" (not verified))
	by fd01.gateway.ufhost.com (Postfix) with ESMTP id 564B28022;
	Thu, 14 Sep 2023 11:16:10 +0800 (CST)
Received: from EXMBX073.cuchost.com (172.16.6.83) by EXMBX165.cuchost.com
 (172.16.6.75) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 14 Sep
 2023 11:16:10 +0800
Received: from xiaofei.localdomain (180.164.60.184) by EXMBX073.cuchost.com
 (172.16.6.83) with Microsoft SMTP Server (TLS) id 15.0.1497.42; Thu, 14 Sep
 2023 11:16:10 +0800
From: Jack Zhu <jack.zhu@starfivetech.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>, Robert Foss
	<rfoss@kernel.org>, Todor Tomov <todor.too@gmail.com>,
	<bryan.odonoghue@linaro.org>, Rob Herring <robh+dt@kernel.org>, "Krzysztof
 Kozlowski" <krzysztof.kozlowski+dt@linaro.org>, Conor Dooley
	<conor+dt@kernel.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Philipp Zabel <p.zabel@pengutronix.de>, Laurent Pinchart
	<laurent.pinchart@ideasonboard.com>, Hans Verkuil <hverkuil-cisco@xs4all.nl>
CC: <linux-media@vger.kernel.org>, <linux-kernel@vger.kernel.org>,
	<devicetree@vger.kernel.org>, <linux-staging@lists.linux.dev>,
	<jack.zhu@starfivetech.com>, <changhuang.liang@starfivetech.com>
Subject: [PATCH v9 2/8] media: admin-guide: Add starfive_camss.rst for Starfive Camera Subsystem
Date: Thu, 14 Sep 2023 11:16:01 +0800
Message-ID: <20230914031607.34877-3-jack.zhu@starfivetech.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230914031607.34877-1-jack.zhu@starfivetech.com>
References: <20230914031607.34877-1-jack.zhu@starfivetech.com>
Precedence: bulk
X-Mailing-List: devicetree@vger.kernel.org
List-Id: <devicetree.vger.kernel.org>
List-Subscribe: <mailto:devicetree+subscribe@vger.kernel.org>
List-Unsubscribe: <mailto:devicetree+unsubscribe@vger.kernel.org>
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [180.164.60.184]
X-ClientProxiedBy: EXCAS061.cuchost.com (172.16.6.21) To EXMBX073.cuchost.com
 (172.16.6.83)
X-YovoleRuleAgent: yovoleflag
Content-Transfer-Encoding: quoted-printable

Add starfive_camss.rst file that documents the Starfive Camera
Subsystem driver which is used for handing image sensor data.

Signed-off-by: Jack Zhu <jack.zhu@starfivetech.com>
---
 .../admin-guide/media/starfive_camss.rst      | 72 +++++++++++++++++++
 .../media/starfive_camss_graph.dot            | 12 ++++
 .../admin-guide/media/v4l-drivers.rst         |  1 +
 MAINTAINERS                                   |  1 +
 4 files changed, 86 insertions(+)
 create mode 100644 Documentation/admin-guide/media/starfive_camss.rst
 create mode 100644 Documentation/admin-guide/media/starfive_camss_graph.=
dot

diff --git a/Documentation/admin-guide/media/starfive_camss.rst b/Documen=
tation/admin-guide/media/starfive_camss.rst
new file mode 100644
index 000000000000..ca42e9447c47
--- /dev/null
+++ b/Documentation/admin-guide/media/starfive_camss.rst
@@ -0,0 +1,72 @@
+.. SPDX-License-Identifier: GPL-2.0
+
+.. include:: <isonum.txt>
+
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
+Starfive Camera Subsystem driver
+=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D
+
+Introduction
+------------
+
+This file documents the driver for the Starfive Camera Subsystem found o=
n
+Starfive JH7110 SoC. The driver is located under drivers/staging/media/s=
tarfive/
+camss.
+
+The driver implements V4L2, Media controller and v4l2_subdev interfaces.=
 Camera
+sensor using V4L2 subdev interface in the kernel is supported.
+
+The driver has been successfully used on the Gstreamer 1.18.5 with v4l2s=
rc
+plugin.
+
+
+Starfive Camera Subsystem hardware
+----------------------------------
+
+The Starfive Camera Subsystem hardware consists of::
+
+                    |\         +---------------+      +-----------+
+  +----------+      |  \       |               |      |           |
+  |          |      |   |      |               |      |           |
+  |   MIPI   |----->|   |----->|      ISP      |----->|           |
+  |          |      |   |      |               |      |           |
+  +----------+      |   |      |               |      |  Memory   |
+                    |MUX|      +---------------+      | Interface |
+  +----------+      |   |                             |           |
+  |          |      |   |---------------------------->|           |
+  | Parallel |----->|   |                             |           |
+  |          |      |   |                             |           |
+  +----------+      |  /                              |           |
+                    |/                                +-----------+
+
+- MIPI: The MIPI interface, receiving data from a MIPI CSI-2 camera sens=
or.
+
+- Parallel: The parallel interface,  receiving data from a parallel sens=
or.
+
+- ISP: The ISP, processing raw Bayer data from an image sensor and produ=
cing
+  YUV frames.
+
+
+Topology
+--------
+
+The media controller pipeline graph is as follows:
+
+.. _starfive_camss_graph:
+
+.. kernel-figure:: starfive_camss_graph.dot
+    :alt:   starfive_camss_graph.dot
+    :align: center
+
+The driver has 2 video devices:
+
+- capture_raw: The capture device, capturing image data directly from a =
sensor.
+- capture_yuv: The capture device, capturing YUV frame data processed by=
 the
+  ISP module
+
+The driver has 3 subdevices:
+
+- stf_isp: is responsible for all the isp operations, outputs YUV frames=
.
+- cdns_csi2rx: a CSI-2 bridge supporting up to 4 CSI lanes in input, and=
 4
+  different pixel streams in output.
+- imx219: an image sensor, image data is sent through MIPI CSI-2.
diff --git a/Documentation/admin-guide/media/starfive_camss_graph.dot b/D=
ocumentation/admin-guide/media/starfive_camss_graph.dot
new file mode 100644
index 000000000000..8eff1f161ac7
--- /dev/null
+++ b/Documentation/admin-guide/media/starfive_camss_graph.dot
@@ -0,0 +1,12 @@
+digraph board {
+	rankdir=3DTB
+	n00000001 [label=3D"{{<port0> 0} | stf_isp\n/dev/v4l-subdev0 | {<port1>=
 1}}", shape=3DMrecord, style=3Dfilled, fillcolor=3Dgreen]
+	n00000001:port1 -> n00000008 [style=3Ddashed]
+	n00000004 [label=3D"capture_raw\n/dev/video0", shape=3Dbox, style=3Dfil=
led, fillcolor=3Dyellow]
+	n00000008 [label=3D"capture_yuv\n/dev/video1", shape=3Dbox, style=3Dfil=
led, fillcolor=3Dyellow]
+	n0000000e [label=3D"{{<port0> 0} | cdns_csi2rx.19800000.csi-bridge\n | =
{<port1> 1 | <port2> 2 | <port3> 3 | <port4> 4}}", shape=3DMrecord, style=
=3Dfilled, fillcolor=3Dgreen]
+	n0000000e:port1 -> n00000001:port0 [style=3Ddashed]
+	n0000000e:port1 -> n00000004 [style=3Ddashed]
+	n00000018 [label=3D"{{} | imx219 6-0010\n/dev/v4l-subdev1 | {<port0> 0}=
}", shape=3DMrecord, style=3Dfilled, fillcolor=3Dgreen]
+	n00000018:port0 -> n0000000e:port0 [style=3Dbold]
+}
diff --git a/Documentation/admin-guide/media/v4l-drivers.rst b/Documentat=
ion/admin-guide/media/v4l-drivers.rst
index 1c41f87c3917..2274fd29c1d7 100644
--- a/Documentation/admin-guide/media/v4l-drivers.rst
+++ b/Documentation/admin-guide/media/v4l-drivers.rst
@@ -27,6 +27,7 @@ Video4Linux (V4L) driver-specific documentation
 	si470x
 	si4713
 	si476x
+	starfive_camss
 	vimc
 	visl
 	vivid
diff --git a/MAINTAINERS b/MAINTAINERS
index 8fd44a3e0b8f..60945bf4b381 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -20268,6 +20268,7 @@ M:	Jack Zhu <jack.zhu@starfivetech.com>
 M:	Changhuang Liang <changhuang.liang@starfivetech.com>
 L:	linux-media@vger.kernel.org
 S:	Maintained
+F:	Documentation/admin-guide/media/starfive_camss.rst
 F:	Documentation/devicetree/bindings/media/starfive,jh7110-camss.yaml
=20
 STARFIVE CRYPTO DRIVER
--=20
2.34.1


