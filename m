Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1B5B659E41D
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 15:31:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236912AbiHWNLG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 09:11:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237040AbiHWNKU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 09:10:20 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ACE52134200
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:11:40 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id n24so11006021ljc.13
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 03:11:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=hw2j/4pLlHBNSTZTWWhfb4AnPh8ql3cI9ASIz+WVLdI=;
        b=SlaGgjcTZDU2Cv3G8yUnbFhPsB+iAh7kLOsVOlXs1XdVHwg4pKiXl1darE9glMkP3S
         TymTkKXsm6xoYFxYzLqhSEmo7KD6uX5R7T1Hf7uKpvOLJCTDyQ/xiSTqiqSufGwZGjcF
         x3cPaLYQHWAKbK8xZ7jCsqIpLI95vKvzopXtTAV1TOrUK6IoKbkSeB4DSQwwVFk+ouc7
         Du/TwAbTL9EtOD5kykQD1gWL1u/sx8es8OX34qYOTIQo8r6gmDTplLwPJ5MXRDYzBXd1
         wgSWPz1P48eE+KjtdGiNYLONgkjUfsnc8tjoZi6Kht8a8dENhziM3zsnXavrqsutY3vO
         p6Pg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=hw2j/4pLlHBNSTZTWWhfb4AnPh8ql3cI9ASIz+WVLdI=;
        b=5/e3qXzqxHMNFo6vrd34O/VMHRM8n+Ad2g1gdVMhnhm1xZN/G272pnoJ8mLXRkbxOY
         0+Fgz8aK2NQ53GF+KA407qzN6P/fQUbpqfBnwiWa4FGGOq4SfSDR5zTuShB23uXOerqO
         HrG9CRJckA0KT2XfAuFtQou1GFRL7RRHvnHdu60IZyPC0ndKkIgxVIDaFdDv68pnRW6m
         H8JFzrIMCPQyU62mcDCtJlUlOVbPHLi9/WTJk88h8MzWNez/1WtZvFu52ffJ0huBPvb0
         PmnbAiosuQl7QWnYlrGcm95EdaSAOrZBU6zvIAMDdLa/UdOfqcNjfwI9CP7Yk8o3gVd3
         7sUA==
X-Gm-Message-State: ACgBeo0JogK1FMz/0fb/jT0OH3kxKDsmgfXNoBApfou0dALYCUxwEaYB
        DCZFwe/5IWe0Pf1TDBj8PQIpPg==
X-Google-Smtp-Source: AA6agR4jYO3jxv/cP+R0PcOjMe1ISfIavZaIP2e0W7K1bX4G+0TdlXOY+kSP2zMaY0pGfvFCyTurLQ==
X-Received: by 2002:a2e:a887:0:b0:25e:3174:fb67 with SMTP id m7-20020a2ea887000000b0025e3174fb67mr6392657ljq.337.1661249424724;
        Tue, 23 Aug 2022 03:10:24 -0700 (PDT)
Received: from krzk-bin.. (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id n27-20020a05651203fb00b0048af2fe78c4sm1513034lfq.3.2022.08.23.03.10.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 23 Aug 2022 03:10:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Lee Jones <lee@kernel.org>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: mfd: syscon: drop ref from reg-io-width
Date:   Tue, 23 Aug 2022 13:10:21 +0300
Message-Id: <20220823101021.387034-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

reg-io-width is a standard property, so no need for defining its type

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/mfd/syscon.yaml | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mfd/syscon.yaml b/Documentation/devicetree/bindings/mfd/syscon.yaml
index c958086a5fc3..9c75daff6ec1 100644
--- a/Documentation/devicetree/bindings/mfd/syscon.yaml
+++ b/Documentation/devicetree/bindings/mfd/syscon.yaml
@@ -81,7 +81,6 @@ properties:
     description: |
       The size (in bytes) of the IO accesses that should be performed
       on the device.
-    $ref: /schemas/types.yaml#/definitions/uint32
     enum: [1, 2, 4, 8]
 
   hwlocks:
-- 
2.34.1

