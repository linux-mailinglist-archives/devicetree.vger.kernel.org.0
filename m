Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 89EA45287EB
	for <lists+devicetree@lfdr.de>; Mon, 16 May 2022 17:05:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241699AbiEPPE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 May 2022 11:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238087AbiEPPEz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 16 May 2022 11:04:55 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9AE5D3B541
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:04:54 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id dk23so29247407ejb.8
        for <devicetree@vger.kernel.org>; Mon, 16 May 2022 08:04:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LyXKrgjMktSgVUjFq464Do4yMi75SR7RvjCwjaKmy0g=;
        b=Gg1mqyvPBsnrpB+EzHkpLRKDl6qoJVoQD2k0cENdM+HhfUcTCEzq5mZP91Xe7AaDRC
         fcP3gPIAR6PGocI+0OgIOpLjQKGZc+0FCw6g/Nq4+rqDVa7wmV6UatqbsWvVJztwnQmH
         oxKbR0KWV1pD9xExVc+jGYe5JMDhCJoOYN7fjc6z7CdRsINGm/zV9GBErbIy05eBACza
         9nOK7HjzY+MH9U+NwdtsSNFCgFR1LLEUklCkjbvmzU9BwKjRBJxjXIj8WugGTPgc57RC
         PGH4z3PjC2JP7d4zmUHdxqb9qH49KSooGLbvRe7iViOAlayHJmwP5Zh1Sr3qPTtZhHsl
         97Zw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=LyXKrgjMktSgVUjFq464Do4yMi75SR7RvjCwjaKmy0g=;
        b=TeQnmKZQtE3mTEM+EA0B9l3zE4jHJnNzs1IDQMVO5k8Ss+1/Gb7WlL+Y770bR0+UWS
         K9Cxs8F4kJY6jB9Bwq1ppXPq1JbPgMDG8gQYsOOGhFXd9EHnb+lh4e5aDDd2DCfxbLi0
         DUu1e99qB3EakLbE4rwt8C4u7FS70+yrEQYsU5aM43LWtgxe+9I5R1xBjEyeD8lnRlab
         VVj02wls4XQ3efomCq5vbPlfPoAOUN2dAj01/91APtKT/36DhinQ1G+jJXFcD5zXKGx2
         +08e506vPuySl26puFQNoppQZFodAhZm1Cq8xq8Nk7iRUEfJHhFp0v5UwTmizwgvRsDD
         jckA==
X-Gm-Message-State: AOAM532W1q3qUwtAXoHdVHVitEh3CYwZX6qfLUQSTNtBS5Vx1Oo5JG8l
        QZM0Tz3z9y0LuGPTMSrcxtwF4Q==
X-Google-Smtp-Source: ABdhPJyTxgHerr7fV6V3IK7Hb1dVuydAjODaB1KQ3psAilAgT3bg48nHYOsy9+6WCACpp2Uevh/2Rw==
X-Received: by 2002:a17:907:d22:b0:6f4:8766:2042 with SMTP id gn34-20020a1709070d2200b006f487662042mr15762170ejc.259.1652713493202;
        Mon, 16 May 2022 08:04:53 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::f9e])
        by smtp.gmail.com with ESMTPSA id p23-20020a056402045700b0042aad9edc9bsm2337958edw.71.2022.05.16.08.04.52
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 16 May 2022 08:04:52 -0700 (PDT)
From:   Michal Simek <monstr@monstr.eu>
X-Google-Original-From: Michal Simek <michal.simek@amd.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     David Heidelberg <david@ixit.cz>,
        Durga Challa <vnsl.durga.challa@xilinx.com>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Michael Tretter <m.tretter@pengutronix.de>,
        Mounika Grace Akula <mounika.grace.akula@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>,
        Robert Hancock <robert.hancock@calian.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: xilinx: Fix opp-table-cpu
Date:   Mon, 16 May 2022 17:04:51 +0200
Message-Id: <3297772b58953e4afd91f7a4bd845713e36e1e27.1652713489.git.michal.simek@amd.com>
X-Mailer: git-send-email 2.36.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

OPP table name now should start with "opp-table" and OPP entries
shouldn't contain commas and @ signs in accordance to the new schema
requirement.

The same change was done by commit c6d4a8977598 ("ARM: tegra: Rename CPU
and EMC OPP table device-tree nodes"), commit ffbe853a3f5a ("ARM: dts:
sunxi: Fix OPPs node name") or commit b7072cc5704d ("arm64: dts: qcom:
qcs404: Rename CPU and CPR OPP tables").

Signed-off-by: Michal Simek <michal.simek@amd.com>
---

 arch/arm64/boot/dts/xilinx/zynqmp.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
index f86b92071367..7a332a53815a 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
+++ b/arch/arm64/boot/dts/xilinx/zynqmp.dtsi
@@ -76,7 +76,7 @@ CPU_SLEEP_0: cpu-sleep-0 {
 		};
 	};
 
-	cpu_opp_table: cpu-opp-table {
+	cpu_opp_table: opp-table-cpu {
 		compatible = "operating-points-v2";
 		opp-shared;
 		opp00 {
-- 
2.36.0

