Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0E1A56BFA81
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 14:45:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229654AbjCRNpx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 09:45:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40488 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229602AbjCRNpw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 09:45:52 -0400
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E486013DD9
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 06:45:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
        s=default2002; h=Content-Transfer-Encoding:MIME-Version:Message-Id:Date:
        Subject:Cc:To:From:Sender:Reply-To:Content-Type:Content-ID:
        Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
        :Resent-Message-ID:In-Reply-To:References;
        bh=tq4Y9Q8t3Fg3kkQxCb7sVUL557zwzQqzJJAq+3x7Ez4=; b=cDYbQdHcXMSqK8UnI5oPyhQpuF
        cOui74jAMcg1bfXNLDZnMpSIh00n6w+sWTs6M00VMNWmYNXjQepBUDXditKKxGrxOhWnb29ww57rX
        1b4NdQaqvalh2di78fmZ+mkm/brz4T1c2oAPYkUYzKuVNOp7B7V5QefvnvmlAW1SUXXlIKkscSEXd
        bjH7GrPvd/X5X+N95NW8IUtGJHFc0d01Ji93s+9rJLfrRkXV1d0EibVavPDExv6uey4eg0hsu039y
        R0fOdrHIrj17PeE4L+v/8PG/mkSTWwseLUgAqXpI4zJJz8bSk8XtFEDLZjxCJmQb1j/2DCLpvljZH
        56l+CVzA==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
        by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <lars@metafoo.de>)
        id 1pdWqm-0004uJ-G6; Sat, 18 Mar 2023 14:44:00 +0100
Received: from [2604:5500:c0e5:eb00:da5e:d3ff:feff:933b] (helo=lars-desktop.lan)
        by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <lars@metafoo.de>)
        id 1pdWqm-0001MM-1Q; Sat, 18 Mar 2023 14:44:00 +0100
From:   Lars-Peter Clausen <lars@metafoo.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org,
        Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH 1/2] dt-bindings: i2c: xiic: Fix `clock-names` property name
Date:   Sat, 18 Mar 2023 06:42:54 -0700
Message-Id: <20230318134255.282359-1-lars@metafoo.de>
X-Mailer: git-send-email 2.30.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Authenticated-Sender: lars@metafoo.de
X-Virus-Scanned: Clear (ClamAV 0.103.8/26847/Sat Mar 18 08:21:32 2023)
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_NONE,SPF_PASS,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Xilinx I2C controller device tree bindings documentation documents a
`clock-name` property. There is no such property, the correct property name
is `clock-names` with a `s`. The `s` was accidentally dropped during
conversion from txt to yaml.

Fixes: f86ca4147976 ("dt-bindings: i2c: xiic: Migrate i2c-xiic documentation to YAML")
Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml b/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
index 1b598638d457..cc40a61a1c8e 100644
--- a/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
+++ b/Documentation/devicetree/bindings/i2c/xlnx,xps-iic-2.00.a.yaml
@@ -27,7 +27,7 @@ properties:
   clocks:
     minItems: 1
 
-  clock-name:
+  clock-names:
     const: pclk
     description: |
       Input clock name.
-- 
2.30.2

