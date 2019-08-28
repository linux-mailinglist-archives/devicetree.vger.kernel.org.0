Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2DB42A049C
	for <lists+devicetree@lfdr.de>; Wed, 28 Aug 2019 16:18:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726711AbfH1OSX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 28 Aug 2019 10:18:23 -0400
Received: from mail-wm1-f66.google.com ([209.85.128.66]:51480 "EHLO
        mail-wm1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726550AbfH1OSW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 28 Aug 2019 10:18:22 -0400
Received: by mail-wm1-f66.google.com with SMTP id k1so263036wmi.1
        for <devicetree@vger.kernel.org>; Wed, 28 Aug 2019 07:18:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mcL3AvqHT7bRzBjlZdaYirVmcHrrTcNQrMrMxpM5Yus=;
        b=WoMSFH+jbYdpYIJW/cgs8flobaRwChKfAONQD4wALEJE4gjSTlGakMSVfTGQDWzyV1
         9rXkwTT5x8+p/jqtsNQq/CI6RgWtLm0uAPtYiaQasGq6yOm6HR+GcHa/TeY97+4J5u6J
         /p+vB2taIXzf7Uuuz10JcpYmv5J6FJ7IeI/ye2w5TOHnhLqJ/NJyhU67GOquPMYWNZPO
         BS9qD7I7a4hyiWR7DiY+U+X8DK8PRSm/gNWUNECJXfVFX0jUVTyTyiQlaxsf3a+enRkq
         D2X82syf5DJtvmSeJydBaMGuD1AbP0YRdlUQeNf0y7wofl19LBruc8DtHC7oN5vd2kGC
         ivgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mcL3AvqHT7bRzBjlZdaYirVmcHrrTcNQrMrMxpM5Yus=;
        b=LPz0CEQGnuXseCeDmfq0lb2PAUvgqXv/AgjyHP9CrSronYDbmueL+Z1zTbo+4IO96n
         wDDdGnozZpMU7FTM7HYNkALwNHQtft6N+x9NzCPMe7uD6oJsZyM9h4+AYzTeCKISCQyT
         zvN6HJ0N4EVVyeGuyye9re+o2HQY4Xt9wKCHoHqRjDs0XBxtIaYegu1HpgtAaRYkV34K
         Pe5E22elgap9c07oItrqrCP66a0b/VH+5eHf7dKlg1/TQRb55bBOJsS5/v/ifF5BCcIB
         5rloZCQWKzsvxkk/y2VAOojFwcfyxukd4TTvvVoh3qKCRFdzjO9qTIrKF3gAv+eu4bM3
         QFgA==
X-Gm-Message-State: APjAAAXFPYl8rXSt9hdU9ccoIlFb83GexQVTvJVmPWcL8/d1sWP88L/v
        kz4v459P74BK7CtRqu/C4F2mIQ==
X-Google-Smtp-Source: APXvYqwn1R9gYJiKlQU8k/I2epaSnpNLgXrnH+gfIwXHbGoEEGtTexblMHvFit2KgcvAsHLnTvr1Sg==
X-Received: by 2002:a05:600c:2487:: with SMTP id 7mr5302979wms.141.1567001900084;
        Wed, 28 Aug 2019 07:18:20 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id u8sm3022354wmj.3.2019.08.28.07.18.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 28 Aug 2019 07:18:19 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
Subject: [PATCH v3 2/3] dt-bindings: arm: amlogic: add Amlogic SM1 based Khadas VIM3L bindings
Date:   Wed, 28 Aug 2019 16:18:15 +0200
Message-Id: <20190828141816.16328-3-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190828141816.16328-1-narmstrong@baylibre.com>
References: <20190828141816.16328-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The Khadas VIM3 is also available as VIM3L with the Pin-to-pin compatible
Amlogic SM1 SoC in the S905D3 variant package.

Change the description to match the S905X3/D3/Y3 variants like the G12A
description, and add the khadas,vim3l compatible.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index b48ea1e4913a..99015cef8bb1 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -150,9 +150,10 @@ properties:
           - const: amlogic,s922x
           - const: amlogic,g12b
 
-      - description: Boards with the Amlogic Meson SM1 S905X3 SoC
+      - description: Boards with the Amlogic Meson SM1 S905X3/D3/Y3 SoC
         items:
           - enum:
               - seirobotics,sei610
+              - khadas,vim3l
           - const: amlogic,sm1
 ...
-- 
2.22.0

