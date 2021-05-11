Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 684B137A290
	for <lists+devicetree@lfdr.de>; Tue, 11 May 2021 10:51:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231129AbhEKIwV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 May 2021 04:52:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56764 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231145AbhEKIwU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 May 2021 04:52:20 -0400
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com [IPv6:2a00:1450:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FD95C061760
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 01:51:14 -0700 (PDT)
Received: by mail-wm1-x32c.google.com with SMTP id a10-20020a05600c068ab029014dcda1971aso743538wmn.3
        for <devicetree@vger.kernel.org>; Tue, 11 May 2021 01:51:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vgxld/f3SUwpcMSWNYdxMjxyAHMeE/P2VEowI+v3Huw=;
        b=zmroXfjVdLg5yxAenNrU9ZB4IOQfcSqbqjWw4y4oS2T88o3YiRSU5ReNrxi+ZoiLB2
         HZUXWcv0hzhDqqf0VuHpEQGZTpy3oIJxJKRrlRcrx4B4afgv70Yibz2K19SW01a2jiwC
         u5QecLxh6aONSSzPCKxm3GQJVxeinYbR6K92DCHewg8CZflGJLOuHp0dNGNL/Ct0Ml2W
         ZrPjTKtrAbL9Bi2LBL9v9enrpTEyHVJSA3dc85sCw4dpho8z8HwMKgiFjJmhp8reyMI6
         CGQZpxe3P3hjDHtxIc7xqhp8R3I2jUrl1coDfasKswbBMEf6sohQnGsdRZmvmRGzhBXP
         zmnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vgxld/f3SUwpcMSWNYdxMjxyAHMeE/P2VEowI+v3Huw=;
        b=nCY1RbjYq2PNyr6pUFOlUavflA0gn/oQM0R+dKpFBv5Smae15gQAVn4Z/CGurxI2Yc
         YwcyfH7c7cxXsFr1LWTFb/Di97AJiWfWcA7OYD81PsvceNL4mV7C/kl08ApeuWQBhcXA
         5WyYnI8j9/OqNfzm9eakYJvj4RdpIsD9H3io6qTQb9Z988fVb49tO2fEOC94vvU6JCTB
         qSMbH+zhGtpmZEijcBjJpBSPYbMqo3o7r4pwRoJaj5Ud6ZtOiCpDQ/14MSZ30oZ9q93f
         QUi0s6v7vnxIlv3GqvlJJLABToCIAzAGyBR5f7QO97SuIoOKyHs4lmXIfZO43Yb+NVhD
         8Iow==
X-Gm-Message-State: AOAM533PzLUDN78ramLRzzIk1ibrgc1e9jYQeCYP6w6nbV72dEoaWpHQ
        Cg2q2Aaz6qVKMwaa2OBqyU6dQ63X2inPjA==
X-Google-Smtp-Source: ABdhPJySUXN64zRXUZekhCm32MHe0ks44SIuC0eiNskwAKlxS6bYfyw4r2e2/7LysNdnQSuXiq/FqA==
X-Received: by 2002:a1c:7516:: with SMTP id o22mr4049608wmc.91.1620723072748;
        Tue, 11 May 2021 01:51:12 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id j7sm23042980wmi.21.2021.05.11.01.51.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 May 2021 01:51:12 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v2 3/9] usb: isp1760: use relaxed primitives
Date:   Tue, 11 May 2021 09:50:55 +0100
Message-Id: <20210511085101.2081399-4-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210511085101.2081399-1-rui.silva@linaro.org>
References: <20210511085101.2081399-1-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Use io relaxed access memory primitives to satisfy strict type
checking (__force).

This will fix some existing sparse warnings:
sparse: warning: cast to restricted __le32

Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
---
 drivers/usb/isp1760/isp1760-hcd.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/usb/isp1760/isp1760-hcd.c b/drivers/usb/isp1760/isp1760-hcd.c
index 20d142140574..2cc0555e029d 100644
--- a/drivers/usb/isp1760/isp1760-hcd.c
+++ b/drivers/usb/isp1760/isp1760-hcd.c
@@ -246,7 +246,7 @@ static void bank_reads8(void __iomem *src_base, u32 src_offset, u32 bank_addr,
 
 	if (src_offset < PAYLOAD_OFFSET) {
 		while (bytes >= 4) {
-			*dst = le32_to_cpu(__raw_readl(src));
+			*dst = readl_relaxed(src);
 			bytes -= 4;
 			src++;
 			dst++;
@@ -267,7 +267,7 @@ static void bank_reads8(void __iomem *src_base, u32 src_offset, u32 bank_addr,
 	 * allocated.
 	 */
 	if (src_offset < PAYLOAD_OFFSET)
-		val = le32_to_cpu(__raw_readl(src));
+		val = readl_relaxed(src);
 	else
 		val = __raw_readl(src);
 
@@ -301,7 +301,7 @@ static void mem_writes8(void __iomem *dst_base, u32 dst_offset,
 
 	if (dst_offset < PAYLOAD_OFFSET) {
 		while (bytes >= 4) {
-			__raw_writel(cpu_to_le32(*src), dst);
+			writel_relaxed(*src, dst);
 			bytes -= 4;
 			src++;
 			dst++;
@@ -322,7 +322,7 @@ static void mem_writes8(void __iomem *dst_base, u32 dst_offset,
 	 */
 
 	if (dst_offset < PAYLOAD_OFFSET)
-		__raw_writel(cpu_to_le32(*src), dst);
+		writel_relaxed(*src, dst);
 	else
 		__raw_writel(*src, dst);
 }
-- 
2.31.1

