Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 1925F971BB
	for <lists+devicetree@lfdr.de>; Wed, 21 Aug 2019 07:56:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727659AbfHUF4C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Aug 2019 01:56:02 -0400
Received: from mail-pg1-f193.google.com ([209.85.215.193]:37451 "EHLO
        mail-pg1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725385AbfHUF4B (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Aug 2019 01:56:01 -0400
Received: by mail-pg1-f193.google.com with SMTP id d1so673903pgp.4
        for <devicetree@vger.kernel.org>; Tue, 20 Aug 2019 22:56:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=LRbutwMNPGCcUP4XySCkZI7pdAkUQ3GbmpQv+hp9+4c=;
        b=N+G/+Kd48L+jZ6o/fh73xp/mvKfke7JJ7JPGZJsuzEWn3YO92SpGNDtMZtXQd1yk7t
         /TcD60fht7i0+XwrmcNWyPf8WjO/Lv9z9BIzsTbucr5CKKzgIhEgylC2A2JYU/Su6VWi
         POYuMnJIX+9gfsnoyO5Pdw+hqhI9GTSybTlMGSH4kPlTPUvztTFE/BgZavxTmEjTYoR5
         cQpolg/xXw8hm79XwpuSMp435mSrUQoqLq4lYD5Fpitd8fLzl/QdtZp+huD4s+QHoBbU
         br0eaXacICeU2eSRhyj6TvMghpemugnptuEla8w9XZ2jqeeDp2m4AkV0bHBqxUVxbMZs
         sKLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=LRbutwMNPGCcUP4XySCkZI7pdAkUQ3GbmpQv+hp9+4c=;
        b=kY4NxThG/Z36qdkn84rfnSIZff8A+xqK19O1nsXS11rqBiwxKYc6Gk4TXrLolMbwHo
         cwT8EJx5CcMd0nBboXsQPM0zcZO6VtlXBWHHgAsR05TvFiMCimXwi/34zxavJtCShf/Y
         r5fTJWkTxLw/R548kdvD6HcX3bCviVA93GLXJCO8MbS5zf9iCgtdjpa9ikVfv3p6MHiv
         aZM+OIpP3fWLFdmN8clmLTwauatO1coMFjjWRrHCxE7qsjpkhblKVbuO29+9e0hcIPPj
         vp9KzibyjCv4gXjdPjsjQdGWdNVbDHOm8zqvjXO79z3zfxKrF4NPjM8GCVl440fIDLMu
         wQvA==
X-Gm-Message-State: APjAAAVnSO0H24LV2UTV5RFHo3hDx53NVtYsWgOj1oBbCcwEAVMBZjtJ
        gjS906Az6RMUIKEvZxSBmz4=
X-Google-Smtp-Source: APXvYqzr/PrY+iSpy/Ko5UjPD7BNJVFwxG0vGqhgQJH5ScpnxINdgIEcUBhvY2O7dE7gdnnQxlcFfw==
X-Received: by 2002:a17:90a:342d:: with SMTP id o42mr3727142pjb.27.1566366960863;
        Tue, 20 Aug 2019 22:56:00 -0700 (PDT)
Received: from voyager.ibm.com ([36.255.48.244])
        by smtp.gmail.com with ESMTPSA id m9sm26568254pfh.84.2019.08.20.22.55.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Aug 2019 22:56:00 -0700 (PDT)
From:   Joel Stanley <joel@jms.id.au>
To:     Rob Herring <robh+dt@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Olof Johansson <olof@lixom.net>
Cc:     Ryan Chen <ryan_chen@aspeedtech.com>,
        =?UTF-8?q?C=C3=A9dric=20Le=20Goater?= <clg@kaod.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Andrew Jeffery <andrew@aj.id.au>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-aspeed@lists.ozlabs.org
Subject: [PATCH 2/7] ARM: aspeed: Select timer in each SoC
Date:   Wed, 21 Aug 2019 15:25:25 +0930
Message-Id: <20190821055530.8720-3-joel@jms.id.au>
X-Mailer: git-send-email 2.23.0.rc1
In-Reply-To: <20190821055530.8720-1-joel@jms.id.au>
References: <20190821055530.8720-1-joel@jms.id.au>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

In preparation for adding the ast2600 which does not use this timer.

Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/mach-aspeed/Kconfig | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/arch/arm/mach-aspeed/Kconfig b/arch/arm/mach-aspeed/Kconfig
index a15c3a291386..2979aa4daeea 100644
--- a/arch/arm/mach-aspeed/Kconfig
+++ b/arch/arm/mach-aspeed/Kconfig
@@ -5,7 +5,6 @@ menuconfig ARCH_ASPEED
 	select SRAM
 	select WATCHDOG
 	select ASPEED_WATCHDOG
-	select FTTMR010_TIMER
 	select MFD_SYSCON
 	select PINCTRL
 	help
@@ -18,6 +17,7 @@ config MACH_ASPEED_G4
 	depends on ARCH_MULTI_V5
 	select CPU_ARM926T
 	select PINCTRL_ASPEED_G4
+	select FTTMR010_TIMER
 	help
 	 Say yes if you intend to run on an Aspeed ast2400 or similar
 	 fourth generation BMCs, such as those used by OpenPower Power8
@@ -28,6 +28,7 @@ config MACH_ASPEED_G5
 	depends on ARCH_MULTI_V6
 	select CPU_V6
 	select PINCTRL_ASPEED_G5
+	select FTTMR010_TIMER
 	help
 	 Say yes if you intend to run on an Aspeed ast2500 or similar
 	 fifth generation Aspeed BMCs.
-- 
2.23.0.rc1

