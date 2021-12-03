Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DF5FA467900
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 15:02:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242940AbhLCOFo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 09:05:44 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:43052 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237277AbhLCOFn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 09:05:43 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 01706B82749
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 14:02:19 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id EFF9BC53FC7;
        Fri,  3 Dec 2021 14:02:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638540137;
        bh=9ajHpeS6kr3mi4mButVxzrRJqooaAZz5lVZTMgrfIdE=;
        h=From:To:Cc:Subject:Date:From;
        b=oBf7g3sx+du98LupFj9XhTxc8xs2AW4cxskQZ6ZYofOPqDntsJRBxVIX/RlLhbEkY
         lHTIRivhobiC3o7AjVWm0xcSxOaWWRImNJpvyFehmTnVTfE1IfjuVYjFMTfLRtddxV
         +CreVabvjyWRJM6w7GKBU19Js9PD2XZzb8hS/DLrCw/9bBUPIicefZA65uQuw9j3UH
         db6ndjaNqr6aT+myIRfsa0RKZJGetia6C7XG3krF2ivPps94yp2fru02FptTHVNUcm
         MchCxptsF0DMGajCeoTY5wJITrQklwZvz7dnCc0S1c7DjnUBpWPxFy9b3GLqYBXwaK
         XOdQ9rzFQnVwg==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        p.yadav@ti.com
Subject: [PATCHv2 1/3] dt-bindings: spi: cadence-quadspi: document "cdns,qspi-nor-ver-00-10"
Date:   Fri,  3 Dec 2021 08:01:24 -0600
Message-Id: <20211203140126.3132770-1-dinguyen@kernel.org>
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

