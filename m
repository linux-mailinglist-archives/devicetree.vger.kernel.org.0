Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 15FE09A810
	for <lists+devicetree@lfdr.de>; Fri, 23 Aug 2019 09:06:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2405029AbfHWHDE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Aug 2019 03:03:04 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:54738 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2404993AbfHWHDD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Aug 2019 03:03:03 -0400
Received: by mail-wm1-f66.google.com with SMTP id p74so7864203wme.4
        for <devicetree@vger.kernel.org>; Fri, 23 Aug 2019 00:03:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zZM+2enzuUNFCA37SD/7zYxLMBFSG+C8Aa4ksqqieas=;
        b=RcHgUPSetZMb6XVkRBcbgGh3voKANG45YMVzzKFcBxplKZXPJ6qQ79gYxNulJpGOeI
         BpeCqli79E2juPK5/L3Oo09h3P+RbZKuC86ktySK7JHgQhx2cyDTYKiHBr58swEdihU4
         wIIPqLQXAHv5XiPJlJ1rdUXO/cESPQ3k5rg7NMeWBFFOYfwzy3HVS5RdopLunT/guGbA
         33wnYMm0Lg7o7sq2ToCZ7BymmWmuLbcbUAH/roNTnFvHR7OFtunORr5PVt4e+qyB/Z05
         MFFvG6SkRWCPKzHuZzUSdeSWgFEKv2fjE+0PyWUzi9buLFxuU06W9Q6rw+pLi+4916x0
         v8yw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zZM+2enzuUNFCA37SD/7zYxLMBFSG+C8Aa4ksqqieas=;
        b=sFdnSNs7kaJQOHiUwaKhwrVDFUvtRy0wcg/WzRmhx1awIq4kS1B08P960vfeWeXtxS
         eksM6uBVP51FZNrxeKuQT3jbCJi06dQjBVPYdocPYTr6nQZeBO2AVGmbVB5ivK5N/zJ/
         ipkNBciVL5pgO8clAYYtA0qqqkeQLBEh5LVtKmvi3HgQV1ygoEkfEahZrAqpT3Cy86eC
         KnyX5K6UYWIzc6POEm9EEUrTnio0cnsw2+e6QMlG6Z0yo5kpKQWrNcVivMiwByn3l7wC
         RN7WMRsNbrym6Gs7ngedPUouC+zv72VF1WjJxkSxBic67EwbVfPzRDGkAEC/bP06c3Y1
         2YNw==
X-Gm-Message-State: APjAAAX29M7vtFabaYIchgP32juAvTHMCQaYBcY9rGKhVcpbYIsBBRae
        bOuygOEvgva4uF62aXxvvCj4cw==
X-Google-Smtp-Source: APXvYqyk17sTfM7f3T7mT0ImLFGi8x3Ic4MHhGFXmX6vZ1hYbXK3bzb6MkvBUg/eQKrGDTAjN2YO8g==
X-Received: by 2002:a1c:5453:: with SMTP id p19mr3357995wmi.120.1566543780920;
        Fri, 23 Aug 2019 00:03:00 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id a26sm1741833wmg.45.2019.08.23.00.02.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Aug 2019 00:03:00 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [RESEND PATCH v2 07/14] arm64: dts: meson-gx: fix periphs bus node name
Date:   Fri, 23 Aug 2019 09:02:41 +0200
Message-Id: <20190823070248.25832-8-narmstrong@baylibre.com>
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
meson-gxbb-nanopi-k2.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'
meson-gxl-s805x-libretech-ac.dt.yaml: periphs@c8834000: $nodename:0: 'periphs@c8834000' does not match '^(bus|soc|axi|ahb|apb)(@[0-9a-f]+)?$'

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 arch/arm64/boot/dts/amlogic/meson-gx.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
index 74a2cdff0563..6733050d735f 100644
--- a/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
+++ b/arch/arm64/boot/dts/amlogic/meson-gx.dtsi
@@ -451,7 +451,7 @@
 			amlogic,canvas = <&canvas>;
 		};
 
-		periphs: periphs@c8834000 {
+		periphs: bus@c8834000 {
 			compatible = "simple-bus";
 			reg = <0x0 0xc8834000 0x0 0x2000>;
 			#address-cells = <2>;
-- 
2.22.0

