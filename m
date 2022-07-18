Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7F209578391
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 15:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235368AbiGRNVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 09:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235365AbiGRNVK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 09:21:10 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 697F2220EE
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:21:09 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id m13so5078039edc.5
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:21:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lB6d+lP+UT47fInxJWLkjersmnW8oCcHzLsfZtrDga0=;
        b=MV2FP/hgIGSo6p2PqUG41k3WKG8wAf1AfM/qjTiEowSYpdImkzMkL0or1vRZ0iYpu3
         oKRfOrtorADhLLBHPFJODGCLrxc4QIolbTcDXEpY0pHckezENeQM7756zJHOcmPBAYIh
         AlqrhDZbUPtFnGhQ+2lsv5z2GV8WiwDsIBJSCTBVzOMnRnNGjuY37AAPcBJnEKfZIZpY
         4hDSBh2Q9EBSsbpM8CEuykigJZvrSl+GgQPVgEkg0EOHI2mmd/M3ZfkBlci4he+JpEWQ
         tGRrNo7qJKRwwHH3+ay820afvHfmW5S8hR61R/jlIKgKnwdB7x6Xip/zQ9z1WOyRGoH1
         Y+bg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=lB6d+lP+UT47fInxJWLkjersmnW8oCcHzLsfZtrDga0=;
        b=htwv+5u9349z5unsQW+OKn0pQKlcrXcum44ZVSTkgWUK46aalnuGii2/exreOffF0i
         7SiqIA3V4GX3NsWg7CVotSd8Yk5Awg8vDJAvfbLXU/9J0OLKZYegDWC0nZR02RH1rPCz
         OtJFJXZyeE1j2E18Mni1ZjBvgm0p5AhtXfcH3zzuU164ypBODCEGoc/5HSh67/rg03bh
         1Fo0hKvHkRk8g2yghfzgQqFXrAip9pXQ59fehrSuCpTcvjXtETlO17g+DX3/4pqnyHmf
         2RvfAMNxKVX9gsivTALqV4DPGzwRReBwSKdA6WHmZXhW7O3pYzonjVk2j1Yv4HPR18Lb
         I/uA==
X-Gm-Message-State: AJIora8ZqXGD31/dLNjqtmkQznwB1NcURHnhWzogQSK2IfFirMJfsWMT
        uV3BSPpb/HVHHNVNqnhvVgM=
X-Google-Smtp-Source: AGRyM1vqhm+rXNMHWwSa+VlWZ4z7sZwno4e7IwpoUVlyM+Kw/7z+HaKtxX8vFXLYMJ+tMHKVpvvtrA==
X-Received: by 2002:a05:6402:354c:b0:43a:dc59:657 with SMTP id f12-20020a056402354c00b0043adc590657mr36174672edd.405.1658150467918;
        Mon, 18 Jul 2022 06:21:07 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id i8-20020a50fd08000000b0043a554818afsm8678537eds.42.2022.07.18.06.21.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 06:21:07 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 1/3] arm64: dts: broadcom: bcm4908: add remaining LED pins
Date:   Mon, 18 Jul 2022 15:20:58 +0200
Message-Id: <20220718132100.13277-1-zajec5@gmail.com>
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

