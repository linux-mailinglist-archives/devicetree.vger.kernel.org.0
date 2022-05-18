Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2053852C41B
	for <lists+devicetree@lfdr.de>; Wed, 18 May 2022 22:22:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242414AbiERUKN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 May 2022 16:10:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47360 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242400AbiERUKA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 May 2022 16:10:00 -0400
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9006F19C3A4
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:09:52 -0700 (PDT)
Received: by mail-wr1-x429.google.com with SMTP id j25so4149836wrc.9
        for <devicetree@vger.kernel.org>; Wed, 18 May 2022 13:09:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=OAGkT1M5jMR9soataqZ/aDlCf+slpduEKHamzxDek+k=;
        b=nWSEVQAcxxJIiQkZxG8xgSo5vu5I9ZUHiImr8EADEL8kSkFbfVM8Z+pM6spbJA7xIS
         x2EBkxIl74cC6FLEssPgc6edf8Kk1rhUVcEReBqLBiYH601c150gPmU22b3TeXotis0S
         6cJ1RtsIKomQ414rySZaGUyuVcbJcHgmi3M/ScbiW0g+tnr3uixJjSARK+khNPx0Wu20
         Da19MgE010SDvuxpfHelPqh9BNATH8CsxheYNWGZyFBmqLo5hAUbGzsbTfEHHRc2xjNg
         InDxaIl+0rtY3n4ABjaBp9sji3I8l4Y0Fcw0mfILYcoSgry7sN6ziRIUQntFfiJ/YKmO
         OQrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=OAGkT1M5jMR9soataqZ/aDlCf+slpduEKHamzxDek+k=;
        b=H7P7x08Qo6YQw6SF8vz48/CRPnnHyH3cFJPXYhBcyyWnfSmuKXF310WW8UKkompJwO
         A4ouGcAVVundjuOtBKNGeWOPhTTh1arSfDqimv3s6/VaIEOEp3VGQ+YkR2D9ojWBAJFS
         DSiGajnqr/zRMyMHE7qwZrpKT/gsCP5wYPDWh9dD+qpQ5zb+66W8qXhokt7aIAFE6XWK
         6h2tV7pw8U7ky6UGKyxZqsjErCKIk0JKz1DzlOER08GJ1HksPfFPqqwG0SvkazBzDRAk
         kYvdUv5RwqxDztZdnGpOgvb58r2kJxddcnGGGJDETvpzgysUagT8SGqo7k6MBUnDvRVL
         LFsw==
X-Gm-Message-State: AOAM532LRtBTOflxPnsMU76gztsIEK1dsf8xMvP1clwYKq1t5HHaJkdq
        2XmsJEXO+KYtu+4kj06O8EAp2g==
X-Google-Smtp-Source: ABdhPJx7027jt1OtEzgemX8nNGTw2DPHXeDkAAtNb+diLtz+l8F2qMFU1DeU5NN/nWByXPmhBkliSw==
X-Received: by 2002:a5d:4741:0:b0:20d:2a5:6b2d with SMTP id o1-20020a5d4741000000b0020d02a56b2dmr1161260wrs.100.1652904591171;
        Wed, 18 May 2022 13:09:51 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id o23-20020a05600c511700b0039456c00ba7sm6859281wms.1.2022.05.18.13.09.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 May 2022 13:09:50 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     andrew@lunn.ch, broonie@kernel.org, calvin.johnson@oss.nxp.com,
        davem@davemloft.net, edumazet@google.com, hkallweit1@gmail.com,
        jernej.skrabec@gmail.com, krzysztof.kozlowski+dt@linaro.org,
        kuba@kernel.org, lgirdwood@gmail.com, linux@armlinux.org.uk,
        pabeni@redhat.com, robh+dt@kernel.org, samuel@sholland.org,
        wens@csie.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-sunxi@lists.linux.dev,
        netdev@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 4/5] dt-bindings: net: Add documentation for optional regulators
Date:   Wed, 18 May 2022 20:09:38 +0000
Message-Id: <20220518200939.689308-5-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220518200939.689308-1-clabbe@baylibre.com>
References: <20220518200939.689308-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add entries for the new optional regulators.

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/net/ethernet-phy.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/net/ethernet-phy.yaml b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
index ed1415a4381f..bd59e5cc0a55 100644
--- a/Documentation/devicetree/bindings/net/ethernet-phy.yaml
+++ b/Documentation/devicetree/bindings/net/ethernet-phy.yaml
@@ -153,6 +153,15 @@ properties:
       used. The absence of this property indicates the muxers
       should be configured so that the external PHY is used.
 
+  regulators:
+    description:
+       List of phandle to regulators needed for the PHY
+
+  regulator-names:
+    description:
+      List of regulator name strings sorted in the same order as the
+      regulators property.
+
   resets:
     maxItems: 1
 
-- 
2.35.1

