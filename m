Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A669625F399
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 09:10:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726424AbgIGHKI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 03:10:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59950 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726384AbgIGHKG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 03:10:06 -0400
Received: from mxwww.masterlogin.de (mxwww.masterlogin.de [IPv6:2a03:2900:1:1::a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0197C061573
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 00:10:05 -0700 (PDT)
Received: from mxout4.routing.net (unknown [192.168.10.112])
        by backup.mxwww.masterlogin.de (Postfix) with ESMTPS id 1A0352C4A2;
        Mon,  7 Sep 2020 07:06:00 +0000 (UTC)
Received: from mxbox1.masterlogin.de (unknown [192.168.10.88])
        by mxout4.routing.net (Postfix) with ESMTP id C6DDA100464;
        Mon,  7 Sep 2020 07:05:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailerdienst.de;
        s=20200217; t=1599462351;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:
         content-transfer-encoding:content-transfer-encoding;
        bh=onds+3xjlybr9ir+dspQaREPX8BcKz9b6Gb01qJhOFw=;
        b=H5v+1OSy2SHAT35gF1NOqNI/Nsr0lePa9HK8oKtewbND1nF9q0vTk+lVDySS6ZzsFqxFEk
        3oOhrkJEC221bZiTPbqm5AIfdliiOxe1gzMqu6gV0QJsk7Q9eFe9KT3HAfnsQURtpr7+i7
        HvKWKZepAeamq+bGyuDGtG5Gk/sY81M=
Received: from localhost.localdomain (fttx-pool-185.76.97.104.bambit.de [185.76.97.104])
        by mxbox1.masterlogin.de (Postfix) with ESMTPSA id 09C90401D3;
        Mon,  7 Sep 2020 07:05:51 +0000 (UTC)
From:   Frank Wunderlich <linux@fw-web.de>
To:     linux-mediatek@lists.infradead.org
Cc:     Frank Wunderlich <frank-w@public-files.de>,
        Rob Herring <robh+dt@kernel.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        Landen Chao <landen.chao@mediatek.com>,
        Qingfang DENG <dqfext@gmail.com>,
        =?UTF-8?q?Ren=C3=A9=20van=20Dorst?= <opensource@vdorst.com>,
        Sean Wang <sean.wang@mediatek.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        stable@vger.kernel.org
Subject: [PATCH] arm: dts: mt7623: add missing pause for switchport
Date:   Mon,  7 Sep 2020 09:05:17 +0200
Message-Id: <20200907070517.51715-1-linux@fw-web.de>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Frank Wunderlich <frank-w@public-files.de>

port6 of mt7530 switch (= cpu port 0) on bananapi-r2 misses pause option
which causes rx drops on running iperf.

Cc: stable@vger.kernel.org
Fixes: f4ff257cd160 ("arm: dts: mt7623: add support for Bananapi R2 (BPI-R2) board")
Signed-off-by: Frank Wunderlich <frank-w@public-files.de>
---
 arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
index 2b760f90f38c..5375c6699843 100644
--- a/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
+++ b/arch/arm/boot/dts/mt7623n-bananapi-bpi-r2.dts
@@ -192,6 +192,7 @@ port@6 {
 					fixed-link {
 						speed = <1000>;
 						full-duplex;
+						pause;
 					};
 				};
 			};
-- 
2.25.1

