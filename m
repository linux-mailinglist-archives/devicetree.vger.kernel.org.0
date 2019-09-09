Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B83A4ADE5E
	for <lists+devicetree@lfdr.de>; Mon,  9 Sep 2019 20:06:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729887AbfIISGK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 9 Sep 2019 14:06:10 -0400
Received: from cyberdimension.org ([80.67.179.20]:40442 "EHLO
        gnutoo.cyberdimension.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727772AbfIISGK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 9 Sep 2019 14:06:10 -0400
X-Greylist: delayed 393 seconds by postgrey-1.27 at vger.kernel.org; Mon, 09 Sep 2019 14:06:06 EDT
Received: from gnutoo.cyberdimension.org (localhost [127.0.0.1])
        by cyberdimension.org (OpenSMTPD) with ESMTP id 35b5cadb;
        Mon, 9 Sep 2019 17:56:33 +0000 (UTC)
Received: from primarylaptop.localdomain (localhost.localdomain [IPv6:::1])
        by gnutoo.cyberdimension.org (OpenSMTPD) with ESMTP id 76691a14;
        Mon, 9 Sep 2019 17:56:33 +0000 (UTC)
From:   Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     devicetree@vger.kernel.org,
        Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
Subject: [PATCH 1/2] dt-bindings: arm: fsl: Add the Kobo Aura H2O Edition 2
Date:   Mon,  9 Sep 2019 19:59:30 +0200
Message-Id: <20190909175930.5026-1-GNUtoo@cyberdimension.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Aura H2O Edition 2 is an e-reader made by Kobo.

Signed-off-by: Denis 'GNUtoo' Carikli <GNUtoo@cyberdimension.org>
---
 Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/fsl.yaml b/Documentation/devicetree/bindings/arm/fsl.yaml
index 7294ac36f4c0..8029e8a14f63 100644
--- a/Documentation/devicetree/bindings/arm/fsl.yaml
+++ b/Documentation/devicetree/bindings/arm/fsl.yaml
@@ -148,6 +148,7 @@ properties:
         items:
           - enum:
               - fsl,imx6sll-evk
+              - kobo,aura-h2o-2
           - const: fsl,imx6sll
 
       - description: i.MX6SX based Boards
-- 
2.23.0

