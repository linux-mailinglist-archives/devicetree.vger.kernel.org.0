Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id DEAC15B94C
	for <lists+devicetree@lfdr.de>; Mon,  1 Jul 2019 12:48:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727514AbfGAKsD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Jul 2019 06:48:03 -0400
Received: from mail-wr1-f42.google.com ([209.85.221.42]:40648 "EHLO
        mail-wr1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727489AbfGAKrb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Jul 2019 06:47:31 -0400
Received: by mail-wr1-f42.google.com with SMTP id p11so13273991wre.7
        for <devicetree@vger.kernel.org>; Mon, 01 Jul 2019 03:47:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=J5UzNbuEVQn2Wy0UqdLJeMLyAIRssoP2yykdAjQ2Y/A=;
        b=ZAa0ZIuofgnRBRqOVOreiPd9jhxY4jtM+O12g3AJAvAuYi8cxkgT6R8plBF4werznY
         Aptr7tR9ZaVaL1vwwGSBg7YOLN01xOM2Wx2nZzbX1Mo95QDC0VXZU93xHKxAGgnkpfUE
         2VYZ8U9grr6SH8qKT0XJwSEHKsBEO/AfD2TLJQhCmYCYvs3Q9P6NcBN3Dc3Mj4X/9rRQ
         tp7CkTVxUoGu/idBebG06Z9hWMAcNToYIzEoKP6kRWwuvqxQBqiOB+VdCeuYW6Z9y+MH
         rGwWSh2fSkHjv4KzlSAtgcJL4T4R2b/qd82JvJ4bHjoSz1Dslldu44Wqrg4t9pEgrSqt
         +IWw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=J5UzNbuEVQn2Wy0UqdLJeMLyAIRssoP2yykdAjQ2Y/A=;
        b=T6VtBKbFAru9WZUvGBeK4MHyZb9p5niWgg01yZQkL05LRJwOdKVb339YRLY0WwNexi
         IF3cEkYdT4ydng+GOrTh3Laug6jXQXwmnj3kXeIXPERg+MM5qEODSIuiAojj51SZSE1T
         Y0LMulbtxzpXbM6GtKRR6qKaxS2tmvoATc/+R9D8qlnMiLqs1ZTqERKkLsmU7o9BIt4U
         BIvAbBZXxnX11AnBs7Wv3WerYwZ6rOYVF8vedtIpL3PAmZUfuw5VmEKW4VgizB72q5mI
         qDIokhmIsFtYExzCSsU7JMoyIxsmqgurUHW0wau7wIIUTxY3E1u6YDx0dbQbNua64Sin
         88Hg==
X-Gm-Message-State: APjAAAU6ToWgrgHbjmz0JhtUhz7aJzvf87NVSJGykQBZG+NUW1GcZDjp
        9fJC7EfGuVymjpWvHZCIpvcU+Q==
X-Google-Smtp-Source: APXvYqy/oNXgBo9tyiXqmZZDYUmvF+ZR/X6NeS2F1pewoutaz6zgaPZSLCDGFIqrDM3XN4i0W2nn4w==
X-Received: by 2002:a5d:528d:: with SMTP id c13mr2466415wrv.247.1561978049177;
        Mon, 01 Jul 2019 03:47:29 -0700 (PDT)
Received: from localhost.localdomain (176-150-251-154.abo.bbox.fr. [176.150.251.154])
        by smtp.gmail.com with ESMTPSA id d24sm11658802wra.43.2019.07.01.03.47.28
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 01 Jul 2019 03:47:28 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     jbrunet@baylibre.com, khilman@baylibre.com,
        devicetree@vger.kernel.org
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [RFC 05/11] dt-bindings: soc: amlogic: clk-measure: Add SM1 compatible
Date:   Mon,  1 Jul 2019 12:46:59 +0200
Message-Id: <20190701104705.18271-6-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190701104705.18271-1-narmstrong@baylibre.com>
References: <20190701104705.18271-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the Amlogic SM1 Compatible for the clk-measurer IP.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt b/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
index 6bf6b43f8dd8..3dd563cec794 100644
--- a/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
+++ b/Documentation/devicetree/bindings/soc/amlogic/clk-measure.txt
@@ -11,6 +11,7 @@ Required properties:
 			"amlogic,meson8b-clk-measure" for Meson8b SoCs
 			"amlogic,meson-axg-clk-measure" for AXG SoCs
 			"amlogic,meson-g12a-clk-measure" for G12a SoCs
+			"amlogic,meson-sm1-clk-measure" for SM1 SoCs
 - reg: base address and size of the Clock Measurer register space.
 
 Example:
-- 
2.21.0

