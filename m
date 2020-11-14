Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 555562B2FBB
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 19:33:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726140AbgKNScZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 13:32:25 -0500
Received: from mail.kernel.org ([198.145.29.99]:45886 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726158AbgKNScZ (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 13:32:25 -0500
Received: from dellmb.labs.office.nic.cz (nat-1.nic.cz [217.31.205.1])
        (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 428E2223AB;
        Sat, 14 Nov 2020 18:32:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605378744;
        bh=6dGyFHohPsAWx/XI36dN0c9WwJqdqR9jk6Zip4Yj8AE=;
        h=From:To:Cc:Subject:Date:In-Reply-To:References:From;
        b=XhyA8uSgkEpdbehhhezswItiJfeSS2J7x+tMMaVMp6zq+GwOR/5pUwoF7z+gE4Psw
         tKTLMoOdH9BlIS13Q/lpZ+B76RY5VbCE3GetfFa/RfQDu882lbMTKxaNOoJ1jgnfQu
         ekcqCLBAThqxe8f9wBCrNdCO7VZ3XPAvuPeruVdI=
From:   =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org, =?UTF-8?q?Marek=20Beh=C3=BAn?= <kabel@kernel.org>,
        Andrew Lunn <andrew@lunn.ch>,
        =?UTF-8?q?Uwe=20Kleine-K=C3=B6nig?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        =?UTF-8?q?Andreas=20F=C3=A4rber?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: [PATCH mvebu-dt v2 2/6] ARM: dts: turris-omnia: add comphy handle to eth2
Date:   Sat, 14 Nov 2020 19:32:13 +0100
Message-Id: <20201114183217.1352-3-kabel@kernel.org>
X-Mailer: git-send-email 2.26.2
In-Reply-To: <20201114183217.1352-1-kabel@kernel.org>
References: <20201114183217.1352-1-kabel@kernel.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The eth2 controller on Turris Omnia is connected to SerDes. For SFP to
be able to switch between 1G ans 2.5G modes the comphy link has to be
defined.

Signed-off-by: Marek Behún <kabel@kernel.org>
Fixes: f3a6a9f3704a ("ARM: dts: add description for Armada 38x ...")
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
Cc: Uwe Kleine-König <uwe@kleine-koenig.org>
Cc: Jason Cooper <jason@lakedaemon.net>
Cc: Gregory CLEMENT <gregory.clement@bootlin.com>
Cc: Andreas Färber <afaerber@suse.de>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: devicetree@vger.kernel.org
---
 arch/arm/boot/dts/armada-385-turris-omnia.dts | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/armada-385-turris-omnia.dts b/arch/arm/boot/dts/armada-385-turris-omnia.dts
index b6bd73d8f2ba..9de26c78ec4c 100644
--- a/arch/arm/boot/dts/armada-385-turris-omnia.dts
+++ b/arch/arm/boot/dts/armada-385-turris-omnia.dts
@@ -129,6 +129,7 @@ &eth2 {
 	status = "okay";
 	phy-mode = "sgmii";
 	phy = <&phy1>;
+	phys = <&comphy5 2>;
 	buffer-manager = <&bm>;
 	bm,pool-long = <2>;
 	bm,pool-short = <3>;
-- 
2.26.2

