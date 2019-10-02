Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CC4C1C8B86
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 16:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728360AbfJBOmV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 10:42:21 -0400
Received: from mail.kernel.org ([198.145.29.99]:49262 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1728376AbfJBOmS (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 2 Oct 2019 10:42:18 -0400
Received: from localhost (lfbn-1-10718-76.w90-89.abo.wanadoo.fr [90.89.68.76])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 018DE21920;
        Wed,  2 Oct 2019 14:42:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1570027337;
        bh=bcfy23oEIxZP7tOqO4JE4Hx808e0wIs3gsgH8/rw7xY=;
        h=From:To:Cc:Subject:Date:From;
        b=cDATwQ7GsuFGdPhrbpx3IF8RT+BqArNxLwMf8RM1PBDFNfbi2PY0hKrfbO/u/vQJd
         CFkwWg+uUo4dqchK21qZrjn7Y1nDNA0+SBEvEiAYh8jwU39C4exTlMsR+PS/kj6gXo
         ZuiEz9GAOg+0vsr80j1oxEnjS82JH1733Y8yeSY0=
From:   Maxime Ripard <mripard@kernel.org>
To:     Mark Rutland <mark.rutland@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Cc:     daniel.baluta@nxp.com, devicetree@vger.kernel.org,
        Maxime Ripard <mripard@kernel.org>
Subject: [PATCH] dt-bindings: dsp: Fix fsl,dsp example
Date:   Wed,  2 Oct 2019 16:42:04 +0200
Message-Id: <20191002144204.114346-1-mripard@kernel.org>
X-Mailer: git-send-email 2.23.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The fsl,dsp binding requires a memory-region, yet its example doesn't have
one which results in a warning. Let's add a memory-region phandle to the
example.

Fixes: 7db2f2dfc701 ("dt-bindings: dsp: fsl: Add DSP core binding support")
Signed-off-by: Maxime Ripard <mripard@kernel.org>
---
 Documentation/devicetree/bindings/dsp/fsl,dsp.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
index 3248595dc93c..f04870d84542 100644
--- a/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
+++ b/Documentation/devicetree/bindings/dsp/fsl,dsp.yaml
@@ -85,4 +85,5 @@ examples:
                         <&pd IMX_SC_R_DSP_RAM>;
         mbox-names = "txdb0", "txdb1", "rxdb0", "rxdb1";
         mboxes = <&lsio_mu13 2 0>, <&lsio_mu13 2 1>, <&lsio_mu13 3 0>, <&lsio_mu13 3 1>;
+        memory-region = <&dsp_reserved>;
     };
-- 
2.23.0

