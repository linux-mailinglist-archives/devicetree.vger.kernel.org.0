Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B474638A77
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 14:38:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728764AbfFGMig (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 08:38:36 -0400
Received: from mail-qt1-f196.google.com ([209.85.160.196]:39630 "EHLO
        mail-qt1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728750AbfFGMig (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 08:38:36 -0400
Received: by mail-qt1-f196.google.com with SMTP id i34so1998971qta.6
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 05:38:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6iGSfs58nJEWANfcqakVLDnIqBJN0sG2xeLAj5suBzA=;
        b=jpVVBJBgGBWvuVp1bgLIZ6kj6T33Jf3ZDqewzBsJiOkescpA4SpZIjK7BPSkEzPdjX
         0dq7fPDipCzIibmPYHDj3PxkYUgh+sbcCivpbRLZqfEzd7Sw5gKo74I1ik2CIHi5dXN1
         foWiBBYiLqj5Mz0qdlPngVLRyuObhyodT8oAs5AybIXdvpuxZVd4kiIOFIHZNu61dGi+
         59C4WoZTeq4RqmTOjxyGrJWQ+24MZh/KCs1mTxibbctjN66XCLo+2Gr5lomdghWEaW0i
         ZxHjciIn7nT6kBOcWVabp8qLR9Fc1yFkZZ9SubnkXwkiabJsu93GrTTxSVjwm5TRqTl/
         WQCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=6iGSfs58nJEWANfcqakVLDnIqBJN0sG2xeLAj5suBzA=;
        b=F+9s8f6hIwtIBrAiBorl3KyyVztIUfzbYfh5H98y7IP1axSv0cmYMHoYpHYvmxTN0n
         /7KJt+YcW0GMQFVUteAVTJZgxnAfELU9c2K9NQdgSeuc/0iIdQYvfsnJTaIbCFlVD1Mr
         N6mz3ounXK3mWjRhFCaQ01yY+OqKPTXBgV+mFY2K5RC1DNP8RM4MfBhEPfrvLnuw2Hlk
         rgRUwhBan8Vwp3EfQp5Msqe6Bb4PLqzx6ljGKE1E8istrnKeASTLu8IbyYrLrRpJouhr
         vM5krc55r+rZgSqdJaqTltvUX0URbY4fhhQM/erxxaM8sSDAJq8rC4NRrqTD2V/0bi07
         7d9w==
X-Gm-Message-State: APjAAAXmkRBUVel9/iW/jzXaEW/KuaeaguzTYuG/uzlDDqkvXx+E1ONV
        chBeknAxw+5IvJuVih4OxjI=
X-Google-Smtp-Source: APXvYqy3lnFlY+YhZJzwKz2YNnsUjtvp2Q1p+GonECjpcMx9XDR0cb8cTW4wC/H47MjLRzYxMFcpFw==
X-Received: by 2002:a05:6214:206:: with SMTP id i6mr16751479qvt.169.1559911115340;
        Fri, 07 Jun 2019 05:38:35 -0700 (PDT)
Received: from firefly.sparksnet ([2601:153:900:ebb::2])
        by smtp.gmail.com with ESMTPSA id o54sm1281963qtb.63.2019.06.07.05.38.34
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 05:38:34 -0700 (PDT)
From:   Peter Geis <pgwipeout@gmail.com>
To:     "Leonidas P . Papadakos" <papadakospan@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
Date:   Fri,  7 Jun 2019 12:37:32 +0000
Message-Id: <20190607123731.8737-1-pgwipeout@gmail.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Currently the rk3328-roc-cc ethernet is enabled using "snps,force_thresh_dma_mode".
While this works, the performance leaves a lot to be desired.
A previous attempt to improve performance used "snps,txpbl = <0x4>".
This also allowed networking to function, but performance varied between boards.

This patch takes that one step further.
Set txpbl and rxpbl to 0x4.
This can also be accomplished with "snps,pbl =<0x4>" which affects both.
Also set "snps,aal" which forces address aligned DMA mode.

On my board this achieves the best performance yet, however we need broad testing to ensure this works for everyone.
Please test and provide feedback.

Signed-off-by: Peter Geis <pgwipeout@gmail.com>
---
 arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts | 4 +++-
 1 file changed, 3 insertions(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
index 5d499c9086fb..8bcc08de82fb 100644
--- a/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
+++ b/arch/arm64/boot/dts/rockchip/rk3328-roc-cc.dts
@@ -141,10 +141,12 @@
 	phy-mode = "rgmii";
 	pinctrl-names = "default";
 	pinctrl-0 = <&rgmiim1_pins>;
-	snps,force_thresh_dma_mode;
 	snps,reset-gpio = <&gpio1 RK_PC2 GPIO_ACTIVE_LOW>;
 	snps,reset-active-low;
 	snps,reset-delays-us = <0 10000 50000>;
+	snps,txpbl = <0x4>;
+	snps,rxpbl = <0x4>;
+	snps,aal;
 	tx_delay = <0x24>;
 	rx_delay = <0x18>;
 	status = "okay";
-- 
2.20.1

