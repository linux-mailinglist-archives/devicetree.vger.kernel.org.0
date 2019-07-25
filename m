Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E66B4751D7
	for <lists+devicetree@lfdr.de>; Thu, 25 Jul 2019 16:53:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2388652AbfGYOxZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 25 Jul 2019 10:53:25 -0400
Received: from foss.arm.com ([217.140.110.172]:58852 "EHLO foss.arm.com"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S2388617AbfGYOxY (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Thu, 25 Jul 2019 10:53:24 -0400
Received: from usa-sjc-imap-foss1.foss.arm.com (unknown [10.121.207.14])
        by usa-sjc-mx-foss1.foss.arm.com (Postfix) with ESMTP id 136E728;
        Thu, 25 Jul 2019 07:53:24 -0700 (PDT)
Received: from e123572-lin.arm.com (e123572-lin.cambridge.arm.com [10.1.194.48])
        by usa-sjc-imap-foss1.foss.arm.com (Postfix) with ESMTPSA id B26E83F71F;
        Thu, 25 Jul 2019 07:53:22 -0700 (PDT)
From:   Kevin Brodsky <kevin.brodsky@arm.com>
To:     linux-arm-kernel@lists.infradead.org
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Linus Walleij <linus.walleij@linaro.org>,
        Pawel Moll <pawel.moll@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Brian Starkey <brian.starkey@arm.com>,
        Sudeep Holla <sudeep.holla@arm.com>,
        Kevin Brodsky <kevin.brodsky@arm.com>,
        Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Subject: [PATCH] arm64: dts: fast models: Increase clcd's max-memory-bandwidth
Date:   Thu, 25 Jul 2019 15:50:40 +0100
Message-Id: <20190725145040.42182-1-kevin.brodsky@arm.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

It may be desirable on certain platforms, such as Android, to
use 32bpp buffers. Since there is no clear bandwidth limit for the
CLCD component on the fast model, let's increase
max-memory-bandwidth to allow using 32bpp buffers.

Reported-by: Ruben Ayrapetyan <ruben.ayrapetyan@arm.com>
Signed-off-by: Kevin Brodsky <kevin.brodsky@arm.com>
---
 arch/arm64/boot/dts/arm/fvp-base-revc.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/arm/fvp-base-revc.dts b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
index 687707020ec1..3aee49ed6d88 100644
--- a/arch/arm64/boot/dts/arm/fvp-base-revc.dts
+++ b/arch/arm64/boot/dts/arm/fvp-base-revc.dts
@@ -269,7 +269,7 @@
 		motherboard {
 			iofpga@3,00000000 {
 				clcd@1f0000 {
-					max-memory-bandwidth = <130000000>; /* 16bpp @ 63.5MHz */
+					max-memory-bandwidth = <260000000>; /* 32bpp @ 63.5MHz */
 				};
 			};
 		};
-- 
2.22.0

