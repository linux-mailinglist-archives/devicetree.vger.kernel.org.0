Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 017465157A9
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 00:02:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1379096AbiD2WFY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 29 Apr 2022 18:05:24 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57418 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1381135AbiD2WFV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 29 Apr 2022 18:05:21 -0400
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com [IPv6:2607:f8b0:4864:20::52e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B6151DC59D
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:02:00 -0700 (PDT)
Received: by mail-pg1-x52e.google.com with SMTP id r83so7483102pgr.2
        for <devicetree@vger.kernel.org>; Fri, 29 Apr 2022 15:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=a8EzmCrTNHAHOnOS39ISGsmIQIULar5f2bQVxaPjFTI=;
        b=B6E1Ub19KqivdJT8MmrvK2gCXVJP0KzovqFh1L+/a2HDo3/B2EP4wnBr0p/NWCuSHm
         YsLW96o4wObu+nlVsvqUAushFl+s33FppLKKQVRKq5WjMJ1lDwZ18CKvyKPPmIvqMhQ5
         3RuaoiUfVOFpTaL+k2pfbLypK1yl7t3NBl4PQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=a8EzmCrTNHAHOnOS39ISGsmIQIULar5f2bQVxaPjFTI=;
        b=clpLrQ6VPFmVlQo+hxmEdHEw23tBNxFSmjGQT6zgFlNmUnDH/1+3RPhAA99ugpCGto
         q6DHejPsvqhd+5onRaAcasPMvcdbRNN8VIuhRZtBM7UmuAm8r4pauKdXgbuWBegRgGxB
         vPqypaAtrIqS/TwJmR9psWaqucYcP4KTxC7cGuffM8vubHLLq7QMglBypFudd62P3Uln
         rUOCpNSnfGBsy5G6bE+UFkjZubzhSUNhzWeiVY4GIjc9pKXx4/87yU0EeBnL7+Q+E17G
         sewe4MPH/OYXwx8dq/YzF89J1UF4Wg6Qo8HXnkbXamDferyao/LqXrGt3G1byJQj1dgI
         DbzA==
X-Gm-Message-State: AOAM532OVWFNxFXSkV+PwQ9UVkwdwD5AzDwYrr4JikIKqp2ytR1Qo9Bi
        A/Q7cvcjG02aX3gaMskyHGqIMg==
X-Google-Smtp-Source: ABdhPJzXQxmO+TtpF7DFGKedluWRIhzEeyTmKwmh/Dm4cmNVpOqlBDS7qZtng5r2Ni77j3ksq0wGYQ==
X-Received: by 2002:a63:894a:0:b0:3ab:2edc:b973 with SMTP id v71-20020a63894a000000b003ab2edcb973mr1019501pgd.219.1651269720298;
        Fri, 29 Apr 2022 15:02:00 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:6161:73ca:10a5:5383])
        by smtp.gmail.com with UTF8SMTPSA id o3-20020a1709026b0300b0015e8d4eb237sm80540plk.129.2022.04.29.15.01.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 29 Apr 2022 15:01:59 -0700 (PDT)
From:   Gwendal Grignou <gwendal@chromium.org>
To:     jic23@kernel.org, robh+dt@kernel.org, swboyd@chromium.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        Gwendal Grignou <gwendal@chromium.org>
Subject: [PATCH v5 07/10] dt-bindings: iio: sx9324: Add input analog gain
Date:   Fri, 29 Apr 2022 15:01:41 -0700
Message-Id: <20220429220144.1476049-8-gwendal@chromium.org>
X-Mailer: git-send-email 2.36.0.464.gb9c8b46e94-goog
In-Reply-To: <20220429220144.1476049-1-gwendal@chromium.org>
References: <20220429220144.1476049-1-gwendal@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Allow setting the configure the input analog gain.

Signed-off-by: Gwendal Grignou <gwendal@chromium.org>
---
New in v5.

 .../bindings/iio/proximity/semtech,sx9324.yaml        | 11 +++++++++++
 1 file changed, 11 insertions(+)

diff --git a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
index 0be87ac05b97a..d265eb5258c84 100644
--- a/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
+++ b/Documentation/devicetree/bindings/iio/proximity/semtech,sx9324.yaml
@@ -143,6 +143,17 @@ properties:
     description:
       Pre-charge input resistance in Ohm.
 
+  semtech,input-analog-gain:
+    $ref: /schemas/types.yaml#/definitions/uint32
+    minimum: 0
+    maximum: 3
+    description: |
+      Defines the input antenna analog gain
+      0: x1.247
+      1: x1 (default)
+      2: x0.768
+      3: x0.552
+
 required:
   - compatible
   - reg
-- 
2.36.0.464.gb9c8b46e94-goog

