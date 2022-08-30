Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 094195A6D6C
	for <lists+devicetree@lfdr.de>; Tue, 30 Aug 2022 21:32:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231184AbiH3Tcv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Aug 2022 15:32:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52158 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230214AbiH3Tcu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Aug 2022 15:32:50 -0400
Received: from mail-pl1-x632.google.com (mail-pl1-x632.google.com [IPv6:2607:f8b0:4864:20::632])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E128A49B58
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:32:45 -0700 (PDT)
Received: by mail-pl1-x632.google.com with SMTP id w2so12129820pld.0
        for <devicetree@vger.kernel.org>; Tue, 30 Aug 2022 12:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=OYzA9p0n5o59safiaW4KMlIlfnAxPamL+boi+em99/M=;
        b=W851mZSHA2NuVBwcGoGcf21aojaeZQ6itzde6gqVH7X2Aejqg6gmKniUdZpYCGwMgr
         /VYzjXwux5er4xhFoJ0SDpu1AxswH9or1LBBQDLKe2Ys/Yy9YyeyaOpZ8rS2ida5eoV6
         X2Ic6/yFW7PMZ82ej3p8GBPLvZV4vcpIpyLIg=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=OYzA9p0n5o59safiaW4KMlIlfnAxPamL+boi+em99/M=;
        b=d1biB0Qi9chzzdCWciEr7GpELtPEZ5ivQK1ut4m+r/B/NwO+6eSGtP+u6IILdC06BL
         wuPMSoPpa1S8iGRby4yjZwDyovk9vwlrIC2PI7F4KiJyesftpcgcxJ0XHjH+cCSjsZzI
         SiVPACQIZIvce2bMSf7PAWTmGWFhdpP5vLuAwt87EiwbvkDWEimWlz5qVgpdDroQjK1u
         Icvdsuh9CoIYxkAGzED9jGqOr+yw4FscAo/vaMx1WrJF6LqnMcuS1SblocjO6+IczZaI
         UeAGsQ6FldQgrgS2eiYUg8IrcJylBZeCuSKiVO5PC/hvg1gdWIik4NPhszOGAW7KyRs4
         ydPg==
X-Gm-Message-State: ACgBeo3I0BdsmqX9sXx6NV5CCgg5kOfHvJkpfCxQY3rYdBOF/998bWvb
        kEYrEY2R7DoyWV8jSFGJKbVy5w==
X-Google-Smtp-Source: AA6agR5a1ydzTy5CU1whWuOm/VAiahfPCvqjM4F31B9VPVSXp3Z7Evq1Nk8FjLUtWiUUav60coeBOQ==
X-Received: by 2002:a17:902:d501:b0:174:c4c9:9b77 with SMTP id b1-20020a170902d50100b00174c4c99b77mr10894828plg.67.1661887965373;
        Tue, 30 Aug 2022 12:32:45 -0700 (PDT)
Received: from localhost ([2620:15c:202:201:d14a:ebf8:88f1:35e])
        by smtp.gmail.com with UTF8SMTPSA id z5-20020a17090a66c500b001f334aa9170sm8868376pjl.48.2022.08.30.12.32.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 30 Aug 2022 12:32:44 -0700 (PDT)
From:   Brian Norris <briannorris@chromium.org>
To:     Heiko Stuebner <heiko@sntech.de>
Cc:     zain wang <wzz@rock-chips.com>, Lin Huang <hl@rock-chips.com>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org,
        Douglas Anderson <dianders@chromium.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Brian Norris <briannorris@chromium.org>
Subject: [PATCH] arm64: dts: rockchip: Set RK3399-Gru PCLK_EDP to 24 MHz
Date:   Tue, 30 Aug 2022 12:32:33 -0700
Message-Id: <20220830123231.1.I98d30623f13b785ca77094d0c0fd4339550553b6@changeid>
X-Mailer: git-send-email 2.37.2.672.g94769d06f0-goog
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

We've found the AUX channel to be less reliable with PCLK_EDP at a
higher rate (typically 25 MHz). This is especially important on systems
with PSR-enabled panels (like Gru-Kevin), since we make heavy, constant
use of AUX.

According to Rockchip, using any rate other than 24 MHz can cause
"problems between syncing the PHY an PCLK", which leads to all sorts of
unreliabilities around register operations.

Signed-off-by: zain wang <wzz@rock-chips.com>
Signed-off-by: Brian Norris <briannorris@chromium.org>
---

 arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
index 45796b9fd94f..ee6095baba4d 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
+++ b/arch/arm64/boot/dts/rockchip/rk3399-gru-chromebook.dtsi
@@ -244,6 +244,14 @@ &dmc {
 &edp {
 	status = "okay";
 
+	/*
+	 * eDP PHY/clk don't sync reliably at anything other than 24 MHz. Only
+	 * set this here, because rk3399-gru.dtsi ensures we can generate this
+	 * off GPLL=600MHz, whereas some other RK3399 boards may not.
+	 */
+	assigned-clocks = <&cru PCLK_EDP>;
+	assigned-clock-rates = <24000000>;
+
 	ports {
 		edp_out: port@1 {
 			reg = <1>;
-- 
2.37.2.672.g94769d06f0-goog

