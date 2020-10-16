Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D004B28FE47
	for <lists+devicetree@lfdr.de>; Fri, 16 Oct 2020 08:26:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2394236AbgJPG0M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Oct 2020 02:26:12 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:63381 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2394010AbgJPG0M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Oct 2020 02:26:12 -0400
Received: from mail.aspeedtech.com ([192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id 09G6NiIt073152;
        Fri, 16 Oct 2020 14:23:44 +0800 (GMT-8)
        (envelope-from billy_tsai@aspeedtech.com)
Received: from localhost.localdomain (192.168.10.9) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.1497.2; Fri, 16 Oct
 2020 14:26:07 +0800
From:   Billy Tsai <billy_tsai@aspeedtech.com>
To:     <robh+dt@kernel.org>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <jae.hyun.yoo@linux.intel.com>, <billy_tsai@aspeedtech.com>,
        <haiyue.wang@linux.intel.com>, <james.feist@linux.intel.com>,
        <vernon.mauery@linux.intel.com>, <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-aspeed@lists.ozlabs.org>
CC:     <BMC-SW@aspeedtech.com>
Subject: [PATCH 0/3] Extend peci feature
Date:   Fri, 16 Oct 2020 14:25:59 +0800
Message-ID: <20201016062602.20014-1-billy_tsai@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.10.9]
X-ClientProxiedBy: TWMBX02.aspeed.com (192.168.0.24) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com 09G6NiIt073152
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch series extend the peci to support 64byte mode and simplify
the setting of peci operation rate. 

Billy Tsai (3):
  peci: aspeed: make the driver support 64byte mode
  peci: aspeed: Auto calculate the adapter divisor
  dt-bindings: Change the meaning of clock-frequency

 .../devicetree/bindings/peci/peci-aspeed.yaml |  56 +++----
 arch/arm/boot/dts/aspeed-g6.dtsi              |   4 +-
 drivers/peci/busses/peci-aspeed.c             | 158 ++++++++++++------
 3 files changed, 136 insertions(+), 82 deletions(-)

-- 
2.17.1

