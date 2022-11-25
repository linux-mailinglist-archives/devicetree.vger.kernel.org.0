Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E2927638C77
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:41:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230117AbiKYOlb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:41:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34392 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230116AbiKYOl3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:41:29 -0500
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D67B632BBB
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:26 -0800 (PST)
Received: by mail-lf1-x136.google.com with SMTP id r12so7238710lfp.1
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:26 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zrPyRuaoERD0+CJbh3QcHnA9bX1ERDBpV3e/Ot+3dkY=;
        b=fVveeYzZZeI2ZJICB0Q2L8sUMqCYoq37eMo6he8vewMrcaXzZ2e5gOtOz3FhNPuZqm
         fRTAXikI8yYZuIOhsr9B6IH9Dv+PZsAHRKSml3yN/H7/GPce+nb3n3if38rs7wFWFQvg
         aDiyPOz1IqwTwv7XTYSrcA2vpTeD605wfahFgdRKhRA3uix0RzF6cwMGPq3MwTiGIPV5
         KPSNqd3FkejnxX2N5v6wPRpCV7dO46SyYvP0T/RVsGKfqXel7r6MwVKsnQpZBwoNsK3q
         muBABnclsMeflfAZIkVaTO+SfhmtPu6qwUcGuhZ36Z0bYrUbYVeCzu79ECl5Q+1dqGD7
         4DEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zrPyRuaoERD0+CJbh3QcHnA9bX1ERDBpV3e/Ot+3dkY=;
        b=4T6usFurzB6ClvsYJecwckoLoKRR98RimK/w5TnyQaTt69/j6jj5kOADjy1yRmmViQ
         BnDx5ETlFa2wi7vOUOMK404eum4BeC9Zn17UbRpaRK7kbdcxF0Xf1G/3hxCA78ptzmSc
         LK6FmiG8iJyhWVpmfuwlFTBdp9mQt5EcC8OX+neLDZhD2ZtqVrKSSyKew5tTXVqIlsnO
         5L9WO5jTJDgXdL+wryoPLBzs3JaZUbvBYYS8+vM/Z20b2GiYWGOKoR+4DZh5lHoem1si
         A22mftlBdZ6ksNc7njcUk9tWlMo6MS6HLEGu5rpbEO836YUYoCrlloQSb/1aoCTXIyc2
         M+8w==
X-Gm-Message-State: ANoB5pnKUYwHizPxoNrG6n7ti+aAYvpqRYc1M9lcxfXQ0iRptg8noEdk
        uPAT9hI+3swDpqxs0MwkXqy/cA==
X-Google-Smtp-Source: AA0mqf4aaCF3ZjxhS5zZOP0rl9qkzUQPQGJ+XcIRSyZLLQcj7PIDk7zfd0CDP+Hiakvk6fvVbydTWA==
X-Received: by 2002:ac2:5e6b:0:b0:4a2:7c20:15a5 with SMTP id a11-20020ac25e6b000000b004a27c2015a5mr9347315lfr.587.1669387285267;
        Fri, 25 Nov 2022 06:41:25 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id o17-20020ac25e31000000b0049465afdd38sm549422lfg.108.2022.11.25.06.41.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:24 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Nishanth Menon <nm@ti.com>,
        Santosh Shilimkar <ssantosh@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: keystone: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:41:23 +0100
Message-Id: <20221125144123.477005-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The node names should be generic and DT schema expects certain pattern:

  keystone-k2hk-evm.dtb: leds: 'debug1_1', 'debug1_2', 'debug2', 'debug3' do not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm/boot/dts/keystone-k2hk-evm.dts | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm/boot/dts/keystone-k2hk-evm.dts b/arch/arm/boot/dts/keystone-k2hk-evm.dts
index 4a91f5ded402..4352397b4f52 100644
--- a/arch/arm/boot/dts/keystone-k2hk-evm.dts
+++ b/arch/arm/boot/dts/keystone-k2hk-evm.dts
@@ -28,22 +28,22 @@ dsp_common_memory: dsp-common-memory@81f800000 {
 
 	leds {
 		compatible = "gpio-leds";
-		debug1_1 {
+		led-debug-1-1 {
 			label = "keystone:green:debug1";
 			gpios = <&gpio0 12 GPIO_ACTIVE_HIGH>; /* 12 */
 		};
 
-		debug1_2 {
+		led-debug-1-2 {
 			label = "keystone:red:debug1";
 			gpios = <&gpio0 13 GPIO_ACTIVE_HIGH>; /* 13 */
 		};
 
-		debug2 {
+		led-debug-2 {
 			label = "keystone:blue:debug2";
 			gpios = <&gpio0 14 GPIO_ACTIVE_HIGH>; /* 14 */
 		};
 
-		debug3 {
+		led-debug-3 {
 			label = "keystone:blue:debug3";
 			gpios = <&gpio0 15 GPIO_ACTIVE_HIGH>; /* 15 */
 		};
-- 
2.34.1

