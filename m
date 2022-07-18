Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA2D2578392
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 15:21:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235372AbiGRNVM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 09:21:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231367AbiGRNVL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 09:21:11 -0400
Received: from mail-ed1-x52d.google.com (mail-ed1-x52d.google.com [IPv6:2a00:1450:4864:20::52d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BD3582409B
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:21:10 -0700 (PDT)
Received: by mail-ed1-x52d.google.com with SMTP id x91so15265925ede.1
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 06:21:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8OxtpucguPissdSC5HXV3eaFBfYa5QQkjhDSsW6QHMA=;
        b=NHjbneIJZsFRs9XfRXG4fBDpeI0Z5V3XY9AeWfpF3XjWqYYvg72V5WmzMQFasUoXHP
         3S3UM7w6EN9s5anWtPR2EvxpFqFvUs7JcaFwTq2J87vGahfvaXnTUWplLCushjDSmp0c
         SfHVtERMGolsWG6IMGw8W3MKxiw4sD44umCTC04LnQxv4AhpKFzvPEkcfYM/husPBIh+
         2WskNEjzqsetA42i5QDqvzfOmg3z7ZEUkhTHkkCwGbxujNLeMcOuM7MpgamkRRVKn6Dx
         ibJZx425fi18Zwa2RZs0VUSnRsqPIAZCZF/N7EdhS5PMaq2LguA6GDG7P224TIaoj90l
         TnDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8OxtpucguPissdSC5HXV3eaFBfYa5QQkjhDSsW6QHMA=;
        b=hMEtWbvpr+OmW1+Ci9SaOPTrZ/yIKKsY6XSmtmJMJUOOfj7OMo8lhPd1QuFNXCK0WK
         OD39rdg0p8O9pHryZS9fywEozgSYjn2ewmLf7bPYJc0k0BIGAaChToiL5gBlS1OgWcqO
         +qs0Mib10hz3ftQf3Tzm1A6PYUXKuZEqHbq7sxeDL26ESEXBiFniy0oz3Sw38vz9nYqM
         aP6iReUgrSv8Y9zYGajzz+vGC+0Ms8+YEFYZS34zQ+OCvhi8mFbeBogUl+8fBQWUVlA0
         bBjVNJmxjwN3Yg1BxfaJTJ8C2PNSEzqD9nr6eEsxR7sUkvZYn8RT1mxwkKWFDei4dct+
         uBXQ==
X-Gm-Message-State: AJIora+8cECoo02JrPdNFr0EKXQ39F6JC4eK0bRryEzs0ZXir0EqkZK8
        kn25Suo3hHwWHoqIVgSOQfM=
X-Google-Smtp-Source: AGRyM1t9PmWTrHUKZ1CW47gP3JXm0FVqeVVU9RcJRJRcXRou9mJmUmVz26v6GPcs73/6SFEFvQWxaQ==
X-Received: by 2002:a05:6402:3708:b0:433:2d3b:ed5 with SMTP id ek8-20020a056402370800b004332d3b0ed5mr36613698edb.246.1658150469217;
        Mon, 18 Jul 2022 06:21:09 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id i8-20020a50fd08000000b0043a554818afsm8678537eds.42.2022.07.18.06.21.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 06:21:08 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH V2 2/3] arm64: dts: broadcom: bcm4908: add LEDs controller block
Date:   Mon, 18 Jul 2022 15:20:59 +0200
Message-Id: <20220718132100.13277-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220718132100.13277-1-zajec5@gmail.com>
References: <20220718132100.13277-1-zajec5@gmail.com>
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

BCM4908 includes LEDs controller that supports multiple brightness
levels & hardware blinking.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index db9f3d8e2bc8..981a0eb9da6f 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -515,6 +515,14 @@ uart0: serial@640 {
 			status = "okay";
 		};
 
+		leds: leds@800 {
+			compatible = "brcm,bcm4908-leds", "brcm,bcm63138-leds";
+			reg = <0x800 0xdc>;
+
+			#address-cells = <1>;
+			#size-cells = <0>;
+		};
+
 		nand-controller@1800 {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.34.1

