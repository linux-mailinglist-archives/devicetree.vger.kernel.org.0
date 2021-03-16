Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BC66633CCE0
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 06:06:15 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235148AbhCPFFn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 01:05:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42906 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234426AbhCPFFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 01:05:25 -0400
Received: from mail-out.m-online.net (mail-out.m-online.net [IPv6:2001:a60:0:28:0:1:25:1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 979E5C06174A
        for <devicetree@vger.kernel.org>; Mon, 15 Mar 2021 22:05:25 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4F01Sh3C36z1s2JH;
        Tue, 16 Mar 2021 06:05:24 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4F01Sh2x6lz1qqkp;
        Tue, 16 Mar 2021 06:05:24 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id Su0cyIpW33tt; Tue, 16 Mar 2021 06:05:23 +0100 (CET)
X-Auth-Info: 44ZclUfNy9E00p0YV9z5cCsC4Io3BqX8sSDgzqejc4g=
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Tue, 16 Mar 2021 06:05:23 +0100 (CET)
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id 2AD74185321;
        Tue, 16 Mar 2021 06:04:29 +0100 (CET)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 204921A0092; Tue, 16 Mar 2021 06:04:29 +0100 (CET)
From:   Heiko Schocher <hs@denx.de>
To:     linux-spi@vger.kernel.org
Cc:     Heiko Schocher <hs@denx.de>, linux-arm-kernel@lists.infradead.org,
        Ashish Kumar <ashish.kumar@nxp.com>,
        Kuldeep Singh <kuldeep.singh@nxp.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Yogesh Gaur <yogeshgaur.83@gmail.com>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 2/2] dt-bindings: spi: add compatible entry for imx8mp in FlexSPI controller
Date:   Tue, 16 Mar 2021 06:04:25 +0100
Message-Id: <20210316050425.1758778-3-hs@denx.de>
X-Mailer: git-send-email 2.29.2
In-Reply-To: <20210316050425.1758778-1-hs@denx.de>
References: <20210316050425.1758778-1-hs@denx.de>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

add compatible entry "nxp,imx8mp-fspi" in NXP FlexSPI controller

Signed-off-by: Heiko Schocher <hs@denx.de>
---

Changes in v3:
- no changes, rebased against
  git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
  144c79ef33536 Merge tag 'perf-tools-fixes-for-v5.12-2020-03-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux

 Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
index 7ac60d9fe3571..fd5f081f6d91b 100644
--- a/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
+++ b/Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt
@@ -4,6 +4,7 @@ Required properties:
   - compatible : Should be "nxp,lx2160a-fspi"
 			    "nxp,imx8qxp-fspi"
 			    "nxp,imx8mm-fspi"
+			    "nxp,imx8mp-fspi"
 
   - reg :        First contains the register location and length,
                  Second contains the memory mapping address and length
-- 
2.29.2

