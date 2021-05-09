Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 4A8413778AD
	for <lists+devicetree@lfdr.de>; Sun,  9 May 2021 23:27:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229950AbhEIV17 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 May 2021 17:27:59 -0400
Received: from eu-shark2.inbox.eu ([195.216.236.82]:41312 "EHLO
        eu-shark2.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229847AbhEIV14 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 May 2021 17:27:56 -0400
Received: from eu-shark2.inbox.eu (localhost [127.0.0.1])
        by eu-shark2-out.inbox.eu (Postfix) with ESMTP id B72881E0057D;
        Mon, 10 May 2021 00:17:07 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1620595027; bh=IZNY4BDS3lmUbMHrkZXJWxFBHVivt/qxVSD6SjtLspk=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References;
        b=ZfxlyRzUOqgQkmQX4EVNSAn+yTKl555rYKZTPITYTrr1uKPcpn4NeaIRq03Hvdkxn
         ouA8q311G4foYXn2TC54lGW8NHrrIjwOO+Y0zQwAgDs2hilyOs5cbzN4lbnTID+UeT
         z5sfxWhrCdqmzWf3pArwp7H8COO4txYApsXBNep0=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark2-in.inbox.eu (Postfix) with ESMTP id A542A1E0056A;
        Mon, 10 May 2021 00:17:07 +0300 (EEST)
Received: from localhost.localdomain (unknown [196.196.216.231])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 962AE1BE00A1;
        Mon, 10 May 2021 00:17:06 +0300 (EEST)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-mediatek@lists.infradead.org
Subject: [PATCH v2 0/3] watchdog: mtk_wdt: refactor code to support more watchdogs
Date:   Mon, 10 May 2021 00:16:59 +0300
Message-Id: <20210509211702.549-1-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20210131234425.9773-1-arzamas-16@mail.ee>
References: <20210131234425.9773-1-arzamas-16@mail.ee>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: 6NpmlY9HHDysjlqlQGetdgtC2jYwPODk8uGk0RRfgnn7NzCGfUkRI2663TM2UR7LszoX
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

Changes since v1 [1]:
- a complete rewrite to get rid of the configuration flags which made
  the watchdog not support other SoCs; suggested [2] by Guenter Roeck.

[1] https://lore.kernel.org/linux-mediatek/20210131234425.9773-1-arzamas-16@mail.ee/
[2] https://lore.kernel.org/linux-mediatek/050f2f8e-9c3c-10e3-05ef-cd84e949b98f@roeck-us.net/

Boris Lysov (3):
  watchdog: mtk_wdt: Refactor code to support more SoCs
  dt-bindings: watchdog: mediatek: add support for mt6577 SoC
  watchdog: mtk_wdt: add support for mt6577

 .../devicetree/bindings/watchdog/mtk-wdt.txt  |  1 +
 drivers/watchdog/mtk_wdt.c                    | 88 +++++++++++++++----
 2 files changed, 70 insertions(+), 19 deletions(-)

-- 
2.20.1

