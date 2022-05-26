Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8C2C3535493
	for <lists+devicetree@lfdr.de>; Thu, 26 May 2022 22:38:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347775AbiEZUiD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 May 2022 16:38:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43010 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236438AbiEZUiD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 May 2022 16:38:03 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13E1D4A91F
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:38:02 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id f9so5205524ejc.0
        for <devicetree@vger.kernel.org>; Thu, 26 May 2022 13:38:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QJhc1mTxQ3QecQnzHGouGfH+Ej90dYE0LGaajUy8Apw=;
        b=uiaFKSXxIGbdrU2GegXIqFhYHTBQl00Bj09Dpe5qx7XEzmarRuR4bgTIiZcO1Tb78y
         IjZhTvse19YdWDBRZX3UdREoLS5KcK5HSQQlzWkW7q2Ntbl57IjxeO3EditIt4Cu7jLn
         fM1Txe5w8rZ3YzaYWN3mvLtqnFR5Dx/qWb2sn/UhKJ9bOPmv9jnNzDeVjcQLfePGkYQl
         Xjo7eaeQ+nhoUZqFwEl5DBW5ZeZww6rWv867e8BdiFEbkodDkvsV5wb2sUAnKpNws34A
         bgEKWYiB55hOIz38IYPBq/V0xEjvbdNHkBS2IrB3mwkdQLSS/53KMNYpfylAkW14JlNj
         YhTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QJhc1mTxQ3QecQnzHGouGfH+Ej90dYE0LGaajUy8Apw=;
        b=CaZnfO8jL5q1/KZQE5aQid9ztS8XWAvxXANsJa4GJ4oXCysExCggpbkrb3WayI9eUP
         /xUoQOlgmTXhONnwCvmzuPYgtgwFPiDtRLC0inKo76MEJMYW8CRqw6ih488fn2GAefAo
         rYt+tO5ewErYVPkHR7bGD5KEUtHipbDM1ukjWHbPAeJNZXleZhetf2DmcyNH+P+vA1Ll
         7wdxBSE7mn8IZvouvMzqmFTjRC61aZnwX2/Yeb6Uctx3j1+AAACGlzF0dfE0x+GU2lXQ
         PZXu4IpJkYhft5kTQrmBfizs67VocXwox5MuRm2TbW0cG6myr6PsvMHc/jlRtWkS3V0M
         BHLA==
X-Gm-Message-State: AOAM530qugyBPhll2GaXTn7EC6Doi95rOrYS/fMcss9MTewYJOGmVSrA
        YHPtoaxicMQ1vDfkfWtgSbu0pw==
X-Google-Smtp-Source: ABdhPJwZZAaiXc9uQE2koBnbYin8GLwTlYJhIRWvb1Cu1PatIOvnAgDe7czOEGMB7VIIb30zWQrgPA==
X-Received: by 2002:a17:907:3f0d:b0:6ff:43e:bb1a with SMTP id hq13-20020a1709073f0d00b006ff043ebb1amr13600232ejc.52.1653597480679;
        Thu, 26 May 2022 13:38:00 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id b16-20020a50b410000000b0042b5cf75d6esm1160381edh.97.2022.05.26.13.37.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 May 2022 13:38:00 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andre Przywara <andre.przywara@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] ARM: dts: ecx: adjust whitespace around '='
Date:   Thu, 26 May 2022 22:37:58 +0200
Message-Id: <20220526203758.831301-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix whitespace coding style: use single space instead of tabs or
multiple spaces around '=' sign in property assignment.  No functional
changes (same DTB).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Output compared with dtx_diff and fdtdump.
---
 arch/arm/boot/dts/ecx-common.dtsi | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/arch/arm/boot/dts/ecx-common.dtsi b/arch/arm/boot/dts/ecx-common.dtsi
index 57a028a69373..ce5221c6b358 100644
--- a/arch/arm/boot/dts/ecx-common.dtsi
+++ b/arch/arm/boot/dts/ecx-common.dtsi
@@ -9,11 +9,11 @@ chosen {
 	};
 
 	psci {
-		compatible	= "arm,psci";
-		method		= "smc";
-		cpu_suspend	= <0x84000002>;
-		cpu_off		= <0x84000004>;
-		cpu_on		= <0x84000006>;
+		compatible = "arm,psci";
+		method = "smc";
+		cpu_suspend = <0x84000002>;
+		cpu_off = <0x84000004>;
+		cpu_on = <0x84000006>;
 	};
 
 	soc {
-- 
2.34.1

