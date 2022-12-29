Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AC590659018
	for <lists+devicetree@lfdr.de>; Thu, 29 Dec 2022 19:02:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229535AbiL2SCd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Dec 2022 13:02:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229503AbiL2SCc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Dec 2022 13:02:32 -0500
Received: from mail-lf1-x12f.google.com (mail-lf1-x12f.google.com [IPv6:2a00:1450:4864:20::12f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8467615825
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 10:02:31 -0800 (PST)
Received: by mail-lf1-x12f.google.com with SMTP id bf43so28514983lfb.6
        for <devicetree@vger.kernel.org>; Thu, 29 Dec 2022 10:02:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=semihalf.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=0oNYi6w6tx/qy2WSkQo4B6H6RF8KC0sVH3SkC9om3p4=;
        b=SIyWZWOFnEZZroZZHzk1EkRsHGGi0iulfx5hQpAukXvozEOkUU0hagfdIaoxQWaVyW
         8BAqRHzeCGK0q2aTFNw9rvjEBA2S4HMmZ/lUNqbDFLLsqb1/u0wZaQdLl/n0nBozzj86
         KFojEzFOaivYy6n25g+JmdP2eriYIC/BTAZVPSmoW3Q5GVXBt4DiXZT00zjrWVqhEcQf
         2Rhur428fFGqnLiBFm+sIhyeTsofC2xLKbTFjVPQPXuy1CYin9kC6FHeCig+FM9fq3Oa
         Fs4CEj2F/F5RqAZigY6I/UgOff2EzqwSNo7bV8a8mInUY9yAD1BJKjZxoM6acTuab/Ps
         MLcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=0oNYi6w6tx/qy2WSkQo4B6H6RF8KC0sVH3SkC9om3p4=;
        b=01cqGZlCigRcsyJEOZ7EO5/PjhLmX1ifTUH8Hv8R9/qR2S9OCMz3eqdVn2pA4DYjdR
         dHStEi0g+rUCthXOtTMpt/AIPhaZce2bIP8K9J/tHr6E2ZoeZ7/Q4ELZ0VJdEKDkKIhA
         q0vh/zSGnNxauDs/uJlakydf/7caK63zetiwzBVAXvHTmgvWGp4Ah4CODepJJGrXSpYL
         uQ01jI9SpPkebZc421bp9GnaM+R/zXplxorTTir+/co26B7eFi1EBU6Wl13zdz6OMwnl
         ci+3UCZAz2+O/1CayRyP2siqG8wNdiF2jZ632P9brFT7Ny6ddz4HfRDEbPLdheYvEY+v
         I+XQ==
X-Gm-Message-State: AFqh2kovoFQWLke7a3r+NZpA8AvlIx3qFazKskEf+ls8D+WOB0GD9cmP
        MSqNivPvrSwX4l2C3Gcj8ubAJQ==
X-Google-Smtp-Source: AMrXdXuD12Wxkfh/EiALUPMJlllvK4y/qy0e0VjQbTgDGUy44NlX0jz3nPUan2Z3BPF9mbFVOOgcjg==
X-Received: by 2002:a05:6512:ba8:b0:4ca:98ec:7d9a with SMTP id b40-20020a0565120ba800b004ca98ec7d9amr9696633lfv.15.1672336949862;
        Thu, 29 Dec 2022 10:02:29 -0800 (PST)
Received: from michal-H370M-DS3H.office.semihalf.net ([83.142.187.84])
        by smtp.googlemail.com with ESMTPSA id e16-20020ac24e10000000b004b4ea0f4e25sm3119709lfr.301.2022.12.29.10.02.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Dec 2022 10:02:29 -0800 (PST)
From:   =?UTF-8?q?Micha=C5=82=20Grzelak?= <mig@semihalf.com>
To:     linux-kernel@vger.kernel.org
Cc:     andrew@lunn.ch, sebastian.hesselbarth@gmail.com,
        gregory.clement@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        mw@semihalf.com, upstream@semihalf.com, mchl.grzlk@gmail.com,
        =?UTF-8?q?Micha=C5=82=20Grzelak?= <mig@semihalf.com>
Subject: [PATCH v3] ARM: dts: dove.dtsi: Move ethphy to fix schema error
Date:   Thu, 29 Dec 2022 19:01:55 +0100
Message-Id: <20221229180155.99303-1-mig@semihalf.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Running 'make dtbs_check' with schema in net/marvell,orion-mdio.yaml
gives following warnings:
mdio-bus@72004: Unevaluated properties are not allowed
('ethernet-phy' was unexpected)
	arch/arm/boot/dts/dove-cubox.dtb
	arch/arm/boot/dts/dove-cubox-es.dtb
	arch/arm/boot/dts/dove-d2plug.dtb
	arch/arm/boot/dts/dove-d2plug.dtb
	arch/arm/boot/dts/dove-dove-db.dtb
	arch/arm/boot/dts/dove-d3plug.dtb
	arch/arm/boot/dts/dove-sbc-a510.dtb
As every subnode of mdio is expected to have an @X, ethernet-phy subnode
in dove.dtsi doesn't have one. Fix these errors by moving ethernet-phy
into relevant .dts files with correct @<reg address>.

Signed-off-by: Michał Grzelak <mig@semihalf.com>
---
Changelog:
v2->v3
- edit commit message according to
  https://lore.kernel.org/all/Y6zuJrb+8j+XCksN@lunn.ch/

v1->v2
- remove patternProperties: from .yaml
- move ethphy from dove.dtsi into relevant .dts files

 arch/arm/boot/dts/dove-cm-a510.dtsi | 14 +++++++++++---
 arch/arm/boot/dts/dove-cubox.dts    | 15 +++++++++++----
 arch/arm/boot/dts/dove.dtsi         |  5 -----
 3 files changed, 22 insertions(+), 12 deletions(-)

diff --git a/arch/arm/boot/dts/dove-cm-a510.dtsi b/arch/arm/boot/dts/dove-cm-a510.dtsi
index 9b9dfbe07be4..2f2f0a4bf004 100644
--- a/arch/arm/boot/dts/dove-cm-a510.dtsi
+++ b/arch/arm/boot/dts/dove-cm-a510.dtsi
@@ -124,9 +124,17 @@ wifi_power: regulator@1 {
 };
 
 /* Optional RTL8211D GbE PHY on SMI address 0x03 */
-&ethphy {
-	reg = <3>;
-	status = "disabled";
+&mdio {
+	ethphy: ethernet-phy@3 {
+		reg = <3>;
+		status = "disabled";
+	};
+};
+
+&eth {
+	ethernet-port@0 {
+		phy-handle = <&ethphy>;
+	};
 };
 
 &i2c0 {
diff --git a/arch/arm/boot/dts/dove-cubox.dts b/arch/arm/boot/dts/dove-cubox.dts
index 2639b9fe0ab4..170c14d7f5c8 100644
--- a/arch/arm/boot/dts/dove-cubox.dts
+++ b/arch/arm/boot/dts/dove-cubox.dts
@@ -72,11 +72,18 @@ gpu-subsystem {
 &uart0 { status = "okay"; };
 &sata0 { status = "okay"; };
 &mdio { status = "okay"; };
-&eth { status = "okay"; };
+&eth {
+	status = "okay";
+	ethernet-port@0 {
+		phy-handle = <&ethphy>;
+	};
+};
 
-&ethphy {
-	compatible = "marvell,88e1310";
-	reg = <1>;
+&mdio {
+	ethphy: ethernet-phy@1 {
+		compatible = "marvell,88e1310";
+		reg = <1>;
+	};
 };
 
 &gpu {
diff --git a/arch/arm/boot/dts/dove.dtsi b/arch/arm/boot/dts/dove.dtsi
index 00a36fba2fd2..c7a3fa33c56e 100644
--- a/arch/arm/boot/dts/dove.dtsi
+++ b/arch/arm/boot/dts/dove.dtsi
@@ -382,7 +382,6 @@ ethernet-port@0 {
 					interrupts = <29>;
 					/* overwrite MAC address in bootloader */
 					local-mac-address = [00 00 00 00 00 00];
-					phy-handle = <&ethphy>;
 				};
 			};
 
@@ -394,10 +393,6 @@ mdio: mdio-bus@72004 {
 				interrupts = <30>;
 				clocks = <&gate_clk 2>;
 				status = "disabled";
-
-				ethphy: ethernet-phy {
-					/* set phy address in board file */
-				};
 			};
 
 			sdio0: sdio-host@92000 {
-- 
2.34.1

