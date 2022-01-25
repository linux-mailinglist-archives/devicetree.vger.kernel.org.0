Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9C6B349B561
	for <lists+devicetree@lfdr.de>; Tue, 25 Jan 2022 14:52:52 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1386520AbiAYNwh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Jan 2022 08:52:37 -0500
Received: from mx1.tq-group.com ([93.104.207.81]:5775 "EHLO mx1.tq-group.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S241423AbiAYNub (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Tue, 25 Jan 2022 08:50:31 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118624; x=1674654624;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=LR7ElrL169ZQll3N7cjxt2qigI7ofAlWB9ovLOiiqBI=;
  b=hXJkfZck6AJTYCSENf3/7ON+XdBOhks+Z6zOB0POSO7nfDJAyT7HRmo+
   4qtlf/bKl+9wKa415KZV152pTIRsqxdA7fNy/EWieJqpO96Hkmg+sIwE/
   EvqIum6sChNHxYW8tJG8O2Sx5h0NK2Kgv77EbYtF/CiWHpNu4FeALH1We
   AM4gETE46Vnxbokvq7JOy2d9htpOHTHqYlUydOE6yRK3lLCzdokQw3oLe
   FLYF9rFsrCAW/Yqw4OClReEYuWIAWYTwDlS8bh0wm/ct331HyWyBk4Rxg
   dLr0s4XhkFKp9DE5tz7zo8wHgWduDBPAQiMNcInRxmbPgHmiGJpnSNxl7
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699057"
Received: from unknown (HELO tq-pgp-pr1.tq-net.de) ([192.168.6.15])
  by mx1-pgp.tq-group.com with ESMTP; 25 Jan 2022 14:50:23 +0100
Received: from mx1.tq-group.com ([192.168.6.7])
  by tq-pgp-pr1.tq-net.de (PGP Universal service);
  Tue, 25 Jan 2022 14:50:23 +0100
X-PGP-Universal: processed;
        by tq-pgp-pr1.tq-net.de on Tue, 25 Jan 2022 14:50:23 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=tq-group.com; i=@tq-group.com; q=dns/txt; s=key1;
  t=1643118623; x=1674654623;
  h=from:to:cc:subject:date:message-id:mime-version:
   content-transfer-encoding;
  bh=LR7ElrL169ZQll3N7cjxt2qigI7ofAlWB9ovLOiiqBI=;
  b=VCfZRp1jHypnnPl3XmUvkxxUAZMeAKIBUANjfuMVpoDJHJhgcX3FokPO
   3tgFbKZfo1Z6NitnpXeoLAiO/QpzZsKbu6ZgYlPkGG6ALqCa1oC2ZfTK5
   AvGBRvYOdwwsx5Y8kHPsZNqF9ojKv1iJPCwI4Ootk3e9n6PTRGhI1a1x4
   TvcDTrZfRFjt2uZXmjiP0pl7zA5Jp6XpRI8+s2gBzSwQWriOjeIiBljZ5
   NJQI5Hia0Hx7PH0eAAJ4VQgTYgIWTf/Rj/dxEAKhanCWww+udM+kKLMkl
   gUVc/+LQU+qxubO3h6S+tb3q+KzYYKxfJuvtSWq/DhP6ozJR25pB7SZit
   A==;
X-IronPort-AV: E=Sophos;i="5.88,315,1635199200"; 
   d="scan'208";a="21699056"
Received: from vtuxmail01.tq-net.de ([10.115.0.20])
  by mx1.tq-group.com with ESMTP; 25 Jan 2022 14:50:23 +0100
Received: from steina-w.tq-net.de (unknown [10.123.49.12])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits))
        (No client certificate requested)
        by vtuxmail01.tq-net.de (Postfix) with ESMTPSA id F1FB2280065;
        Tue, 25 Jan 2022 14:50:22 +0100 (CET)
From:   Alexander Stein <alexander.stein@ew.tq-group.com>
To:     Rob Herring <robh+dt@kernel.org>, Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org
Subject: [PATCH 0/8] various imx6ul DT fixes
Date:   Tue, 25 Jan 2022 14:50:06 +0100
Message-Id: <20220125135014.3041002-1-alexander.stein@ew.tq-group.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch set fixes several, but not all, dt_binding_check warnings. Some are
missing properties or their format, others address issues regarding to
compatible names. I only touched those where compatibles are stated in the yaml
bindings.
There are several imx6ul compatible names used by imx6ul.dtsi, but which are
not listed in the bindings. Namely:
* "fsl,imx6ul-gpt", "fsl,imx6sx-gpt"
* "fsl,imx6ul-tempmon", "fsl,imx6sx-tempmon"
* "fsl,imx6ul-gpc", "fsl,imx6q-gpc"
* "fsl,imx6ul-usdhc", "fsl,imx6sx-usdhc"

Despite GPC, the others are apperently compatible to imx6sx. I'm not sure how
to fix the DTB check warning. Add the imx6ul compatible to bindings and drivers?
Or change the .dtsi to use only the imx6sx compatible.

The GPC on imx6ul apparently does only support power gating for ARM CPU, so
this would require actually a new compatible which supports only 1 domain.

Alexander Stein (8):
  ARM: dts: imx6ul: add missing properties for sram
  ARM: dts: imx6ul: change operating-points to uint32-matrix
  ARM: dts: imx6ul: fix keypad compatible
  ARM: dts: imx6ul: fix adc node compatible
  ARM: dts: imx6ul: remove unsupported adc property
  ARM: dts: imx6ul: fix csi node compatible
  ARM: dts: imx6ul: fix lcdif node compatible
  ARM: dts: imx6ul: fix qspi node compatible

 arch/arm/boot/dts/imx6ul.dtsi | 36 +++++++++++++++++------------------
 1 file changed, 18 insertions(+), 18 deletions(-)

-- 
2.25.1

