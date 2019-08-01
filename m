Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id BD6A67D749
	for <lists+devicetree@lfdr.de>; Thu,  1 Aug 2019 10:21:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730728AbfHAIVD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 1 Aug 2019 04:21:03 -0400
Received: from honk.sigxcpu.org ([24.134.29.49]:43900 "EHLO honk.sigxcpu.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727171AbfHAIVD (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 1 Aug 2019 04:21:03 -0400
Received: from localhost (localhost [127.0.0.1])
        by honk.sigxcpu.org (Postfix) with ESMTP id 9306CFB04;
        Thu,  1 Aug 2019 10:21:00 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at honk.sigxcpu.org
Received: from honk.sigxcpu.org ([127.0.0.1])
        by localhost (honk.sigxcpu.org [127.0.0.1]) (amavisd-new, port 10024)
        with ESMTP id BtZoogl4K8vi; Thu,  1 Aug 2019 10:20:59 +0200 (CEST)
Received: by bogon.sigxcpu.org (Postfix, from userid 1000)
        id 4457246DEA; Thu,  1 Aug 2019 10:20:59 +0200 (CEST)
From:   =?UTF-8?q?Guido=20G=C3=BCnther?= <agx@sigxcpu.org>
To:     Philipp Zabel <p.zabel@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v2 0/1] imx: Fix typo in iMQ8MQ reset names
Date:   Thu,  1 Aug 2019 10:20:58 +0200
Message-Id: <cover.1564647612.git.agx@sigxcpu.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the mipi dsi resets were called

  IMX8MQ_RESET_MIPI_DIS_

instead of

  IMX8MQ_RESET_MIPI_DSI_

Since they're DSI related this looks like a typo. This fixes the only in tree
user as well to not break bisecting.

Guido Günther (1):
  dt-bindings: reset: Fix typo in imx8mq resets

 drivers/reset/reset-imx7.c               | 12 ++++++------
 include/dt-bindings/reset/imx8mq-reset.h |  6 +++---
 2 files changed, 9 insertions(+), 9 deletions(-)

-- 
2.20.1

