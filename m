Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B3CAA214CE0
	for <lists+devicetree@lfdr.de>; Sun,  5 Jul 2020 16:04:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727120AbgGEOE3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Jul 2020 10:04:29 -0400
Received: from out28-4.mail.aliyun.com ([115.124.28.4]:40061 "EHLO
        out28-4.mail.aliyun.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726833AbgGEOE2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Jul 2020 10:04:28 -0400
X-Alimail-AntiSpam: AC=CONTINUE;BC=0.3048483|-1;CH=green;DM=|CONTINUE|false|;DS=CONTINUE|ham_system_inform|0.00620101-5.20701e-05-0.993747;FP=0|0|0|0|0|-1|-1|-1;HT=e01l10434;MF=zhouyanjie@wanyeetech.com;NM=1;PH=DS;RN=12;RT=12;SR=0;TI=SMTPD_---.HyNTnUA_1593957855;
Received: from localhost.localdomain(mailfrom:zhouyanjie@wanyeetech.com fp:SMTPD_---.HyNTnUA_1593957855)
          by smtp.aliyun-inc.com(10.147.42.197);
          Sun, 05 Jul 2020 22:04:22 +0800
From:   =?UTF-8?q?=E5=91=A8=E7=90=B0=E6=9D=B0=20=28Zhou=20Yanjie=29?= 
        <zhouyanjie@wanyeetech.com>
To:     linux-kernel@vger.kernel.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org, tglx@linutronix.de,
        daniel.lezcano@linaro.org, paul@crapouillou.net,
        dongsheng.qiu@ingenic.com, aric.pzqi@ingenic.com,
        rick.tyliu@ingenic.com, yanfei.li@ingenic.com,
        sernia.zhou@foxmail.com, zhenwenjin@gmail.com
Subject: [PATCH v5 0/2] Add support for the OST in Ingenic X1000.
Date:   Sun,  5 Jul 2020 22:03:51 +0800
Message-Id: <20200705140353.53093-1-zhouyanjie@wanyeetech.com>
X-Mailer: git-send-email 2.11.0
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v4->v5:
Use "of_io_request_and_map()" instead "of_iomap()".
Suggested-by: Paul Cercueil <paul@crapouillou.net>

周琰杰 (Zhou Yanjie) (2):
  dt-bindings: timer: Add Ingenic X1000 OST bindings.
  clocksource: Ingenic: Add support for the Ingenic X1000 OST.

 .../devicetree/bindings/timer/ingenic,sysost.yaml  |  60 +++
 drivers/clocksource/Kconfig                        |  11 +
 drivers/clocksource/Makefile                       |   1 +
 drivers/clocksource/ingenic-sysost.c               | 539 +++++++++++++++++++++
 include/dt-bindings/clock/ingenic,sysost.h         |  12 +
 5 files changed, 623 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/timer/ingenic,sysost.yaml
 create mode 100755 drivers/clocksource/ingenic-sysost.c
 create mode 100644 include/dt-bindings/clock/ingenic,sysost.h

-- 
2.11.0


