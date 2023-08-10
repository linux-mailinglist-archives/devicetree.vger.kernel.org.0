Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBBFA7774FC
	for <lists+devicetree@lfdr.de>; Thu, 10 Aug 2023 11:55:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234991AbjHJJzz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Aug 2023 05:55:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38626 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233963AbjHJJzv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Aug 2023 05:55:51 -0400
Received: from mx1.tq-group.com (mx1.tq-group.com [93.104.207.81])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 946542696
        for <devicetree@vger.kernel.org>; Thu, 10 Aug 2023 02:55:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1691661346; x=1723197346;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=61Zch66vbfNj9Y4VGM6rH2mwXaAlTOPD3L/O9eE7Gms=;
  b=O+BKxQjSy3Xn1JkhOImT16qlzU4vyXUZbNhxyf8tnYvWGKlegG9+SBbA
   kc1rhPMI5OScRtY07hTJpAjyMCZy6rc5svplJtP5WEtXfzdhKJGKzl4UJ
   DbZtOqbcKG6g0A24QKDRvkcD2K8rx8/Dcy45F2jqtPaFD+KN3Gzz/rYmp
   B/IxRiTJGhAOPUQbUCevWtEPMjxsCT30TCgDjyNWJnEaMz8XXZpJtEBHE
   3xupg1Cb2qYZbCa99cG5WKL3z3dEPwmA90pOiugg9FjDpiKB+CGPXJufS
   XuWr+6jl1ayKDgl3QUtPV1PCBv4/9TftXgB3qNZNUxfIirMF5tzJQTDHp
   g==;
X-IronPort-AV: E=Sophos;i="6.01,161,1684792800"; 
   d="scan'208";a="32389512"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 10 Aug 2023 11:55:44 +0200
Received: from steina-w.tq-net.de (unknown [10.123.53.21])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id 1305E28008D;
        Thu, 10 Aug 2023 11:55:44 +0200 (CEST)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/3] Various TQMa6UL/MBa6ULx fixes
Date:   Thu, 10 Aug 2023 11:55:38 +0200
Message-Id: <20230810095541.720489-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,
while working on tqma6ul device tree I noticed some dtbs_check warnings this
series is about to fix. The first two are specific to MBa6ULx while the last
one is a generic one.

Best regards,
Alexander

Alexander Stein (3):
  ARM: dts: imx6ul: mba6ulx: Fix stmpe811 node warnings
  ARM: dts: imx6ul: mba6ulx: Fix gpio-keys button node names
  ARM: dts: imx6ul: Fix nand-controller #size-cells

 arch/arm/boot/dts/nxp/imx/imx6ul.dtsi  | 2 +-
 arch/arm/boot/dts/nxp/imx/mba6ulx.dtsi | 9 ++++-----
 2 files changed, 5 insertions(+), 6 deletions(-)

-- 
2.34.1

