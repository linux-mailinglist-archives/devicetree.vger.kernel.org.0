Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74CBB544A74
	for <lists+devicetree@lfdr.de>; Thu,  9 Jun 2022 13:39:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240811AbiFILjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 9 Jun 2022 07:39:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242349AbiFILji (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 9 Jun 2022 07:39:38 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0702B1D2AC0
        for <devicetree@vger.kernel.org>; Thu,  9 Jun 2022 04:39:33 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id kq6so33861200ejb.11
        for <devicetree@vger.kernel.org>; Thu, 09 Jun 2022 04:39:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=/8m6MhDbOK9+V515hZszn9vJkAN/TqZqKv8XaJa+cRs=;
        b=s+6p/k8PFsLuVeRvC6dVP/btm0EdoP1NDRAqQy0hLA2smZIZgad6TFbrIED57l1kRF
         kwtLdQtlIwYfHNpDAxVukmvqyAabZf0Bq82rMRdXEingdZ+o889S7vKDqqEeGUDCuKG1
         +R4Zpj8x3yWXa1Z4ZG8ujMCER/NnQmG7Hn6FyIdeljA4QRKgGcd6AqcpKdyd7w/XPXfQ
         YqJNvc9WLWGMYD6+JLH7UB6QzZWgjlIyMYOngwrJLT42YiD7CgiybqYFwmwpa3mk0bN1
         WOYjnKWjATWitvCrxcOsgU60Ui0eAylJ6BtidL71fwquPPmT+w934w5GMCs9Q7LIWbfi
         Z0tA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=/8m6MhDbOK9+V515hZszn9vJkAN/TqZqKv8XaJa+cRs=;
        b=KwCCCjXIuC1ujTultc3G6EnLh5dth14mClZSdOoFTbcG/ksWHs/fZsfG3CWUC7W4Iy
         /gLR5WiCzh4A21s5CUkRwdKUddDJJUvzoJ6yFc/bkITZkrdi4hObHJ1PFBjw/HOpZjap
         pAJYKwT9FsNely3QWgS+NW2l9hI0o9V83N8HeMe83NA+HqfuBDgcdvdNa2eertO8BAFS
         SdxPbEn5/0uxSeSil4VEZIMkwchv49wAYm5VEyK89hDEMukYE6avb8dCq+vKisgwIkvs
         cFRxhSyJimJmVB2bGwMZRYeJM5FLX97N+EMNvOEFF4hvBWhnIaa0OP6ZofwBGkeNofhh
         g1Ow==
X-Gm-Message-State: AOAM532hHV3Yqc3Xh5qys/Ta1GtzxaTFz8AaQwP3EYGSIDSGhMZ2poVR
        EiiNKHU2H+iXrPNzCq9X40YIOA==
X-Google-Smtp-Source: ABdhPJyvhAkXzz01P+3fO7D/zYL57ofDhMby/qx7m150Ee92x7Njr4PpyP168wjKUhtp3epBDXP9SQ==
X-Received: by 2002:a17:906:5256:b0:711:ee4d:fbe4 with SMTP id y22-20020a170906525600b00711ee4dfbe4mr8777720ejm.312.1654774771623;
        Thu, 09 Jun 2022 04:39:31 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id u14-20020aa7d54e000000b0042e21f8c412sm11898495edr.42.2022.06.09.04.39.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 09 Jun 2022 04:39:31 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Arnd Bergmann <arnd@arndb.de>, Olof Johansson <olof@lixom.net>,
        arm@kernel.org, soc@kernel.org,
        Khuong Dinh <khuong@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v2 09/48] arm64: dts: apm: correct gpio-keys properties
Date:   Thu,  9 Jun 2022 13:39:11 +0200
Message-Id: <20220609113911.380368-8-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
References: <20220609113721.379932-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

gpio-keys children do not use unit addresses.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/apm/apm-merlin.dts  | 2 +-
 arch/arm64/boot/dts/apm/apm-mustang.dts | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-merlin.dts b/arch/arm64/boot/dts/apm/apm-merlin.dts
index 217d7728b63a..049e7a5edca7 100644
--- a/arch/arm64/boot/dts/apm/apm-merlin.dts
+++ b/arch/arm64/boot/dts/apm/apm-merlin.dts
@@ -22,7 +22,7 @@ memory {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		button@1 {
+		button {
 			label = "POWER";
 			linux,code = <116>;
 			linux,input-type = <0x1>;
diff --git a/arch/arm64/boot/dts/apm/apm-mustang.dts b/arch/arm64/boot/dts/apm/apm-mustang.dts
index e927811ade28..efac50aeca64 100644
--- a/arch/arm64/boot/dts/apm/apm-mustang.dts
+++ b/arch/arm64/boot/dts/apm/apm-mustang.dts
@@ -22,7 +22,7 @@ memory {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		button@1 {
+		button {
 			label = "POWER";
 			linux,code = <116>;
 			linux,input-type = <0x1>;
-- 
2.34.1

