Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6DC2D63EB5C
	for <lists+devicetree@lfdr.de>; Thu,  1 Dec 2022 09:43:04 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229475AbiLAInC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Dec 2022 03:43:02 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42980 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229773AbiLAImx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 1 Dec 2022 03:42:53 -0500
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 138951DA67
        for <devicetree@vger.kernel.org>; Thu,  1 Dec 2022 00:42:44 -0800 (PST)
Received: by mail-pj1-x102b.google.com with SMTP id cm20so1238431pjb.1
        for <devicetree@vger.kernel.org>; Thu, 01 Dec 2022 00:42:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=V298lkV5QtI9GGd+VqJ9vB4qdc38PxeAIxTF+s8oIPU=;
        b=HXNerBkWxszjzmqR+65CvsTOErf+iOTLkDjru19S6a7Uz08AbN/rnneQjLsuIJvrwr
         Dg4WpD9aZ6NDY+2mQzKl90XlI6RelVXlXhdV3g6eI1GbO5rHFK0JkQSA/Uh9EvY/A0St
         ykQNoytvUS9qE6UxB7Ts+ItS8hkq2vLt19GbE=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=V298lkV5QtI9GGd+VqJ9vB4qdc38PxeAIxTF+s8oIPU=;
        b=PoSElox+2uB4AmVuBFeJeqjPSTGbxmWV+QFpx9QpZ4xSnX9b+LTMZ2XwFvjaVNL78A
         565fQJlt1uxrkA8Hr06n1epCmP0alsyHB2aQpZZ9CQ9b3NMDKCYgVQW1HUUmHr7pB5lv
         2cuPELonVqTng7gbh+HO7/WeOqiog9Ld0NhFnQnTVqFHMoYKeJOom7goQKT+8B/t2Znu
         0hOlgQgSQbAzEws+D/kciCLaX0kdrGsNx5IiuWJWXxGJzXwA7baAIuvrhPUShjvNaEfw
         urRiyeEsjbEQwnRPo+3kDRo/H+dPU2QN7Zjn8dEjgluUBAgpsCQK+Im7pXzm1qPhq+iK
         6tMQ==
X-Gm-Message-State: ANoB5plmAa56HNclJzGQzdMwvGpivsHhcuW4UNC+XAsow1ejPOWXRKL+
        F60rzb6C9eLy1OWrNDAZFX9k9w==
X-Google-Smtp-Source: AA0mqf665+1a7uoBaUKEuv2A7tuu9y7S3ALImhvKQOwgh7iwjPQZ077I2pm6cCd4wI2XcxO8yLOpyQ==
X-Received: by 2002:a17:90a:4594:b0:218:f745:76fe with SMTP id v20-20020a17090a459400b00218f74576femr37452609pjg.245.1669884163980;
        Thu, 01 Dec 2022 00:42:43 -0800 (PST)
Received: from wenstp920.tpe.corp.google.com ([2401:fa00:1:10:2416:fa4e:4eeb:fcde])
        by smtp.gmail.com with ESMTPSA id j5-20020a170902690500b001708c4ebbaesm2932293plk.309.2022.12.01.00.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 01 Dec 2022 00:42:43 -0800 (PST)
From:   Chen-Yu Tsai <wenst@chromium.org>
To:     Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Chen-Yu Tsai <wenst@chromium.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        =?UTF-8?q?N=C3=ADcolas=20F=20=2E=20R=20=2E=20A=20=2E=20Prado?= 
        <nfraprado@collabora.com>
Subject: [PATCH 4/4] arm64: dts: mediatek: mt8186: Fix systimer 13 MHz clock description
Date:   Thu,  1 Dec 2022 16:42:29 +0800
Message-Id: <20221201084229.3464449-5-wenst@chromium.org>
X-Mailer: git-send-email 2.38.1.584.g0f3c55d4c2-goog
In-Reply-To: <20221201084229.3464449-1-wenst@chromium.org>
References: <20221201084229.3464449-1-wenst@chromium.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The systimer block derives its 13 MHz clock by dividing the main 26 MHz
oscillator clock by 2 internally. The 13 MHz clock is not a separate
oscillator.

Fix this by making the 13 MHz clock a divide-by-2 fixed factor clock,
taking its input from the main 26 MHz oscillator.

Fixes: 2e78620b1350 ("arm64: dts: Add MediaTek MT8186 dts and evaluation board and Makefile")
Signed-off-by: Chen-Yu Tsai <wenst@chromium.org>
---
 arch/arm64/boot/dts/mediatek/mt8186.dtsi | 8 +++++---
 1 file changed, 5 insertions(+), 3 deletions(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt8186.dtsi b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
index 4a2f7ad3c6f0..209f26f12dbc 100644
--- a/arch/arm64/boot/dts/mediatek/mt8186.dtsi
+++ b/arch/arm64/boot/dts/mediatek/mt8186.dtsi
@@ -215,10 +215,12 @@ l3_0: l3-cache {
 		};
 	};
 
-	clk13m: oscillator-13m {
-		compatible = "fixed-clock";
+	clk13m: fixed-factor-clock-13m {
+		compatible = "fixed-factor-clock";
 		#clock-cells = <0>;
-		clock-frequency = <13000000>;
+		clocks = <&clk26m>;
+		clock-div = <2>;
+		clock-mult = <1>;
 		clock-output-names = "clk13m";
 	};
 
-- 
2.38.1.584.g0f3c55d4c2-goog

