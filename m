Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8D51E722EDB
	for <lists+devicetree@lfdr.de>; Mon,  5 Jun 2023 20:44:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229893AbjFESof (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Jun 2023 14:44:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53334 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229529AbjFESof (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Jun 2023 14:44:35 -0400
X-Greylist: delayed 3736 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Mon, 05 Jun 2023 11:44:33 PDT
Received: from egress-ip33a.ess.de.barracuda.com (egress-ip33a.ess.de.barracuda.com [18.185.115.192])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 940C9CD
        for <devicetree@vger.kernel.org>; Mon,  5 Jun 2023 11:44:33 -0700 (PDT)
Received: from mail-qv1-f69.google.com (mail-qv1-f69.google.com [209.85.219.69]) by mx-outbound43-10.eu-central-1c.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Mon, 05 Jun 2023 18:44:30 +0000
Received: by mail-qv1-f69.google.com with SMTP id 6a1803df08f44-6261a25e981so62123396d6.0
        for <devicetree@vger.kernel.org>; Mon, 05 Jun 2023 11:44:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google; t=1685990669; x=1688582669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=HEiNRZDZjWnkzNY9AoYu0FIiGrH0hmi+XSngmRPIxu4=;
        b=DR3v926sj9urURKWo5Z1cI2T+SFraCsrUtJGWXhwP3u/Two8rAYFlipBFJ1DplLlJA
         b6eGIoK5wLulQmCcpMsJBXvQyHxvFh9gUg5b/LI2kCq/998ekF+71sL0cKLIvRwRs66v
         lgXD1SOjNLB+9YM/ksGeh2+EE+V5JW3/Hg2ns=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685990669; x=1688582669;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=HEiNRZDZjWnkzNY9AoYu0FIiGrH0hmi+XSngmRPIxu4=;
        b=iKO+AWdYePBPr1MGnPtj9lShHf9zeOT3+NLUevsGgOflDgavyY/g0h6To0XtFA3i9F
         QWbNGE+xsJ2mfuQRI5xGCPkfQYjoR8SU+jcx+gEwXwUzFHL7FgdLCTQdm/tN0K6jPR3C
         Ffbijo35/odTIwcLbczo4CJu0J+mm9fVK2umWXtBVhWVQ+sEQd2/uPfYF8rpCaQutDwn
         P/ZbXHPXEfssHOiJvCJk+UHzu4PKAbCD8hyfDWxoGar/+IM+eSYH25xe3OJLqUvrELBY
         LeEOr5gV6Li2tluGDwgAQhr8oXSu/NrWCHClgdGJBFvPIsmNPQyLhZggKp/4Cg4c1ujF
         Lu9g==
X-Gm-Message-State: AC+VfDyGmVwSJZJ++VrqVXO6gOx8UdDwtkQo4iJ46xu9qj0eg5lCq3ae
        brRpFnNfkx4Uefva7WntBo8pDvL9RSuzcK0JXCWbRCWfCm7gpT5QGSTWz8mmlFFSh6gGiAponpW
        B4j/ZeyuyEnlzeJw6uRkDKP75COD47KsrK2HEhpYdh78qJCIK2f1mMJWl+g==
X-Received: by 2002:a05:6a20:e619:b0:10a:be5c:6e2d with SMTP id my25-20020a056a20e61900b0010abe5c6e2dmr2446150pzb.39.1685986933603;
        Mon, 05 Jun 2023 10:42:13 -0700 (PDT)
X-Google-Smtp-Source: ACHHUZ7niwQ6oqcZbl4tSMUgkwVEOqD7UX6n+xTcgK6jiCDqg4/oQz6awofepRrmuvDWlsF2EEzsqw==
X-Received: by 2002:a05:6a20:e619:b0:10a:be5c:6e2d with SMTP id my25-20020a056a20e61900b0010abe5c6e2dmr2446131pzb.39.1685986933254;
        Mon, 05 Jun 2023 10:42:13 -0700 (PDT)
Received: from LAP789U.mistral.in ([106.51.227.150])
        by smtp.gmail.com with ESMTPSA id z6-20020aa785c6000000b0064d2ad04cccsm5619653pfn.175.2023.06.05.10.42.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 05 Jun 2023 10:42:12 -0700 (PDT)
From:   sabiya.d@mistralsolutions.com
X-Google-Original-From: sabiya.d@ti.com
To:     nm@ti.com, vigneshr@ti.com, kristo@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, afd@ti.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, sabiya.d@mistralsolutions.com,
        Dasnavis Sabiya <sabiya.d@ti.com>
Subject: [PATCH] arm64: dts: ti: k3-am69-sk: Enable MCU CPSW2G
Date:   Mon,  5 Jun 2023 23:12:02 +0530
Message-Id: <20230605174202.159278-1-sabiya.d@ti.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1685990669-311018-5448-28522-1
X-BESS-VER: 2019.1_20230525.1947
X-BESS-Apparent-Source-IP: 209.85.219.69
X-BESS-Parts: H4sIAAAAAAACA4uuVkqtKFGyUirNy1bSUcovVrIyMrY0AbIygIJGiWlGpsYGJs
        nG5mkWlkZmFhapBqYGhpaGhsaJKYmppkq1sQDBv8m0QQAAAA==
X-BESS-Outbound-Spam-Score: 0.00
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.248613 [from 
        cloudscan12-250.eu-central-1a.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
        0.00 NO_REAL_NAME           HEADER: From: does not include a real name 
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
X-BESS-Outbound-Spam-Status: SCORE=0.00 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_BESS_OUTBOUND, NO_REAL_NAME, BSF_SC0_MISMATCH_TO
X-BESS-BRTS-Status: 1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Dasnavis Sabiya <sabiya.d@ti.com>

Add device tree support to enable MCU CPSW for AM69 SK

Signed-off-by: Dasnavis Sabiya <sabiya.d@ti.com>
---
 arch/arm64/boot/dts/ti/k3-am69-sk.dts | 50 +++++++++++++++++++++++++++
 1 file changed, 50 insertions(+)

diff --git a/arch/arm64/boot/dts/ti/k3-am69-sk.dts b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
index bc49ba534790..4b7d9280d76f 100644
--- a/arch/arm64/boot/dts/ti/k3-am69-sk.dts
+++ b/arch/arm64/boot/dts/ti/k3-am69-sk.dts
@@ -104,6 +104,32 @@ vdd_sd_dv: regulator-tlv71033 {
 	};
 };
 
+&wkup_pmx0 {
+	mcu_cpsw_pins_default: mcu-cpsw-pins-default {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x094, PIN_INPUT, 0) /* (A35) MCU_RGMII1_RD0 */
+			J784S4_WKUP_IOPAD(0x090, PIN_INPUT, 0) /* (B36) MCU_RGMII1_RD1 */
+			J784S4_WKUP_IOPAD(0x08c, PIN_INPUT, 0) /* (C36) MCU_RGMII1_RD2 */
+			J784S4_WKUP_IOPAD(0x088, PIN_INPUT, 0) /* (D36) MCU_RGMII1_RD3 */
+			J784S4_WKUP_IOPAD(0x084, PIN_INPUT, 0) /* (B37) MCU_RGMII1_RXC */
+			J784S4_WKUP_IOPAD(0x06c, PIN_INPUT, 0) /* (C37) MCU_RGMII1_RX_CTL */
+			J784S4_WKUP_IOPAD(0x07c, PIN_OUTPUT, 0) /* (D37) MCU_RGMII1_TD0 */
+			J784S4_WKUP_IOPAD(0x078, PIN_OUTPUT, 0) /* (D38) MCU_RGMII1_TD1 */
+			J784S4_WKUP_IOPAD(0x074, PIN_OUTPUT, 0) /* (E37) MCU_RGMII1_TD2 */
+			J784S4_WKUP_IOPAD(0x070, PIN_OUTPUT, 0) /* (E38) MCU_RGMII1_TD3 */
+			J784S4_WKUP_IOPAD(0x080, PIN_OUTPUT, 0) /* (E36) MCU_RGMII1_TXC */
+			J784S4_WKUP_IOPAD(0x068, PIN_OUTPUT, 0) /* (C38) MCU_RGMII1_TX_CTL */
+		>;
+	};
+
+	mcu_mdio_pins_default: mcu-mdio-pins-default {
+		pinctrl-single,pins = <
+			J784S4_WKUP_IOPAD(0x09c, PIN_OUTPUT, 0) /* (A36) MCU_MDIO0_MDC */
+			J784S4_WKUP_IOPAD(0x098, PIN_INPUT, 0) /* (B35) MCU_MDIO0_MDIO */
+		>;
+	};
+};
+
 &main_pmx0 {
 	main_uart8_pins_default: main-uart8-pins-default {
 		pinctrl-single,pins = <
@@ -178,3 +204,27 @@ &main_sdhci1 {
 &main_gpio0 {
 	status = "okay";
 };
+
+&mcu_cpsw {
+	status = "okay";
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_cpsw_pins_default>;
+};
+
+&davinci_mdio {
+	pinctrl-names = "default";
+	pinctrl-0 = <&mcu_mdio_pins_default>;
+
+	mcu_phy0: ethernet-phy@0 {
+		reg = <0>;
+		ti,rx-internal-delay = <DP83867_RGMIIDCTL_2_00_NS>;
+		ti,fifo-depth = <DP83867_PHYCR_FIFO_DEPTH_4_B_NIB>;
+		ti,min-output-impedance;
+	};
+};
+
+&mcu_cpsw_port1 {
+	status = "okay";
+	phy-mode = "rgmii-rxid";
+	phy-handle = <&mcu_phy0>;
+};
-- 
2.25.1

