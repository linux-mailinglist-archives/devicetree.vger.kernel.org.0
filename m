Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 41426677F59
	for <lists+devicetree@lfdr.de>; Mon, 23 Jan 2023 16:17:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232424AbjAWPQ5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 Jan 2023 10:16:57 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40242 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232432AbjAWPQU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 Jan 2023 10:16:20 -0500
Received: from mail-wm1-x32a.google.com (mail-wm1-x32a.google.com [IPv6:2a00:1450:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9326D29E09
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:58 -0800 (PST)
Received: by mail-wm1-x32a.google.com with SMTP id l41-20020a05600c1d2900b003daf986faaeso8816244wms.3
        for <devicetree@vger.kernel.org>; Mon, 23 Jan 2023 07:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pM4oDt4ZPoGYDGATDYxcTCNNN6qSAGDqiUHHtiaumvQ=;
        b=EOG2G4Hwa9or/tZOcMjOIhUS0TmAL5UFeOLsHrs1qErDGluK8MD4yTV9LiNlMdWbD/
         FPF/qSlRGsQKQk2IENl5jdyFcRLOESLEEaIsgfBnE2wmdpSZgaIT0cbrO3K/+1KLV/Rz
         A5FFRP1rgfuH7pOSHAp06Sbs/o3AcFeu28/hZEotDidfj9ctj6on/TD00sCt4+YOlqur
         RBMllScApCXBtVGrB7IVwavc6H29QJQ2tI19xtK73JNoOBrU2AzADjCqGX+FhkzPmY2H
         i609aXaEU5yc6c/f0PXfu22dWDctWrf4mf87CSACkJX6W5/F7Fr25/8R5U1glC4tS623
         kMPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pM4oDt4ZPoGYDGATDYxcTCNNN6qSAGDqiUHHtiaumvQ=;
        b=JWmtqvdoQNKf3e2J0p1H4dRLciI+nDaUUkjKm899UHpH5FnmfKGfP9USzjjK/bWX1W
         /08ReDM30REjyBF4RjzS/ZwbRlJ5mgSuRgshw7/aiMf7iGPUDjzsI1K+gVFLwNfsLa8m
         T09+de2BNFIWJU/nx8fCGwJh6neifCVdOAZ9KE4tX0J3dxIoE8ViOgwEmLEapa2imwUj
         dF+QyF1Fi+TeqzZD3q1VgK4zv/Fhf2CmjEgQ+AbCOCcUreG1Cuhb9Qw2j5KyMQFaEWtV
         rq7PKZik6LnRIydkK3X7l4eevSGrUl/dhdwKqk36w1pzBgVagh+OwWHBcl512FGEaT6K
         +e6A==
X-Gm-Message-State: AFqh2kq4sVWy5eOLbJWIi0Hbkg/qZ7WMTTHdVBjpss7k1BIrd2pqasBB
        REOYu/o3ttmSfL4FpNeqmsaSyg==
X-Google-Smtp-Source: AMrXdXtA3m4Vh3/CF98slg7TRmIP71HdpbhGHKU+bG5Q2ZsXnATY82ciznwm6CrWlc9kd6K4T8fPkw==
X-Received: by 2002:a05:600c:1c2a:b0:3cf:d0b1:8aa1 with SMTP id j42-20020a05600c1c2a00b003cfd0b18aa1mr23889741wms.0.1674486951067;
        Mon, 23 Jan 2023 07:15:51 -0800 (PST)
Received: from krzk-bin.. ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id d19-20020a05600c34d300b003a6125562e1sm11033320wmq.46.2023.01.23.07.15.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 Jan 2023 07:15:50 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Khuong Dinh <khuong@os.amperecomputing.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: apm: drop deprecated serial device_type
Date:   Mon, 23 Jan 2023 16:15:49 +0100
Message-Id: <20230123151549.369818-1-krzysztof.kozlowski@linaro.org>
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

The device_type property is deprecated by Devicetree specification and
bindings do not allow it.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/apm/apm-shadowcat.dtsi | 1 -
 arch/arm64/boot/dts/apm/apm-storm.dtsi     | 4 ----
 2 files changed, 5 deletions(-)

diff --git a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
index a8526f8157ec..70a10bcafcff 100644
--- a/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-shadowcat.dtsi
@@ -588,7 +588,6 @@ hwmonslimpro {
 		};
 
 		serial0: serial@10600000 {
-			device_type = "serial";
 			compatible = "ns16550";
 			reg = <0 0x10600000 0x0 0x1000>;
 			reg-shift = <2>;
diff --git a/arch/arm64/boot/dts/apm/apm-storm.dtsi b/arch/arm64/boot/dts/apm/apm-storm.dtsi
index f56d687f772d..2083b54adee6 100644
--- a/arch/arm64/boot/dts/apm/apm-storm.dtsi
+++ b/arch/arm64/boot/dts/apm/apm-storm.dtsi
@@ -763,7 +763,6 @@ hwmonslimpro {
 
 		serial0: serial@1c020000 {
 			status = "disabled";
-			device_type = "serial";
 			compatible = "ns16550a";
 			reg = <0 0x1c020000 0x0 0x1000>;
 			reg-shift = <2>;
@@ -774,7 +773,6 @@ serial0: serial@1c020000 {
 
 		serial1: serial@1c021000 {
 			status = "disabled";
-			device_type = "serial";
 			compatible = "ns16550a";
 			reg = <0 0x1c021000 0x0 0x1000>;
 			reg-shift = <2>;
@@ -785,7 +783,6 @@ serial1: serial@1c021000 {
 
 		serial2: serial@1c022000 {
 			status = "disabled";
-			device_type = "serial";
 			compatible = "ns16550a";
 			reg = <0 0x1c022000 0x0 0x1000>;
 			reg-shift = <2>;
@@ -796,7 +793,6 @@ serial2: serial@1c022000 {
 
 		serial3: serial@1c023000 {
 			status = "disabled";
-			device_type = "serial";
 			compatible = "ns16550a";
 			reg = <0 0x1c023000 0x0 0x1000>;
 			reg-shift = <2>;
-- 
2.34.1

