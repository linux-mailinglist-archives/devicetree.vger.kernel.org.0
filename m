Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E990A3F1917
	for <lists+devicetree@lfdr.de>; Thu, 19 Aug 2021 14:26:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230303AbhHSM0r (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 19 Aug 2021 08:26:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42544 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230292AbhHSM0r (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 19 Aug 2021 08:26:47 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E29A1C061575
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:26:10 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id k5so12582691lfu.4
        for <devicetree@vger.kernel.org>; Thu, 19 Aug 2021 05:26:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UdYm2vxUTmf9CXI40f+xHKkyfNEl3nKwrVbQaXzup/0=;
        b=fLwfvxiWvRYeABKBHMWOSAlhsIfy/uymd3Nz9UM9cEjhgJOB4ehpyMg0XPn/r6aZ9N
         xLnGsKWUzMxdkmgF7aEVVA8ar/3znysG2gpX5IB5ogP7l/EwlmzhU6/AzL5+DfYgTECP
         ZcZ/wuU/i3PqMa1AcyGr1k0A+cXUoK9CtvG/0UQHmBQzc5jokrm9hBYwlHBrrDk4syn5
         KvLHDyDdlL4VKNgxK1khNf76JmZqMClfKXaqfeBCrAwwzJR3WO4vOEX+lnOSIQo6MRPC
         dwjv3x9Sgsk1fCl61YXudJnJyepnEgZozeLgooTxL6j9nOWlZoW2FMnxCR+wQjD4qD7m
         L/3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=UdYm2vxUTmf9CXI40f+xHKkyfNEl3nKwrVbQaXzup/0=;
        b=QTEfRykDwwzAdIr2lOZSNYA4/KLqIBHcNAEUfm0hZABWE4RJu5qIBFQJQ7f0RC3Oy/
         30COwTRjorv9fcWVW+yeD1fk7tt/72zsizLfa5GTdxqLOjTngtbSNvWk6aQEBuz3wQKa
         1fxoRg4GRkBf4gVOvgWPHDgt4k/svss6Ce7BTXTKeHai8/AHIiUJB5xszMCS2uNgPMdX
         A4a8S/BUINxosik01gMN70CTZGVuoYeM0iFAl/1PDp3on2/9AxztJkS5P0iQqJvWlk/9
         mfogzKd5wa2rZ2y9fGpG3/QLLI4M68amRT6lqEeGDliASWbSN15/TRcZ4zRGb7glanLd
         vEHQ==
X-Gm-Message-State: AOAM530V9aDMX9ZkED3nZ1wrQgGqQE4qWVyxXkyAwYe87D8hXTKmcMpX
        UO5wpPOf93KCTnbz+syFos0=
X-Google-Smtp-Source: ABdhPJxVMI3xqfnccdu7w/b1rydgKZBWVsKop2g0JpckP1yM5JlPm57MhyLNGYosN2pYllHfpHI8CQ==
X-Received: by 2002:a05:6512:1689:: with SMTP id bu9mr10664631lfb.147.1629375969215;
        Thu, 19 Aug 2021 05:26:09 -0700 (PDT)
Received: from localhost.lan (ip-194-187-74-233.konfederacka.maverick.com.pl. [194.187.74.233])
        by smtp.gmail.com with ESMTPSA id o22sm294441lfr.32.2021.08.19.05.26.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 19 Aug 2021 05:26:08 -0700 (PDT)
From:   =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <zajec5@gmail.com>
To:     Florian Fainelli <f.fainelli@gmail.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com,
        =?UTF-8?q?Rafa=C5=82=20Mi=C5=82ecki?= <rafal@milecki.pl>
Subject: [PATCH] arm64: dts: broadcom: bcm4908: Move reboot syscon out of bus
Date:   Thu, 19 Aug 2021 14:26:06 +0200
Message-Id: <20210819122606.15682-1-zajec5@gmail.com>
X-Mailer: git-send-email 2.26.2
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Rafał Miłecki <rafal@milecki.pl>

This fixes following error for every bcm4908 DTS file:
bus@ff800000: reboot: {'type': 'object'} is not allowed for {'compatible': ['syscon-reboot'], 'regmap': [[15]], 'offset': [[52]], 'mask': [[1]]}

Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
---
 arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
index ae91679a78b1..87076770f4bc 100644
--- a/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
+++ b/arch/arm64/boot/dts/broadcom/bcm4908/bcm4908.dtsi
@@ -326,12 +326,12 @@ reset-controller@2644 {
 				#reset-cells = <1>;
 			};
 		};
+	};
 
-		reboot {
-			compatible = "syscon-reboot";
-			regmap = <&timer>;
-			offset = <0x34>;
-			mask = <1>;
-		};
+	reboot {
+		compatible = "syscon-reboot";
+		regmap = <&timer>;
+		offset = <0x34>;
+		mask = <1>;
 	};
 };
-- 
2.26.2

