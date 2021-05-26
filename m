Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 7260E391D04
	for <lists+devicetree@lfdr.de>; Wed, 26 May 2021 18:28:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233643AbhEZQaK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 May 2021 12:30:10 -0400
Received: from youngberry.canonical.com ([91.189.89.112]:35363 "EHLO
        youngberry.canonical.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233270AbhEZQaK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 May 2021 12:30:10 -0400
Received: from mail-vs1-f70.google.com ([209.85.217.70])
        by youngberry.canonical.com with esmtps  (TLS1.2) tls TLS_ECDHE_RSA_WITH_AES_128_GCM_SHA256
        (Exim 4.93)
        (envelope-from <krzysztof.kozlowski@canonical.com>)
        id 1llwOb-0008Ut-TN
        for devicetree@vger.kernel.org; Wed, 26 May 2021 16:28:37 +0000
Received: by mail-vs1-f70.google.com with SMTP id d26-20020a67c49a0000b0290245e5a5d320so475709vsk.8
        for <devicetree@vger.kernel.org>; Wed, 26 May 2021 09:28:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bQeJhP3LhWWV67sOTmMVHHUEhXA/LCrkujbqLnATauc=;
        b=WM6i/RSoEhPPTxNHRQm7SNi0cpIxISKobYYZ0JWw8H6cW0tmJDtex1dDzfm1WLu4f+
         Ml7EKcxsTh70p7rSzdbUHIeOlpQ/CeqWFVMv41EXgMWwmny1lOsXQvG+uKJeX+SyDjJ9
         xWCz2Jyh/UO+9aywIEkG0oA5etSuen/byPu8hc/PWEcyPLMPB0toAXRSr/Iku6oTnga2
         y6z7oUkvPEawWTA2aqs8h8ME72KJW4f+ryA9KL59twfPNLXLdXTl983gke2XJW79m4hO
         9zVtRC06yA9dPcMl4yFlSrt0gTFknNIYDnnwcq1VKrmNMgxbFTwdeulWXTHnXntmascs
         x2hg==
X-Gm-Message-State: AOAM533XHqAODzr102GY8FH5sN9FIzLJR6aUP3QlJ3hcebSzQ+gc0Pou
        1rdYRPFYTgX+F72xFQWeQJrxoMyBvJY8+U8oCmVrDcwX28pj9GchGmQw+v+ZvBx/A7l8DOJUcNj
        k//rq9/ZW/2KQa1SNciub/lT5Wpm/SSwNYlcTqew=
X-Received: by 2002:ab0:2008:: with SMTP id v8mr33692486uak.30.1622046517046;
        Wed, 26 May 2021 09:28:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwbwHEmqJ3RtAMjz4cmpXCr7XJaqLUoEOa3vIaau1dME7xxVObNNEU5kb2sy0Ls9J44Fg11OA==
X-Received: by 2002:ab0:2008:: with SMTP id v8mr33692458uak.30.1622046516867;
        Wed, 26 May 2021 09:28:36 -0700 (PDT)
Received: from localhost.localdomain ([45.237.48.6])
        by smtp.gmail.com with ESMTPSA id y26sm2114147vkl.39.2021.05.26.09.28.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 May 2021 09:28:36 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     Dinh Nguyen <dinguyen@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzk@kernel.org>
Subject: [RESEND PATCH] arm64: dts: intel: socfpga_agilex_socdk: align LED node names with dtschema
Date:   Wed, 26 May 2021 12:28:27 -0400
Message-Id: <20210526162827.135276-1-krzysztof.kozlowski@canonical.com>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Krzysztof Kozlowski <krzk@kernel.org>

Align the LED node names with dtschema to silence dtbs_check warnings
like:

    leds: 'hps0', 'hps1', 'hps2' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzk@kernel.org>
---
 arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
index 0f7a0ba344be..39de93c370b4 100644
--- a/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
+++ b/arch/arm64/boot/dts/intel/socfpga_agilex_socdk.dts
@@ -20,17 +20,17 @@ chosen {
 
 	leds {
 		compatible = "gpio-leds";
-		hps0 {
+		led0 {
 			label = "hps_led0";
 			gpios = <&portb 20 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps1 {
+		led1 {
 			label = "hps_led1";
 			gpios = <&portb 19 GPIO_ACTIVE_HIGH>;
 		};
 
-		hps2 {
+		led2 {
 			label = "hps_led2";
 			gpios = <&portb 21 GPIO_ACTIVE_HIGH>;
 		};
-- 
2.27.0

