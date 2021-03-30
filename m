Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 877EE34E21C
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 09:24:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231138AbhC3HXv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 03:23:51 -0400
Received: from mickerik.phytec.de ([195.145.39.210]:45720 "EHLO
        mickerik.phytec.de" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231426AbhC3HXe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 03:23:34 -0400
X-Greylist: delayed 903 seconds by postgrey-1.27 at vger.kernel.org; Tue, 30 Mar 2021 03:23:34 EDT
DKIM-Signature: v=1; a=rsa-sha256; d=phytec.de; s=a1; c=relaxed/simple;
        q=dns/txt; i=@phytec.de; t=1617088109; x=1619680109;
        h=From:Sender:Reply-To:Subject:Date:Message-Id:To:Cc:MIME-Version:Content-Type:
        Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:Resent-From:
        Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:List-Id:
        List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
        bh=SmcnULtbRocuygQNSkUfkwTI14SkLY/pcncpocgGeNk=;
        b=RcVPWWYuwn66YljmUtQWfnk4hPKfNK2BOvIpWlSQPGKvH4Sdj2g+XAcBtI6wjHN4
        Np0fzNUKMGmHGybIK5PUF1pEqFRbSzG3dukCwsJx7KBSp2Ykz4aSjzO6JPeBBWJN
        ViulTVmopYOptpQ8h2JMJlYY8evh95+WHuQH5ZeiFBM=;
X-AuditID: c39127d2-868b870000001c91-ff-6062ce6d56a2
Received: from idefix.phytec.de (Unknown_Domain [172.16.0.10])
        by mickerik.phytec.de (PHYTEC Mail Gateway) with SMTP id E2.73.07313.D6EC2606; Tue, 30 Mar 2021 09:08:29 +0200 (CEST)
Received: from lws-ybas.phytec.de ([172.16.21.122])
          by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
          with ESMTP id 2021033009082926-261598 ;
          Tue, 30 Mar 2021 09:08:29 +0200 
From:   Yunus Bas <y.bas@phytec.de>
To:     dri-devel@lists.freedesktop.org, thierry.reding@gmail.com,
        sam@ravnborg.org
Cc:     devicetree@vger.kernel.org, airlied@linux.ie, daniel@ffwll.ch,
        robh+dt@kernel.org
Subject: [PATCH 1/2] drm/panel: simple: Add support for EDT ETMV570G2DHU panel
Date:   Tue, 30 Mar 2021 09:09:06 +0200
Message-Id: <20210330070907.11587-1-y.bas@phytec.de>
X-Mailer: git-send-email 2.30.0
MIME-Version: 1.0
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 09:08:29,
        Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17, 2016) at
 30.03.2021 09:08:29
X-TNEFEvaluated: 1
Content-Transfer-Encoding: quoted-printable
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrILMWRmVeSWpSXmKPExsWyRoCBSzf3XFKCwfb5yha9504yWfzfNpHZ
        Yv6Rc6wWV76+Z7No3XuE3WLFz62MFj93zWNxYPfY+20Bi8fOWXfZPTat6mTz2P7tAavH/e7j
        TB5Lpl1l8/i8SS6APYrLJiU1J7MstUjfLoEr4/ye7UwFT8Uqui+0MDUwPhHqYuTkkBAwkfjz
        ZB0TiC0ksI1RYs899S5GLiD7PKPEoQNPwRJsAooS52+/ZQWxRQT8JTbcXssOYjMLhErcmbAd
        rEZYwE/i8vlPLCA2i4CqxMaNB8BsXqAFB25+ZoZYJi9xcu1hJoi4oMTJmU9YQJZJCFxhlFj9
        /SdUkZDE6cVnmSEWaEssW/iaeQIj3ywkPbOQpBYwMq1iFMrNTM5OLcrM1ivIqCxJTdZLSd3E
        CAzWwxPVL+1g7JvjcYiRiYPxEKMEB7OSCK/wgcQEId6UxMqq1KL8+KLSnNTiQ4zSHCxK4rwb
        eEvChATSE0tSs1NTC1KLYLJMHJxSDYwKsx/4qh0+LbrSuuSZQ1bJmg3J+u4Kx6eeqfM95N37
        J2R/ROanT3OzzDJt7drZ5sgzFc10Yw6Iveictek5e9LUkJTc8B7LgJTXIQfYri0LunOX88Lj
        41+mHWOX/3Zu4zWZVr+TAtr/XfW2N+39esvyamJlpWOL3AfJTW0nZrF/8oo5H+YxU1eJpTgj
        0VCLuag4EQCekH8sRAIAAA==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Stefan Riedmueller <s.riedmueller@phytec.de>

