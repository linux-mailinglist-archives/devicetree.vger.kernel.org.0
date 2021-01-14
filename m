Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D81032F68C8
	for <lists+devicetree@lfdr.de>; Thu, 14 Jan 2021 19:07:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729661AbhANSCo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jan 2021 13:02:44 -0500
Received: from mslow2.mail.gandi.net ([217.70.178.242]:46434 "EHLO
        mslow2.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729619AbhANSCk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jan 2021 13:02:40 -0500
Received: from relay9-d.mail.gandi.net (unknown [217.70.183.199])
        by mslow2.mail.gandi.net (Postfix) with ESMTP id A900B3B1A32
        for <devicetree@vger.kernel.org>; Thu, 14 Jan 2021 17:57:10 +0000 (UTC)
X-Originating-IP: 86.201.233.230
Received: from localhost.localdomain (lfbn-tou-1-151-230.w86-201.abo.wanadoo.fr [86.201.233.230])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay9-d.mail.gandi.net (Postfix) with ESMTPSA id E5A74FF803;
        Thu, 14 Jan 2021 17:56:08 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Rob Herring <robh+dt@kernel.org>, <devicetree@vger.kernel.org>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>,
        linux-i3c@lists.infradead.org
Cc:     Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Conor Culhane <conor.culhane@silvaco.com>,
        Rajeev Huralikoppi <rajeev.huralikoppi@silvaco.com>,
        Nicolas Pitre <nico@fluxnic.net>,
        Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH v4 6/6] MAINTAINERS: Add Silvaco I3C master
Date:   Thu, 14 Jan 2021 18:55:58 +0100
Message-Id: <20210114175558.17097-7-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210114175558.17097-1-miquel.raynal@bootlin.com>
References: <20210114175558.17097-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add Conor and myself as maintainers.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 MAINTAINERS | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 546aa66428c9..caa4e1ea32a7 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -16237,6 +16237,14 @@ S:	Maintained
 F:	Documentation/fb/sm712fb.rst
 F:	drivers/video/fbdev/sm712*
 
+SILVACO I3C DUAL-ROLE MASTER
+M:	Miquel Raynal <miquel.raynal@bootlin.com>
+M:	Conor Culhane <conor.culhane@silvaco.com>
+L:	linux-i3c@lists.infradead.org
+S:	Maintained
+F:	Documentation/devicetree/bindings/i3c/silvaco,i3c-master.yaml
+F:	drivers/i3c/master/svc-i3c-master.c
+
 SIMPLE FIRMWARE INTERFACE (SFI)
 S:	Obsolete
 W:	http://simplefirmware.org/
-- 
2.20.1

