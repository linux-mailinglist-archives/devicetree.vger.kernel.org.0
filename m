Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 41E5D9A820
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2391368AbfHWHDh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:37 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:34735 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404860AbfHWHDC (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:02 -0400
Received: by mail-wm1-f67.google.com with SMTP id e8so8637358wme.1
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=azywW4aY+7wwgpNcGjCphBBHWjJRM460WoYJzBT0wYk=;
        b=tXU3kWHD6fL1kUtu493aPKmgU35PK0cJBZuXho29b/UAUO5IUdGJ5s0YwYZIcxbkJx
         rsS5aJ63ewGloC4FDFkDeYWx90taKRGxx9PuHTEs01ZDvDkwOtkjqJDiV87WTrvQ/TgO
         C/mhppXl3Fog2EO/Tlbb1Ee3g+pIuD4BQx6Im1Zi1pxM3pxbCygGcmiirKntjhzSUaRG
         qo6ip9/J7rTm8kBLIOPXLLuTOZNKJK0j+nRi6MHdtTJTXLDM/LdbCOSRBMrCqBAHyMzp
         3fTNWdADY/M3BLnld/6bdQGC8X6weIZnE1Dq2ph83G1BevN5OQmhFr1L8MlrpBZbTQPV
         e8tQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=azywW4aY+7wwgpNcGjCphBBHWjJRM460WoYJzBT0wYk=;
        b=XIO6W8f1LD9koHzXzwkCyOLq0HUZe4wfBxcdKAltRcSHyI5gd/zg0sKJb44xtpjHCh
         58kNRpnCFUbm5Y4PxbKCKaPlDKLC6trlTY4FdJMiyD8fyfec8Cq3wOPJpOz8Poa35GEF
         rSVx+qzabWDHxieNmbkcs1bHS35IJoCa5aIAr6J6ruUW2frzp5q41nvLSeWvAbhhkt/I
         EkQrJBrvSlBGYn4RECXPbtQOVf+Gf7JWHodHbVefN0FYIiYJK6iUmFMiUpCmD97zxDKq
         CK9rPChjU0VDnGtDc7d2V5rpxYSNbWQBbLyz11T7lF5ZVXaJ+IatP3smMYgYBt3+pw27
         eTjQ==
X-Gm-Message-State: APjAAAUtEE5dQT+nxRHwpdYZGO/sTv00H3vbwLRjP9BmoqQ1WnSGq519
        jVYfM/QIUCiyNSkco77bG9xndg==
X-Google-Smtp-Source: APXvYqypWTGY1OgUHLWikf1dmECp2VpbfjrWpKD1mRPlCd6Udkbv7ND2F33HHWtG2cvD70GipoVAYA==
X-Received: by 2002:a05:600c:218d:: with SMTP id e13mr3277166wme.29.1566543779798;
        Fri, 23 Aug 2019 00:02:59 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:02:59 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RESEND PATCH v2 06/14] arm64: dts: meson-gx: fix mhu compatible
Date:   Fri, 23 Aug 2019 09:02:40 +0200
Message-Id: <20190823070248.25832-7-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190823070248.25832-1-narmstrong@baylibre.com>
References: <20190823070248.25832-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-gxbb-nanopi-k2.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']
meson-gxl-s805x-libretech-ac.dt.yaml: mailbox@404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index b3fe3268af3e..74a2cdff0563 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -490,7 +490,7 @@
 			};
 
 			mailbox: mailbox@404 {
-				compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+				compatible = "amlogic,meson-gxbb-mhu";
 				reg = <0 0x404 0 0x4c>;
 				interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 					     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0

