Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A77DD5EB478
	for <lists+devicetree@lfdr.de>; Tue, 27 Sep 2022 00:20:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229810AbiIZWUM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 18:20:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48458 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229734AbiIZWUL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 18:20:11 -0400
Received: from phobos.denx.de (phobos.denx.de [85.214.62.61])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C5F35186ED
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 15:20:09 -0700 (PDT)
Received: from tr.lan (ip-86-49-12-201.bb.vodafone.cz [86.49.12.201])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        (Authenticated sender: marex@denx.de)
        by phobos.denx.de (Postfix) with ESMTPSA id E752884DED;
        Tue, 27 Sep 2022 00:20:07 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=denx.de;
        s=phobos-20191101; t=1664230808;
        bh=xWEC88ICC5eG700pHkzVgesYgd4fAdZif8lZwc/23q0=;
        h=From:To:Cc:Subject:Date:From;
        b=NK4VO1uRR2+38kXs7pfB4ID8oJI0ZIQ6aJH9TeEQNXAQSj6O0aSBj/8sfRuIs3lMc
         Lv4FvjPk4unKDQUT9Pf0Ue9m/k0UAnGyaxKYi1nDwWaWPShZFS09Hk55BWYlMSX7Yg
         YsFRwlXUqmASg2n37H3TnQNdiFDO6KDMQo6lfAKty8C6bb86h5ivIaPL9NrJxnd/pn
         ychwmTpXdnyxjP64D6eAlvodK1S8uGvTuaxhXw3UGpaoTPiXvlFiOaNdY3dxZAbV/w
         v0Wh+fQzOPq154JLTn1qMtp2bPqP5CxpKl57FEsnHEubkS3g0iNHnB/T/2ssRktsXE
         NhXDZJB+lba7Q==
From:   Marek Vasut <marex@denx.de>
To:     linux-arm-kernel@lists.infradead.org
Cc:     Marek Vasut <marex@denx.de>,
        Alexandre Torgue <alexandre.torgue@foss.st.com>,
        Christophe Kerello <christophe.kerello@foss.st.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Maxime Coquelin <mcoquelin.stm32@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-stm32@st-md-mailman.stormreply.com
Subject: [PATCH] dt-bindings: memory-controller: st,stm32: Fix st,fmc2_ebi-cs-write-address-setup-ns
Date:   Tue, 27 Sep 2022 00:20:03 +0200
Message-Id: <20220926222003.527171-1-marex@denx.de>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: clamav-milter 0.103.6 at phobos.denx.de
X-Virus-Status: Clean
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The property st,fmc2_ebi-cs-write-address-setup-ns should really be
st,fmc2-ebi-cs-write-address-setup-ns (there is underscore _ between
fmc2 and ebi and there should be a dash - instead). This is a remnant
from conversion of old non-upstream bindings. Fix it.

Signed-off-by: Marek Vasut <marex@denx.de>
---
Cc: Alexandre Torgue <alexandre.torgue@foss.st.com>
Cc: Christophe Kerello <christophe.kerello@foss.st.com>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc: Linus Walleij <linus.walleij@linaro.org>
Cc: Maxime Coquelin <mcoquelin.stm32@gmail.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
Cc: linux-stm32@st-md-mailman.stormreply.com
To: linux-arm-kernel@lists.infradead.org
---
 .../bindings/memory-controllers/st,stm32-fmc2-ebi.yaml          | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
index 6b516d3895af2..a1f535cececcc 100644
--- a/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
+++ b/Documentation/devicetree/bindings/memory-controllers/st,stm32-fmc2-ebi.yaml
@@ -156,7 +156,7 @@ patternProperties:
         description: This property defines the data latency before reading or
           writing the first data in nanoseconds.
 
-      st,fmc2_ebi-cs-write-address-setup-ns:
+      st,fmc2-ebi-cs-write-address-setup-ns:
         description: This property defines the duration of the address setup
           phase in nanoseconds used for asynchronous write transactions.
 
-- 
2.35.1

