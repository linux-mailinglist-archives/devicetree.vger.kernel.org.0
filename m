Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 092D2A3F68
	for <lists+devicetree@lfdr.de>; Fri, 30 Aug 2019 23:06:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728166AbfH3VGU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 30 Aug 2019 17:06:20 -0400
Received: from relay11.mail.gandi.net ([217.70.178.231]:46671 "EHLO
        relay11.mail.gandi.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727991AbfH3VGU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 30 Aug 2019 17:06:20 -0400
Received: from localhost.localdomain (unknown [91.224.148.103])
        (Authenticated sender: miquel.raynal@bootlin.com)
        by relay11.mail.gandi.net (Postfix) with ESMTPSA id 6B0BF100005;
        Fri, 30 Aug 2019 21:06:17 +0000 (UTC)
From:   Miquel Raynal <miquel.raynal@bootlin.com>
To:     Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>, Takashi Iwai <tiwai@suse.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        <devicetree@vger.kernel.org>,
        Michal Simek <michal.simek@xilinx.com>,
        alsa-devel@alsa-project.org, linux-arm-kernel@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        alexandre@bootlin.com, Miquel Raynal <miquel.raynal@bootlin.com>
Subject: [PATCH 3/3] MAINTAINERS: Add an entry for the Xilinx logicPD-I2S block
Date:   Fri, 30 Aug 2019 23:06:07 +0200
Message-Id: <20190830210607.22644-3-miquel.raynal@bootlin.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190830210607.22644-1-miquel.raynal@bootlin.com>
References: <20190830210607.22644-1-miquel.raynal@bootlin.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Reference the driver and and the bindings.

Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 5bf8f340e6a8..382c33a1adef 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17136,6 +17136,12 @@ L:	linux-serial@vger.kernel.org
 S:	Maintained
 F:	drivers/tty/serial/uartlite.c
 
+XILINX LOGICPD I2S SOUND DRIVER
+M:	Miquel Raynal <miquel.raynal@bootlin.com>
+S:	Maintained
+F:	sound/soc/xilinx/xlnx-logicpd-i2s.c
+F:	Documentation/devicetree/bindings/sound/xlnx,logicpd-i2s.yaml
+
 XILINX VIDEO IP CORES
 M:	Hyun Kwon <hyun.kwon@xilinx.com>
 M:	Laurent Pinchart <laurent.pinchart@ideasonboard.com>
-- 
2.20.1

