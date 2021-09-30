Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9291241DD43
	for <lists+devicetree@lfdr.de>; Thu, 30 Sep 2021 17:20:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245681AbhI3PWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Sep 2021 11:22:36 -0400
Received: from mail.kernel.org ([198.145.29.99]:52612 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S245411AbhI3PWg (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 30 Sep 2021 11:22:36 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id DC7FB61881;
        Thu, 30 Sep 2021 15:20:52 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1633015253;
        bh=j2TZu5BcuaT7ioGEzCsD1wNbWQadOMBLQrWMJt7yW58=;
        h=From:To:Cc:Subject:Date:From;
        b=eS/mSpQhAeLPwZuaiFN8Ef6/38FwC32y6XxZ/TVphUMqVkTTyMW08DXdoex8Asv+M
         V+yXsKYnCe4KWKqDDn9jAXE0zr4FlfZhzws1AcwtorpPz7dega4tRZzCYKcqXWWdNL
         D0wmpHkdZOQXQLyke+CNmLTNblRvlezsVnjLpTFUv0NKHs84vGkClT8/THJRgLjfAk
         8++rlNP2G16ESH0qJthdF+O7+sVmTS0V0yiMHALKpqeHWqzGUoh165t/zooXKf/nUY
         qjPT3mNjfVMUjC4agXhaE6RUcETmSws7BAKtVIiK4s+gV+QoUdQcLYvXNBuF1ufZy+
         NyA5CJrZHAI7A==
From:   Dinh Nguyen <dinguyen@kernel.org>
To:     robh+dt@kernel.org
Cc:     dinguyen@kernel.org, rzysztof.kozlowski@canonical.com,
        manish.narani@xilinx.com, michal.simek@xilinx.com,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: memory: add entry for version 3.80a
Date:   Thu, 30 Sep 2021 10:20:39 -0500
Message-Id: <20210930152039.864907-1-dinguyen@kernel.org>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add an entry for version 3.80a of the Synopsys DDR controller.

Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
---
 .../bindings/memory-controllers/synopsys,ddrc-ecc.yaml           | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/memory-controllers/synopsys,ddrc-ecc.yaml b/Documentation/devicetree/bindings/memory-controllers/synopsys,ddrc-ecc.yaml
index a24588474625..fb7ae38a9c86 100644
--- a/Documentation/devicetree/bindings/memory-controllers/synopsys,ddrc-ecc.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/synopsys,ddrc-ecc.yaml
@@ -26,6 +26,7 @@ properties:
     enum:
       - xlnx,zynq-ddrc-a05
       - xlnx,zynqmp-ddrc-2.40a
+      - snps,ddrc-3.80a
 
   interrupts:
     maxItems: 1
-- 
2.25.1

