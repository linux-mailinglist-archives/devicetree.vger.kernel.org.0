Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CD7105780BC
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 13:29:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230369AbiGRL3d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 07:29:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51372 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232593AbiGRL3c (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 07:29:32 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F8375F89
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:29:31 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id sz17so20596315ejc.9
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lB6d+lP+UT47fInxJWLkjersmnW8oCcHzLsfZtrDga0=;
        b=NlIJQEUsUHo+bvIfb6lqnq9D+NwtVy7OtHRE3xSOikiYpWwBdnA1z9haLJETJuPGVf
         a9H3XHD+lZAH5/pMmVJyCAcbPa03wtsj123DxzXVSOVvAOInp6ArPhsb5kTh8WLy5CMr
         XM9XmrBb5mk7RDP9n8abC2PKwQ1AXUo7nFMQ5etP5/xPiueIt4tR1qlEVtZzWvjB3++L
         PAAd1lUlzhPq9lmMSuHHx+ZE8TZQZx9GvvD+jQm2WCmqzjSDnlUhNzdAsKyOnnVlVgam
         36zdZWTZvXtQdarnPjOT4CIjZQG2+aoGwYNRcFWsrc3YSoIM7vVcxFlbJzlQoq/okdoZ
         XB/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lB6d+lP+UT47fInxJWLkjersmnW8oCcHzLsfZtrDga0=;
        b=Td2OI1a1mmnnfnhn+1FkGerYWVLZik3sA2XeS+nmTyfAp0bWh7AMzpZ2F4sBn67fjD
         Z8W9KhGeYac80M1+TRmsrK/h8HrnvsRbI8XOuWihQuD+bb5cDlWNM5e5W9feA7aZdo4d
         9QRN4ta8UGURWJu9NGT9PVYPbCg5rhccaAxffZFixE4FiTJHO47v/L1/A81SQjaiL373
         DNsgcWq9BD3pq+nAmyz/Q5R2Pn4VQv1/ulEQcLY0VSVVYBkJr1LQHrY6lB2674H05kEc
         Ll/FAwQuXgHtrNyLDyp1vT1FAS9hJPE+iFply+SoRCRXZCr9e92AUhO/soYomQg+k1MH
         pn5w==
X-Gm-Message-State: AJIora9rZk0haeXr/vhbvNTsYT7gHCMLND+HoK81Hpc5mZyVCLdFB1+W
        AXe/d0181yNjB4OzFRNm19c=
X-Google-Smtp-Source: AGRyM1sSk/CGX85r145VVxY4fNlCSVixiUO6YrsBCiI0tW2IoiryG2boWWNf/Jb2kFDuw7LgiLrWkQ==
X-Received: by 2002:a17:907:3f27:b0:72b:838e:f104 with SMTP id hq39-20020a1709073f2700b0072b838ef104mr25547632ejc.63.1658143770122;
        Mon, 18 Jul 2022 04:29:30 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id vp21-20020a17090712d500b006feba31171bsm5452210ejb.11.2022.07.18.04.29.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 04:29:29 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 1/3] arm64: dts: broadcom: bcm4908: add remaining LED pins
Date:   Mon, 18 Jul 2022 13:29:21 +0200
Message-Id: <20220718112923.5500-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

Include all 32 pins.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 .../boot/dts/broadcom/bcm4908/bcm4908.dtsi    | 75 +++++++++++++++++++
 1 file changed, 75 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index a4be040a00c0..db9f3d8e2bc8 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -350,6 +350,61 @@ pins_led_9_a: led_9-a-pins {
 				groups = "led_9_grp_a";
 			};
 
+			pins_led_10_a: led_10-a-pins {
+				function = "led_10";
+				groups = "led_10_grp_a";
+			};
+
+			pins_led_11_a: led_11-a-pins {
+				function = "led_11";
+				groups = "led_11_grp_a";
+			};
+
+			pins_led_12_a: led_12-a-pins {
+				function = "led_12";
+				groups = "led_12_grp_a";
+			};
+
+			pins_led_13_a: led_13-a-pins {
+				function = "led_13";
+				groups = "led_13_grp_a";
+			};
+
+			pins_led_14_a: led_14-a-pins {
+				function = "led_14";
+				groups = "led_14_grp_a";
+			};
+
+			pins_led_15_a: led_15-a-pins {
+				function = "led_15";
+				groups = "led_15_grp_a";
+			};
+
+			pins_led_16_a: led_16-a-pins {
+				function = "led_16";
+				groups = "led_16_grp_a";
+			};
+
+			pins_led_17_a: led_17-a-pins {
+				function = "led_17";
+				groups = "led_17_grp_a";
+			};
+
+			pins_led_18_a: led_18-a-pins {
+				function = "led_18";
+				groups = "led_18_grp_a";
+			};
+
+			pins_led_19_a: led_19-a-pins {
+				function = "led_19";
+				groups = "led_19_grp_a";
+			};
+
+			pins_led_20_a: led_20-a-pins {
+				function = "led_20";
+				groups = "led_20_grp_a";
+			};
+
 			pins_led_21_a: led_21-a-pins {
 				function = "led_21";
 				groups = "led_21_grp_a";
@@ -360,6 +415,21 @@ pins_led_22_a: led_22-a-pins {
 				groups = "led_22_grp_a";
 			};
 
+			pins_led_23_a: led_23-a-pins {
+				function = "led_23";
+				groups = "led_23_grp_a";
+			};
+
+			pins_led_24_a: led_24-a-pins {
+				function = "led_24";
+				groups = "led_24_grp_a";
+			};
+
+			pins_led_25_a: led_25-a-pins {
+				function = "led_25";
+				groups = "led_25_grp_a";
+			};
+
 			pins_led_26_a: led_26-a-pins {
 				function = "led_26";
 				groups = "led_26_grp_a";
@@ -385,6 +455,11 @@ pins_led_30_a: led_30-a-pins {
 				groups = "led_30_grp_a";
 			};
 
+			pins_led_31_a: led_31-a-pins {
+				function = "led_31";
+				groups = "led_31_grp_a";
+			};
+
 			pins_hs_uart: hs_uart-pins {
 				function = "hs_uart";
 				groups = "hs_uart_grp";
-- 
2.34.1

