Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 01E6468D30F
	for <lists+devicetree@lfdr.de>; Tue,  7 Feb 2023 10:41:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231671AbjBGJlY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Feb 2023 04:41:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49102 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231463AbjBGJlX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Feb 2023 04:41:23 -0500
Received: from metis.ext.pengutronix.de (metis.ext.pengutronix.de [IPv6:2001:67c:670:201:290:27ff:fe1d:cc33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DE5ADD2
        for <devicetree@vger.kernel.org>; Tue,  7 Feb 2023 01:41:21 -0800 (PST)
Received: from ptz.office.stw.pengutronix.de ([2a0a:edc0:0:900:1d::77] helo=pengutronix.de)
        by metis.ext.pengutronix.de with esmtp (Exim 4.92)
        (envelope-from <s.trumtrar@pengutronix.de>)
        id 1pPKTM-0003Aq-86; Tue, 07 Feb 2023 10:41:08 +0100
From:   Steffen Trumtrar <s.trumtrar@pengutronix.de>
To:     Dinh Nguyen <dinguyen@kernel.org>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@pengutronix.de
Subject: [PATCH 2/2] dt-bindings: altera: Add enclustra mercury PE1
Date:   Tue,  7 Feb 2023 10:41:01 +0100
Message-Id: <20230207094101.522240-2-s.trumtrar@pengutronix.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
References: <20230207094101.522240-1-s.trumtrar@pengutronix.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-SA-Exim-Connect-IP: 2a0a:edc0:0:900:1d::77
X-SA-Exim-Mail-From: s.trumtrar@pengutronix.de
X-SA-Exim-Scanned: No (on metis.ext.pengutronix.de); SAEximRunCond expanded to false
X-PTX-Original-Recipient: devicetree@vger.kernel.org
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add binding for the enclustra PE1 baseboard from enclustra GmbH.

Signed-off-by: Steffen Trumtrar <s.trumtrar@pengutronix.de>
---
 Documentation/devicetree/bindings/arm/altera.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/arm/altera.yaml b/Documentation/devicetree/bindings/arm/altera.yaml
index 3eee03aa935c..6f306f9f2f9d 100644
--- a/Documentation/devicetree/bindings/arm/altera.yaml
+++ b/Documentation/devicetree/bindings/arm/altera.yaml
@@ -32,6 +32,7 @@ properties:
         items:
           - enum:
               - google,chameleon-v3
+              - enclustra,mercury-pe1
           - const: enclustra,mercury-aa1
           - const: altr,socfpga-arria10
           - const: altr,socfpga
-- 
2.39.0

