Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C7CD0309F99
	for <lists+devicetree@lfdr.de>; Mon,  1 Feb 2021 00:56:01 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229506AbhAaXz6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jan 2021 18:55:58 -0500
Received: from eu-shark1.inbox.eu ([195.216.236.81]:49648 "EHLO
        eu-shark1.inbox.eu" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229495AbhAaXzx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jan 2021 18:55:53 -0500
Received: from eu-shark1.inbox.eu (localhost [127.0.0.1])
        by eu-shark1-out.inbox.eu (Postfix) with ESMTP id 4FD426C008E0;
        Mon,  1 Feb 2021 01:45:09 +0200 (EET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mail.ee; s=20150108;
        t=1612136709; bh=IFAJlt1BHFeW7aWKm0BJnd3XeKpMsCJpUn+KxcaeWS4=;
        h=From:To:Cc:Subject:Date;
        b=i+E1vXpR/r48F2xRmslG6HLMv6ZnMFLnJM7+tSBpS+s7T6azyurW03iGTrrMfNYiI
         VY1UDrsH0N3GTunJwZ5CjzbhAdvCDxhEkFJReyG9T2H4yoYSSOIo46JR8RlCmDrzRj
         5sqM40ejpP7t/VrKBPkBud21vX+v7PtUl7aCLpvk=
Received: from mail.inbox.eu (eu-pop1 [127.0.0.1])
        by eu-shark1-in.inbox.eu (Postfix) with ESMTP id 2FBE86C00853;
        Mon,  1 Feb 2021 01:45:09 +0200 (EET)
Received: from localhost.localdomain (unknown [165.231.161.4])
        (Authenticated sender: arzamas-16@mail.ee)
        by mail.inbox.eu (Postfix) with ESMTPA id 0BD531BE00BA;
        Mon,  1 Feb 2021 01:45:05 +0200 (EET)
From:   Boris Lysov <arzamas-16@mail.ee>
To:     matthias.bgg@gmail.com, linux@roeck-us.net, robh+dt@kernel.org
Cc:     linux-mediatek@lists.infradead.org, devicetree@vger.kernel.org,
        Boris Lysov <arzamas-16@mail.ee>
Subject: [PATCH 0/3] watchdog: mtk_wdt: add support for mt6577
Date:   Mon,  1 Feb 2021 02:44:22 +0300
Message-Id: <20210131234425.9773-1-arzamas-16@mail.ee>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Virus-Scanned: OK
X-ESPOL: 885mlYxLBDyni0CgRXrAARpE0ScJA635mZS31gE76Hb7NCeCfEAJVBS0gR8FQAnNog==
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This series adds support for mt6577 watchdog to the:
a) mtk_wdt driver - by bringing support for 16-bit I/O
b) mtk_wdt dt-binding - by declaring compatibility with mt6577

Without these changes user would have to disable watchdog by manually
writing a value to the register, otherwise the device will power off.

Accepting these patches will make ground for submitting additional
changes related to the mainline support of mt6577 (and other compatible
SoCs) in future.

Suggested patches successfully pass all `checkpatch.pl` checks, and they
do not interfere with already supported watchdogs.

Boris Lysov (3):
  dt-bindings: watchdog: mediatek: add support for mt6577 SoC
  watchdog: mtk_wdt: add support for 16-bit control registers
  watchdog: mtk_wdt: declare compatibility with mt6577

 .../devicetree/bindings/watchdog/mtk-wdt.txt  |  1 +
 drivers/watchdog/Kconfig                      |  9 +++++
 drivers/watchdog/mtk_wdt.c                    | 35 +++++++++++++------
 3 files changed, 35 insertions(+), 10 deletions(-)

-- 
2.20.1

