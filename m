Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 343305746D3
	for <lists+devicetree@lfdr.de>; Thu, 14 Jul 2022 10:35:00 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235620AbiGNIe6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 14 Jul 2022 04:34:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58482 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235651AbiGNIe4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 14 Jul 2022 04:34:56 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C784E3AE5F
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:34:55 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id b26so1580799wrc.2
        for <devicetree@vger.kernel.org>; Thu, 14 Jul 2022 01:34:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=melexis.com; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=CZaviK4TRAYwB1ueU1rfg2T0PUe/5MyrhBt48vfDihg=;
        b=SKISWAz8bxQLPyK7q6MASrRTa+l7kbxQORso9Ssbp5pyLJStK/EN/2nEy91Wzod0YG
         Xr+2ZmkinnpOiwkgMrzww7XAb1pb4YoWvRRUU8Aj5vPYUinjytSnoAcNgiMficVOazwx
         bl2tFzsaU4pEXT9fQmBamBoQMUCYCwpLbd/LKFzQbRqVPpua5k48UUfwErvM/FOngB7b
         ZwMsrNkwcoHIdkhFlIjlFEjm5Zgx8hKa4Im/Gd9c+VSu6+R+H7XnLXJkNJiqcF2zBYny
         RWZeHIlgt8Au0E4SnnTaAYsOK646WFWmZH0NF8hSUxCm0n5gleB2nFp+0a+/cKwQ7eg6
         uHjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=CZaviK4TRAYwB1ueU1rfg2T0PUe/5MyrhBt48vfDihg=;
        b=5b9HEm1t/YtaX9zHjD8uczlBC9bZvUQ4JuaDvUpFUMRSgeAv3eJbcSnAaHYurU51qO
         ImaGYpEI0gguAio29LAglw0u0yRxtyiks9Vx90OYj5saAiJfdDHIZYrxU9jub5l6y/x9
         wYz6hEn2xbfxlbdZr9QjnKhxnGri1JRIynp8wXGFFAhBcKnblE553zOPK19zAK8Rjirz
         aTvizeplgjDAqe+oYhL4k7zauvfZlmOsvGCYoPf7ZQKbcSdmWIH37OCB/GZ+BDETOVRU
         bjguafnv4eV+LLKrgroTHsfBpWL8ei0s3u6UYKWBv5P9uC7fnaXodSTvZnYu9JvIvjqn
         ta1g==
X-Gm-Message-State: AJIora+Ucy99qg5wPnxbpq+At8ZOPggzLElKFWtzg3luhZht+y1cjyBv
        TCeJRfBNOGKwx14SfLpGyA0pWw==
X-Google-Smtp-Source: AGRyM1s158dLwy7rKWDZQ+Z75dy45/m0B+9INoKUu6pUX6ft0NpWzuX4cu7SLghW+b2oX445YBYJJg==
X-Received: by 2002:a5d:508c:0:b0:21d:68d5:83f0 with SMTP id a12-20020a5d508c000000b0021d68d583f0mr6962767wrt.505.1657787694364;
        Thu, 14 Jul 2022 01:34:54 -0700 (PDT)
Received: from melexis ([194.44.50.167])
        by smtp.gmail.com with ESMTPSA id o38-20020a05600c512600b003a2e2e965absm4509004wms.20.2022.07.14.01.34.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 14 Jul 2022 01:34:54 -0700 (PDT)
From:   Volodymyr Kharuk <vkh@melexis.com>
To:     linux-media@vger.kernel.org
Cc:     Volodymyr Kharuk <vkh@melexis.com>,
        Andrii Kyselov <ays@melexis.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Hyun Kwon <hyun.kwon@xilinx.com>,
        Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
        Michal Simek <michal.simek@xilinx.com>,
        Kieran Bingham <kieran.bingham+renesas@ideasonboard.com>,
        devicetree@vger.kernel.org
Subject: [PATCH v2 1/6] media: xilinx: csi2rxss: Add 1X12 greyscale format
Date:   Thu, 14 Jul 2022 11:34:43 +0300
Message-Id: <68fc9d4edfff563995a1b3d452b57735b00ab364.1657786765.git.vkh@melexis.com>
X-Mailer: git-send-email 2.36.1
In-Reply-To: <cover.1657786765.git.vkh@melexis.com>
References: <cover.1657786765.git.vkh@melexis.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_NONE,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Extend the csi2rxss with Y12_1X12 greyscale format

Signed-off-by: Volodymyr Kharuk <vkh@melexis.com>
---
 drivers/media/platform/xilinx/xilinx-csi2rxss.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/media/platform/xilinx/xilinx-csi2rxss.c b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
index 051c60cba1e0..67574244eb2b 100644
--- a/drivers/media/platform/xilinx/xilinx-csi2rxss.c
+++ b/drivers/media/platform/xilinx/xilinx-csi2rxss.c
@@ -188,6 +188,7 @@ static const u32 xcsi2dt_mbus_lut[][2] = {
 	{ MIPI_CSI2_DT_RAW12, MEDIA_BUS_FMT_SBGGR12_1X12 },
 	{ MIPI_CSI2_DT_RAW12, MEDIA_BUS_FMT_SGBRG12_1X12 },
 	{ MIPI_CSI2_DT_RAW12, MEDIA_BUS_FMT_SGRBG12_1X12 },
+	{ MIPI_CSI2_DT_RAW12, MEDIA_BUS_FMT_Y12_1X12 },
 	{ MIPI_CSI2_DT_RAW16, MEDIA_BUS_FMT_SRGGB16_1X16 },
 	{ MIPI_CSI2_DT_RAW16, MEDIA_BUS_FMT_SBGGR16_1X16 },
 	{ MIPI_CSI2_DT_RAW16, MEDIA_BUS_FMT_SGBRG16_1X16 },
-- 
BR,
Volodymyr Kharuk

