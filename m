Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72FA24F7B9C
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 11:27:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243803AbiDGJ3x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 7 Apr 2022 05:29:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49144 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243786AbiDGJ3v (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 7 Apr 2022 05:29:51 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 20FD8DB4BF
        for <devicetree@vger.kernel.org>; Thu,  7 Apr 2022 02:27:51 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id p15so9546971ejc.7
        for <devicetree@vger.kernel.org>; Thu, 07 Apr 2022 02:27:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4XD1rP9un2hmsqq0b2Cm9MfuJFrWq4hgmVGB9CsvK7E=;
        b=iABlEFG8GrPja1/jzRRcIfR9Dvt7wl8LU7VmVR1w/91XfwsCvReILJid/u6X1Yk6MO
         F4azg/k9gk/gF0Q6NJInkJ7WFIv/uCmUbM4ZdWvwThQxwmWsM3eIdFEs+qf4z9ABKTKM
         tNcn+FIhp5c0szBe+pZ7vE6HhdLbTg28wJPl8ZTlQwta0EiAVYKkna6LITVh/BGkcURP
         Q8HGMNo3oAjb89leKAaNK2MSHh1x0HGFBmlx7yXkxInfl5Y3rBRxP7mhrvltIZRt+94p
         J8JEjPjOKzLWXJ9TXJXA8rszr+6LbYyisWRJcxZ58cR0dyfYSkVcyLaNExXe7hPIm3hQ
         2+gA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=4XD1rP9un2hmsqq0b2Cm9MfuJFrWq4hgmVGB9CsvK7E=;
        b=Ovq1B1miQJYZYrp769GI6nMq2ZMfrfN7Q9cF6qQFDWD5sfdgF5rQZEkCn36dKHxQxn
         RO82OjZDibacJ1vU+n383ai1Fns4Hh4cTLbVZi0ZMsDFbVPYCm9BwriU95H6YX4Y8bJx
         krEmLBS500BfNyZeYW8r2zKGYbHs+4Re5JHRcmjWudT5Cm+l9rXyF6czmU+YMNPE1rq6
         gSIJHg2EPUoJVPlYLSRImqPwufVs+ZRnMqtryzE357WxZntqAwJe5wmLdoNn9uQlUJ6z
         1yzIxUybWTdu61rg0NLiP6RK9Qn26I3gq9MTLlrKk+tQcREGzii2MM2t7KqM1OAQLC37
         nkNA==
X-Gm-Message-State: AOAM531GLSAFtqVsiQbxU1CAt140cf4W6eDwMWChG6/bPsLo0SuExcwu
        TWS2biPfkJTNBKCs3ciIyfo6Kg==
X-Google-Smtp-Source: ABdhPJwup3iMLbpJBGlTFYCEdADs+iBSFW7bU8p/YDdJmXjEEl1BV7FIj7iEMfgXcywtB85A2JTw9Q==
X-Received: by 2002:a17:907:6e10:b0:6e7:f672:f39b with SMTP id sd16-20020a1709076e1000b006e7f672f39bmr12533217ejc.451.1649323669689;
        Thu, 07 Apr 2022 02:27:49 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id b20-20020a1709063f9400b006e12836e07fsm7454790ejj.154.2022.04.07.02.27.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 02:27:49 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Wei Xu <xuwei5@hisilicon.com>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [RESEND PATCH v3] arm64: dts: hisilicon: align 'freq-table-hz' with dtschema in UFS
Date:   Thu,  7 Apr 2022 11:27:46 +0200
Message-Id: <20220407092746.232547-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The DT schema expects 'freq-table-hz' property to be an uint32-matrix,
which is also easier to read.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/hisilicon/hi3660.dtsi | 4 ++--
 arch/arm64/boot/dts/hisilicon/hi3670.dtsi | 4 ++--
 2 files changed, 4 insertions(+), 4 deletions(-)

diff --git a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
index 8bd6d7e8a474..6b3057a09251 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3660.dtsi
@@ -1045,8 +1045,8 @@ ufs: ufs@ff3b0000 {
 			clocks = <&crg_ctrl HI3660_CLK_GATE_UFSIO_REF>,
 				<&crg_ctrl HI3660_CLK_GATE_UFSPHY_CFG>;
 			clock-names = "ref_clk", "phy_clk";
-			freq-table-hz = <0 0
-					 0 0>;
+			freq-table-hz = <0 0>,
+					<0 0>;
 			/* offset: 0x84; bit: 12 */
 			resets = <&crg_rst 0x84 12>;
 			reset-names = "rst";
diff --git a/arch/arm64/boot/dts/hisilicon/hi3670.dtsi b/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
index 636c8817df7e..3125c3869c69 100644
--- a/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
+++ b/arch/arm64/boot/dts/hisilicon/hi3670.dtsi
@@ -671,8 +671,8 @@ ufs: ufs@ff3c0000 {
 			clocks = <&crg_ctrl HI3670_CLK_GATE_UFSIO_REF>,
 				 <&crg_ctrl HI3670_CLK_GATE_UFS_SUBSYS>;
 			clock-names = "ref_clk", "phy_clk";
-			freq-table-hz = <0 0
-					 0 0>;
+			freq-table-hz = <0 0>,
+					<0 0>;
 			/* offset: 0x84; bit: 12 */
 			resets = <&crg_rst 0x84 12>;
 			reset-names = "rst";
-- 
2.32.0

