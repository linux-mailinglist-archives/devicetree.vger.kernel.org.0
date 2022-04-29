Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D8E895157AB
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:02:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1381060AbiD2WFQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:05:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57086 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1379096AbiD2WFO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:05:14 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 855AFC90FB
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:54 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id n14so1382951plf.3
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:01:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nl6FydOlN2pYUTl+MvQ4KSG1F7oU2ZiZQ3YsqnGUnWM=;
        b=IJ0KZ56BQJxyq1cFpWmA/lEKHni9tGykH/e58idITXUHIlJnB4H/0iWLcPcfaItCy1
         Uz3aTKNIaoL9f4f3u8jgBuvQk0d62JCS4y9s0O6Vw0qS14Ar+UrzjpADxleApjQVNW2N
         yJImuoY+o6VEukXjwGcp2g31hNQUrluthlInk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nl6FydOlN2pYUTl+MvQ4KSG1F7oU2ZiZQ3YsqnGUnWM=;
        b=xZt9aeicTZbF69Jt4UsuPNxFfbiyHiVjmRxACDw9fIBDuJgVz7yoZjbJFh/lUlRT8a
         7PzQnWQ5lbwiBS6U1Nz14wDX4ayhlmvTeMm3gie1EeWTl1edsx8IS8lkPhJByPhfVD4y
         uEDqTbDHQ++V6xBFzZPt4O21DPArOmtImJG5RYOPnQh5yIuzm1pgVZOShvUGSdLuOYRg
         9hs7zqLtlDSOanAGxd8hmjdgiLT3rBB1Y7GM3/BUAeNB8z6p9xtkAjnBZ9AOYvMvyhbf
         Hjgp1W1IAuqZwwMuVmUz76QFVSsekE8w9l+hl/HKwLjzkdsM6sDBKuMwskNrhHjTM1iI
         sQWA==
X-Gm-Message-State: AOAM532ZhPbLQshXiJOeB1nl09ziq2yyWftZiVUcEwtiIjWgZ1Gtrksr
        jhHBvJniFxIGTKxZz5RQ4SGJQA==
X-Google-Smtp-Source: ABdhPJyG3ulfA5L9QHN9ajJjAgnor8GeebU0A2CJ7qY3c19G9gPA9afwRslYa+LBPgBpBJKoWe6eig==
X-Received: by 2002:a17:902:9a8c:b0:15a:a21:b52a with SMTP id w12-20020a1709029a8c00b0015a0a21b52amr1155021plp.86.1651269714075;
        Fri, 29 Apr 2022 15:01:54 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6161:73ca:10a5:5383])
        by smtp.gmail.com with UTF8SMTPSA id bj1-20020a170902850100b0015e8d4eb2a2sm81088plb.236.2022.04.29.15.01.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 15:01:53 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v5 03/10] dt-bindings: iio: sx9324: Add precharge resistor setting
Date:   Fri, 29 Apr 2022 15:01:37 -0700
Message-Id: <20220429220144.1476049-4-gwendal@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220429220144.1476049-1-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow configure the resistance used during precharge.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
Reviewed-by: Stephen Boyd <swboyd@chromium.org>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes since v4:
- Add multipleOf propery
- Move description at the end, to match convension.

Changes since v3:
- Added Review tags.

Changes since v2:
- Change kOhms into ohms.

Changes since v1:
- Suffix field with kOhms unit.

 .../bindings/iio/proximity/semtech,sx9324.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index b8a6ee16854ff..d689b2bab71b4 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,input-precharge-resistor-ohms:
+    default: 4000
+    multipleOf: 2000
+    minimum: 0
+    maximum: 30000
+    description:
+      Pre-charge input resistance in Ohm.
+
 required:
   - compatible
   - reg
@@ -157,5 +165,6 @@ examples:
         semtech,ph01-proxraw-strength = <2>;
         semtech,ph23-proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,input-precharge-resistor-ohms = <2000>;
       };
     };
-- 
2.36.0.464.gb9c8b46e94-goog

