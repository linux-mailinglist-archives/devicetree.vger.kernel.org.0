Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E66E34E38E8
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 07:26:27 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237191AbiCVG1Q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 02:27:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42442 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237229AbiCVG0t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 02:26:49 -0400
Received: from mail-pl1-x636.google.com (mail-pl1-x636.google.com [IPv6:2607:f8b0:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7336833A0E
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:25:17 -0700 (PDT)
Received: by mail-pl1-x636.google.com with SMTP id i11so13945556plr.1
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:25:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=30RcZys3m+mnl1wP4Li2+2cSCnquqYOBajAz0JIjDJs=;
        b=V3aUEaQA32XUGTV33Mandcv3Lgfa4gFsNJTEvaf+bqRWidZOP6Jnjaa/oTUkMfgTAE
         BwaQtd8esfQvUJhfr1lds+siUo+tD/Pr5yFGLfrjteMEhxVhj+5cfiK4Ee/V1V/UGvZ7
         iUL4kyaidVBtyeB+3tvRbdyQ4wKge6UR5jalE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=30RcZys3m+mnl1wP4Li2+2cSCnquqYOBajAz0JIjDJs=;
        b=Xg4N/kHfsFb6tv0N7hoWHvfxj4ZjMQl+L4iYQNXq5ku8eDg9eKwUumKmVuvso2b/4W
         FKHvQazUrMHLVOZnTPYc/G+4E4c2v8zs58GWiL8ZV9bdZqU1d9G3gyulaM+nEUEGKqOi
         XfeAIRyZ/7ItkT+t/3Dexm4NuserBPw8f8WYGFkhMSKyPzdB15u4Br3Z8ex47SVLG2Mr
         cGLyUX3H+YkkjXR4JgkdSRDgEKN1zVeAYkuqHrOIsn2RXWJIwGthjcv8NCoXxClDKSwx
         9B6FXQ01ACsaKVoDk8NlTIPz/BVz65MVbxH/cUeq8yYfIQ2s3w0aTOFpSMGFpzmwv2TC
         JH+Q==
X-Gm-Message-State: AOAM531SBs5jvNw8MWoeMHpag0C9TYRmBk4N7t74l00iKjKWSaaFI5iZ
        HfrlVN0fcEq54RQsDQ5VCTx4Rg==
X-Google-Smtp-Source: ABdhPJyLtfBqUQpoVZNoqWX48X/ynHku0Q/mpdlADxhZE9maHPd7pzNzlEz8Vp+sXtbfa1/CJYhJYA==
X-Received: by 2002:a17:902:b113:b0:153:2251:c1b0 with SMTP id q19-20020a170902b11300b001532251c1b0mr16128580plr.44.1647930316996;
        Mon, 21 Mar 2022 23:25:16 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c016:a147:e7e:6836])
        by smtp.gmail.com with UTF8SMTPSA id y2-20020a056a00190200b004fa865d1fd3sm9903049pfi.86.2022.03.21.23.25.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 23:25:16 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v2 7/8] dt-bindings: iio: sx9360: Add precharge resistor setting
Date:   Mon, 21 Mar 2022 23:25:03 -0700
Message-Id: <20220322062504.1019504-8-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220322062504.1019504-1-gwendal@chromium.org>
References: <20220322062504.1019504-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
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
Changes since v1:
- no changes.

 .../bindings/iio/proximity/semtech,sx9360.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
index 63e1a1fd00d4c..1225f64f14174 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9360.yaml
@@ -61,6 +61,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,input-precharge-resistor-kohms:
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
+        semtech,input-precharge-resistor-kohms = <4>;
       };
     };
-- 
2.35.1.894.gb6a874cedc-goog

