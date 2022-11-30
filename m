Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B71C563D030
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 09:15:14 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234464AbiK3IPL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 03:15:11 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45330 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234439AbiK3IPK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 03:15:10 -0500
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com [IPv6:2a00:1450:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 396294FFAD
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 00:15:08 -0800 (PST)
Received: by mail-ed1-x52b.google.com with SMTP id r26so20884876edc.10
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 00:15:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=7I8QL/Ha6XNxxvmNTzLyv0oQRFX98817UR5iIbDrCVQ=;
        b=kS+qJIq6r6/vc7eM30tkz54Wl55Mxc4lv9TYRmobJOkFt6bNF+mGS+FJ3ADfLhPF7/
         ik4Nx5pCBc7+RUnPPbKUs4GNvEMChCnidsydxLn2vpBBcYp5Hz9DmHzH5i41is21ThLe
         WJVSnZO+bKsEo698Qc9K89iJI4hNLUSUVHNbQn6vz7K0X6Bm7TzJat093gF64Unc2qo1
         tG9qKKGN7bQcQITRknikMkJ68UUME/wf2oz9ah0UkaTwCyGDAzFYgFVFYIRgMUo/U6no
         ZNqOB3apAZ7Jr/0n6sHlIzBCBzJRNWvuLsZbUmnoNM5sn/8DZGvwNCe000o0JbG+Ms9z
         86eA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=7I8QL/Ha6XNxxvmNTzLyv0oQRFX98817UR5iIbDrCVQ=;
        b=yj62un7DudDc/VGg1WGfE1nfZLwyKlodEFOlHX8qsy59eew20ganoUFDCeiYWD69Pa
         xqmat9K4Xj5FhgZG2qqFaJ2MlwGVsQzRywrlbwitj0OMg07UghEQXEqWS4VkPxBSlGil
         HEcbYbBJRxHW173psA/1sLmPGIxIZXrN4TuhPpI4xcb1pHdaIVHdqRdtCtMWkvUmTXhf
         Pue0VfOxo2zjrMZtZJIXVU3wZ7i4HMmAyDDzS0ygehr/dOi6SrcoQYSoKB4pRu8yapN6
         OOuWMgSlC8BVrhEq9oBNzyfcpEF5Sh+6xrQcoi1K03l8lAWCQQMKFW4Kiq3ptiUDlXui
         RbvQ==
X-Gm-Message-State: ANoB5pnZG6sGRPcwclJeh9r8U07XYADF5S96UmLQISlcOJT90oRCrsuj
        6ig2pXLL7umYzA0NBHYXoRUOrg==
X-Google-Smtp-Source: AA0mqf6ekZ3WI2ZeOyGg4/cQcagTfR7iRVKn6AvHqe4HxRolvXty3ci2rlrW2ysTZbYBzBtDdj7zyQ==
X-Received: by 2002:aa7:dc19:0:b0:461:f94:913 with SMTP id b25-20020aa7dc19000000b004610f940913mr39800501edu.102.1669796106723;
        Wed, 30 Nov 2022 00:15:06 -0800 (PST)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id jw11-20020a17090776ab00b0074134543f82sm358285ejc.90.2022.11.30.00.15.05
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 00:15:06 -0800 (PST)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org, Johan Hovold <johan@kernel.org>
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-phy@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v3 1/3] dt-bindings: phy: qcom,qmp-usb3-dp: Add sm6350 compatible
Date:   Wed, 30 Nov 2022 09:14:27 +0100
Message-Id: <20221130081430.67831-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.38.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible describing the combo phy found on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes since v2:
* Drop misc schema changes again since same schema applies to sm6350

 .../devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml   | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
index 6f31693d9868..0764cd977e76 100644
--- a/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,sc8280xp-qmp-usb43dp-phy.yaml
@@ -17,6 +17,7 @@ properties:
   compatible:
     enum:
       - qcom,sc8280xp-qmp-usb43dp-phy
+      - qcom,sm6350-qmp-usb3-dp-phy
 
   reg:
     maxItems: 1
-- 
2.38.1

