Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D2ED749A614
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 03:18:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S3411303AbiAYAc5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Jan 2022 19:32:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37752 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S3409142AbiAYAZF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Jan 2022 19:25:05 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42232C0C63CA
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 14:06:58 -0800 (PST)
Received: from gallifrey.ext.pengutronix.de ([2001:67c:670:201:5054:ff:fe8d:eefb] helo=bjornoya.blackshift.org)
        by metis.ext.pengutronix.de with esmtps (TLS1.3:ECDHE_RSA_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <mkl@pengutronix.de>)
        id 1nC7UG-0004Qm-Mt
        for devicetree@vger.kernel.org; Mon, 24 Jan 2022 23:06:56 +0100
Received: from dspam.blackshift.org (localhost [127.0.0.1])
        by bjornoya.blackshift.org (Postfix) with SMTP id B79F6213C3
        for <devicetree@vger.kernel.org>; Mon, 24 Jan 2022 22:06:54 +0000 (UTC)
Received: from hardanger.blackshift.org (unknown [172.20.34.65])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (Client did not present a certificate)
        by bjornoya.blackshift.org (Postfix) with ESMTPS id 7BDEA213B0;
        Mon, 24 Jan 2022 22:06:54 +0000 (UTC)
Received: from blackshift.org (localhost [::1])
        by hardanger.blackshift.org (OpenSMTPD) with ESMTP id a17addcb;
        Mon, 24 Jan 2022 22:06:54 +0000 (UTC)
From:   Marc Kleine-Budde <mkl@pengutronix.de>
To:     linux-can@vger.kernel.org
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Marc Kleine-Budde <mkl@pengutronix.de>,
        Manivannan Sadhasivam <mani@kernel.org>,
        Thomas Kopp <thomas.kopp@microchip.com>
Subject: [PATCH net-next 1/4] dt-binding: can: mcp251xfd: include common CAN controller bindings
Date:   Mon, 24 Jan 2022 23:06:50 +0100
Message-Id: <20220124220653.3477172-2-mkl@pengutronix.de>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220124220653.3477172-1-mkl@pengutronix.de>
References: <20220124220653.3477172-1-mkl@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2001:67c:670:201:5054:ff:fe8d:eefb
X-SA-Exim-Mail-From: mkl@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Since commit

| 1f9234401ce0 ("dt-bindings: can: add can-controller.yaml")

there is a common CAN controller binding. Add this to the mcp251xfd
binding.

Cc: Manivannan Sadhasivam <mani@kernel.org>
Cc: Thomas Kopp <thomas.kopp@microchip.com>
Signed-off-by: Marc Kleine-Budde <mkl@pengutronix.de>
---
 .../devicetree/bindings/net/can/microchip,mcp251xfd.yaml       | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml b/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
index 2a884c1fe0e0..b3826af6bd6e 100644
--- a/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
+++ b/Documentation/devicetree/bindings/net/can/microchip,mcp251xfd.yaml
@@ -11,6 +11,9 @@ title:
 maintainers:
   - Marc Kleine-Budde <mkl@pengutronix.de>
 
+allOf:
+  - $ref: can-controller.yaml#
+
 properties:
   compatible:
     oneOf:
-- 
2.34.1


