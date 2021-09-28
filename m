Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6D94641B4BC
	for <lists+devicetree@lfdr.de>; Tue, 28 Sep 2021 19:09:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241920AbhI1RLH (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 28 Sep 2021 13:11:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33430 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241957AbhI1RLH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 28 Sep 2021 13:11:07 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DC47C06161C
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 10:09:27 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id x7so71179289edd.6
        for <devicetree@vger.kernel.org>; Tue, 28 Sep 2021 10:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sartura-hr.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=MOkJiFFV+D+y/7iBdkppsbCFqP93nQiAS8IIYiy8lX0=;
        b=ysvN9ddniGUrClxsHS1LmwTVKXK56UiClKP4e5jte2z5dCv8tP/UkjV/c5OKQ1MauZ
         pPHhaIy8s2Ibs48CgwbBd6rZ547y3UdXlN3nM4+NMJoV6x+RCL7idHdno0ZmJBEvRveV
         nX43+4/VG0ryjwCxCIAolz1nTByixXYUcyleuu+2+PLZ1Ac9f16c3bAVGrsRqpr2NVoB
         c+QluS9RmGAhORtml9T+tiZgmTbQ9en4me1UHsQvEUwuwhK51yM28LM9pT0zF5aSXf60
         KKRDljNVePGmWvfDDzC4BJlK/1LszqLQsLIcOex+i9UqM/p+4g80u/mas6C5S+G6D6Qo
         yDrA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=MOkJiFFV+D+y/7iBdkppsbCFqP93nQiAS8IIYiy8lX0=;
        b=SsusSZR4QLYnt53JHvpdtFDH+EU8dSxeAMfSmm7BgxLF4WvGi+uKWNRTFIPlMu9EHb
         NO94KNb+FCT7ZAjcGSCtOFC8xPG6hc96wulcQQxifsBCxgNsOTmrC1ZNytubrrSd+yq+
         vGiZURqOu+KTtamA+DGBQUD6flHeqm9Z4gIEhhEEhzd3cLu4QIIKfLwnA3Uu0HbPohdg
         ZGUA5O4RZ0QspHWZNRBNz07ljp3uVQ8uH+RorgnwiLcCus4HcKv4sCpVWATTwGFojGA4
         waIGeSxRR7O9cH5kD/B3Dgti72idwAYjUCjij8QVccIAvwdJdheko6WR2kz475ZMIiVS
         6q2Q==
X-Gm-Message-State: AOAM5303QYWSxDrTrX9AqRbZZEatBb2vBaNVDEDm6m3yAJhTmN1pI44B
        08bXqEniRqVhEJWHSfapDXn7/A==
X-Google-Smtp-Source: ABdhPJz4Y72BDlbKQ4LAeyOESF53Jg+2BscvxE5OZUe993IRCBuexeXHB/U7OXkgMxMULZYLv6F8qg==
X-Received: by 2002:a17:906:c7d0:: with SMTP id dc16mr8158507ejb.555.1632848965759;
        Tue, 28 Sep 2021 10:09:25 -0700 (PDT)
Received: from fedora.. (cpezg-94-253-144-231-cbl.xnet.hr. [94.253.144.231])
        by smtp.googlemail.com with ESMTPSA id bj21sm10806129ejb.42.2021.09.28.10.09.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 28 Sep 2021 10:09:25 -0700 (PDT)
From:   Robert Marko <robert.marko@sartura.hr>
To:     andrew@lunn.ch, gregory.clement@bootlin.com,
        sebastian.hesselbarth@gmail.com, robh+dt@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, pali@kernel.org
Cc:     Robert Marko <robert.marko@sartura.hr>
Subject: [PATCH v3 2/3] arm64: dts: marvell: espressobin-ultra: add PHY and switch reset pins
Date:   Tue, 28 Sep 2021 19:09:18 +0200
Message-Id: <20210928170919.691845-2-robert.marko@sartura.hr>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210928170919.691845-1-robert.marko@sartura.hr>
References: <20210928170919.691845-1-robert.marko@sartura.hr>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Both the Topaz switch and 88E1512 PHY have their reset and interrupts
connected to the SoC.

So, define the Topaz and 88E1512 reset pins in the DTS.

Defining the interrupt pins wont work as both the 88E1512 and the
Topaz switch uses active LOW IRQ signals but the A37xx GPIO controller
only supports edge triggers.
88E1512 would require special setup anyway as its INT pin is shared with
the LED2 and you first need to configure it as INT.

Signed-off-by: Robert Marko <robert.marko@sartura.hr>
Reviewed-by: Andrew Lunn <andrew@lunn.ch>
---
 arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
index 610ff6f385c7..7c786d218f1b 100644
--- a/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
+++ b/arch/arm64/boot/dts/marvell/armada-3720-espressobin-ultra.dts
@@ -114,12 +114,16 @@ &usb3 {
 &mdio {
 	extphy: ethernet-phy@1 {
 		reg = <1>;
+
+		reset-gpios = <&gpionb 2 GPIO_ACTIVE_LOW>;
 	};
 };
 
 &switch0 {
 	reg = <3>;
 
+	reset-gpios = <&gpiosb 23 GPIO_ACTIVE_LOW>;
+
 	ports {
 		switch0port1: port@1 {
 			reg = <1>;
-- 
2.31.1

