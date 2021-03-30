Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C21C34E21B
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 09:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231206AbhC3HXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 03:23:51 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:45724 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230436AbhC3HXr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 03:23:47 -0400
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1617088109; x=1619680109;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=jt+/S3UrL+Gkr+sv4rTAeuYQp6C5y4tCuV4BT5eP5Gk=;
        b=W5LJtocW+YJjUel0OzIYCrYnmFdjUO/95Uzoc4OvoAsta2aIYC3SH4XNyyXN3PQh
        96fJSz6WnjX8GzPDnFMYZ+w8wff1nmrD6eJ8z6lQ47wub5qA2WhFY2ZWzRowtSP4
        MCQ2T+3ddcSjuYAOvKkU5mucfJjV+p1Mzbeqp874Ylo=;
X-AuditID: c39127d2-85cb770000001c91-00-6062ce6d3b8a
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id 63.73.07313.D6EC2606; Tue, 30 Mar 2021 09:08:29 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021033009082952-261599 ;
          Tue, 30 Mar 2021 09:08:29 +0200 
From:   Yunus Bas <y.bas@phytec.de>
To:     dri-devel@lists.freedesktop.org, thierry.reding@gmail.com,
        sam@ravnborg.org
Cc:     devicetree@vger.kernel.org, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org
Subject: [PATCH 2/2] drm/panel: simple: Add support for EDT ETM0350G0DH6 panel
Date:   Tue, 30 Mar 2021 09:09:07 +0200
Message-Id: <20210330070907.11587-2-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <20210330070907.11587-1-y.bas@phytec.de>
References: <20210330070907.11587-1-y.bas@phytec.de>
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 09:08:29,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 09:08:29
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFjrFLMWRmVeSWpSXmKPExsWyRoCBSzf3XFKCwcGVeha9504yWfzfNpHZ
        Yv6Rc6wWV76+Z7No3XuE3WLFz62MFj93zWNxYPfY+20Bi8fOWXfZPTat6mTz2P7tAavH/e7j
        TB5Lpl1l8/i8SS6APYrLJiU1J7MstUjfLoEr482E+0wF98Uq5r28xtLA+ESoi5GTQ0LAROLE
        vW9MXYxcHEIC2xgl7r18wwzhnGeU2Pj6DytIFZuAosT522/BbBEBf4kNt9eyg9jMAqESdyZs
        ZwKxhQX8JNo2nQaLswioSlzfcJ0ZxOYF2nDl7WYmiG3yEifXHgazOQVMJZ4veMUCYgsB1ayd
        2cEKUS8ocXLmExaQIyQErjBKrP7+kxmiWUji9OKzzBCLtSWWLXzNPIFRYBaSnllIUgsYmVYx
        CuVmJmenFmVm6xVkVJakJuulpG5iBIb34Ynql3Yw9s3xOMTIxMF4iFGCg1lJhFf4QGKCEG9K
        YmVValF+fFFpTmrxIUZpDhYlcd4NvCVhQgLpiSWp2ampBalFMFkmDk6pBkbjs7UWf98Uftle
        Pvlf5pln2np+PjtN71THepgl/n8Z/IZ9kq31C7NFaw7ukPG3XPzuXh0jw7l9pvKH0n9LKORt
        ntFSmdFow82/XHXuzUzHW9JvuBhNQlIntXbHfshXs3t6fEZVRKXx7tRIH7m+fP3319Jf2W4v
        2f/WJv7mveLyaaVBBZ4uH5RYijMSDbWYi4oTAXxI7MZdAgAA
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stefan Riedmueller <s.riedmueller@phytec.de>

This patch adds support for the EDT ETM0350G0DH6 3.5" (320x240) lcd
panel to DRM simple panel driver.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 .../bindings/display/panel/panel-simple.yaml  |  3 ++
 drivers/gpu/drm/panel/panel-simple.c          | 29 +++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.y=
aml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 57be1fa39728..9a6b42f911d1 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -107,6 +107,9 @@ properties:
       - dlc,dlc1010gig
         # Emerging Display Technology Corp. 3.5" QVGA TFT LCD panel
       - edt,et035012dm6
+        # Emerging Display Technology Corp. 3.5" WVGA TFT LCD panel with
+        # capacitive multitouch
+      - edt,etm0350g0dh6
         # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel
       - edt,et057090dhu
       - edt,et070080dh6
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/p=
anel-simple.c
index 283c17a75376..70c25f6e642b 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1847,6 +1847,32 @@ static const struct panel=5Fdesc edt=5Fet035012dm6 =
=3D {
 	.bus=5Fflags =3D DRM=5FBUS=5FFLAG=5FDE=5FLOW | DRM=5FBUS=5FFLAG=5FPIXDATA=
=5FSAMPLE=5FPOSEDGE,
 };
=20
+static const struct drm=5Fdisplay=5Fmode edt=5Fetm0350g0dh6=5Fmode =3D {
+	.clock =3D 6520,
+	.hdisplay =3D 320,
+	.hsync=5Fstart =3D 320 + 20,
+	.hsync=5Fend =3D 320 + 20 + 68,
+	.htotal =3D 320 + 20 + 68,
+	.vdisplay =3D 240,
+	.vsync=5Fstart =3D 240 + 4,
+	.vsync=5Fend =3D 240 + 4 + 18,
+	.vtotal =3D 240 + 4 + 18,
+	.flags =3D DRM=5FMODE=5FFLAG=5FNVSYNC | DRM=5FMODE=5FFLAG=5FNHSYNC,
+};
+
+static const struct panel=5Fdesc edt=5Fetm0350g0dh6 =3D {
+	.modes =3D &edt=5Fetm0350g0dh6=5Fmode,
+	.num=5Fmodes =3D 1,
+	.bpc =3D 6,
+	.size =3D {
+		.width =3D 70,
+		.height =3D 53,
+	},
+	.bus=5Fformat =3D MEDIA=5FBUS=5FFMT=5FRGB888=5F1X24,
+	.bus=5Fflags =3D DRM=5FBUS=5FFLAG=5FDE=5FHIGH | DRM=5FBUS=5FFLAG=5FPIXDAT=
A=5FDRIVE=5FNEGEDGE,
+	.connector=5Ftype =3D DRM=5FMODE=5FCONNECTOR=5FDPI,
+};
+
 static const struct drm=5Fdisplay=5Fmode edt=5Fetm043080dh6gp=5Fmode =3D {
 	.clock =3D 10870,
 	.hdisplay =3D 480,
@@ -4243,6 +4269,9 @@ static const struct of=5Fdevice=5Fid platform=5Fof=5F=
match[] =3D {
 	}, {
 		.compatible =3D "edt,et035012dm6",
 		.data =3D &edt=5Fet035012dm6,
+	}, {
+		.compatible =3D "edt,etm0350g0dh6",
+		.data =3D &edt=5Fetm0350g0dh6,
 	}, {
 		.compatible =3D "edt,etm043080dh6gp",
 		.data =3D &edt=5Fetm043080dh6gp,
--=20
2.30.0

