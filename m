Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B2A94B232A
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 11:34:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238030AbiBKKdO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 05:33:14 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:60196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242867AbiBKKdN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 05:33:13 -0500
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BA037EA9
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 02:33:12 -0800 (PST)
Received: by mail-lj1-x22d.google.com with SMTP id c15so11821670ljf.11
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 02:33:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y569Dc2mQEhKiSh4sbxjZAESmN1Kdept2e4gDPv9gQM=;
        b=cLoj+WfdZph5bzL+Gr41BBun+k0caWIryN8LENqN3YRNFVbd/JCKgwLGchLPFstSlT
         NVIZpVPraDANYJFluZdUr3EJsVMAnJ5+qdBNSQEwNXXxEUMoojFZvbNuqF8EDjsiYDoC
         LA8GNT05Dhx1sAvwm61P+JAMaGB4Xef426DYw6LNMdXqRbafN84gB0/jorXRyXJxvjrh
         obZFPMoVjcXm1LeNOpP+w/LsxKc4atbXv2xh7UuDsMhMN/zTlgC2JFvjod/5QDVmaHY2
         QA9JCyyAJsq8cvHRyeRwctN/y9CmXWNlpieQ8MR5hEPk9K59EWifPz9yIsr5wpdYRTfX
         H0hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Y569Dc2mQEhKiSh4sbxjZAESmN1Kdept2e4gDPv9gQM=;
        b=lIf21M2yCi0MN+WXx0LdJLdTzbNDG2Aa3vliXaKVDXnC0mODk6Ee4l3hFV6tOfZ/Rn
         mdGwokv4GdNREj0wanH2R/iDyYPFalF5CIjkzc69jYXEabRiWp7STy6Tfe2SA6yguWjE
         SyKV3ysKmzKyW8iFU1N/oPmyqYzM934Lmtu9CMkQi9rz4ZhuSPNU3KZs/EO67NfucB+A
         RKkL8KSm6TwP3QqwglLEkuVlz7q36vYqxlS87gzXSOXHLrKifMMzll4Fe+Ypdu8ycK5E
         a7DhiUaHY9VyRiUW54BmyzWp9OCzlWbOtb9YvySABfkKlvKu/avdnhQtKCK1DqCQBvqx
         vpYA==
X-Gm-Message-State: AOAM532dX3j9boz+JU0xB1uS+RNv5wK1ArywplJZjWnotx45mlHgTJRD
        AObDb9fu15LIvcrEQI2QWdW8bcZdFEo=
X-Google-Smtp-Source: ABdhPJzGAEFN7Ytb4fjSnVWjMJ8kI11Y+YqOEJ10yZ92iO1OP28/4+zHSO15AJdsClsC1ni7bAun3g==
X-Received: by 2002:a05:651c:1542:: with SMTP id y2mr632976ljp.334.1644575590900;
        Fri, 11 Feb 2022 02:33:10 -0800 (PST)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id j5sm703778lfr.15.2022.02.11.02.33.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 02:33:10 -0800 (PST)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: add I2C block
Date:   Fri, 11 Feb 2022 11:33:06 +0100
Message-Id: <20220211103306.15271-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

BCM4908 uses the same I2C hw as BCM63xx / BCM67xx / BCM68xx SoCs.

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index b0bc5262beca..9ae298e7d6cf 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -464,6 +464,15 @@ nandcs: nand@0 {
 			};
 		};
 
+		i2c@2100 {
+			compatible = "brcm,brcmstb-i2c";
+			reg = <0x2100 0x58>;
+			clock-frequency = <97500>;
+			pinctrl-names = "default";
+			pinctrl-0 = <&pins_i2c_a>;
+			status = "disabled";
+		};
+
 		misc@2600 {
 			compatible = "brcm,misc", "simple-mfd";
 			reg = <0x2600 0xe4>;
-- 
2.34.1

