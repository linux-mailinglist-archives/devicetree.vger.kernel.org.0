Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15DB24D41D7
	for <lists+devicetree@lfdr.de>; Thu, 10 Mar 2022 08:33:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240078AbiCJHeG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Mar 2022 02:34:06 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235458AbiCJHeG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Mar 2022 02:34:06 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCE9343488
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 23:33:05 -0800 (PST)
Received: from mail-ed1-f71.google.com (mail-ed1-f71.google.com [209.85.208.71])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 2E11F3F60D
        for <devicetree@vger.kernel.org>; Thu, 10 Mar 2022 07:33:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646897584;
        bh=TgML8vcIsj55qZzyrpKzLOZN/rXvmVkt87rh4Y06uDM=;
        h=From:To:Cc:Subject:Date:Message-Id:MIME-Version;
        b=GEAP9l+oL78qZbRvoGBzjpJkRrcaDQzjOv7kW2gFipV7oMXEKB8icpV28zrxV5Okx
         eM9bptitZTMNYNYXUZ/j7J3w3a98qDTWA4mVNFrI6jwyH+li6TEFWAhwsisoJwvMa0
         wA+Z0keuyq3THw2Fksix5+Ws5JAlcU9jxwdU04OQFz+9fzfSYBs5ZLNZjG9jKFCmt6
         7zbKzWeZvxW/kBHz+qnrbwPAubrx8hgRz0t1Q1erqOgrO708E2xV/g9diS3eAPQf+M
         gj2JW/nL1Nr+RtTSXfC+n97v12FeYowbjslv+RXsl3AKBsdz75lIz3Eb/edYIwwXzr
         MC7l3uylt4/5A==
Received: by mail-ed1-f71.google.com with SMTP id r9-20020a05640251c900b00412d54ea618so2615121edd.3
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 23:33:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=TgML8vcIsj55qZzyrpKzLOZN/rXvmVkt87rh4Y06uDM=;
        b=DbLwDRtR6xWLR5IVRfgZ7yFcsJEzbkGJDJVGpVA/nQ1/M7kVae72R9s+3s1a9lM9G4
         Vga0PqtrTrtaRmYDNH7+mhvyrYbIaaGKYUnnGp4R2bW+FC6sK4IlaC3dlnS80JBeoBj+
         LVwyfZUE1zUlsXc0yPZC9Wgz7SeMQddPkSk9VBvZpMc4u1YQ9K0Ys77UDsjB5/xe30b3
         gM0vpdpJpEsMD2NyNeRdzhOTN6UnDtKFjsFQckl0UtEhcIsTA3eGXf0BrbyD4jY1Yd69
         5yIgmVl6ROeMCRFCPLEfGjDawflnMZGo68aLRUL/eG0tWhC8vBn+RbdzxzQ5GcBiywQ9
         3k0g==
X-Gm-Message-State: AOAM533c2G6TOCWxkV0/YsTnrRhHiBy+viz+MT4l6mcRrDW/j/vr1Kmu
        hgLE4ms2oInHjmvQWkdASUEt7ct43PazoJn2fNQNHcxT2S+EyvbJmiGgf9f2PoEE1mm0ypRcgLc
        uTYfSICaTuqbmAxze9+saL57kN4Kns6T4a6HNjaA=
X-Received: by 2002:a17:907:6d14:b0:6d9:565a:ed0 with SMTP id sa20-20020a1709076d1400b006d9565a0ed0mr3005866ejc.331.1646897583797;
        Wed, 09 Mar 2022 23:33:03 -0800 (PST)
X-Google-Smtp-Source: ABdhPJxRXVwL9gA+TMs2+QC00qdM7V4AHy3V4XlW18f1P6pA5J8sS0tY30urvNkwogvuZq2bAwWLLw==
X-Received: by 2002:a17:907:6d14:b0:6d9:565a:ed0 with SMTP id sa20-20020a1709076d1400b006d9565a0ed0mr3005858ejc.331.1646897583641;
        Wed, 09 Mar 2022 23:33:03 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id q9-20020a17090609a900b006cd30a3c4f0sm1533494eje.147.2022.03.09.23.33.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 09 Mar 2022 23:33:03 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Chanwoo Choi <cw00.choi@samsung.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        MyungJoo Ham <myungjoo.ham@samsung.com>,
        Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     Rob Herring <robh@kernel.org>
Subject: [PATCH] dt-bindings: extcon: maxim,max77843: fix ports type
Date:   Thu, 10 Mar 2022 08:32:58 +0100
Message-Id: <20220310073258.24060-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The "ports" property can contain multiple ports as name suggests, so it
should be using "ports" type from device graphs.

Reported-by: Rob Herring <robh@kernel.org>
Fixes: 9729cad0278b ("dt-bindings: extcon: maxim,max77843: Add MAX77843 bindings")
Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>

---

Hi Lee,

This is a fix for a commit in your next branch.
---
 Documentation/devicetree/bindings/extcon/maxim,max77843.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml b/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
index f9ffe3d6f957..0216ec868c3e 100644
--- a/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
+++ b/Documentation/devicetree/bindings/extcon/maxim,max77843.yaml
@@ -25,7 +25,7 @@ properties:
     $ref: /schemas/connector/usb-connector.yaml#
 
   ports:
-    $ref: /schemas/graph.yaml#/properties/port
+    $ref: /schemas/graph.yaml#/properties/ports
     description:
       Any connector to the data bus of this controller should be modelled using
       the OF graph bindings specified
-- 
2.32.0

