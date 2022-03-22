Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDA774E38F3
	for <lists+devicetree@lfdr.de>; Tue, 22 Mar 2022 07:26:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237072AbiCVG0y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Mar 2022 02:26:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237177AbiCVG0p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Mar 2022 02:26:45 -0400
Received: from mail-pl1-x62b.google.com (mail-pl1-x62b.google.com [IPv6:2607:f8b0:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DFD737AB2
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:25:12 -0700 (PDT)
Received: by mail-pl1-x62b.google.com with SMTP id n15so14652569plh.2
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 23:25:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=YCQuJ6XtkWARCT/SeBBl76pl1bofCmdHbO/6yKxBBCo=;
        b=Ef9IMR5PloZldV944IOtnJP7DY0QGiNygulYQxKRA7KJ2s/f7AM9i1YHestywoOrKC
         naUthvieNsv5XmbQ7M6XuzjnIyAvnuNpNoJ6pGqRa8+CEi1MnbI/NT4EI8GP7e3ycqyQ
         /4lPfRoMc98ybFknXjOtfGnD2jH086iDbcp8Y=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=YCQuJ6XtkWARCT/SeBBl76pl1bofCmdHbO/6yKxBBCo=;
        b=oRTvEMg2VZrSqdvtsOKzbiL1aQrbymSoX/hPfLAx4SBSwMyyDx5BZcHr76iop21LYb
         9Zhfpk/eaOS7Kvt17IYFGUyX74dbdmAv/c/o5ZK1K6dNnwEiuiDTHUpX1eD0dNef7QcV
         hHdrSwTL7Qsuq9L4j2B5e4aP1pBkmXmsEcBuLKlBufCiSfCpuuwSaZcOGz+mfDDWReDe
         rtSEf/LxuzK9xLlj0OLoLiEbSSYtP15trqSLt1BNxCA5eCrZEtIAifi/YSQsYrYUPfxA
         u7wmCwq6kA0U6KfoOKY9Pc6hEqpTP+HaGlftjqeKxBqm+tZ0ivyn/57y8PQwoQ0tqej2
         2jUg==
X-Gm-Message-State: AOAM530ztg124yQaLZM2VTW0SLu+upERZrpZZvHHkbOI5HaO/2XWf7KY
        jK4pUIS0OQyrC9F4msUQQOVk7g==
X-Google-Smtp-Source: ABdhPJxdE48xQ9kOe4WzGs68fXv4gq+U0bmSw+O/9Qzj2sXXtHdhMkXWrttyzW1Ew7LYj08BBxR0Lw==
X-Received: by 2002:a17:902:9345:b0:153:4d7a:53d9 with SMTP id g5-20020a170902934500b001534d7a53d9mr17003306plp.116.1647930312172;
        Mon, 21 Mar 2022 23:25:12 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:c016:a147:e7e:6836])
        by smtp.gmail.com with UTF8SMTPSA id x23-20020a63fe57000000b0036490068f12sm15853883pgj.90.2022.03.21.23.25.11
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Mar 2022 23:25:11 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v2 3/8] dt-bindings: iio: sx9324: Add precharge resistor setting
Date:   Mon, 21 Mar 2022 23:24:59 -0700
Message-Id: <20220322062504.1019504-4-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.894.gb6a874cedc-goog
In-Reply-To: <20220322062504.1019504-1-gwendal@chromium.org>
References: <20220322062504.1019504-1-gwendal@chromium.org>
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
Changes since v1:
- Suffix field with kOhms unit.

 .../bindings/iio/proximity/semtech,sx9324.yaml           | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index b8a6ee16854ff..8fbea71823e76 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,14 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,input-precharge-resistor-kohms:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    default: 4
+    description:
+      Pre-charge input resistance in kOhm.
+    minimum: 0
+    maximum: 30
+
 required:
   - compatible
   - reg
@@ -157,5 +165,6 @@ examples:
         semtech,ph01-proxraw-strength = <2>;
         semtech,ph23-proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,input-precharge-resistor-kohms = <2>;
       };
     };
-- 
2.35.1.894.gb6a874cedc-goog

