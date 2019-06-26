Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id AC1E7569F5
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 15:05:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727181AbfFZNFD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 09:05:03 -0400
Received: from mail-qk1-f193.google.com ([209.85.222.193]:47092 "EHLO
        mail-qk1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726131AbfFZNFC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 09:05:02 -0400
Received: by mail-qk1-f193.google.com with SMTP id x18so1497168qkn.13
        for <devicetree@vger.kernel.org>; Wed, 26 Jun 2019 06:05:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5O9oE6uVEOIMk3nCZB+QbyTxE9Wg+XK01suEC8a+TA=;
        b=uPYvYvEk0Nkk2u2fD9IWk96MmABOeM3RBQCROHdDlEqDdqZHW4OubafQKAzNMvuovq
         iKeH4fPhxifsQyjIVZoAMmZRPzpb5o3amMYjAncq43pR7apSABLA4WZiinICdzE/jLaD
         +z5w93D93nlvSvHYQeHHivRvQOYEHMCwkD4SKo+wdaM5ZT0crBBlSvsagvdFObKxJ1c7
         bocIph99Gy4sM2i0KtqVO5ukWbsz3CfetmvblpluClMV0HqTDTeHurtmiJxhrn5V+9dJ
         F2FJRumHlQ/55CBEe3Hr4vof/j/apcTUtDex+4s1uwDw7Zgaoy2/sN/9zbzYaomPjLbs
         mVFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k5O9oE6uVEOIMk3nCZB+QbyTxE9Wg+XK01suEC8a+TA=;
        b=Sc7pNaJeBwa0EJjw1RHNAK+HI2UjWjcp5pbrVcfBy+e823d5x5QFF+KYo+K7UURRds
         mzDUIjKYYl+KE7SlpKY7fVuSWWGoE4qyZOTxD8rIzkeISLE/vovxf4+SewgZCFWAAUpW
         roOJcnlEtef7gsnFKR8xs3DuCZkJyCwLFFEf7V8jaosPQIP/yjdADJIgvcqDrgmt2obB
         wzQmhwZhLu1/IsPtf9k0sztE5FDFL1W63+UBJ0xUTYocxtjDONmVRLW/Y0kmOAP/47fm
         HdJgUxzq1bCRmM2GPjf5LEbDMzpau8k7Ewcbha3H36c2zpHVLEiErVx4/p0AUITOPSxX
         D5Zw==
X-Gm-Message-State: APjAAAVP3+FxEmr4MzOFOXEKxDOd+SGhp7iNY8DoioqMxEnMVEJ7Cqp5
        CWrF7034lrqoMsJvKIaJV6s=
X-Google-Smtp-Source: APXvYqwZyDh14JaHgMEUYlacuj4zCZLs8pL9lTam984XGbMtpUzCvpXgIxneOdxOTTMDhd+634gBwA==
X-Received: by 2002:a05:620a:1106:: with SMTP id o6mr3650393qkk.272.1561554301257;
        Wed, 26 Jun 2019 06:05:01 -0700 (PDT)
Received: from firefly.sparksnet (c-98-233-237-228.hsd1.md.comcast.net. [98.233.237.228])
        by smtp.gmail.com with ESMTPSA id k58sm10368382qtc.38.2019.06.26.06.05.00
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Wed, 26 Jun 2019 06:05:00 -0700 (PDT)
From:   Peter Geis <pgwipeout@gmail.com>
To:     "Leonidas P . Papadakos" <papadakospan@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Heiko Stuebner <heiko@sntech.de>,
        Jose Abreu <jose.abreu@synopsys.com>,
        Robin Murphy <robin.murphy@arm.com>
Cc:     devicetree@vger.kernel.org, linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH] arm64: dts: rockchip: improve rk3328-roc-cc rgmii performance.
Date:   Wed, 26 Jun 2019 13:04:43 +0000
Message-Id: <20190626130443.22025-1-pgwipeout@gmail.com>
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

Fixes: 4bc4d6013b7f (arm64: dts: rockchip: fix rk3328-roc-cc gmac2io stability issues)

Signed-off-by: Peter Geis <pgwipeout@gmail.com>

Tested-by: Leonidas P. Papadakos <papadakospan@gmail.com>
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

