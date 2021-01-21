Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0EA7D2FF2BA
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 19:03:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728941AbhAUK2r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 05:28:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56542 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729206AbhAUK1t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 05:27:49 -0500
Received: from mail-ej1-x629.google.com (mail-ej1-x629.google.com [IPv6:2a00:1450:4864:20::629])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9F198C0613C1
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:08 -0800 (PST)
Received: by mail-ej1-x629.google.com with SMTP id w1so1818724ejf.11
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 02:27:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LSCVpYUnbF/iwkll9PDRzd42GEI1bF94/HSaocuDHZw=;
        b=1S5GqVPBdt8g6I9aOE9sWC2hzjK4PpwpsafOKYxQvfq/kNM1TGt6CvDHDpCr76QcY9
         0dLM3mArjI1BWMy8HALayN0HhPsEkc/gWd99lY5lkcL7Ql0odIk0jJSiBryaN+QLOETe
         Fc5dHdRgIlpVtRCN4J3rWxjBctd3W2dCEhoMZP9IWJYWyQgIhBPEVOc7i4BSNzWrCmOA
         /5Hd1CkHMBY73yTB3NkRJp/YjQ+PWqBvl1IphLhfXs+DT1kccPVg+bBwxeTbn8C1+z0Y
         U6eNrZ8raMUgRVvalJQN9w8rNkMfY5i4loxVVdYS6CUJ8W30bNQHdNSRm3zV0i+Mm9qR
         NVGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=LSCVpYUnbF/iwkll9PDRzd42GEI1bF94/HSaocuDHZw=;
        b=CrqGELmQAKn8jP+ptP2htwoIH0MZZs/tZqbW7MRl57UXe6o2TrsGq83Jj/ZU+k404M
         oYDkMiabmJ+vKJtG9u19xQoLsvhb8V0VO8sL4hebqfsSK1m26TuHbxfI7a30/1C/ImNS
         OUXqNucv70WUqjqGebKvGnaKt/7N9z4ucPjof6Y/T9ajJRR2UPYkBgaFvUpMl82uZXk/
         idDD4atbqmiYWZRrAWPUOURyPd1hymgA0ZvE3lT3H0swjKsuJp3zNbgV16DyMJhlHyix
         F75v5S9HpyYRm/SH9vwi/J8BXcS9dnHHGhIZhY14FYx6OjE8Zw9Iny7eYDjTwZTSZcd6
         t6Nw==
X-Gm-Message-State: AOAM5328cJLNPwLjdc0DHUwemwvW07ShTyW1PF2gUN5060RKc7rIYiUS
        2q30lEni+d6pCvmW5yMzy/cisg==
X-Google-Smtp-Source: ABdhPJxUn2eGSg86H6sk9lDGPsuATsvqPZPN0+lhXDQUsO+oW74tiGDP/pAYHDbjBQ1jS0D+s/n6FQ==
X-Received: by 2002:a17:906:6087:: with SMTP id t7mr9016712ejj.90.1611224827450;
        Thu, 21 Jan 2021 02:27:07 -0800 (PST)
Received: from localhost (nat-35.starnet.cz. [178.255.168.35])
        by smtp.gmail.com with ESMTPSA id cw21sm2438052edb.85.2021.01.21.02.27.06
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 21 Jan 2021 02:27:06 -0800 (PST)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 01/12] arm64: dts: zynqmp: Fix u48 si5382 chip on zcu111
Date:   Thu, 21 Jan 2021 11:26:49 +0100
Message-Id: <cefda1a894fb54059aa1b018e4ecad0eb36fdc9d.1611224800.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.30.0
In-Reply-To: <cover.1611224800.git.michal.simek@xilinx.com>
References: <cover.1611224800.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

u48 chip on zcu111 is si5382 not si5328.

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
index 2e92634c77f9..d9a8fdbbcae8 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zcu111-revA.dts
@@ -410,7 +410,7 @@ i2c@4 {
 			#address-cells = <1>;
 			#size-cells = <0>;
 			reg = <4>;
-			si5328: clock-generator@69 { /* SI5328 - u48 */
+			si5382: clock-generator@69 { /* SI5382 - u48 */
 				reg = <0x69>;
 			};
 		};
-- 
2.30.0

