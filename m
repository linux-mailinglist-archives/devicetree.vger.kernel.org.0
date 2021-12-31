Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 63D2848226E
	for <lists+devicetree@lfdr.de>; Fri, 31 Dec 2021 07:17:32 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238445AbhLaGRa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Dec 2021 01:17:30 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48814 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238391AbhLaGRa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Dec 2021 01:17:30 -0500
X-Greylist: delayed 150 seconds by postgrey-1.37 at lindbergh.monkeyblade.net; Thu, 30 Dec 2021 22:17:29 PST
Received: from resdmta-a1p-077303.sys.comcast.net (resdmta-a1p-077303.sys.comcast.net [IPv6:2001:558:fd01:2bb4::d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CEAACC06173E
        for <devicetree@vger.kernel.org>; Thu, 30 Dec 2021 22:17:29 -0800 (PST)
Received: from resomta-a1p-077059.sys.comcast.net ([96.103.145.240])
        by resdmta-a1p-077303.sys.comcast.net with ESMTP
        id 3BAPneHTruSbS3BBpnU1zP; Fri, 31 Dec 2021 06:14:57 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=comcast.net;
        s=20190202a; t=1640931297;
        bh=B8RJ34LocrDqPDwZMnx/NOtlAthCdFGYGjocIeA+vIk=;
        h=Received:Received:From:To:Subject:Date:Message-Id:MIME-Version;
        b=az5wMj02R+mwIN6iqgd8Vs0j938wzU9u5EbI+tPB4jg3KchKMOW/CbOlaFRa6Md3B
         //ZFwshGIVpQBrB3dHq54Rn+CTvjm5JacgaVw5pf9xZ6FV031cMyGIvAcTqYVJ/6aj
         EMHUWK3T1+UyzTik3pKqMQZcXZbmhQhuUhYlSxcdYDORT/U0Jf8P9X5i7x2aKXt9kW
         PpLsDSeioOY1Kuy7h99sK8NsvftIGzttZAsmVLzjDStVXnKm2SI+rKR/5w9tjOK5aC
         M36imWSc+TDghCNXXRri13aEC1bf/th/m4PqcSGJZeUFsGdcllpyvw9j1tid1+v7p4
         9Ovg4Vr5TOUKQ==
Received: from w6rz.silicon ([IPv6:2601:647:4700:284:9d56:573c:4e75:fa6c])
        by resomta-a1p-077059.sys.comcast.net with ESMTPA
        id 3BBFnSy4GhrTt3BBNnq2cX; Fri, 31 Dec 2021 06:14:32 +0000
X-Xfinity-VMeta: sc=-100.00;st=legit
From:   Ron Economos <w6rz@comcast.net>
To:     Dimitri John Ledkov <dimitri.ledkov@canonical.com>
Cc:     Ron Economos <w6rz@comcast.net>, Rob Herring <robh+dt@kernel.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Vincent Pelletier <plr.vincent@gmail.com>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        Qiu Wenbo <qiuwenbo@kylinos.com.cn>,
        Yash Shah <yash.shah@sifive.com>, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH] riscv: dts: sifive unmatched: Add gpio poweroff
Date:   Thu, 30 Dec 2021 22:11:06 -0800
Message-Id: <20211231061110.89403-1-w6rz@comcast.net>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch is required for the following commit to work.

commit f2928e224d85 ("riscv: set default pm_power_off to NULL")

Signed-off-by: Ron Economos <w6rz@comcast.net>
---
 arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
index 6bfa1f24d3de..c4ed9efdff03 100644
--- a/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
+++ b/arch/riscv/boot/dts/sifive/hifive-unmatched-a00.dts
@@ -39,6 +39,11 @@ rtcclk: rtcclk {
 		clock-frequency = <RTCCLK_FREQ>;
 		clock-output-names = "rtcclk";
 	};
+
+	gpio-poweroff {
+		compatible = "gpio-poweroff";
+		gpios = <&gpio 2 GPIO_ACTIVE_LOW>;
+	};
 };
 
 &uart0 {
-- 
2.25.1

