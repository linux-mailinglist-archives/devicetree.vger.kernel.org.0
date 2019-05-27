Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E1B9A2B729
	for <lists+devicetree@lfdr.de>; Mon, 27 May 2019 16:02:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726545AbfE0OCN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 May 2019 10:02:13 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43505 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726114AbfE0OCN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 May 2019 10:02:13 -0400
Received: by mail-wr1-f66.google.com with SMTP id l17so8656325wrm.10
        for <devicetree@vger.kernel.org>; Mon, 27 May 2019 07:02:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=flCBkYYx+PdHsv3XsjTv06FvsWqxIYgVPOMABFKuON0=;
        b=C3tyRMtkKESDLxtFYlgpiQcewolwEMTiUIVBDr7x3PEKYiuhwu9mydcq7rXOn2Zpj+
         OsuMTPvCWBndgt6LyHD0GA9FYGZQeIC47jc5XYgtkPzOviz/fiWEo0zQt2lrwinFXRw7
         AOQywD7O3Vz97NW2v2vgrY16D0cQXyYbwglSDfrHpxFOcRWboS0TlNGFqJTFo22D8jYV
         wbyfqlGLlr9AaDpY+9idLlBePOMCpeDmzG9oyYN3hWqijW5KY8HYkIsk+VnI/TjhtkxB
         uhWxJU59bNUzA8PmH5dgVa+CBC3ElbIPx/+MJT47AzpEUlGHGncZEGtkj+UEBoF5OS5n
         rlLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=flCBkYYx+PdHsv3XsjTv06FvsWqxIYgVPOMABFKuON0=;
        b=NV6+siXG540igp6vlgCjnZbyRe8tDZTNAGnxKTn8R8XR0ujqXfQY6B+HJ456yYiHt3
         9C/m5ASNGrucn6anbGnApKrhJoPcd/g2apWFl8nhQyFq5INXsOrmV6U6rb/1SI2+kekE
         +ZFk9ox0kEmqYUjAM1sDmfosghOhd8rS7ZvAR5QhzazpjzkQSpK2cg0PHtpTAoTjYsYy
         wk1hv1OGhXGujRJlaizTgTjfq5afUbcapYrJcSu5NozFPfIozs+0PVKL7ffMCvjKJdMs
         XSkTj6h16D2+t10szbAox1f5Ys8QxcpJA1D/k+k32Y8YyqZPA1/z+zS9POSgklFQuvAs
         Awzg==
X-Gm-Message-State: APjAAAXnDmXy5mS7NVq8N8QGjxUBYQZ1Frk2ov0wKvj4Pq2AuuNoyQpP
        YNmiZV2RxAJVOmDOC+5MFkHEdA==
X-Google-Smtp-Source: APXvYqzB79oAEKLqaqNxNAfhu1XtKKfKofuiCpo+cHunEcCqE0tpQhb0Z0CVOVDbv88FoAnNyf/Ytw==
X-Received: by 2002:adf:fc92:: with SMTP id g18mr11215057wrr.174.1558965731559;
        Mon, 27 May 2019 07:02:11 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id s17sm8231628wmj.15.2019.05.27.07.02.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 27 May 2019 07:02:10 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com, devicetree@vger.kernel.org
Cc:     Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Rob Herring <robh@kernel.org>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>
Subject: [PATCH v4 1/3] dt-bindings: arm: amlogic: add G12B bindings
Date:   Mon, 27 May 2019 16:02:04 +0200
Message-Id: <20190527140206.30392-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190527140206.30392-1-narmstrong@baylibre.com>
References: <20190527140206.30392-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add compatible for the Amlogic G12B SoC, sharing most of the
features and architecture with the G12A SoC.

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
Reviewed-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 6d5bb493db03..28115dd49f96 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -137,4 +137,8 @@ properties:
               - amlogic,u200
           - const: amlogic,g12a
 
+      - description: Boards with the Amlogic Meson G12B S922X SoC
+        items:
+          - const: amlogic,g12b
+
 ...
-- 
2.21.0

