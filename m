Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 46AA56A0B61
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 14:59:48 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233541AbjBWN7r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 08:59:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233852AbjBWN7o (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 08:59:44 -0500
Received: from mail-pj1-x1030.google.com (mail-pj1-x1030.google.com [IPv6:2607:f8b0:4864:20::1030])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4057E3D089
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 05:59:43 -0800 (PST)
Received: by mail-pj1-x1030.google.com with SMTP id h17-20020a17090aea9100b0023739b10792so7127484pjz.1
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 05:59:43 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=amarulasolutions.com; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=pKbPe0qn2Vz5Al+uUREMLlJZwdQXc51MRqcYD0knitM=;
        b=P72BnL87wvAyRLWGbrRiYNH54LMwbePDAqAldB8svhn3vMhH1xpWW9+IGv6UAmpgB7
         48viQqLVJFie8rNQ/78ju2Q4f/8aEfwq68BsGi5uqz72w6x+yE5QMQ0SFm/Rk3q7o+cP
         gXIV5v8orVcPPTrPW28V6PIdwoP/2IoebhvzA=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=pKbPe0qn2Vz5Al+uUREMLlJZwdQXc51MRqcYD0knitM=;
        b=e90MsK32bXyUCo34igz/ouS7rQxRp12j/a9yBCy84bxeY0KFD1ij/PpcNhgH3hb/T0
         vVAFCPYgG7rLWrqc38m9cwYHKNp/Gi5iPVG1q84KKlocJ3v+z1jyMuOKBdezvhXMI5Iv
         eiPr7JOiUtvKt+QSjRjC3x60RhrjqT40xZjsWWP/SnMeYb339PUoQvxLOCp90xV4Hon4
         LoX5TQsKlr7x2AouxQ+EtCsRC9XzVRDpaTu6b72+JQXNx/DCpUozaIvbsPIwcMNHlp/Z
         XGr7YP+ig8T3sWsqCwLaM4OY4lKnv35VGbISkuUIDCUIX8qHsLKVHzp/rE/Xjw+Axn4h
         xhjw==
X-Gm-Message-State: AO0yUKU//uSxj+3Or4P1ZGDkZPIs9G+25iLj9u1CRqCpGq3vt+vPtb/e
        TfWzJSBh6aum1RB46tBuoleH9g==
X-Google-Smtp-Source: AK7set9Zm+tZQZNLJtZ2UkRzvizUpquOwQslb0CEIGkNuDi8/cw3hBypVmLfp6MV8m4YRH7C8QSmQA==
X-Received: by 2002:a17:90b:3145:b0:237:50b6:9843 with SMTP id ip5-20020a17090b314500b0023750b69843mr4240014pjb.0.1677160782728;
        Thu, 23 Feb 2023 05:59:42 -0800 (PST)
Received: from localhost.localdomain ([2409:4070:4895:2597:b534:32c:72d3:662])
        by smtp.gmail.com with ESMTPSA id q22-20020a170902bd9600b001932a9e4f2csm6468088pls.255.2023.02.23.05.59.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Feb 2023 05:59:42 -0800 (PST)
From:   Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-amarula@amarulasolutions.com,
        linux-arm-kernel@lists.infradead.org,
        FUKAUMI Naoki <naoki@radxa.com>, inux-kernel@vger.kernel.org,
        Manoj Sai <abbaraju.manojsai@amarulasolutions.com>,
        Jagan Teki <jagan@amarulasolutions.com>
Subject: [PATCH] arm64: dts: rockchip: rk3566: Enable USB OTG for Radxa CM3
Date:   Thu, 23 Feb 2023 19:29:29 +0530
Message-Id: <20230223135929.630787-1-abbaraju.manojsai@amarulasolutions.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable USB OTG support for Radxa Compute Module 3 IO Board

Signed-off-by: Manoj Sai <abbaraju.manojsai@amarulasolutions.com>
Signed-off-by: Jagan Teki <jagan@amarulasolutions.com>
---
 arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
index d89d5263cb5e..5e4236af4fcb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3566-radxa-cm3-io.dts
@@ -254,6 +254,14 @@ &usb_host1_xhci {
 	status = "okay";
 };
 
+&usb2phy0_otg {
+	status = "okay";
+};
+
+&usb_host0_xhci {
+	status = "okay";
+};
+
 &vop {
 	assigned-clocks = <&cru DCLK_VOP0>, <&cru DCLK_VOP1>;
 	assigned-clock-parents = <&pmucru PLL_HPLL>, <&cru PLL_VPLL>;
-- 
2.25.1

