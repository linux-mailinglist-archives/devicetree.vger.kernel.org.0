Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BB7CA467D18
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 19:17:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382516AbhLCSUs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 13:20:48 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:57484 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382520AbhLCSUr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 13:20:47 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 7732FB8266A
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 18:17:22 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 91488C53FCD;
        Fri,  3 Dec 2021 18:17:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638555441;
        bh=9ajHpeS6kr3mi4mButVxzrRJqooaAZz5lVZTMgrfIdE=;
        h=From:To:Cc:Subject:Date:From;
        b=P/MNj3QZ0inXNYDzKoQ9T71XE2mtyRro4Qe+rVtR5yd08juU/B7Ae4jsgCX0t9Atf
         gdjt1kalt4CYogBhJHYoU1iMTixGApgTLwSsS4Ny2iRZXTdAa5AqnZuLRCAYGC52MH
         Z2SyN2/cf1AO6ZJ6fAow7LZvjRR9RtEGSb0OeIkSrHkJcHbm5rCFl2JGg1i3bY28fI
         ewH8r6tFCwwehMAgOSf+UCjoCMdPVLBtj7KbKJbepCOmTLQ5IrAXAirxk6HusvVNXw
         aPtIV8wDCYwF7dYC4h4b9OqXcoySSKVjHJBOoobeZZAl+d8UiVQg2aQ7VlsdWbtomU
         hnALTPTE9DmYQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        p.yadav@ti.com
Subject: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document "cdns,qspi-nor-ver-00-10"
Date:   Fri,  3 Dec 2021 12:17:12 -0600
Message-Id: <20211203181714.3138611-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QSPI controller on Intel's SoCFPGA platform does not implement the
CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
results in a crash.

The module/revision ID is written in the MODULE_ID register. For this
variance, bits 23-8 is 0x0010.

Introduce the dts binding "cdns,qspi-nor-ver-00-10" to differentiate the
hardware.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v2: change binding to "cdns,qspi-nor-0010" to be more generic for other
    platforms
---
 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index ca155abbda7a..2833e1c8841d 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
@@ -29,6 +29,7 @@ properties:
               - ti,am654-ospi
               - intel,lgm-qspi
               - xlnx,versal-ospi-1.0
+              - cdns,qspi-nor-ver-00-10
           - const: cdns,qspi-nor
       - const: cdns,qspi-nor
 
-- 
2.25.1

