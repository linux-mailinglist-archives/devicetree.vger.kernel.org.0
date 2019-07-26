Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 91F887661F
	for <lists+devicetree@lfdr.de>; Fri, 26 Jul 2019 14:46:57 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726846AbfGZMqv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Jul 2019 08:46:51 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:35112 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726287AbfGZMqu (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Jul 2019 08:46:50 -0400
Received: by mail-wr1-f67.google.com with SMTP id y4so54342099wrm.2
        for <devicetree@vger.kernel.org>; Fri, 26 Jul 2019 05:46:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=q2ZYPAYax6bQxbm/1YpeRuib4ukPUXFCF68rf3gTwXE=;
        b=UExMW0UUk/saslNhvncL7VmYbPBukVTDIwiQ9JEDm69304VqE2iV0GPHIMb+GUPi9Q
         XdND6CCt4qIO7Z4R//L+VDKTJAUY+3+Y1HzYcDO2y4mr4QOkGhwHY3+9qwH1jcJt6sgE
         CoiuxUwVJ1pmjRomS01ZwYEr690+g6Hf0aYHNDKua/QYqVCnK8s+lUjCoMqMBGPuokIZ
         gewunm6XF2lbta7rgn6eIKlLbS4HzeUPan8WI9YsybAITkTOZdv07nFpAQE8F/0jpMWr
         1C43R+9oAIwvWjl4yunSxC0lKcsRwrKAEgJ9Muul1S0BDHCmeNzV8cK0Ds3kH/DwncuW
         bJPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=q2ZYPAYax6bQxbm/1YpeRuib4ukPUXFCF68rf3gTwXE=;
        b=Ary0VNa/FrQVgjcjEz1IDqv6eQ0H3Z3gjDwpa/sWeY3WAlJbW1Au8RkqIlJ150zOIl
         an/H+J7KmyAaKDAydPg6JxsDXksvXA+328ew2okfDm85fUvW2t0Squ0PpY9YG89u42MK
         CW5r3AhBsNGNe34r1Km+pqc0HxhGbuc1nSZj4gwEZGtzVdkFihzIQ00gPgjnQbuSfw+5
         TKYx9Pia6pLhFsy/nJa77seDKx6Q6tCDiNytwBAdy4e9RQY/dqDpdN5bWSetkU6Gfdc5
         LHbjUgQprSRsD2mUxKPPCMjSaUvjTSPFNINLegTr0b38OAJuSmWMj4pmmjFhvGHx/1uu
         C9xA==
X-Gm-Message-State: APjAAAWQxoDbspnU+C6CB8R20Fx/paPJW3q23yyVs5UGKEpoMaRRFKfr
        v4db3cB6pbV+XnJW0JlKe5Byzg==
X-Google-Smtp-Source: APXvYqwqpHIX1Hp7OItyBHPULfeNjzdPhmgqs5iWOD8M1voMJHDkAIcMIUA10pnpZcFezyDpSX8tag==
X-Received: by 2002:a05:6000:3:: with SMTP id h3mr16592055wrx.114.1564145209279;
        Fri, 26 Jul 2019 05:46:49 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
        by smtp.gmail.com with ESMTPSA id x16sm39090124wmj.4.2019.07.26.05.46.48
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 26 Jul 2019 05:46:48 -0700 (PDT)
From:   Maxime Jourdan <mjourdan@baylibre.com>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Subject: [PATCH 1/3] dt-bindings: media: amlogic,vdec: add default compatible
Date:   Fri, 26 Jul 2019 14:46:37 +0200
Message-Id: <20190726124639.7713-2-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190726124639.7713-1-mjourdan@baylibre.com>
References: <20190726124639.7713-1-mjourdan@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The first version of the bindings is missing a generic compatible that
is used by the base node (GX), and then extended by the SoC device trees
(GXBB, GXL, GXM)

Also change the example to use "video-codec" instead of "video-decoder",
as the former is the one used in almost all cases when it comes to video
decode/encode accelerators.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
---
 Documentation/devicetree/bindings/media/amlogic,vdec.txt | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/Documentation/devicetree/bindings/media/amlogic,vdec.txt b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
index aabdd01bcf32..9b6aace86ca7 100644
--- a/Documentation/devicetree/bindings/media/amlogic,vdec.txt
+++ b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
@@ -26,6 +26,7 @@ Required properties:
 	- GXBB (S905) : "amlogic,gxbb-vdec"
 	- GXL (S905X, S905D) : "amlogic,gxl-vdec"
 	- GXM (S912) : "amlogic,gxm-vdec"
+	followed by the common "amlogic,gx-vdec"
 - reg: base address and size of he following memory-mapped regions :
 	- dos
 	- esparser
@@ -47,8 +48,8 @@ Required properties:
 
 Example:
 
-vdec: video-decoder@c8820000 {
-	compatible = "amlogic,gxbb-vdec";
+vdec: video-codec@c8820000 {
+	compatible = "amlogic,gxbb-vdec", "amlogic,gx-vdec";
 	reg = <0x0 0xc8820000 0x0 0x10000>,
 	      <0x0 0xc110a580 0x0 0xe4>;
 	reg-names = "dos", "esparser";
-- 
2.22.0

