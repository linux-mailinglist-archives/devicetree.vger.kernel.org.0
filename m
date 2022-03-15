Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4936B4DA145
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 18:31:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346643AbiCORcU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 13:32:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350624AbiCORcQ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 13:32:16 -0400
Received: from mail-pj1-x1034.google.com (mail-pj1-x1034.google.com [IPv6:2607:f8b0:4864:20::1034])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2E4158828
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:31:01 -0700 (PDT)
Received: by mail-pj1-x1034.google.com with SMTP id d10-20020a17090a7bca00b001c5ed9a196bso2130474pjl.1
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:31:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mkDmbdOw2yfhPaezO4LhRYAxWn+WyWn88aSmsfNdmfA=;
        b=kHj/UY7r8kNT7MrmEN+ZAHZYgw4UUTakoxRSK97RtjhT+f/PzjoUjTi4Gz4jPampse
         tfy5FXme1M6WzzdRabNIdCNp75gxE/Aiep9XACtZh+DhKt+ob88B9VeFlAz/tMI996CE
         17dL64z90/dijIKgKWeqwQTkqOOrk8pitustM=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mkDmbdOw2yfhPaezO4LhRYAxWn+WyWn88aSmsfNdmfA=;
        b=sQdhfYjtTi/jQbin4HI/bcsDBjBYzrpXmucvyx5CIrTclIH+j1CbQ5qnxiz2MKIu2v
         hmJZQpm34ESqRaJonW8i3eUM08hdZmcouS1om2ISZuEiabFbJC32sp51KGuQeRvMulaK
         qy0CFHrZ/Q7sL30IrWc9LyVIzgHYd9ws+xAuJbZzIYqr2bGDQ97yUaRn8oVAINt+MhCo
         8QBEC6ZYwP9HFTrsf9Yn3zQBpyKuBVVid88IJdRAdTCO1Op1ltIsQ59w3BIBuuhk9wTe
         XSRdoZPAqOBQMUtRG+ZKQobosiRiV2/1XhNGi5eKmenTGlOnA3H2dsEaLgOhu76NfWTp
         97jA==
X-Gm-Message-State: AOAM5311C0tsr/uYxh/1X48hoikYsd3J3H7dzYRbP39RSqYFlOE3Ob+N
        3oUhZX6Z2AIV6Ylh4+e/7QfNXw==
X-Google-Smtp-Source: ABdhPJxgVnNw5pAJ19OMeRnqwaT0MVcfggExGbykboc/P7T/K9QxkiUOz93SDVV0AxyJ4i3ItZgKOw==
X-Received: by 2002:a17:90b:3802:b0:1c1:b62b:c4ea with SMTP id mq2-20020a17090b380200b001c1b62bc4eamr5871335pjb.193.1647365461440;
        Tue, 15 Mar 2022 10:31:01 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:53f9:5c35:428f:83a1])
        by smtp.gmail.com with UTF8SMTPSA id y5-20020a056a00190500b004f104b5350fsm25982146pfi.93.2022.03.15.10.31.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 10:31:01 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH 6/7] dt-bindings: iio: sx9360: Add precharge resistor setting
Date:   Tue, 15 Mar 2022 10:30:41 -0700
Message-Id: <20220315173042.1325858-7-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
In-Reply-To: <20220315173042.1325858-1-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow configure the resistance used during precharge.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
 .../bindings/iio/proximity/semtech,sx9360.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
index 63e1a1fd00d4c..a0f8a454481db 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
@@ -61,6 +61,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,input-precharge-resistor:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 0
+    description:
+      Pre-charge input resistance in kOhm.
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
+        semtech,input-precharge-resistor = <4>;
       };
     };
-- 
2.35.1.723.g4982287a31-goog

