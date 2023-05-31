Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0D4B717C42
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 11:43:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229829AbjEaJnX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 05:43:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44882 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235336AbjEaJnW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 05:43:22 -0400
X-Greylist: delayed 1314 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Wed, 31 May 2023 02:43:20 PDT
Received: from imap5.colo.codethink.co.uk (imap5.colo.codethink.co.uk [78.40.148.171])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AFC91C0
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 02:43:20 -0700 (PDT)
Received: from [167.98.27.226] (helo=rainbowdash)
        by imap5.colo.codethink.co.uk with esmtpsa  (Exim 4.94.2 #2 (Debian))
        id 1q4I1D-0086Kd-WF; Wed, 31 May 2023 10:21:24 +0100
Received: from ben by rainbowdash with local (Exim 4.96)
        (envelope-from <ben@rainbowdash>)
        id 1q4I1E-001DuJ-0S;
        Wed, 31 May 2023 10:21:24 +0100
From:   Ben Dooks <ben.dooks@codethink.co.uk>
To:     devicetree@vger.kernel.org, linux-pci@vger.kernel.org,
        bhelgaas@google.com
Cc:     Conor Dooley <conor+dt@kernel.org>, Rob Herring <robh@kernel.org>,
        Sudip Mukherjee <sudip.mukherjee@codethink.co.uk>,
        Jude Onyenegecha <jude.onyenegecha@codethink.co.uk>,
        Greentime Hu <greentime.hu@sifive.com>,
        Jeegar Lakhani <jeegar.lakhani@sifive.com>,
        Ben Dooks <ben.dooks@codethink.co.uk>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: [PATCH 2/2] dt-bindings: updated max-link-speed for newer generations
Date:   Wed, 31 May 2023 10:21:21 +0100
Message-Id: <20230531092121.291770-2-ben.dooks@codethink.co.uk>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531092121.291770-1-ben.dooks@codethink.co.uk>
References: <20230531092121.291770-1-ben.dooks@codethink.co.uk>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS,
        SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add updated max-link-speed values for newer generation PCIe link
speeds.

Signed-off-by: Ben Dooks <ben.dooks@codethink.co.uk>
Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: devicetree@vger.kernel.org
---
 Documentation/devicetree/bindings/pci/pci.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/pci/pci.txt b/Documentation/devicetree/bindings/pci/pci.txt
index 6a8f2874a24d..56391e193fc4 100644
--- a/Documentation/devicetree/bindings/pci/pci.txt
+++ b/Documentation/devicetree/bindings/pci/pci.txt
@@ -22,8 +22,9 @@ driver implementation may support the following properties:
    If present this property specifies PCI gen for link capability.  Host
    drivers could add this as a strategy to avoid unnecessary operation for
    unsupported link speed, for instance, trying to do training for
-   unsupported link speed, etc.  Must be '4' for gen4, '3' for gen3, '2'
-   for gen2, and '1' for gen1. Any other values are invalid.
+   unsupported link speed, etc.  Must be '6' for gen6,  '5' for gen5,
+   '4' for gen4, '3' for gen3, '2' for gen2, and '1' for gen1.
+   Any other values are invalid.
 - reset-gpios:
    If present this property specifies PERST# GPIO. Host drivers can parse the
    GPIO and apply fundamental reset to endpoints.
-- 
2.39.2

