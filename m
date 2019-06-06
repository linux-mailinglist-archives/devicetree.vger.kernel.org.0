Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 5A98D37919
	for <lists+devicetree@lfdr.de>; Thu,  6 Jun 2019 18:06:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729559AbfFFQFZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Jun 2019 12:05:25 -0400
Received: from mail-wr1-f66.google.com ([209.85.221.66]:43258 "EHLO
        mail-wr1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1729502AbfFFQFZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Jun 2019 12:05:25 -0400
Received: by mail-wr1-f66.google.com with SMTP id r18so3003534wrm.10
        for <devicetree@vger.kernel.org>; Thu, 06 Jun 2019 09:05:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=rvJtQg+661w+5Ir5BueWWyrmozrX3JR+SPJBE4ojBNo=;
        b=jKS+eKDSrusvE4fOXgbjaJYnOOETrRi8VDvLbQHjv286fcyfl1Jf+Dr3KZBo+AkUmN
         CzhAyGvFq6wMJdudlZ9GsKjKC5gvSsb1VWIlmL+pu8EqaUFgpkjf/A3hKMxM5llDvqeo
         wBjOK5BtC1cnsPxiMa+ZkdHVsdiPVTzLR4Gh0ph3sKKClCmrsyRkEFCoQKkY+PhgLCie
         SkCKG7mzDiOfbwTbG7EprK5XtMgY9clnWQvagYN8hQcNydQkgNptpecVhxu3v6ai+S6x
         vrVHoMlGhkNoDL4c8hghYVxK2lqpZwRwYxdhd4AAkHVHBL710v0rUHAmnHc7IEsRAmTe
         4ptg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=rvJtQg+661w+5Ir5BueWWyrmozrX3JR+SPJBE4ojBNo=;
        b=dGlrffyLx6dY2mr7Dm1buTMyv53qvqU3HgjdMIITe2UThkwRZbAg8MrzH13ObJtxDY
         5U8En/ouhFemRTlzFI4y8zKEfsu5ZaAbUUtb7CJsEZTsFvg48lFFotvyqAjW2pUhbwQ7
         RIfO6Il3E8t9xEnBu9KubqVgzLGYt5opP8gMsuAEsVMll/W95KiC7HSX0XqLxapwfhd7
         YWxjJzc+4s8CAfrJRUvWQsNqf4jiCfmL0PfkOrGGjt9NiwiFXXMoMGKTb61L5FXsTYrL
         29mwb2MZiEsuo4b5NOZiXXxSrru/OgscJeo+v7QI6VGFblbJ0ibZEYbnheNpoG6xfgFB
         SeXg==
X-Gm-Message-State: APjAAAXDhOUolaWwas2WRBoUnQWg9sdzInJkByniIClBQT3AsFR2+qE9
        AAArdmcvZrydZwXtPvlICmWlDXHwsV0=
X-Google-Smtp-Source: APXvYqwbFTvVJ2mShvZcluhdtrxZgL7Kyql6aeeQer/SjwvHzghqH6eDov9BoMhTRE3IsuKn5vGagg==
X-Received: by 2002:a5d:5702:: with SMTP id a2mr15184445wrv.89.1559837123457;
        Thu, 06 Jun 2019 09:05:23 -0700 (PDT)
Received: from mjourdan-pc.numericable.fr (abo-99-183-68.mtp.modulonet.fr. [85.68.183.99])
        by smtp.gmail.com with ESMTPSA id t140sm2180901wmt.0.2019.06.06.09.05.22
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 06 Jun 2019 09:05:22 -0700 (PDT)
From:   Maxime Jourdan <mjourdan@baylibre.com>
To:     Mauro Carvalho Chehab <mchehab@kernel.org>,
        Hans Verkuil <hans.verkuil@cisco.com>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v10 1/3] dt-bindings: media: add Amlogic Video Decoder Bindings
Date:   Thu,  6 Jun 2019 18:05:10 +0200
Message-Id: <20190606160512.26211-2-mjourdan@baylibre.com>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190606160512.26211-1-mjourdan@baylibre.com>
References: <20190606160512.26211-1-mjourdan@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the meson vdec dts node.

Signed-off-by: Maxime Jourdan <mjourdan@baylibre.com>
Reviewed-by: Rob Herring <robh@kernel.org>
---
 .../bindings/media/amlogic,vdec.txt           | 71 +++++++++++++++++++
 1 file changed, 71 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/media/amlogic,vdec.txt

diff --git a/Documentation/devicetree/bindings/media/amlogic,vdec.txt b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
new file mode 100644
index 000000000000..aabdd01bcf32
--- /dev/null
+++ b/Documentation/devicetree/bindings/media/amlogic,vdec.txt
@@ -0,0 +1,71 @@
+Amlogic Video Decoder
+================================
+
+The video decoding IP lies within the DOS memory region,
+except for the hardware bitstream parser that makes use of an undocumented
+region.
+
+It makes use of the following blocks:
+
+- ESPARSER is a bitstream parser that outputs to a VIFIFO. Further VDEC blocks
+then feed from this VIFIFO.
+- VDEC_1 can decode MPEG-1, MPEG-2, MPEG-4 part 2, MJPEG, H.263, H.264, VC-1.
+- VDEC_HEVC can decode HEVC and VP9.
+
+Both VDEC_1 and VDEC_HEVC share the "vdec" IRQ and as such cannot run
+concurrently.
+
+Device Tree Bindings:
+---------------------
+
+VDEC: Video Decoder
+--------------------------
+
+Required properties:
+- compatible: value should be different for each SoC family as :
+	- GXBB (S905) : "amlogic,gxbb-vdec"
+	- GXL (S905X, S905D) : "amlogic,gxl-vdec"
+	- GXM (S912) : "amlogic,gxm-vdec"
+- reg: base address and size of he following memory-mapped regions :
+	- dos
+	- esparser
+- reg-names: should contain the names of the previous memory regions
+- interrupts: should contain the following IRQs:
+	- vdec
+	- esparser
+- interrupt-names: should contain the names of the previous interrupts
+- amlogic,ao-sysctrl: should point to the AOBUS sysctrl node
+- amlogic,canvas: should point to a canvas provider node
+- clocks: should contain the following clocks :
+	- dos_parser
+	- dos
+	- vdec_1
+	- vdec_hevc
+- clock-names: should contain the names of the previous clocks
+- resets: should contain the parser reset
+- reset-names: should be "esparser"
+
+Example:
+
+vdec: video-decoder@c8820000 {
+	compatible = "amlogic,gxbb-vdec";
+	reg = <0x0 0xc8820000 0x0 0x10000>,
+	      <0x0 0xc110a580 0x0 0xe4>;
+	reg-names = "dos", "esparser";
+
+	interrupts = <GIC_SPI 44 IRQ_TYPE_EDGE_RISING>,
+		     <GIC_SPI 32 IRQ_TYPE_EDGE_RISING>;
+	interrupt-names = "vdec", "esparser";
+
+	amlogic,ao-sysctrl = <&sysctrl_AO>;
+	amlogic,canvas = <&canvas>;
+
+	clocks = <&clkc CLKID_DOS_PARSER>,
+		 <&clkc CLKID_DOS>,
+		 <&clkc CLKID_VDEC_1>,
+		 <&clkc CLKID_VDEC_HEVC>;
+	clock-names = "dos_parser", "dos", "vdec_1", "vdec_hevc";
+
+	resets = <&reset RESET_PARSER>;
+	reset-names = "esparser";
+};
-- 
2.21.0

