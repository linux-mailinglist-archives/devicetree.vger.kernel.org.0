Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50FF45780BD
	for <lists+devicetree@lfdr.de>; Mon, 18 Jul 2022 13:29:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233438AbiGRL3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Jul 2022 07:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51378 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232593AbiGRL3d (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Jul 2022 07:29:33 -0400
Received: from mail-ej1-x634.google.com (mail-ej1-x634.google.com [IPv6:2a00:1450:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E28922669
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:29:32 -0700 (PDT)
Received: by mail-ej1-x634.google.com with SMTP id j22so20644213ejs.2
        for <devicetree@vger.kernel.org>; Mon, 18 Jul 2022 04:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=8OxtpucguPissdSC5HXV3eaFBfYa5QQkjhDSsW6QHMA=;
        b=JQeG8hc+zop4hhi9l0mTf15pbSwNU6kERs46GsK1VCmJMIITBNLD2ZtUrBnCsuVh6c
         8u0/2pxeXGONVWLlCla+Zg2/TxpglYRNHtxu9j3MDmz5QxfAErw5da2NPLn2shnHKq2Z
         jBb4VDg7S1pk1M7y37z7V2KaL42uTHjUqFbvqNI6YrFAz/te3uVQtuoiMa9DqNRESVpu
         DWkQo27nbQPi3YCQ/L3VJeFqi2dyhfyNblQuQiukvbQh3A3OFKDW4vKLgue7yafZvRwj
         g6RPBWLWZAd+4mZ/7thOqFNHBWh+WkvHbyLIoyPiNVX9Q4e3m1cYDlqZ2aBjKuyKIloZ
         6ZOQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=8OxtpucguPissdSC5HXV3eaFBfYa5QQkjhDSsW6QHMA=;
        b=kNWDvOuXVTePT2UM7dRzilFfFg4xi5Yr1eFQVCic8KkcxjxgBCWSoI8skcUveN8K0Z
         DF745eHbPmAxjUoLld2+wW3CiNYMyV07Pb0QvD31ppUOPCcwMYAbD871GBAmV2RDcqbw
         RWILmpmvPr3fcHV12izZV7KBSMvDmhWExUiNO65wD5nRDeIF3mZN9mBOKJGtnl8xNY9m
         GzCuzzG80O7pURdGwSgT8/n8dcAMCkBB8cWFFlQfliMtHmKm2+7m625HG4/5R023UUc9
         7vwinCXMvbdloIPQu38yGc/cnuR7XthZRrQYoSeTgV6JoVMBhOsP7kEzvQ99fZL0pHPU
         01kg==
X-Gm-Message-State: AJIora9DOoQ6xtqnUPgcfU5WNg+sHz093l0VC2G5Bc/b8LSQlZN2fooX
        MpCTdbo+J0E8EnjxruRqV0I=
X-Google-Smtp-Source: AGRyM1uAgzpeOvHrPszKbN9F5tXxnx6d8bUlTV6vH/xafYeoa8pZaF+BIDyOYRbqAIoGpb4zlG7ezw==
X-Received: by 2002:a17:906:6146:b0:722:f8c4:ec9b with SMTP id p6-20020a170906614600b00722f8c4ec9bmr25772009ejl.708.1658143771399;
        Mon, 18 Jul 2022 04:29:31 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id vp21-20020a17090712d500b006feba31171bsm5452210ejb.11.2022.07.18.04.29.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 18 Jul 2022 04:29:31 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH 2/3] arm64: dts: broadcom: bcm4908: add LEDs controller block
Date:   Mon, 18 Jul 2022 13:29:22 +0200
Message-Id: <20220718112923.5500-2-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220718112923.5500-1-zajec5@gmail.com>
References: <20220718112923.5500-1-zajec5@gmail.com>
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

