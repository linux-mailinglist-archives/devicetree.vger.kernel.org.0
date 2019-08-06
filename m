Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 6CE2D82D33
	for <lists+devicetree@lfdr.de>; Tue,  6 Aug 2019 09:55:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726834AbfHFHz0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Aug 2019 03:55:26 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43187 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728056AbfHFHz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Aug 2019 03:55:26 -0400
Received: by mail-wr1-f66.google.com with SMTP id p13so12289942wru.10
        for <devicetree@vger.kernel.org>; Tue, 06 Aug 2019 00:55:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NZRqT8V+HbaNyUlq3PdBNLAEq/GOVw1hFRgyTGAZtYU=;
        b=xarmdgAb/WJ9uvxeIe7Vvnuil2dEKchf6tYjy8/jZl8nFLLjSJPqAS0O5pOi/iLqEP
         LNTPcNvW/M+iilAxfnXWBex9Gej95dQnl8JyhGtmVJjcOCe1bM1fTpkGTxdABhKl8Lbd
         i7h607XcKNy/vmaj9QEeMNQRJHB4XjeCEXcRe62ehN+bjsC6uoW7Doqy+hsTr91TUg0w
         HTpi3lWeBPbGzHmKNxlDrENj91LydNecOWqUNEAeNMtx4KYRndhdjatqBgUl8hobEd2S
         90f5DI8yESaDekqlY00MwIwgEMyfrabfwIpXEmHYw5OTqIZyFncYfjFWNv74xCxekTie
         Uu5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=NZRqT8V+HbaNyUlq3PdBNLAEq/GOVw1hFRgyTGAZtYU=;
        b=SekuBxcpfzFsLJjpEznY3EIaUFyrlXiJ9W7R4JJTb2nz1Y6afzxtSloEhydjk4t+wo
         2KuvlJ6WuimQ/8Kp7KYNvv7D+FoCxQkbu1hRAjs9wVEXJeDZtQTPvsyXbCicoUowx32c
         Elav456Qal51RbYTUeQ8HFT49PqURibdS/O+S+c/1WODFbSxLZ3bUkUK94c7ZfqnZUtr
         onVYWH3tyO7TZiM/aCBBr5oT9Bjr8Zm5dCxlvpQ5Knb/mzDH0n2lyCkYHlmRjS0DO59T
         cQSntcTRF+bvvKvWZ+eO2oNjCkcs/VJIr9lKtSEPT4m0CvpDLKLJyXHjaXAj1aLsFFRL
         EuTA==
X-Gm-Message-State: APjAAAXilgaGsQHytoL12VoB0XtNa/xfyTC64v9MeonnU/5WL5dbFzdu
        EofhtEDFumF/CAUpjtel0zLV+w==
X-Google-Smtp-Source: APXvYqzfaTBkqaGB//oMRTCwkGNn27u+6JoIXAVBcyBbQWY0HtlhPHe6dXf75sino24ZgDU9UIpu+A==
X-Received: by 2002:a05:6000:1007:: with SMTP id a7mr3111062wrx.172.1565078123923;
        Tue, 06 Aug 2019 00:55:23 -0700 (PDT)
Received: from bender.baylibre.local (lmontsouris-657-1-212-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.gmail.com with ESMTPSA id q18sm107379252wrw.36.2019.08.06.00.55.23
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Tue, 06 Aug 2019 00:55:23 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     khilman@baylibre.com
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        linux-amlogic@lists.infradead.org, linux-kernel@vger.kernel.org,
        Christian Hewitt <christianshewitt@gmail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH] dt-bindings: arm: amlogic: fix x96-max/sei510 section in amlogic.yaml
Date:   Tue,  6 Aug 2019 09:55:20 +0200
Message-Id: <20190806075520.14652-1-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Christian Hewitt <christianshewitt@gmail.com>

Move amediatech,x96-max and seirobotics,sei510 to the S905D2 section and
update the S905D2 description to S905D2/X2/Y2.

Signed-off-by: Christian Hewitt <christianshewitt@gmail.com>
Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/arm/amlogic.yaml | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/amlogic.yaml b/Documentation/devicetree/bindings/arm/amlogic.yaml
index 325c6fd3566d..4668064dd7e5 100644
--- a/Documentation/devicetree/bindings/arm/amlogic.yaml
+++ b/Documentation/devicetree/bindings/arm/amlogic.yaml
@@ -91,13 +91,11 @@ properties:
       - description: Boards with the Amlogic Meson GXL S905X SoC
         items:
           - enum:
-              - amediatech,x96-max
               - amlogic,p212
               - hwacom,amazetv
               - khadas,vim
               - libretech,cc
               - nexbox,a95x
-              - seirobotics,sei510
           - const: amlogic,s905x
           - const: amlogic,meson-gxl
 
@@ -129,10 +127,12 @@ properties:
           - const: amlogic,a113d
           - const: amlogic,meson-axg
 
-      - description: Boards with the Amlogic Meson G12A S905D2 SoC
+      - description: Boards with the Amlogic Meson G12A S905D2/X2/Y2 SoC
         items:
           - enum:
+              - amediatech,x96-max
               - amlogic,u200
+              - seirobotics,sei510
           - const: amlogic,g12a
 
       - description: Boards with the Amlogic Meson G12B S922X SoC
-- 
2.22.0

