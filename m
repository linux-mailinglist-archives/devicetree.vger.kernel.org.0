Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 29B653A1347
	for <lists+devicetree@lfdr.de>; Wed,  9 Jun 2021 13:48:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239553AbhFILsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Jun 2021 07:48:52 -0400
Received: from mail-wm1-f45.google.com ([209.85.128.45]:33577 "EHLO
        mail-wm1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234602AbhFILsc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Jun 2021 07:48:32 -0400
Received: by mail-wm1-f45.google.com with SMTP id s70-20020a1ca9490000b02901a589651424so3073906wme.0
        for <devicetree@vger.kernel.org>; Wed, 09 Jun 2021 04:46:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20150623.gappssmtp.com; s=20150623;
        h=sender:from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=kEDmcXw1Vb0a19AjvwRij7MjXqXCoObE8zeLieziyHk=;
        b=kKGqttYupE3iAnWWcj2Z/5S/M9a++Vowp7tLhYCysZ5ycoUMSJhJ5pj5brD1sUEmyi
         Ozr4OFfsbSV8EqJz/U/YRe5NVT/WvePyC4/4vVIdtjh0O0XhRi6Ny3gvWNsKCmGrkd5Q
         kMIlbz3cPWF6QcpHq5Rj1Q+azERtcIi9E0hzTxD4vavVlgjj2M9vxQ8dCcuNJR0ZBu4s
         JbvNh8qyZVq5M6VknyuYHsUwuRH4ep2ylfheCD1On3cHp6hJ7enWSYLbneWMYvIXYVYv
         aGZv64qRAhI2oavIwckktxBwo/ZW4ruXDHpHlEKx8gKLRTf38fMGy0MU5S67+I+Uy40G
         K/tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :in-reply-to:references:mime-version:content-transfer-encoding;
        bh=kEDmcXw1Vb0a19AjvwRij7MjXqXCoObE8zeLieziyHk=;
        b=K+wKaaWPReruIFsh8FfL1DQe+BaN+djKXmcyJ8T5lV6eIBa+O255UUSAGMevfdBM4c
         zpkbLwrM/odFXYePeII0jlEhQuDutsQFo237tEQuKcdGxsQlFjvO8B/EaCscaW+kg/Kv
         WgkplE6hNkf3nXv3wF0b8Dd335bCB/pDkRmaLTQWaAhvjatYtLa/78Wu3M9AJP1QpT7T
         4zYObogcnZOfCfh38g+wGDefPmRBGfmdiOZhc3qipT6TXyXeqDzN5fwNcFxJUgn5bxoB
         FJsGokfchEtxozB/3DGeDQBFsrsrto7jlOAnMfjxrodiZBSHgd+/za7wUSpgzdHcO806
         iHMQ==
X-Gm-Message-State: AOAM531of9wCFYoAHPAIYo1IxnGb3s4Lg0d+HIG1CZ+4RQubnpN83p6j
        bot/YTRQzAbdJOJbNW6k3LsaBw==
X-Google-Smtp-Source: ABdhPJx/gF/i/+f3rHQ5uRMfSpqn975b21+2ucb/F8nsogWOh6nBJ3ghohhqCBek0mAcbMtAQQqwrg==
X-Received: by 2002:a1c:2015:: with SMTP id g21mr9400708wmg.87.1623239124315;
        Wed, 09 Jun 2021 04:45:24 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6::45a])
        by smtp.gmail.com with ESMTPSA id o18sm13601475wrx.59.2021.06.09.04.45.23
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 09 Jun 2021 04:45:24 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com,
        Viresh Kumar <viresh.kumar@linaro.org>
Cc:     Amit Kumar Mahapatra <amit.kumar-mahapatra@xilinx.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Subject: [PATCH 02/31] arm64: zynqmp: Do not duplicate flash partition label property
Date:   Wed,  9 Jun 2021 13:44:38 +0200
Message-Id: <6c4b9b9232b93d9e316a63c086540fd5bf6b8687.1623239033.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <cover.1623239033.git.michal.simek@xilinx.com>
References: <cover.1623239033.git.michal.simek@xilinx.com>
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
2.31.1

