Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0721059C2A1
	for <lists+devicetree@lfdr.de>; Mon, 22 Aug 2022 17:27:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236552AbiHVP0P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 22 Aug 2022 11:26:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55540 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236791AbiHVPZl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 22 Aug 2022 11:25:41 -0400
Received: from mail-wm1-x32b.google.com (mail-wm1-x32b.google.com [IPv6:2a00:1450:4864:20::32b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3183A2CDF0
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:05 -0700 (PDT)
Received: by mail-wm1-x32b.google.com with SMTP id k18-20020a05600c0b5200b003a5dab49d0bso6201875wmr.3
        for <devicetree@vger.kernel.org>; Mon, 22 Aug 2022 08:23:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=BWUGrHkaLJ+f8sUmSRLyh+C6cdVWAvvLrWuYnb7jGXg=;
        b=TchWHGRX1T9JNivyDJngVzTYcmYvijIZcRb4rP7vp95ymGO3zGD4rWhcwkzb6YCET+
         JidLsaU7GYyTns3m7WQrFDmDSq3Dl8VICAK2klHeKoT5agr1CkV+7+D9uwygCI8/8sUh
         f7Zhuzy1dCvpkE9I3U7H+FgwJMkDxWQjeUsVoBBwChCduo2qJ15eyRD4SLWuQvIvGA41
         nD4X1AfuPdCc0VHpho5FWwbJnK022rX1S+xUgdPlmmmYBf/QX85X6TkvknQA+taZr8F+
         QxuL0LObrIReJHAKw4EgjHLN5ltkNb/LNo2tRr+aEqk48Eznio1tKL9/wMkJdNwxXOKz
         OHWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=BWUGrHkaLJ+f8sUmSRLyh+C6cdVWAvvLrWuYnb7jGXg=;
        b=RvgKWT+jC8jtE4PuZ/Fk8QzGJf7MwvhgtByVK5jUgH/ZxcxaoScotCplOZn9nbcPtv
         lzpO3xP+7gNt1ZA3fwy6WyLiISV6d9W/LkyYGU3EMwFsgkhXvYCpfhWonbMmNETphCi8
         rk1yBQaqEXnx4Oz3tQaKAAOYbp+KlgI1Wrj/Aa225j0VoddkTwXfD2kA+EZsFFLjmg4M
         fS6as6mXnoIOaY2GclOlHoo4+rv+rTMtxwRP9NvO3SxUhlja9nQoi0BbOMRTkl3MgswI
         6di4aOnMZek4arPXUuWb5IJS1fWDB+JunOScpX4lZQKB7heb7ZKTgBpObojWZ5HcHi1Y
         KEuw==
X-Gm-Message-State: ACgBeo1t6UiJ/pGRW4ElbAJUIoS/UeFYBjRkbS3jUOX2VkD9se0dEXrp
        Eq8WmR5EAxGpNh33rUT1Xy3PVBxXDhAqYw==
X-Google-Smtp-Source: AA6agR4ceSvYnSn7kDjgdc353ACrRiROtD5zqUbyWKxzDZVaIxR6QIyk3jXpI1Iyws1Ut47+6vemWA==
X-Received: by 2002:a05:600c:5010:b0:3a6:804:5b08 with SMTP id n16-20020a05600c501000b003a608045b08mr15303357wmr.10.1661181783636;
        Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
Received: from localhost.localdomain (cpc92880-cmbg19-2-0-cust679.5-4.cable.virginm.net. [82.27.106.168])
        by smtp.gmail.com with ESMTPSA id q11-20020a5d61cb000000b00223b8168b15sm11850350wrv.66.2022.08.22.08.23.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 22 Aug 2022 08:23:03 -0700 (PDT)
From:   Jean-Philippe Brucker <jean-philippe@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     maz@kernel.org, devicetree@vger.kernel.org,
        Jean-Philippe Brucker <jean-philippe@linaro.org>
Subject: [PATCH 3/3] dt-bindings: interrupt-controller: arm,gic: Support two address and size cells
Date:   Mon, 22 Aug 2022 16:22:24 +0100
Message-Id: <20220822152224.507497-4-jean-philippe@linaro.org>
X-Mailer: git-send-email 2.37.1
In-Reply-To: <20220822152224.507497-1-jean-philippe@linaro.org>
References: <20220822152224.507497-1-jean-philippe@linaro.org>
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

It should be valid for a GICv2m node, child of a GICv2 node, to use two
cells per reg address and size. The QEMU virt device-tree currently
fails validation because the schema imposes a single address and size
cell. Amend the rule.

Signed-off-by: Jean-Philippe Brucker <jean-philippe@linaro.org>
---
 .../devicetree/bindings/interrupt-controller/arm,gic.yaml     | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
index 62219a5c21c5..220256907461 100644
--- a/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
+++ b/Documentation/devicetree/bindings/interrupt-controller/arm,gic.yaml
@@ -64,9 +64,9 @@ properties:
   interrupt-controller: true
 
   "#address-cells":
-    enum: [ 0, 1 ]
+    enum: [ 0, 1, 2 ]
   "#size-cells":
-    const: 1
+    enum: [ 1, 2 ]
 
   "#interrupt-cells":
     const: 3
-- 
2.37.1

