Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C1C0337B8D2
	for <lists+devicetree@lfdr.de>; Wed, 12 May 2021 11:05:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230381AbhELJGw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 May 2021 05:06:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45594 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230383AbhELJGv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 May 2021 05:06:51 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id F2870C06175F
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 02:05:43 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id j3-20020a05600c4843b02901484662c4ebso2628625wmo.0
        for <devicetree@vger.kernel.org>; Wed, 12 May 2021 02:05:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Vgxld/f3SUwpcMSWNYdxMjxyAHMeE/P2VEowI+v3Huw=;
        b=ZhRgLdQcYxDv1sv/utXe9neuEDwIcsgTeeFDtZP79+wHgwrox32eOMlpZcTKGaF6jj
         BgFhwuYVu88eg5zbHXqPtZ/nuOVCZgKfhfCkuPtwDCQJlT5g/p0myxdPbUZgJxTOvdE3
         qjIAB+aNEFrCQoFipqLdQSlmWsukOybGaHvQuqWAUQpMJIN/PVbQvRKHNM28dvjbY3yZ
         KhUlLR4F9TFObUx7MloxXk7Pd34X93jr4gxzYWIiVydwDVWrycjD8UYZaoRjmyLpIKH+
         iI+gybgsx7gik70B9VoicSNfSFKkggBYwQl6f6KidsMx4ozD43zq3Jt4OkFYiGis2F28
         IrYA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Vgxld/f3SUwpcMSWNYdxMjxyAHMeE/P2VEowI+v3Huw=;
        b=PahgbVGYZY0qg/EKXWWBDKbI27vti5R1CqXBgFeIRupWuH4k0DyFYyDfER88+bcKwt
         fY9SVBph3kQub3p2X8RFjevDNDHOAIgvgiwfBlGrPoXGPl+Uh6zxUC6bhQgj+nPk8N18
         dwApVzq6Md2bbGnG6Z6dmMgE7TLm2Dei54ygOs3541E/opSFFe0kNgk1rPmmWlBWQBcY
         GMyZr0qTQDucxs4SZpEIkUPVyR+IiwjWF8zwQPA5OEP2PUkrP4FB71rUBk7v6zDDiTFr
         aK2M7EXCO4CyhhdZhfr/tTRZ6StiaOTXNQBijrPSSX1kY/fVsdY+U0VIMg2RkvkJ26MV
         Oigg==
X-Gm-Message-State: AOAM532/c5YPn34LIoKm/qnExvcVngiUPDbu1j7waiu3aLQy15kIWr/N
        5mTM/OWoaAEzz5rXQ02XggDCNA==
X-Google-Smtp-Source: ABdhPJwiTdDNSvixBRDjBkAtd13P81mARaB3JlzOW4b32T8E0ylvaHakCc2/uFfv+5ij442rr9t/Vg==
X-Received: by 2002:a05:600c:c7:: with SMTP id u7mr37006259wmm.156.1620810342711;
        Wed, 12 May 2021 02:05:42 -0700 (PDT)
Received: from arch-thunder.local (a109-49-46-234.cpe.netcabo.pt. [109.49.46.234])
        by smtp.gmail.com with ESMTPSA id v20sm26679451wmj.15.2021.05.12.02.05.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 12 May 2021 02:05:42 -0700 (PDT)
From:   Rui Miguel Silva <rui.silva@linaro.org>
To:     Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
        Sebastian Siewior <bigeasy@linutronix.de>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Rob Herring <robh+dt@kernel.org>
Cc:     linux-usb@vger.kernel.org, devicetree@vger.kernel.org,
        Rui Miguel Silva <rui.silva@linaro.org>
Subject: [PATCH v3 3/9] usb: isp1760: use relaxed primitives
Date:   Wed, 12 May 2021 10:05:23 +0100
Message-Id: <20210512090529.2283637-4-rui.silva@linaro.org>
X-Mailer: git-send-email 2.31.1
In-Reply-To: <20210512090529.2283637-1-rui.silva@linaro.org>
References: <20210512090529.2283637-1-rui.silva@linaro.org>
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

