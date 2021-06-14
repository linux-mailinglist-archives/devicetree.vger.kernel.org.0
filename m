Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 247C73A6A2E
	for <lists+devicetree@lfdr.de>; Mon, 14 Jun 2021 17:27:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233832AbhFNP3E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 14 Jun 2021 11:29:04 -0400
Received: from mail-ej1-f41.google.com ([209.85.218.41]:37741 "EHLO
        mail-ej1-f41.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233680AbhFNP2u (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 14 Jun 2021 11:28:50 -0400
Received: by mail-ej1-f41.google.com with SMTP id ce15so17311529ejb.4
        for <devicetree@vger.kernel.org>; Mon, 14 Jun 2021 08:26:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=eENrFE65sb18aGa1Uvfu7nA7Z38lv6PqEmiZJci8iuw=;
        b=A2m6p1gf8L1eJQnBJaAIp4XXuJDOG6Wqm4bLiQeL0ABSKGalI+qbuANO/3lgSYCfUM
         4fPIaARCshsNqfc74+b07sRJe8VoSEmqgVBwK4zHhWYFuFGqVmvTRzsgDBVExdxHFml4
         rCMKgtFRxD3Fk73MlyMjtgD74iP/+/R/q97qK4yzwIpQmFAYkoVuxv+26STeu/dlMwCZ
         Jhu10XSxDRhoHTBf5LHOwhVjVBXOBAQuw3nD7SLhSo64uhNqQTpAx+haVLqEyy8i8Ad/
         Broev+j14nDSkwjLpm+AvvIcoPngccwUxG5vmzuxbEerOQxYmur6tRm80mcGw9rw59jg
         E+Iw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=eENrFE65sb18aGa1Uvfu7nA7Z38lv6PqEmiZJci8iuw=;
        b=AfkosAliun1GeK0CF9pVBgfn/lz5KATLUogNLUk24tJGagw/3aGpb5q2ykmX/yRw0l
         4ptW8U7UNiRB2mgDMrp62sXKi1RURwJ+QSbcO8lm6GodjQH3QwC9A1HvjawFs4zpBfnk
         hWXH3krC8PYDEoBu5NhqCXvg7yHt1js3Jh2o4VsQ5BtOv93Qp3L1ETh9dvfwz2zN92uE
         e3HESkEzKXr/S/xX+nPKXE2FYZ9zWonGqodeXDAhiD+0lNcxKUTpqs2IkNBgLkLOfQVq
         7oWbPEUg5hscFohp9fL5/IZxsn/Wp18zcXEpbQ8wSr/DSwXXACPHPlifqy6gue2Rpm5r
         vQzA==
X-Gm-Message-State: AOAM533D/5uUQKFlgnqj5HFZv8jOreORvsujvBP4NdfFgmhx8Mvl9j36
        hMEMhGlAc2Cl83+QQT3g8KSohg==
X-Google-Smtp-Source: ABdhPJzs9VfMq5+Et4qPzGcZzrvGoiB2wet15vIy4GfVjZHrblHV2mXfQtzx3wKyZVQ37CfXEr5RPQ==
X-Received: by 2002:a17:906:1c49:: with SMTP id l9mr16040165ejg.39.1623684346515;
        Mon, 14 Jun 2021 08:25:46 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id h22sm9024630edv.0.2021.06.14.08.25.46
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 14 Jun 2021 08:25:46 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH v2 02/33] arm64: zynqmp: Do not duplicate flash partition label property
Date:   Mon, 14 Jun 2021 17:25:10 +0200
Message-Id: <6c4b9b9232b93d9e316a63c086540fd5bf6b8687.1623684253.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <cover.1623684253.git.michal.simek@xilinx.com>
References: <cover.1623684253.git.michal.simek@xilinx.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>

In kernel 5.4, support has been added for reading MTD devices via the nvmem
API.
For this the mtd devices are registered as read-only NVMEM providers under
sysfs with the same name as the flash partition label property.

So if flash partition label property of multiple flash devices are
identical then the second mtd device fails to get registered as a NVMEM
provider.

This patch fixes the issue by having different label property for different
flashes.

Signed-off-by: Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>
Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

Changes in v2: None

 arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
index 4a86efa32d68..f7124e15f0ff 100644
--- a/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
+++ b/arch/arm64/boot/dts/xilinx/zynqmp-zc1751-xm016-dc2.dts
@@ -131,7 +131,7 @@ spi0_flash0: flash@0 {
 		reg = <0>;
 
 		partition@0 {
-			label = "data";
+			label = "spi0-data";
 			reg = <0x0 0x100000>;
 		};
 	};
@@ -149,7 +149,7 @@ spi1_flash0: flash@0 {
 		reg = <0>;
 
 		partition@0 {
-			label = "data";
+			label = "spi1-data";
 			reg = <0x0 0x84000>;
 		};
 	};
-- 
2.32.0

