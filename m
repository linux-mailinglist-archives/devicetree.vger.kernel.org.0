Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 28234478026
	for <lists+devicetree@lfdr.de>; Thu, 16 Dec 2021 23:49:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232778AbhLPWtR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 16 Dec 2021 17:49:17 -0500
Received: from ams.source.kernel.org ([145.40.68.75]:36088 "EHLO
        ams.source.kernel.org" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232439AbhLPWtR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 16 Dec 2021 17:49:17 -0500
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by ams.source.kernel.org (Postfix) with ESMTPS id 1033EB82656
        for <devicetree@vger.kernel.org>; Thu, 16 Dec 2021 22:49:16 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 19A18C36AEA;
        Thu, 16 Dec 2021 22:49:14 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1639694954;
        bh=pXa6QAtvL3D45U6/sIsAWYph7P8xSuGk1YzqjNguGio=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=J2l9W+1DiyRA0LtAB5X5UolzhmXoWVPENBnfP5JLwfty4P4eR256gWcxM1bg+CUvk
         xi00d4OD/FqG1O8cLuFZApmZDSOozVddDQjLVEFjXiC86ZclawuvWopKIEHLcLq7y3
         zwuNdfFl80xfWoyvUhTCFO4eKxpb/s3gR7VrmR9e1NwYZf6ntICLRLpDV4PPQdTa3x
         WrnD1rGDBru2Tzp4SCEuIU5oP7xYUeygaGmwliHRN0b+Y3mlIRIURYMilaRqrNh1Xw
         YrYIaHHFC+HnZJrE3FU9ZkYldEAhQwcoTJQIzribkCMSyN0L4S5Kg2RNBIc7jWMcn3
         NbFgtqiFSvEDQ==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, robh+dt@kernel.org, p.yadav@ti.com
Subject: [PATCHv3 1/2] dt-bindings: spi: cadence-quadspi: document "intel,socfpga-qspi"
Date:   Thu, 16 Dec 2021 16:49:01 -0600
Message-Id: <20211216224902.374403-2-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211216224902.374403-1-dinguyen@kernel.org>
References: <20211216224902.374403-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QSPI controller on Intel's SoCFPGA platform does not implement the
CQSPI_REG_WR_COMPLETION_CTRL register, thus a write to this register
results in a crash.

Introduce the dts compatible "intel,socfpga-qspi" to differentiate the
hardware.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
v3: revert to "intel,socfpga-qspi"
v2: change binding to "cdns,qspi-nor-0010" to be more generic for other
    platforms
---
 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index ca155abbda7a..037f41f58503 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
@@ -29,6 +29,7 @@ properties:
               - ti,am654-ospi
               - intel,lgm-qspi
               - xlnx,versal-ospi-1.0
+              - intel,socfpga-qspi
           - const: cdns,qspi-nor
       - const: cdns,qspi-nor
 
-- 
2.25.1

