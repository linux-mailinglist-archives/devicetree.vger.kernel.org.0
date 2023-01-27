Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BD2C267E160
	for <lists+devicetree@lfdr.de>; Fri, 27 Jan 2023 11:18:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233487AbjA0KSo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 27 Jan 2023 05:18:44 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57620 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233476AbjA0KSf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 27 Jan 2023 05:18:35 -0500
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com [IPv6:2a00:1450:4864:20::32f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D3BA946AF
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:18:32 -0800 (PST)
Received: by mail-wm1-x32f.google.com with SMTP id m16-20020a05600c3b1000b003dc4050c94aso247984wms.4
        for <devicetree@vger.kernel.org>; Fri, 27 Jan 2023 02:18:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=xAkXrBOeYq2uPJ9Lzg7NjCsv3k9QcgmeUOGZZPQ4XP0=;
        b=i8SJqbujrO1qBvakjXDZYjGm9F1LrnLmfkxQJp9DEfTyD6g3x6QIGJuvbK54SllfWj
         BiplNzPxSzh3/XH53mtp5PiNXgmnoeAl0dMty/Yt5HPAL+dFn3WvN5nYuFCOdDpbpX1y
         5clOr2zovh50XfpS3HiyShcMGswqXmcwUo1uWOm0ez08/0rvemYw36HnTTDX8V3NGqw3
         8LzSXY5d77NDN4rpRryNznVisIiQF0ywy0CpmRXK7y0jOjmhMV7mrTS29yA/0S4ULUSj
         zib1A424nDSBtgqnx7Ouhi2MDoE92v7TnJ0kc92RUqZQBUCCA/APQjdcU0+jhycemBQU
         XH+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=xAkXrBOeYq2uPJ9Lzg7NjCsv3k9QcgmeUOGZZPQ4XP0=;
        b=T2HP+8l5uzuRk9sskfxZe7taN7Dz97wzmV3L1jwQVDvGP+RdjqwvbQ5/Bj4GWNbxjx
         xQvHSqMtvAbt8ldfrGiWL11KBVH2NsgOR9oYWnB1clwFdeF4wb6GU9zj4a13vfU3yxwy
         mPu85g02L2cYKtM43NRcbz0kGlIj5BRNIcHfweaUgDp7gfwC+UEyS0g38dGqpUbnZmE5
         XUKXfLJNGeF3/xQk8DOJl6RvpyHEppIB2y4yEq5RN75zQoxRowRlKUAG+gCXOEvqV1WZ
         P2Gt5UbJHzmpdHEsi2v2iV/VWoM4aopyKEQsz4UEl+kw6bQQfkpQF4KnlWPIpaECFSFJ
         EJ+g==
X-Gm-Message-State: AO0yUKVPPu/l7UvrNnUonq9WKdZAXMNxQMmSZZIVYvYCB7fN1TE2J4b8
        xkTES2sCBRflAftIQ7LGYhn6Bg==
X-Google-Smtp-Source: AK7set+Drbgf6OSSEHkeOwsvOfzXakxGsZV8okTZ3G8AjjDvI7ooCF+eiP4qYQ2+vTJLQ8DLTycsmg==
X-Received: by 2002:a05:600c:4fcb:b0:3dc:1687:9b9a with SMTP id o11-20020a05600c4fcb00b003dc16879b9amr12271562wmq.37.1674814711381;
        Fri, 27 Jan 2023 02:18:31 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id a5-20020adfeec5000000b002bfae6b17d2sm3629503wrp.55.2023.01.27.02.18.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 27 Jan 2023 02:18:31 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Brijesh Singh <brijeshkumar.singh@amd.com>,
        Suravee Suthikulpanit <suravee.suthikulpanit@amd.com>,
        Tom Lendacky <thomas.lendacky@amd.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: amd: use "okay" for status
Date:   Fri, 27 Jan 2023 11:18:29 +0100
Message-Id: <20230127101829.93761-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"okay" over "ok" is preferred for status property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../boot/dts/amd/amd-overdrive-rev-b0.dts     | 16 ++++++-------
 .../boot/dts/amd/amd-overdrive-rev-b1.dts     | 24 +++++++++----------
 2 files changed, 20 insertions(+), 20 deletions(-)

diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
index 02bff65e5fd6..21149acb6b31 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b0.dts
@@ -26,7 +26,7 @@ psci {
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -34,31 +34,31 @@ &ccp0 {
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
diff --git a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
index 07dab1f1e3c8..99205ae1b46b 100644
--- a/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
+++ b/arch/arm64/boot/dts/amd/amd-overdrive-rev-b1.dts
@@ -26,7 +26,7 @@ psci {
 };
 
 &ccp0 {
-	status = "ok";
+	status = "okay";
 	amd,zlib-support = <1>;
 };
 
@@ -34,43 +34,43 @@ &ccp0 {
  * NOTE: In Rev.B, gpio0 is reserved.
  */
 &gpio1 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio2 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio3 {
-	status = "ok";
+	status = "okay";
 };
 
 &gpio4 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c0 {
-	status = "ok";
+	status = "okay";
 };
 
 &i2c1 {
-	status = "ok";
+	status = "okay";
 };
 
 &pcie0 {
-	status = "ok";
+	status = "okay";
 };
 
 &sata1 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi0 {
-	status = "ok";
+	status = "okay";
 };
 
 &spi1 {
-	status = "ok";
+	status = "okay";
 	sdcard0: sdcard@0 {
 		compatible = "mmc-spi-slot";
 		reg = <0>;
@@ -85,7 +85,7 @@ sdcard0: sdcard@0 {
 };
 
 &ipmi_kcs {
-	status = "ok";
+	status = "okay";
 };
 
 &smb0 {
-- 
2.34.1

