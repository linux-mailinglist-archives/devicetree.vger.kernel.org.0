Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C2B7F467C92
	for <lists+devicetree@lfdr.de>; Fri,  3 Dec 2021 18:32:53 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237855AbhLCRgR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Dec 2021 12:36:17 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39568 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1358636AbhLCRgQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Dec 2021 12:36:16 -0500
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0BCBC061751
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 09:32:52 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id 875D262B37
        for <devicetree@vger.kernel.org>; Fri,  3 Dec 2021 17:32:52 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 06F52C53FD5;
        Fri,  3 Dec 2021 17:32:50 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1638552771;
        bh=MGGz4LzAd5ENeWdQOOQPgQCNDIKuzr0L5DZ/mTQ2pyY=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=mTk6wOBS/Y4BKFuKkA+uVxXZGXa6gDd8zhC78d/oqhqKPVbk+s5CtBk6HIsUlbhO7
         BX4iicevc290iHE3fXBoQMI1V3tQdV6Ow+j5Z06ddhWwr3nZxpeKaF/0GSbZQe45w0
         7jZU9nXkzWhFfnulI/sasCu0xJk9vFq5Eu2OCJfAZsnp1cq+LZrcO/Zilg/7Q8khYn
         iZIjngliWRzU1JFoqnQ/4tQJcdaB+G434PjLiiCbk+zFxmig0jB61YS3MMXgnfbokO
         o6n6zdwPFaWVLtxyPtKTD4FP9LimJiE1uWqspRF4ev9fA1hqZEAe2xKft9YXhM/R6a
         hBkSZEAZfAiNA==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     devicetree@vger.kernel.org
Cc:     dinguyen@kernel.org, broonie@kernel.org, robh+dt@kernel.org,
        p.yadav@ti.com
Subject: [PATCH 3/3] spi: cadence-quadspi: change socfpga-qspi to "cdns,qspi-nor-ver-00-10"
Date:   Fri,  3 Dec 2021 11:32:44 -0600
Message-Id: <20211203173244.3136470-3-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20211203173244.3136470-1-dinguyen@kernel.org>
References: <20211203173244.3136470-1-dinguyen@kernel.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To make the "intel,socfpga-qspi" more generic, change the binding to
"cdns,qspi-nor-ver-00-10". The "0010" represents the Module/Revision ID
number that is in the MODULE_ID register.

Fixes: f0234e62e4 ("spi: cadence-quadspi: fix write completion support")
Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 drivers/spi/spi-cadence-quadspi.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/spi/spi-cadence-quadspi.c b/drivers/spi/spi-cadence-quadspi.c
index b808c94641fa..b1421bcce67f 100644
--- a/drivers/spi/spi-cadence-quadspi.c
+++ b/drivers/spi/spi-cadence-quadspi.c
@@ -1869,7 +1869,7 @@ static const struct cqspi_driver_platdata intel_lgm_qspi = {
 	.quirks = CQSPI_DISABLE_DAC_MODE,
 };
 
-static const struct cqspi_driver_platdata socfpga_qspi = {
+static const struct cqspi_driver_platdata cdns_qspi_0010 = {
 	.quirks = CQSPI_NO_SUPPORT_WR_COMPLETION,
 };
 
@@ -1902,8 +1902,8 @@ static const struct of_device_id cqspi_dt_ids[] = {
 		.data = (void *)&versal_ospi,
 	},
 	{
-		.compatible = "intel,socfpga-qspi",
-		.data = (void *)&socfpga_qspi,
+		.compatible = "cdns,qspi-nor-ver-00-10",
+		.data = (void *)&cdns_qspi_0010,
 	},
 	{ /* end of table */ }
 };
-- 
2.25.1

