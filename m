Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 06BCF285644
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 03:25:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726771AbgJGBZ2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 21:25:28 -0400
Received: from perceval.ideasonboard.com ([213.167.242.64]:39290 "EHLO
        perceval.ideasonboard.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726755AbgJGBZ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 21:25:28 -0400
Received: from pendragon.lan (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 685E21AFA;
        Wed,  7 Oct 2020 03:25:26 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602033926;
        bh=Njh5LksoKUFw4ygPdGey3pAhnS9z0Ij/2vU8KweF3OY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=S4OfbtcOpSzSH4WqQDLtg5zOqA5noc5CewG+ECp0oeDBpw9lwnVcG/oEcUcWSz9OP
         sau27RnnUdhiI8MDtIGrK7OztNtdvE2sFtbOknx6jcDND7KbPilEGYAw4uHRNpElkV
         p2YAGOKLByU1Zm2rSnbw1kIXhx+vLvf0CbMIbJnI=
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     dri-devel@lists.freedesktop.org
Cc:     Stefan Agner <stefan@agner.ch>, Marek Vasut <marex@denx.de>,
        devicetree@vger.kernel.org,
        =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>,
        Rob Herring <robh+dt@kernel.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 3/7] dt-bindings: display: mxsfb: Add a bus-width endpoint property
Date:   Wed,  7 Oct 2020 04:24:34 +0300
Message-Id: <20201007012438.27970-4-laurent.pinchart@ideasonboard.com>
X-Mailer: git-send-email 2.27.0
In-Reply-To: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
References: <20201007012438.27970-1-laurent.pinchart@ideasonboard.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

When the PCB routes the display data signals in an unconventional way,
the output bus width may differ from the bus width of the connected
panel or encoder. For instance, when a 18-bit RGB panel has its R[5:0],
G[5:0] and B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10]
and LCD_DATA[23:18], the output bus width is 24 instead of 18 when the
signals are routed to LCD_DATA[5:0], LCD_DATA[11:6] and LCD_DATA[17:12].

Add a bus-width property to describe this data routing.

Signed-off-by: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
---
Changes since v1:

- Fix property name in binding
---
 .../devicetree/bindings/display/fsl,lcdif.yaml       | 12 ++++++++++++
 1 file changed, 12 insertions(+)

diff --git a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
index 404bd516b7f5..14b6103a9bd1 100644
--- a/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
+++ b/Documentation/devicetree/bindings/display/fsl,lcdif.yaml
@@ -58,6 +58,18 @@ properties:
         type: object
 
         properties:
+          bus-width:
+            enum: [16, 18, 24]
+            description: |
+              The output bus width. This value overrides the configuration
+              derived from the connected device (encoder or panel). It should
+              only be specified when PCB routing of the data signals require a
+              different bus width on the LCDIF and the connected device. For
+              instance, when a 18-bit RGB panel has its R[5:0], G[5:0] and
+              B[5:0] signals connected to LCD_DATA[7:2], LCD_DATA[15:10] and
+              LCD_DATA[23:18] instead of LCD_DATA[5:0], LCD_DATA[11:6] and
+              LCD_DATA[17:12], bus-width should be set to 24.
+
           remote-endpoint:
             $ref: /schemas/types.yaml#/definitions/phandle
 
-- 
Regards,

Laurent Pinchart

