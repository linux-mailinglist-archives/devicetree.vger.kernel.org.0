Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0DA64C8BEA
	for <lists+devicetree@lfdr.de>; Tue,  1 Mar 2022 13:45:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234835AbiCAMpl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 1 Mar 2022 07:45:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234132AbiCAMpk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 1 Mar 2022 07:45:40 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 09170985AF
        for <devicetree@vger.kernel.org>; Tue,  1 Mar 2022 04:44:59 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id u20so26678439lff.2
        for <devicetree@vger.kernel.org>; Tue, 01 Mar 2022 04:44:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0tcocVIkOCPzGpdROFxsT753ixUhU49aJwL/lTfVMnE=;
        b=w91vKAjBFIRcEvV6z4viPzJGw/HeDfSabkwGFg+aYoqHuXu+1EvckKwJJjX+csDTw0
         yMg8Y9kvQ9RnAmLGH0hbmR7iLG6Qj1Xv7tG3mDrfT0mJT7QoCGlgpQ0H1cLL54tWTOOl
         erJPikXXEXWEDk5XQGX8tonfaz3XOm4ZS+ZOijXQdO5QfghbnWyyR7AzCZ6uwBSltnor
         wdGC26klIYokwRFcVrROlxBFQK+rlriQDjk4QzkgoTHccqVvPEitYH8qV/VgJG20YrD5
         +CJpgK/hAR10EgRG3fJPDXODqgxPH9fOI27FhkJY5gomuz3sszVWKhnkzJMe1W7rqE+N
         zQHg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=0tcocVIkOCPzGpdROFxsT753ixUhU49aJwL/lTfVMnE=;
        b=p+FV9Wb2wL138o78u5fqNEOin8xsGwXo+0WsbErSiTm3B2gV8qGeKZOcVhkYobK7Y5
         EQGMSbYLnz6lKCJJFCUYIKMF6vDhqrrajgo+m+DPN+tpUgPNLfuES8nZDDh4rUWlzstQ
         9QN+xOtkxSPYJX+e7+kjF7vBlSAd2Bt9nFgPF3ZU/8FscMEZ5cUBKZOsc4zxLxO7a7RO
         GgZC8sXdDm1RavS19p1KIcFdvnLhpNPbHyzgtjGHrTyp7+jN5jbWLUoFHfwu5ZL/nF5F
         PYrsG+AGeFIQVLBUI8MN65qeyWeJBvo3hoMlAJpkip7RFLDjFl6qreSgWxsL1X1Jja+U
         UpXg==
X-Gm-Message-State: AOAM531ShOyW/H7vwC/qrMyuiL9wR7GAcHd80tAXi8JRwZSnpishioSN
        megDK0v2ViaI6i+kbxLKgZrysw==
X-Google-Smtp-Source: ABdhPJxuR8BW7zJzU3NkoFvhDb41wtZFnU6P8ZHcbvkhrBRzoeuktbhrDPZs4FOuYq8nwc0PAT3JXQ==
X-Received: by 2002:ac2:5492:0:b0:43f:1c2e:b04c with SMTP id t18-20020ac25492000000b0043f1c2eb04cmr16373479lfk.502.1646138697407;
        Tue, 01 Mar 2022 04:44:57 -0800 (PST)
Received: from localhost.localdomain (c-fdcc225c.014-348-6c756e10.bbcust.telenor.se. [92.34.204.253])
        by smtp.gmail.com with ESMTPSA id g18-20020a19ee12000000b00443af3721f2sm1467944lfb.237.2022.03.01.04.44.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 01 Mar 2022 04:44:57 -0800 (PST)
From:   Linus Walleij <linus.walleij@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Marcus Cooper <codekipper@gmail.com>
Cc:     linux-pm@vger.kernel.org,
        Matti Vaittinen <matti.vaittinen@fi.rohmeurope.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: power: supply: ab8500_fg: Add line impedance
Date:   Tue,  1 Mar 2022 13:42:53 +0100
Message-Id: <20220301124254.2338270-1-linus.walleij@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve the inner resistance measurement of the battery we need
to account for the line impedance of the connector to the battery.

Cc: devicetree@vger.kernel.org
Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
---
 .../bindings/power/supply/stericsson,ab8500-fg.yaml          | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml
index 54ac42a9d354..2ce408a7c0ae 100644
--- a/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml
+++ b/Documentation/devicetree/bindings/power/supply/stericsson,ab8500-fg.yaml
@@ -25,6 +25,11 @@ properties:
     $ref: /schemas/types.yaml#/definitions/phandle
     deprecated: true
 
+  line-impedance-micro-ohms:
+    description: The line impedance between the battery and the
+      AB8500 inputs, to compensate for this when determining internal
+      resistance.
+
   interrupts:
     maxItems: 5
 
-- 
2.34.1

