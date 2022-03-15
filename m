Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27C7D4DA134
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 18:31:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1350609AbiCORcM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 13:32:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34708 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1350599AbiCORcL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 13:32:11 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4105D56C02
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:59 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id mm23-20020a17090b359700b001bfceefd8c6so2896770pjb.3
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 10:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=K2K9uux8LuIc2k3KSm2Zou1Jxd77KI+Knh97rZjoOCI=;
        b=Letv5iAiwgCR+P5V6HyiE6o/bcdnVncmpCksUGDSOtgp75t8lEOvY3+Mgxi2WtW+7b
         JwwpIsaESygqTG5Q7hOHSlIqWMTOKeJakWwBxu8z8pvM9PQWDIFewwz5zgZfupsrxMhn
         Szpn1GzhofaFkhlXIuW+alphPWCRdZL6uk9z0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=K2K9uux8LuIc2k3KSm2Zou1Jxd77KI+Knh97rZjoOCI=;
        b=s6FqQR/DtpIM1laodUT/cSJMyEeArEbR5WSqdnB2T5XSxEf1KLU+wXcq6OSfh8jBL0
         iqgLlBIGbXOac+HZ7zB+VmZZdOP/IYTAJoVloqqm9ovMPbhbtm3xhVup7JrijojRra2W
         tN083pcvvWtTMUYZV1/7if9b0ivBvcplC/PZLkFyEm/6nPJvCsXUwx5yLdAXZkTPNvHp
         GdBFnZffoFaRvXcbZ9qjVCjKJx7iBo6j/uD2r8hH7pBboqppIXca3z9ywyy3deCkv88j
         ubWpKliGM5oBLvu3ID+fdfDCXE4YkfGoCnisAKi6DMt3KCjNLN/jH+5Vzu7VxApMLQCQ
         Kueg==
X-Gm-Message-State: AOAM531oSGzs3zfNAt2qqQIyqaj7aI2sAn8k7UskKKJzQZ8bA5fWKW2Y
        ESQQJYQ1TXImOQ/lZxgBFeWiDQ==
X-Google-Smtp-Source: ABdhPJztEwf4GM8tRX4Cj3w15dySi5LvJBFSRdYZO4ZLIFqmCPWGanXuE43jNvSwfDD7lIo6WKTY3g==
X-Received: by 2002:a17:902:9a95:b0:153:a233:26b8 with SMTP id w21-20020a1709029a9500b00153a23326b8mr2934352plp.152.1647365458729;
        Tue, 15 Mar 2022 10:30:58 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:53f9:5c35:428f:83a1])
        by smtp.gmail.com with UTF8SMTPSA id mw7-20020a17090b4d0700b001b8baf6b6f5sm3936025pjb.50.2022.03.15.10.30.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 10:30:58 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH 4/7] dt-bindings: iio: sx9324: Add internal compensation resistor setting
Date:   Tue, 15 Mar 2022 10:30:39 -0700
Message-Id: <20220315173042.1325858-5-gwendal@chromium.org>
X-Mailer: git-send-email 2.35.1.723.g4982287a31-goog
In-Reply-To: <20220315173042.1325858-1-gwendal@chromium.org>
References: <20220315173042.1325858-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow setting the internal resistor used for compensation.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
 .../bindings/iio/proximity/semtech,sx9324.yaml        | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index cd8ed50f2882a..9a046f62579be 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -126,6 +126,16 @@ properties:
       UINT_MAX (4294967295) represents infinite. Other values
       represent 1-1/N.
 
+  semtech,int-comp-resistor:
+    description:
+      Internal resistor setting for compensation.
+    enum:
+      - lowest
+      - low
+      - high
+      - highest
+    default: lowest
+
   semtech,input-precharge-resistor:
     $ref: /schemas/types.yaml#/definitions/uint32
     default: 4
@@ -165,6 +175,7 @@ examples:
         semtech,ph01-proxraw-strength = <2>;
         semtech,ph23-proxraw-strength = <2>;
         semtech,avg-pos-strength = <64>;
+        semtech,int-comp-resistor = "lowest";
         semtech,input-precharge-resistor = <2>;
       };
     };
-- 
2.35.1.723.g4982287a31-goog

