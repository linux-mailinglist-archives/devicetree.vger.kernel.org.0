Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E0A153E1E76
	for <lists+devicetree@lfdr.de>; Fri,  6 Aug 2021 00:11:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234312AbhHEWLQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 Aug 2021 18:11:16 -0400
Received: from mail.manjaro.org ([116.203.91.91]:59226 "EHLO mail.manjaro.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231337AbhHEWLQ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 5 Aug 2021 18:11:16 -0400
X-Greylist: delayed 325 seconds by postgrey-1.27 at vger.kernel.org; Thu, 05 Aug 2021 18:11:16 EDT
From:   Dan Johansen <strit@manjaro.org>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=manjaro.org; s=2021;
        t=1628201134;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=n9PerTqiOhSYPAMhgipyu0mDMtUeEGLOP38xaaVz54g=;
        b=n5YRiBm8ER+k0J5kntSZAUKoN2fk3mdzRN6iWZHaYnVqweiiGyauJgZGBwydjph9wTrX6D
        eIIiKym2ZZx18Qxd6ZQUr9iV4bsW7BgxwnJguLQ+/r27ZjhkiESNZyzODtWiHxP6N1u5xb
        XWhK8H30Da9QScTfAXtkqV9vyC0niFE8+5L1J7vnnDLdvvAnKYh8T7/FlY1UdFwY6IkPMb
        wqz1AaxfiDMesBEC+yNTRE9jn1Mht7kNo6gCckm1Uck1hQ7Sv7cMif1lPRQJugQGaLbb0H
        hSRYJ2wsjdfJiji8LzqaqNcOXc1AzlqfZpwGFqDJvdw4+MKoe/Xa61JESd6RMQ==
To:     robh+dt@kernel.org, heiko@sntech.de
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        strit@manjaro.org, linux-rockchip@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: Setup USB typec port as datarole on
Date:   Fri,  6 Aug 2021 00:04:27 +0200
Message-Id: <20210805220426.2693062-1-strit@manjaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Authentication-Results: ORIGINATING;
        auth=pass smtp.auth=strit@manjaro.org smtp.mailfrom=strit@manjaro.org
X-Spam: Yes
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some chargers try to put the charged device into device data
role. Before this commit this condition caused the tcpm state machine to
issue a hard reset due to a capability missmatch.

Signed-off-by: Dan Johansen <strit@manjaro.org>
---
 arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
index 2b5f001ff4a6..2115e03a59d7 100644
--- a/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3399-pinebook-pro.dts
@@ -711,7 +711,7 @@ fusb0: fusb30x@22 {
 
 		connector {
 			compatible = "usb-c-connector";
-			data-role = "host";
+			data-role = "dual";
 			label = "USB-C";
 			op-sink-microwatt = <1000000>;
 			power-role = "dual";
-- 
2.32.0

