Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3337737F0F3
	for <lists+devicetree@lfdr.de>; Thu, 13 May 2021 03:35:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232212AbhEMBgc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 21:36:32 -0400
Received: from eu-shark2.inbox.eu ([195.216.236.82]:58992 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232174AbhEMBgb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 21:36:31 -0400
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id C14531E0072D;
        Thu, 13 May 2021 04:35:20 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620869720; bh=vRwXFMD6U8q6tmZOmdO31QLgDAt2cRF0CXYaisrB3uQ=;
        h=From:To:Cc:Subject:Date;
        b=WUwLZwEs2OnBbqAcvVuTUpVv1i/tPJrrrExX6xT2GKzeMNzZ/UAS5RhRCXos/j+ly
         hVfKj6r5vR3zF+joHnITuzJUquc1ypGdQ5sdWSbZxgRGG2zHJ77tv3q5dbVGuZH0iE
         rywjhprj9dfT3KMjPeZER1xtDvtWmiujwUjqsEPw=
Received: from localhost (localhost [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id B4EBC1E00712;
        Thu, 13 May 2021 04:35:20 +0300 (EEST)
Received: from eu-shark2.inbox.eu ([127.0.0.1])
        by localhost (eu-shark2.inbox.eu [127.0.0.1]) (spamfilter, port 35)
        with ESMTP id S4aCr9oxxTeu; Thu, 13 May 2021 04:35:20 +0300 (EEST)
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id 346BD1E006E1;
        Thu, 13 May 2021 04:35:20 +0300 (EEST)
Received: from localhost.localdomain (unknown [134.19.185.34])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 565AB1BE00C5;
        Thu, 13 May 2021 04:35:19 +0300 (EEST)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH v3 0/3] watchdog: mtk_wdt: refactor code to support more watchdogs
Date:   Thu, 13 May 2021 04:35:12 +0300
Message-Id: <20210513013515.31329-1-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: +d1m6vZSY16pi12lXXrXGwc/qjRKWPGHiOq/zG4nkTulcTLmCkUMVRmxn2RySXi7og==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series aims to refactor existing mtk_wdt driver by making some
constants dependent on a particular SoC. It is done because some mtk
watchdogs, while working in same manner, have slightly different
parameters such as specific register unlock key value and an offset of a
particular register field.

This patch set adds support for mt6577 watchdog.

Accepting these patches will make ground for submitting additional
changes related to the mainline support of mt6577 (and other compatible
SoCs) in future.

Proposed patches successfully pass all `checkpatch.pl` checks and don't
yield compiler warnings.

Resulting code has been thoroughly tested multiple times for hours on
real hardware (mt6577, mt6589) to ensure that proposed changes are
working properly.

Changes since v2 [3]:
- rename the newly introduced structure element ('data' -> 'config') to
  avoid changing the names of already existing variables; suggested [4]
  by Guenter Roeck.

Changes since v1 [1]:
- a complete rewrite to get rid of the configuration flags which made
  the watchdog not support other SoCs; suggested [2] by Guenter Roeck.

[1] https://lore.kernel.org/linux-mediatek/20210131234425.9773-1-arzamas-16@mail.ee/
[2] https://lore.kernel.org/linux-mediatek/050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net/
[3] https://lore.kernel.org/linux-mediatek/20210509211702.549-1-arzamas-16@mail.ee/
[4] https://lore.kernel.org/linux-mediatek/efdce3a5-e5b4-19a8-35f1-8a536220bb3f@roeck-us.net/

Boris Lysov (3):
  watchdog: mtk_wdt: Refactor code to support more SoCs
  dt-bindings: watchdog: mediatek: add support for mt6577 SoC
  watchdog: mtk_wdt: add support for mt6577

 .../devicetree/bindings/watchdog/mtk-wdt.txt  |  1 +
 drivers/watchdog/mtk_wdt.c                    | 88 +++++++++++++++----
 2 files changed, 70 insertions(+), 19 deletions(-)

-- 
2.20.1

