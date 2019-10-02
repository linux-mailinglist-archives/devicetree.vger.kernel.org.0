Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEC5AC47A5
	for <lists+devicetree@lfdr.de>; Wed,  2 Oct 2019 08:17:53 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727116AbfJBGRt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Oct 2019 02:17:49 -0400
Received: from twspam01.aspeedtech.com ([211.20.114.71]:34487 "EHLO
        twspam01.aspeedtech.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726965AbfJBGRt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Oct 2019 02:17:49 -0400
X-Greylist: delayed 333 seconds by postgrey-1.27 at vger.kernel.org; Wed, 02 Oct 2019 02:17:48 EDT
Received: from twspam01.aspeedtech.com (localhost [127.0.0.2] (may be forged))
        by twspam01.aspeedtech.com with ESMTP id x925uLCc005692
        for <devicetree@vger.kernel.org>; Wed, 2 Oct 2019 13:56:21 +0800 (GMT-8)
        (envelope-from chiawei_wang@aspeedtech.com)
Received: from mail.aspeedtech.com (twmbx02.aspeed.com [192.168.0.24])
        by twspam01.aspeedtech.com with ESMTP id x925uFmm005677;
        Wed, 2 Oct 2019 13:56:15 +0800 (GMT-8)
        (envelope-from chiawei_wang@aspeedtech.com)
Received: from localhost.localdomain (192.168.100.253) by TWMBX02.aspeed.com
 (192.168.0.24) with Microsoft SMTP Server (TLS) id 15.0.620.29; Wed, 2 Oct
 2019 14:12:12 +0800
From:   "Chia-Wei, Wang" <chiawei_wang@aspeedtech.com>
To:     <jae.hyun.yoo@linux.intel.com>
CC:     <jason.m.bills@linux.intel.com>, <robh+dt@kernel.org>,
        <mark.rutland@arm.com>, <joel@jms.id.au>, <andrew@aj.id.au>,
        <linux-aspeed@lists.ozlabs.org>, <openbmc@lists.ozlabs.org>,
        <devicetree@vger.kernel.org>,
        <linux-arm-kernel@lists.infradead.org>,
        <linux-kernel@vger.kernel.org>, <chiawei_wang@aspeedtech.com>,
        <ryan_chen@aspeedtech.com>
Subject: [PATCH 0/2] peci: aspeed: Add AST2600 compatible
Date:   Wed, 2 Oct 2019 14:11:58 +0800
Message-ID: <20191002061200.29888-1-chiawei_wang@aspeedtech.com>
X-Mailer: git-send-email 2.17.1
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [192.168.100.253]
X-ClientProxiedBy: TWMBX01.aspeed.com (192.168.0.23) To TWMBX02.aspeed.com
 (192.168.0.24)
X-DNSRBL: 
X-MAIL: twspam01.aspeedtech.com x925uFmm005677
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Update the Aspeed PECI driver with the AST2600 compatible string.
A new comptabile string is needed for the extended HW feature of
AST2600.

Chia-Wei, Wang (2):
  peci: aspeed: Add AST2600 compatible string
  dt-bindings: peci: aspeed: Add AST2600 compatible

 Documentation/devicetree/bindings/peci/peci-aspeed.txt | 1 +
 drivers/peci/peci-aspeed.c                             | 1 +
 2 files changed, 2 insertions(+)

-- 
2.17.1

