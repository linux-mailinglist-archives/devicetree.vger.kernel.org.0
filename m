Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3F6256EB4DC
	for <lists+devicetree@lfdr.de>; Sat, 22 Apr 2023 00:33:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233965AbjDUWc6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 21 Apr 2023 18:32:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231282AbjDUWc3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 21 Apr 2023 18:32:29 -0400
Received: from mail-ej1-x635.google.com (mail-ej1-x635.google.com [IPv6:2a00:1450:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECBFA40D5
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:04 -0700 (PDT)
Received: by mail-ej1-x635.google.com with SMTP id a640c23a62f3a-94f1a6e66c9so372684766b.2
        for <devicetree@vger.kernel.org>; Fri, 21 Apr 2023 15:32:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1682116324; x=1684708324;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=GrIFJywIqc8DnQ0zBuegXcsaO3im7Q1tAGm/ILbr8Kk=;
        b=jG+oHZ5NecaKFNM1SiYGALcJ63fuE7TSU14Zt9RA1TtFkhpXzyJa4mCM48eNJiOLy8
         19P0x9i1zYprOlJFkwGdqji/U/FeohXnfH6/eikwEkHHNBtIqa4JPVLuinTZOEfl2GP5
         0RxN+3lpUCpz4EtEFrVSvKpmi4T/dEafEEpGEzaF2DVB2uHuzCQz4xw2PPOG4tjmvWdI
         Krlw3ES2+kTRB5UH5B95CrePlBpXUDE0kGtksHN8iXzFkftK+YDKhk/emrKsXB/bgcR6
         9gMTSsnWaQn6g5jvtaz9C/V/0B1ckFneYWXbUiETsLTSU2WDlm7ftVtZVJA8k3RY4czi
         EOxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1682116324; x=1684708324;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=GrIFJywIqc8DnQ0zBuegXcsaO3im7Q1tAGm/ILbr8Kk=;
        b=BXSlxRc2nBg8VyO1k5zrfv1I9HzhIMsV0RsO80pAb8LnQDcNzlwszgJLXcW2VIb5qG
         qNKOp3imNAHjrAIMNuThYUW3h0zcw2VBegAk1FEFnlxEwtmRYoLt6whMIub0GW27VFxC
         /mbcYbb0OSBE0msDaq/9T1l7FzBI/LnBbSQkBNWGba3Cecv4E6m0BgS9q4oD2ODZeQoe
         YNqIzngdiej1lxUwozFQWmrkhUCrg4Stpa+Vg8kRxbhxjz9iWOmvQN8L8tYDz/ftLqwq
         oS8saEHxzQ1UzzGUXOTHKO0OodT/4fsX4VY1Ll+hw+Gon5WC7okm483U8SzpiPeMedC6
         Yszg==
X-Gm-Message-State: AAQBX9e9p5kD0ANqn+MPYNzSojSuyi2myggVkDcoOy4g51BlqxE3zVdk
        jdJxow+QvqZUvAjcAzUGAqfjzA==
X-Google-Smtp-Source: AKy350aIV8NFYW3zqZYluWeNmduj1PzsSP4HgoSSPpntUhj/54MWl4SpDaITAUZPjMYInZNZBX2zag==
X-Received: by 2002:a17:906:d72:b0:94e:ec0f:455 with SMTP id s18-20020a1709060d7200b0094eec0f0455mr4508851ejh.54.1682116324478;
        Fri, 21 Apr 2023 15:32:04 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:687d:8c5:41cb:9883])
        by smtp.gmail.com with ESMTPSA id e24-20020a17090681d800b0094f54c032e3sm2566277ejx.103.2023.04.21.15.32.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 21 Apr 2023 15:32:04 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Chester Lin <clin@suse.com>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Matthias Brugger <mbrugger@suse.com>,
        NXP S32 Linux Team <s32@nxp.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: s32: add missing cache properties
Date:   Sat, 22 Apr 2023 00:32:02 +0200
Message-Id: <20230421223202.115472-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As all level 2 and level 3 caches are unified, add required
cache-unified properties to fix warnings like:

  s32g274a-evb.dtb: l2-cache1: 'cache-unified' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Please take the patch via sub-arch SoC tree.
---
 arch/arm64/boot/dts/freescale/s32g2.dtsi   | 2 ++
 arch/arm64/boot/dts/freescale/s32v234.dtsi | 2 ++
 2 files changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/freescale/s32g2.dtsi b/arch/arm64/boot/dts/freescale/s32g2.dtsi
index d8c82da88ca0..5ac1cc9ff50e 100644
--- a/arch/arm64/boot/dts/freescale/s32g2.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32g2.dtsi
@@ -53,11 +53,13 @@ cpu3: cpu@101 {
 		cluster0_l2: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		cluster1_l2: l2-cache1 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
diff --git a/arch/arm64/boot/dts/freescale/s32v234.dtsi b/arch/arm64/boot/dts/freescale/s32v234.dtsi
index 3e306218d533..42409ec56792 100644
--- a/arch/arm64/boot/dts/freescale/s32v234.dtsi
+++ b/arch/arm64/boot/dts/freescale/s32v234.dtsi
@@ -62,11 +62,13 @@ cpu3: cpu@101 {
 		cluster0_l2_cache: l2-cache0 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 
 		cluster1_l2_cache: l2-cache1 {
 			compatible = "cache";
 			cache-level = <2>;
+			cache-unified;
 		};
 	};
 
-- 
2.34.1

