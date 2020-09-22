Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E228A273B0B
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 08:42:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726593AbgIVGmq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 02:42:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726556AbgIVGmq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 02:42:46 -0400
Received: from mail-pg1-x543.google.com (mail-pg1-x543.google.com [IPv6:2607:f8b0:4864:20::543])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5A0FAC061755
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 23:42:46 -0700 (PDT)
Received: by mail-pg1-x543.google.com with SMTP id 7so11123362pgm.11
        for <devicetree@vger.kernel.org>; Mon, 21 Sep 2020 23:42:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=H28rZwyuk612Q+lpk1xxhaA0RWkt3kwFSekiba8ihFE=;
        b=BNTL7CFbjq85ImK3WIt2do07sGw2Bl4V1i+bW/AEaFDo6tq0uo3qH3TpYKMmNkmYOT
         syuHyww8EC1HWKU+MlCWUzRI7WFAubp9gGy9uRAHGQhMlzVbeJ2f+HO20dHBPzq1CBQj
         DPkeypU4fFIzYzEI/MFKqefV4vqcC9p6Nqp1CDITYHb/+yOVOR/ctwlbzZiQmejdaXWN
         0jUDp5v0yaUSDDOJ5g9i8b8+ISCfINiu/Wr0xuPBx6NT2hhfeIWJmWs5it5/kXA5xzQb
         kSfDebRrCe3yIyTaWCAsmcceiZjNA2PP+Xp+OuDa7iRCOcV6m8A59mH9gAf581qs4qwr
         quzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=H28rZwyuk612Q+lpk1xxhaA0RWkt3kwFSekiba8ihFE=;
        b=DY27ahZTtw681sJ3GeD+XJ5j3lyI4Or9HXOvsQgbwEAc+uwF/khKGvojKCBAOUWZJW
         Z0XjhZW+RNdM8fb3ZUZv2ooG2ntr7j1uctloMWlHvDO77ETqBbHlu9yhbgrtzzE7g0jd
         Ft0znjBnVyWEXJQvQWzj+w1N+enYgLHd9tOCiFfurF/GsztEJfATYcBPRNgAIIT2LMBm
         3rb1Dt6f662Zb+3j/I4rwwSUxP/drGNUeUU2yAXsJkIv6+PGhorhQ9/wDyloOW6zxDYL
         /ZI+tKS5314nvzRFm+fyO2EtCKHrHM94PVX3e1/kk6wkbglyNE7bt/mLenpSdizv/txv
         usEg==
X-Gm-Message-State: AOAM532e4CZmV24QCG0b7HdNlFRJJ+niNdYpeV8C8dJwAe6Nrwk3lSPC
        MpiW/O+fuF0AsVuYqZBOgVNMrwv8yls=
X-Google-Smtp-Source: ABdhPJyfw8Nl/Q3xJbsqSbwMLaScoWWOd4fXHBRKL688qNWWmA0geWMPpv3buGpT2Wi78aHY6jyFHg==
X-Received: by 2002:a63:fd08:: with SMTP id d8mr655202pgh.223.1600756965682;
        Mon, 21 Sep 2020 23:42:45 -0700 (PDT)
Received: from localhost.localdomain ([45.124.203.18])
        by smtp.gmail.com with ESMTPSA id t3sm1267350pje.43.2020.09.21.23.42.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Sep 2020 23:42:44 -0700 (PDT)
Sender: "joel.stan@gmail.com" <joel.stan@gmail.com>
From:   Joel Stanley <joel@jms.id.au>
To:     Andrew Jeffery <andrew@aj.id.au>,
        James Feist <james.feist@linux.intel.com>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        John Wang <wangzhiqiang.bj@bytedance.com>
Subject: [PATCH] ARM: dts: aspeed: s2600wf: Fix VGA memory region location
Date:   Tue, 22 Sep 2020 16:12:34 +0930
Message-Id: <20200922064234.163799-1-joel@jms.id.au>
X-Mailer: git-send-email 2.28.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The VGA memory region is always from the top of RAM. On this board, that
is 0x80000000 + 0x20000000 - 0x01000000 = 0x9f000000.

This was not an issue in practice as the region is "reserved" by the
vendor's u-boot reducing the amount of available RAM, and the only user
is the host VGA device poking at RAM over PCIe. That is, nothing from
the ARM touches it.

It is worth fixing as developers copy existing device trees when
building their machines, and the XDMA driver does use the memory region
from the ARM side.

Fixes: c4043ecac34a ("ARM: dts: aspeed: Add S2600WF BMC Machine")
Reported-by: John Wang <wangzhiqiang.bj@bytedance.com>
Signed-off-by: Joel Stanley <joel@jms.id.au>
---
 arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts b/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
index 1deb30ec912c..6e9baf3bba53 100644
--- a/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
+++ b/arch/arm/boot/dts/aspeed-bmc-intel-s2600wf.dts
@@ -22,9 +22,9 @@ reserved-memory {
 		#size-cells = <1>;
 		ranges;
 
-		vga_memory: framebuffer@7f000000 {
+		vga_memory: framebuffer@9f000000 {
 			no-map;
-			reg = <0x7f000000 0x01000000>;
+			reg = <0x9f000000 0x01000000>; /* 16M */
 		};
 	};
 
-- 
2.28.0

