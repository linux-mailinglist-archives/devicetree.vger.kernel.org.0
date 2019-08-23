Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5AB789A81E
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2392511AbfHWHD1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:27 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:44692 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2405020AbfHWHDE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:04 -0400
Received: by mail-wr1-f67.google.com with SMTP id p17so7588613wrf.11
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=oQGMBKaIheYnXF/WLoo5OGX0tV7WLbdJIx9rXGOlw/k=;
        b=mVmbh45be4lh02qKYGB1ppWPUAXqpYSlKJfU62Y7zJ1xdVVEmByScDchKh+pHwEFRb
         5oAhmWgIVQibnTwD9F21vmyPl2JHo+goiEn3kA36QXesSw6b4tQelRGrTJ/mdPn5WGpi
         IazIx87rcse7UykBS/zFCfoQmR174qxqGeYUXDAXhiTkGrGMoOWgB5gHqKWQjh5zczK0
         Tdc3b3WJSAgyvnZlF6SGFhcd7F4KuIj/8otVnrc/SZjAdChl3RB8qgpXP3EUbwQEDUdg
         QlpVdTTr8ADEMzrwyA5MWOkVarTraqRMKR/Y8i1ZDTFGrSbwKSoprGIUh/0e2pmAEtN7
         uCjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=oQGMBKaIheYnXF/WLoo5OGX0tV7WLbdJIx9rXGOlw/k=;
        b=LxhQmiQZYvBHqlZJFO4eigcKemieiur7kITX6NYC73qKyAlXFxm2WLO/v8yxTBUDXp
         yLRuiKtgYFyNIa/HDyCwNzdfj6AvCZUn1tQaeh47yy39JyWFMMG1tTxc+3Wo155xIcT9
         +qo/NyyJsDl4f8iAl8cz95FUsw8Ewbix/lyQXGf7yIYGlZlJuQHbFvXIKCq7H/VByeuW
         nz+Hg+j9ylab58uMkjGOC+YYyV8hYQYQ9fqrAglPEY08vgGHs5JxG5x5ui4GhM+iNs8Y
         ey1Th13dV2NTncQ0TVSH1vZpgncEg65mm18/jB5K5GeoYQvarG6xfhFVsBCXmMCQ6uEQ
         setA==
X-Gm-Message-State: APjAAAVDFhD3pwrM7KeU1VIdsBvAd/bBzQ1IKWERf1HwEEV0E8MvEETD
        OZ6BbZqLsU3iyxnjinm4051cXQ==
X-Google-Smtp-Source: APXvYqzwxUVLowuS3xao7n+i7OlRwLWmah+4GSU46RDQCt7NTemeu1LZlIIg7p8uweotJYEbZaHFCA==
X-Received: by 2002:adf:e4c6:: with SMTP id v6mr2982750wrm.315.1566543782721;
        Fri, 23 Aug 2019 00:03:02 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.03.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RESEND PATCH v2 09/14] arm64: dts: meson-axg: fix MHU compatible
Date:   Fri, 23 Aug 2019 09:02:43 +0200
Message-Id: <20190823070248.25832-10-narmstrong@baylibre.com>
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
meson-axg-s400.dt.yaml: mailbox@ff63c404: compatible:0: 'amlogic,meson-gx-mhu' is not one of ['amlogic,meson-gxbb-mhu']

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 arch/arm64/boot/dts/amlogic/meson-axg.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
index acc2feb8fd89..82919b106010 100644
--- a/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-axg.dtsi
@@ -1118,7 +1118,7 @@
 		};
 
 		mailbox: mailbox@ff63c404 {
-			compatible = "amlogic,meson-gx-mhu", "amlogic,meson-gxbb-mhu";
+			compatible = "amlogic,meson-gxbb-mhu";
 			reg = <0 0xff63c404 0 0x4c>;
 			interrupts = <GIC_SPI 208 IRQ_TYPE_EDGE_RISING>,
 				     <GIC_SPI 209 IRQ_TYPE_EDGE_RISING>,
-- 
2.22.0

