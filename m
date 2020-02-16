Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0668E1603F0
	for <lists+devicetree@lfdr.de>; Sun, 16 Feb 2020 13:11:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728059AbgBPMLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 16 Feb 2020 07:11:09 -0500
Received: from out28-172.mail.aliyun.com ([115.124.28.172]:42102 "EHLO
        out28-172.mail.aliyun.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728086AbgBPMLI (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 16 Feb 2020 07:11:08 -0500
X-Alimail-AntiSpam: AC=CONTINUE;BC=0.3967156|-1;CH=green;DM=CONTINUE|CONTINUE|true|0.793557-0.007287-0.199156;DS=CONTINUE|ham_regular_dialog|0.119179-0.00746845-0.873353;FP=0|0|0|0|0|-1|-1|-1;HT=e02c03312;MF=zhouyanjie@wanyeetech.com;NM=1;PH=DS;RN=11;RT=11;SR=0;TI=SMTPD_---.Gof3ya4_1581855051;
Received: from localhost.localdomain(mailfrom:zhouyanjie@wanyeetech.com fp:SMTPD_---.Gof3ya4_1581855051)
          by smtp.aliyun-inc.com(10.147.42.22);
          Sun, 16 Feb 2020 20:10:58 +0800
From:   =?UTF-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0=20=28Zhou=20Yanjie=29?= 
        <zhouyanjie@wanyeetech.com>
To:     linux-mips@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        paul@crapouillou.net, robh+dt@kernel.org, mark.rutland@arm.com,
        ralf@linux-mips.org, paulburton@kernel.org,
        sernia.zhou@foxmail.com, zhenwenjin@gmail.com,
        dongsheng.qiu@ingenic.com
Subject: Fix clock of X1000 watchdog node.
Date:   Sun, 16 Feb 2020 20:10:26 +0800
Message-Id: <1581855028-25552-1-git-send-email-zhouyanjie@wanyeetech.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Fix clock of Ingenic X1000's watchdog node.

