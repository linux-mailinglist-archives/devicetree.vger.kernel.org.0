Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3551E4E7D3B
	for <lists+devicetree@lfdr.de>; Sat, 26 Mar 2022 01:22:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233794AbiCYWKQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Mar 2022 18:10:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46026 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233791AbiCYWKQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Mar 2022 18:10:16 -0400
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com [IPv6:2607:f8b0:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23B4A1667CC
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:08:41 -0700 (PDT)
Received: by mail-pl1-x631.google.com with SMTP id w8so9599356pll.10
        for <devicetree@vger.kernel.org>; Fri, 25 Mar 2022 15:08:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=4W66j1PiqzTVmN0Xwgko1VGmUJcMjfB92Rvx7H+XM00=;
        b=NJpCWVTPmpXSnZsqyE5HBpC5Saug4XwYsOBr5Wt2/qr31IQ3YRpj4gG/XploROplpX
         jDRhbTSqt4FedFQ6N/tVJjPGMCBNAlSMZ/WkaW+1s4DPSqpcpKlgeQgycuVLnA+EaahV
         6i+7tDE9NCbOubQLZ2Owqub2B9q2ah7Xqej/M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=4W66j1PiqzTVmN0Xwgko1VGmUJcMjfB92Rvx7H+XM00=;
        b=Y5M/560rQ3ALPB8EvGsJ6BRvH9BY6z8cfQbIidy9k7FxL9ly+7JLKsK8Bu+nek+yBs
         9oBYlMEnobgexLUGscXmpeGdxlEzspL/l85Tqgjam5of5PGjzVdofP0J1EhtXwv5KqT7
         vN4eaghJCgWqOM3mQn62ZWqFq9ouA3YRhr1qQ7jic3274M8LIu3Zj/vvTodiQSLoOMzT
         Z8BLbtHE3R1zQDZo0lpbCLxhF818kWJdqqpNI/HGGVCSLCB9xVOoH8iZ7jt5GNuPG9Qc
         i648bCU+KPcG1ffR4rmpwBMVhqPGH7Cz9slCvCES+hOnXsrJ4PWY+xNemOF7aKGpbTsn
         0mqQ==
X-Gm-Message-State: AOAM530AobXuFhQj8Jv10NCNb0xM4E1O6sOUuIXlhbWG2YC1qmk9UZOJ
        9zp9z2lhn76DpDpllViRBvK1Bg==
X-Google-Smtp-Source: ABdhPJwJrTPzTKPCMjt8N60Aw/UfckmMriFxRF1FlGAhBsJSAiJzj3T/hcAZVn2V+eOJRpWBG0nfuQ==
X-Received: by 2002:a17:902:ab43:b0:153:29c8:38da with SMTP id ij3-20020a170902ab4300b0015329c838damr13620718plb.11.1648246120674;
        Fri, 25 Mar 2022 15:08:40 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:f21c:980b:7d64:94f9])
        by smtp.gmail.com with UTF8SMTPSA id b25-20020a637159000000b00381fda49d15sm6893142pgn.39.2022.03.25.15.08.40
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 25 Mar 2022 15:08:40 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v3 7/8] dt-bindings: iio: sx9360: Add precharge resistor setting
Date:   Fri, 25 Mar 2022 15:08:26 -0700
Message-Id: <20220325220827.3719273-8-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.1021.g381101b075-goog
In-Reply-To: <20220325220827.3719273-1-gwendal@chromium.org>
References: <20220325220827.3719273-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow configure the resistance used during precharge.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
Changes since v2:
- Change kOhms into ohms.

Changes since v1:
- Suffix property with kOhms.

 .../bindings/iio/proximity/semtech,sx9360.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
index 63e1a1fd00d4c..453d2f02abbb1 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
@@ -61,6 +61,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,input-precharge-resistor-ohms:
+    default: 0
+    description:
+      Pre-charge input resistance in Ohm.
+      Rounded down to a 2000 Ohm multiple.
+    minimum: 0
+    maximum: 30
+
 required:
   - compatible
   - reg
@@ -85,5 +93,6 @@ examples:
         semtech,resolution = <256>;
         semtech,proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,input-precharge-resistor-ohms = <4000>;
       };
     };
-- 
2.35.1.1021.g381101b075-goog

