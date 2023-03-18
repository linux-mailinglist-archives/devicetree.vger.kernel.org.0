Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5150F6BFAAC
	for <lists+devicetree@lfdr.de>; Sat, 18 Mar 2023 15:10:21 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229502AbjCROKT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 18 Mar 2023 10:10:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229671AbjCROKS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 18 Mar 2023 10:10:18 -0400
Received: from www381.your-server.de (www381.your-server.de [78.46.137.84])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AA72022DD8
        for <devicetree@vger.kernel.org>; Sat, 18 Mar 2023 07:10:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=metafoo.de;
        s=default2002; h=Content-Transfer-Encoding:MIME-Version:References:
        In-Reply-To:Message-Id:Date:Subject:Cc:To:From:Sender:Reply-To:Content-Type:
        Content-ID:Content-Description:Resent-Date:Resent-From:Resent-Sender:
        Resent-To:Resent-Cc:Resent-Message-ID;
        bh=zjnMz/Zx3HSbJFWDjX/IO24r7yJtsjKRvPoZLwfl5OU=; b=DwLmj6WHfkuiQ957NZMg/S556h
        gGqnBh7z3FJxwRUI9bMwna6TM9Six/HK4P44Wb8EFX9yxrS6DMm6DTW+BlcQLr8OPrvIIk3ojb2zs
        5T51x4F6UwQeVVHE50o9VHqb8tXoYaQohlNTnSlSekDQEFLGSMPcHx/DfI+GBrGwt2FovNxnI6J5s
        jE5ObsV0Ywk4ayCWVGVAqWZn6Og/282xeIiSGTyQSPBdPrR7nvewM/Xm0qYa1tdhduuiOFoyPV0Sh
        wvUwpFbFBKOVEnJDR9DYVxPzxRcs082X6qPWvaBYws7m0cp9w7kfR+07PVszdMOhu1sPWUiWrSE9U
        eTIwTi6Q==;
Received: from sslproxy06.your-server.de ([78.46.172.3])
        by www381.your-server.de with esmtpsa  (TLS1.3) tls TLS_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <lars@metafoo.de>)
        id 1pdWqn-0004vB-UY; Sat, 18 Mar 2023 14:44:01 +0100
Received: from [2604:5500:c0e5:eb00:da5e:d3ff:feff:933b] (helo=lars-desktop.lan)
        by sslproxy06.your-server.de with esmtpsa (TLSv1.3:TLS_AES_256_GCM_SHA384:256)
        (Exim 4.92)
        (envelope-from <lars@metafoo.de>)
        id 1pdWqn-0001MM-Ea; Sat, 18 Mar 2023 14:44:01 +0100
From:   Lars-Peter Clausen <lars@metafoo.de>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Michal Simek <michal.simek@amd.com>, devicetree@vger.kernel.org,
        Lars-Peter Clausen <lars@metafoo.de>
Subject: [PATCH 2/2] dt-bindings: i2c: cadence: Fix `clock-names` property name
Date:   Sat, 18 Mar 2023 06:42:55 -0700
Message-Id: <20230318134255.282359-2-lars@metafoo.de>
X-Mailer: git-send-email 2.30.2
In-Reply-To: <20230318134255.282359-1-lars@metafoo.de>
References: <20230318134255.282359-1-lars@metafoo.de>
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

The Cadence I2C controller device tree bindings documentation documents a
`clock-name` property. There is no such property, the correct property name
is `clock-names` with a `s`. The `s` was accidentally dropped during
conversion from txt to yaml.

Fixes: aea37006e183 ("dt-bindings: i2c: cadence: Migrate i2c-cadence documentation to YAML")
Signed-off-by: Lars-Peter Clausen <lars@metafoo.de>
---
 Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml b/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
index 2e95cda7262a..4f06ef07cdad 100644
--- a/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
+++ b/Documentation/devicetree/bindings/i2c/cdns,i2c-r1p10.yaml
@@ -33,7 +33,7 @@ properties:
     description: |
       Desired operating frequency, in Hz, of the bus.
 
-  clock-name:
+  clock-names:
     const: pclk
     description: |
       Input clock name.
-- 
2.30.2

