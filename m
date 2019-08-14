Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C6ED08D5F5
	for <lists+devicetree@lfdr.de>; Wed, 14 Aug 2019 16:29:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728166AbfHNO3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Aug 2019 10:29:34 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:40997 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728203AbfHNO3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Aug 2019 10:29:34 -0400
Received: by mail-wr1-f66.google.com with SMTP id j16so9038285wrr.8
        for <devicetree@vger.kernel.org>; Wed, 14 Aug 2019 07:29:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=yzfWUBTNkEnWlc/VJanAk2xvxB7vKc+KwpDyTNdWOJA=;
        b=p5hiQFsis2UOLe0K/BxWbyG2jH2KpPMoLOyQ6Wnpl2Vf4HynbFCg5JOK+5/OGZOdO6
         TD39yapvQPrIo5Lz59swex+tSvYHaP+IXOznPBSYGjgC63mJoqcgi4iH1UdkV7thNEZE
         m3e0FrJJm7nBZncFEwy4Lg8aIBMBobRWYbpGR37WT+OA2o7el3TwYZDXa7Zd+1wdBtaA
         KVPSw8PCICD5UKZt0KAVH8BiS5cpO0Bo/NJIfDrWou0PbQtp2utaTlithYQkRUgTB62N
         WvGoQgaXXo1C8ShR26EPl1AoPgi6bMliW4KSWvti+mKnVBJc2+/kzU0keu+1D+eU1pCB
         bTOA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=yzfWUBTNkEnWlc/VJanAk2xvxB7vKc+KwpDyTNdWOJA=;
        b=F+pM1R/TdBTOPuGz5PhDrftrzc35BJeQ0xtzO0qhtF4vq9WMZWC5TBHNwte1aynEjt
         iQw+qcUC0k010Vi7wNzTLDXyXeP445JnJm3ML6W5GpDe0+0asI50C0E+Zs/H9ad0ChZg
         qx8ie2/T1WKdK3beWRIjdLO9vVTukai4tWsZTI9k3dofeyMBR8dq/XvkvKW38eeKOdOj
         py11WVZO3pQGZge7mfXSzAUVbgMIUim75kLmr1pVQZ4wilPjIfXYhBm9hk8R56KLi4kh
         WaWXY7JBL9By70lCBT/MMo3SrYd8tEuBRiDBbfi9tGl1fAdFZV9aByHJR/AowVh/VRmI
         MOnw==
X-Gm-Message-State: APjAAAWUBrLoXucB/fEO7nAn4PK+KqvJTvjSefjIPdCmUnUb8C4e0kMw
        mUGrocbZQYQbGI+/1EZzS0sAtg==
X-Google-Smtp-Source: APXvYqya2qNpy+swsErluAaX47OA7iL89LWY5IPgQpfrGkRoHlZUInIbqmt2sfzJ+IqY9mAjDKk4uQ==
X-Received: by 2002:adf:e941:: with SMTP id m1mr54057504wrn.279.1565792972051;
        Wed, 14 Aug 2019 07:29:32 -0700 (PDT)
Received: from bender.baylibre.local (wal59-h01-176-150-251-154.dsl.sta.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id o7sm4202908wmc.36.2019.08.14.07.29.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Aug 2019 07:29:31 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH 09/14] arm64: dts: meson-axg: fix MHU compatible
Date:   Wed, 14 Aug 2019 16:29:13 +0200
Message-Id: <20190814142918.11636-10-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190814142918.11636-1-narmstrong@baylibre.com>
References: <20190814142918.11636-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This fixes the following DT schemas check errors:
meson-axg-s400.dt.yaml: mailbox@ff63c404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index 4a134d29491d..ed59a9e8ebb8 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1116,7 +1116,7 @@
 		};
 
 		mailbox: mailbox@ff63c404 {
-			compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+			compatible = "amlogic,meson-gxbb-mhu";
 			reg = <0 0xff63c404 0 0x4c>;
 			interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0

