Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC6AC464E48
	for <lists+devicetree@lfdr.de>; Wed,  1 Dec 2021 13:57:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244396AbhLANA1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 1 Dec 2021 08:00:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52384 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236755AbhLANA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 1 Dec 2021 08:00:27 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A698CC061574
        for <devicetree@vger.kernel.org>; Wed,  1 Dec 2021 04:57:06 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id q3so29198802wru.5
        for <devicetree@vger.kernel.org>; Wed, 01 Dec 2021 04:57:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=72iRR/4HeBeHQCE5DFGR/jYYshMAqvGdf4VZ9pZlAio=;
        b=Nuh/0QfVdSMTgZX9RlkLMaPfmpqQB/tItEsChBU+1Xn39Gp2i+GCr9QANy1WUzUNcE
         f0Ckxl6RIwGYaJ3eUz42xgq6gwNr6JLGskdRrcNA6L66tCSneHLmWoNz/D3u+5q65xSn
         EBrvJZ9cAtQdaIRxiyaRkax+wKpM/5kkoqnrg7yKA8VsotNCEMFUE5z4HPKfRlFcbn3h
         dQrvPSrZ5p/fPMFCMzB67/20WeHoSIO/mjroLbCS+Hqwx+3M2MbqFtXbslbq/V7YfdeK
         boWVmCPbeeODRaZ/CMWnv4filT7wWTT6seR+y33v1cbAhTvU9HzEE3QJ1EPa8zG2uV2B
         mSRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=72iRR/4HeBeHQCE5DFGR/jYYshMAqvGdf4VZ9pZlAio=;
        b=GoLR+F9mqrRFNyC7W3VkiqTPljX8BHKXIONMf54PQpvyrgQpKqkaKoweRfAw1L0CB6
         pCqPTl7yqOBQwWmdLcBMBIhB14S/+s/00mFuN46pj8GlmRBRdPk44cjlP1krnjKU+1Zl
         5unLT4Bc9pzNmaN0CXhWhGztumQyZKMEOALMHkjMde47lXJC3Oa9DFZ2xt3WblJuvviK
         woiZIpboczEgiW6i2k8B9V//Nx2rffglIk3ER5G/LqxcctZidkKTF0hHZMgr9xNTpVm5
         AdosiESD25/RxRFTKHkW5As7tFQHgWA4rTgqy4nn3EDFQQZpHAjB8vGX1X4dTnoLp6bT
         e/CA==
X-Gm-Message-State: AOAM533Lt6/2C8m5R62Pz6AqRVi93p6eU56nc3TZr37GyWTnlcI1bycW
        ZzCASpLJRreo5uqR+vQkK20=
X-Google-Smtp-Source: ABdhPJwvGEuHE3Yw0/PZ68FzcsLDLYJ3ys57awxjg+TYbyDN6X+zEsHFRsUZmALw7D4VybEu7xiu+Q==
X-Received: by 2002:a5d:4084:: with SMTP id o4mr6793235wrp.47.1638363425135;
        Wed, 01 Dec 2021 04:57:05 -0800 (PST)
Received: from debian64.daheim (p5b0d7321.dip0.t-ipconnect.de. [91.13.115.33])
        by smtp.gmail.com with ESMTPSA id r17sm1187671wmq.5.2021.12.01.04.57.04
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 01 Dec 2021 04:57:04 -0800 (PST)
Received: from chuck by debian64.daheim with local (Exim 4.95)
        (envelope-from <chunkeey@gmail.com>)
        id 1msPAW-000Dlu-0I;
        Wed, 01 Dec 2021 13:57:04 +0100
From:   Christian Lamparter <chunkeey@gmail.com>
To:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Cc:     Hans Ulli Kroll <ulli.kroll@googlemail.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Steven Maddox <s.maddox@lantizia.me.uk>
Subject: [PATCH v1] ARM: dts: gemini: NAS4220-B: fis-index-block with 128 KiB sectors
Date:   Wed,  1 Dec 2021 13:57:03 +0100
Message-Id: <20211201125703.52935-1-chunkeey@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Steven Maddox reported in the OpenWrt bugzilla, that his
RaidSonic IB-NAS4220-B was no longer booting with the new
OpenWrt 21.02 (uses linux 5.10's device-tree). However, it was
working with the previous OpenWrt 19.07 series (uses 4.14).

|[    5.548038] No RedBoot partition table detected in 30000000.flash
|[    5.618553] Searching for RedBoot partition table in 30000000.flash at offset 0x0
|[    5.739093] No RedBoot partition table detected in 30000000.flash
|...
|[    7.039504] Waiting for root device /dev/mtdblock3...

The provided bootlog shows that the RedBoot partition parser was
looking for the partition table "at offset 0x0". Which is strange
since the comment in the device-tree says it should be at 0xfe0000.

Further digging on the internet led to a review site that took
some useful PCB pictures of their review unit back in February 2009.
Their picture shows a Spansion S29GL128N11TFI01 flash chip.

From Spansion's Datasheet:
"S29GL128N: One hundred twenty-eight 64 Kword (128 Kbyte) sectors"
Steven also provided a "cat /sys/class/mtd/mtd0/erasesize" from his
unit: "131072".

With the 128 KiB Sector/Erasesize in mind. This patch changes the
fis-index-block property to (0xfe0000 / 0x20000) = 0x7f.

Fixes: b5a923f8c739 ("ARM: dts: gemini: Switch to redboot partition parsing")
Bugzilla: https://bugs.openwrt.org/index.php?do=details&task_id=4137
Reported-by: Steven Maddox <s.maddox@lantizia.me.uk>
Tested-by: Steven Maddox <s.maddox@lantizia.me.uk>
Signed-off-by: Christian Lamparter <chunkeey@gmail.com>
---
 arch/arm/boot/dts/gemini-nas4220b.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm/boot/dts/gemini-nas4220b.dts b/arch/arm/boot/dts/gemini-nas4220b.dts
index 13112a8a5dd8..6544c730340f 100644
--- a/arch/arm/boot/dts/gemini-nas4220b.dts
+++ b/arch/arm/boot/dts/gemini-nas4220b.dts
@@ -84,7 +84,7 @@ flash@30000000 {
 			partitions {
 				compatible = "redboot-fis";
 				/* Eraseblock at 0xfe0000 */
-				fis-index-block = <0x1fc>;
+				fis-index-block = <0x7f>;
 			};
 		};
 
-- 
2.34.1