This patch adds support for the EDT ETMV570G2DHU 5.7" (640x480) lcd panel
to DRM simple panel driver.

Signed-off-by: Stefan Riedmueller <s.riedmueller@phytec.de>
Signed-off-by: Yunus Bas <y.bas@phytec.de>
---
 .../bindings/display/panel/panel-simple.yaml  |  3 ++
 drivers/gpu/drm/panel/panel-simple.c          | 29 +++++++++++++++++++
 2 files changed, 32 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.y=
aml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
index 62b0d54d87b7..57be1fa39728 100644
--- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
+++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
@@ -114,6 +114,9 @@ properties:
       - edt,etm043080dh6gp
         # Emerging Display Technology Corp. 480x272 TFT Display
       - edt,etm0430g0dh6
+        # Emerging Display Technology Corp. 5.7" VGA TFT LCD panel with
+        # capacitive touch
+      - edt,etmv570g2dhu
         # Emerging Display Technology Corp. WVGA TFT Display with capaciti=
ve touch
         # Same as ETM0700G0DH6 but with inverted pixel clock.
       - edt,etm070080bdh6
diff --git a/drivers/gpu/drm/panel/panel-simple.c b/drivers/gpu/drm/panel/p=
anel-simple.c
index 4e2dad314c79..283c17a75376 100644
--- a/drivers/gpu/drm/panel/panel-simple.c
+++ b/drivers/gpu/drm/panel/panel-simple.c
@@ -1926,6 +1926,32 @@ static const struct panel=5Fdesc edt=5Fet057090dhu =
=3D {
 	.connector=5Ftype =3D DRM=5FMODE=5FCONNECTOR=5FDPI,
 };
=20
+static const struct drm=5Fdisplay=5Fmode edt=5Fetmv570g2dhu=5Fmode =3D {
+	.clock =3D 25175,
+	.hdisplay =3D 640,
+	.hsync=5Fstart =3D 640,
+	.hsync=5Fend =3D 640 + 16,
+	.htotal =3D 640 + 16 + 30 + 114,
+	.vdisplay =3D 480,
+	.vsync=5Fstart =3D 480 + 10,
+	.vsync=5Fend =3D 480 + 10 + 3,
+	.vtotal =3D 480 + 10 + 3 + 35,
+	.flags =3D DRM=5FMODE=5FFLAG=5FPVSYNC | DRM=5FMODE=5FFLAG=5FPHSYNC,
+};
+
+static const struct panel=5Fdesc edt=5Fetmv570g2dhu =3D {
+	.modes =3D &edt=5Fetmv570g2dhu=5Fmode,
+	.num=5Fmodes =3D 1,
+	.bpc =3D 6,
+	.size =3D {
+		.width =3D 115,
+		.height =3D 86,
+	},
+	.bus=5Fformat =3D MEDIA=5FBUS=5FFMT=5FRGB888=5F1X24,
+	.bus=5Fflags =3D DRM=5FBUS=5FFLAG=5FDE=5FHIGH | DRM=5FBUS=5FFLAG=5FPIXDAT=
A=5FDRIVE=5FNEGEDGE,
+	.connector=5Ftype =3D DRM=5FMODE=5FCONNECTOR=5FDPI,
+};
+
 static const struct drm=5Fdisplay=5Fmode edt=5Fetm0700g0dh6=5Fmode =3D {
 	.clock =3D 33260,
 	.hdisplay =3D 800,
@@ -4226,6 +4252,9 @@ static const struct of=5Fdevice=5Fid platform=5Fof=5F=
match[] =3D {
 	}, {
 		.compatible =3D "edt,et057090dhu",
 		.data =3D &edt=5Fet057090dhu,
+	}, {
+		.compatible =3D "edt,etmv570g2dhu",
+		.data =3D &edt=5Fetmv570g2dhu,
 	}, {
 		.compatible =3D "edt,et070080dh6",
 		.data =3D &edt=5Fetm0700g0dh6,
--=20
2.30.0

