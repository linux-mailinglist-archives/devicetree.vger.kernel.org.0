Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1242C638C87
	for <lists+devicetree@lfdr.de>; Fri, 25 Nov 2022 15:42:31 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229949AbiKYOm3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 25 Nov 2022 09:42:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34954 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230113AbiKYOl7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 25 Nov 2022 09:41:59 -0500
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C411B42F57
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:39 -0800 (PST)
Received: by mail-lf1-x12b.google.com with SMTP id c1so7199771lfi.7
        for <devicetree@vger.kernel.org>; Fri, 25 Nov 2022 06:41:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=njud4xqq274bpbwus33xYwY3Vs5r+wFEXFrEEoEu/J8=;
        b=I+rMTxd0holP4+mHqW9f3Ic0bSJrXy+E2J4Wn2B+enbKIFu4Rl1r7s4ZvdFz478h9N
         jQ8zTMqN4LjrAd0LY9z2j6ZXU2yJaWl6+pK39PTNCFfWkUQtnA3cY2GkvdANYOhJr08o
         QSDZZH0fOXBI1BcI+rFqhm8rtgzO6XqVqHeCe/ag5x8XZSUe0ZU1lYb5erq1V+HJkWpV
         0KIOf2xtZ2OPzbu6gc1QlUURMWF0ovYNDxKSiOyJyuYf2qvEagXmMMG7XOB6PP+FM6VW
         2khNsp/xAop8kFseJMmf6sKoBDQFsAieQWcx1qVgnfW4UJ8V2+Yb26VS3/AVgY6UPnn8
         bYaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=njud4xqq274bpbwus33xYwY3Vs5r+wFEXFrEEoEu/J8=;
        b=qxM1jFOAHRtLGfPLPp8lJHT303MNRrOk3YVYb+FwLunWOxwjX2Nl0WAG29vHmuwpe7
         Y1Jr70Ddt5BCAL3fHrUvSYaMuwLQEvEgGEywscAS8ti8AuX1gd3/ky06WeDawFHF0ViJ
         68tc0yNWou9UcMVplW8EOomx34xvPpeLJHGm8QQFzgWascrJNJjhwqFP4JgpdX9FWSem
         83mLgai70rU6Kk6BMb/0IBrwBN9E4m8LdJA87wYRttvBaUIBDyv2RWRpIUmRo6XN5Q3s
         v495HaIOSk8RfAbG+5z4bSPD8Y/Xk/BCWR7XNfweR7/6EWowVRuQho5MNS1LuEaSnZlN
         Mrkw==
X-Gm-Message-State: ANoB5plwpTMmkttS6oHBfrO/HGsjFpos68NzvTbRVwXPscMww3xfxFmI
        yMdH1XCgy5KiuG53vHGZPCGn/Kp36Y70k9lM
X-Google-Smtp-Source: AA0mqf457dG/Zneu4HP5vPQymw7lWN6txp4hBVttYKTzJajEVM+FVhOg6D5e3JejzY1TnqfidKPvNQ==
X-Received: by 2002:a05:6512:3b88:b0:4a3:9533:f4c9 with SMTP id g8-20020a0565123b8800b004a39533f4c9mr7381181lfv.615.1669387298167;
        Fri, 25 Nov 2022 06:41:38 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a22-20020a056512201600b00492dbf809e8sm541757lfb.118.2022.11.25.06.41.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 25 Nov 2022 06:41:37 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michal Simek <michal.simek@xilinx.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: xilinx: align LED node names with dtschema
Date:   Fri, 25 Nov 2022 15:41:36 +0100
Message-Id: <20221125144136.477171-1-krzysztof.kozlowski@linaro.org>
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

  xilinx/zynqmp-zcu100-revC.dtb: leds: 'vbus-det' does not match any of the regexes: '(^led-[0-9a-f]$|led)', 'pinctrl-[0-9]+'

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
index d61a297a2090..6948fd40554b 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu100-revC.dts
@@ -86,7 +86,7 @@ led-ds5 {
 			linux,default-trigger = "bluetooth-power";
 		};
 
-		vbus-det { /* U5 USB5744 VBUS detection via MIO25 */
+		led-vbus-det { /* U5 USB5744 VBUS detection via MIO25 */
 			label = "vbus_det";
 			gpios = <&gpio 25 GPIO_ACTIVE_HIGH>;
 			default-state = "on";
-- 
2.34.1

