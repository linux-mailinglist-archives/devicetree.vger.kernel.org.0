Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1EC4633CCDB
	for <lists+devicetree@lfdr.de>; Tue, 16 Mar 2021 06:05:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232915AbhCPFFK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Mar 2021 01:05:10 -0400
Received: from mail-out.m-online.net ([212.18.0.9]:58521 "EHLO
        mail-out.m-online.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234320AbhCPFEu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Mar 2021 01:04:50 -0400
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
        by mail-out.m-online.net (Postfix) with ESMTP id 4F01Rw3zJnz1qs3T;
        Tue, 16 Mar 2021 06:04:44 +0100 (CET)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
        by mail.m-online.net (Postfix) with ESMTP id 4F01Rw3lDXz1qqkp;
        Tue, 16 Mar 2021 06:04:44 +0100 (CET)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
        by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new, port 10024)
        with ESMTP id SpAXVepg4wy1; Tue, 16 Mar 2021 06:04:43 +0100 (CET)
X-Auth-Info: 3KMa6PlCQH3sdpv91QKJnN+Jh9AtmRX9/HFcuh4ofXc=
Received: from mail-internal.denx.de (p578adb1c.dip0.t-ipconnect.de [87.138.219.28])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.mnet-online.de (Postfix) with ESMTPSA;
        Tue, 16 Mar 2021 06:04:43 +0100 (CET)
Received: from pollux.denx.de (pollux [192.168.1.1])
        by mail-internal.denx.de (Postfix) with ESMTP id BAD33185315;
        Tue, 16 Mar 2021 06:04:27 +0100 (CET)
Received: by pollux.denx.de (Postfix, from userid 515)
        id 926661A0092; Tue, 16 Mar 2021 06:04:27 +0100 (CET)
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
Subject: [PATCH 0/2] enable flexspi support on imx8mp
Date:   Tue, 16 Mar 2021 06:04:23 +0100
Message-Id: <20210316050425.1758778-1-hs@denx.de>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

add compatible entry in nxp_fspi driver for imx8mp

new in v3:
seperate spi changes from series:
http://lists.infradead.org/pipermail/linux-arm-kernel/2021-March/643289.html

into own series as Kuldeep suggested and rebased against
git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
144c79ef33536 ("Merge tag 'perf-tools-fixes-for-v5.12-2020-03-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux")

@Shawn: If this series is accepted, can you apply the DTS patches from
series v2?
http://lists.infradead.org/pipermail/linux-arm-kernel/2021-March/643292.html
http://lists.infradead.org/pipermail/linux-arm-kernel/2021-March/643293.html


Changes in v3:
- seperate spi changes from series:
  http://lists.infradead.org/pipermail/linux-arm-kernel/2021-March/643289.html
- no changes, rebased against
  git://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-next
  144c79ef33536 Merge tag 'perf-tools-fixes-for-v5.12-2020-03-07' of git://git.kernel.org/pub/scm/linux/kernel/git/acme/linux

Changes in v2:
- work in comments from Marco
  add own compatible entry for imx8mp

Heiko Schocher (2):
  spi: fspi: enable fspi driver for on imx8mp
  dt-bindings: spi: add compatible entry for imx8mp in FlexSPI
    controller

 Documentation/devicetree/bindings/spi/spi-nxp-fspi.txt | 1 +
 drivers/spi/spi-nxp-fspi.c                             | 1 +
 2 files changed, 2 insertions(+)

-- 
2.29.2

