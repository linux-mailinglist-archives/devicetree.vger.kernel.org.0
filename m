Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7B87566B420
	for <lists+devicetree@lfdr.de>; Sun, 15 Jan 2023 22:19:05 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231544AbjAOVTE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 15 Jan 2023 16:19:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41012 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231520AbjAOVTD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 15 Jan 2023 16:19:03 -0500
Received: from xtrwkvxq.outbound-mail.sendgrid.net (xtrwkvxq.outbound-mail.sendgrid.net [167.89.24.164])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6AECDB46B
        for <devicetree@vger.kernel.org>; Sun, 15 Jan 2023 13:19:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kwiboo.se;
        h=from:subject:mime-version:to:cc:content-transfer-encoding:
        content-type:cc:content-type:from:subject:to;
        s=s1; bh=ERbPVIFarZb+WUgCpZDCdwY8ICFJF1vmgae75o3lQi0=;
        b=ZGhUX8T0a5jouzeRkasAwgtrU3DaIsFhixgK9eGZ4m6WLJx5HgflWG/ZtikfLTGGhsr/
        bKgLGjwhvvplmhkCbgRsNLLJc8Wg9iBp/xhwZCoKLtOSrRpvc8MMKKO2lCUjdssE+sYxO7
        /6snFkXAnpIXx7CvhG/fzWQodZpZMUbCBfjc9ABlK82gSkJqWRd1HYZ2GpukKq5bUj1JK/
        alIa0QTDV8ZpyM7TbkSfFgsOULsvZ0/ppDgqT8tcJRFDbjXQ2g3GkmL+9B76/Qf+S7/4+Q
        wjksJS+fK7v0sGNtfJ5JArBhE6VK8yhVojxm0pS5xoR+PtAGSVmWVR5Ryr8LAARg==
Received: by filterdrecv-8569859b9-97x8c with SMTP id filterdrecv-8569859b9-97x8c-1-63C46D0C-3
        2023-01-15 21:15:56.260523908 +0000 UTC m=+5090949.637570358
Received: from bionic.localdomain (unknown)
        by geopod-ismtpd-4-0 (SG)
        with ESMTP
        id DtXdfeHBTOGCyPGNzTz-Cg
        Sun, 15 Jan 2023 21:15:55.878 +0000 (UTC)
From:   Jonas Karlman <jonas@kwiboo.se>
Subject: [PATCH] arm64: dts: rockchip: fix probe of analog sound card on
 rock-3a
Date:   Sun, 15 Jan 2023 21:15:56 +0000 (UTC)
Message-Id: <20230115211553.445007-1-jonas@kwiboo.se>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
X-SG-EID: =?us-ascii?Q?TdbjyGynYnRZWhH+7lKUQJL+ZxmxpowvO2O9SQF5CwCVrYgcwUXgU5DKUU3QxA?=
 =?us-ascii?Q?fZekEeQsTe+RrMu3cja6a0h4pQVcEPeLI24yyJK?=
 =?us-ascii?Q?2BEi7JO9ReTsY1s0wICYAt6+gAJYw1tv=2F+Qx5ux?=
 =?us-ascii?Q?W6rwiIC4AJy4bFrV2svt0M1o=2F5FyBGDLbeIRiim?=
 =?us-ascii?Q?7hQyzKSuOIq4Rv1xBWoinqPvgVNsZ+Lsgzgx+OT?=
 =?us-ascii?Q?BAiNNWdlimc2vl8XMAAPhrJG1KtWseNYSIL7Xp?=
To:     Heiko Stuebner <heiko@sntech.de>,
        linux-rockchip@lists.infradead.org
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Riesch <michael.riesch@wolfvision.net>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Jonas Karlman <jonas@kwiboo.se>
X-Entity-ID: P7KYpSJvGCELWjBME/J5tg==
Content-Transfer-Encoding: 7bit
Content-Type: text/plain; charset=us-ascii
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_MSPIKE_H2,SPF_HELO_NONE,
        SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The following was observed on my Radxa ROCK 3 Model A board:

  rockchip-pinctrl pinctrl: pin gpio1-9 already requested by vcc-cam-regulator; cannot claim for fe410000.i2s
  ...
  platform rk809-sound: deferred probe pending

Fix this by supplying a board specific pinctrl with the i2s1 pins used
by pmic codec according to the schematic [1].

[1] https://dl.radxa.com/rock3/docs/hw/3a/ROCK-3A-V1.3-SCH.pdf

Signed-off-by: Jonas Karlman <jonas@kwiboo.se>
---
 arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
index 00d873a03cfe..a149c8b83f94 100644
--- a/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3568-rock-3a.dts
@@ -573,6 +573,8 @@ &i2s0_8ch {
 };
 
 &i2s1_8ch {
+	pinctrl-names = "default";
+	pinctrl-0 = <&i2s1m0_sclktx &i2s1m0_lrcktx &i2s1m0_sdi0 &i2s1m0_sdo0>;
 	rockchip,trcm-sync-tx-only;
 	status = "okay";
 };
-- 
2.39.0

