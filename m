Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 90E23118BB
	for <lists+devicetree@lfdr.de>; Thu,  2 May 2019 14:12:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726406AbfEBMK6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 May 2019 08:10:58 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:41905 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726189AbfEBMK5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 May 2019 08:10:57 -0400
Received: by mail-wr1-f67.google.com with SMTP id c12so3001622wrt.8
        for <devicetree@vger.kernel.org>; Thu, 02 May 2019 05:10:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=WV5PITTv1apIvGOQpl0Oue1rXCYUzZjLQa3jrOACL0k=;
        b=fGFv2mw4iL0cv2bG/GRA7d1X4HgNeWqkFUlKM+Y/IqRoYZkLd0lJQcSAr9hZhYwfJ6
         hOPQ2Lvq9gbk+Sd5w5JijwJEeNRrewo04HsjsjC4UFrKfgiKFa9pYpbbdZ3VFnEkmYtV
         7apA/VD3apl7Qf0l8II8mQYF0IM7z5F7ujT3GPaile4zDTk/anUVf5ndCF1HvidAejb9
         RDNZpwoYffe52dGwv0N9zyhFGxjRfihGe58Cb++wdZZwKD9NW1ztJc36uCy3vE+0uRn5
         tZDcSJcNeWAmC+5W/TabQR/vaJWPWnNCVawCbNyKLSflnfO05LztfL+RP8FkKJh4TDuV
         9hFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=WV5PITTv1apIvGOQpl0Oue1rXCYUzZjLQa3jrOACL0k=;
        b=rCJCVoDRcPorGHvzlczxycJjtprDBmNyKenUdAWWvw8nIxIuk6vItahln9504LtaK+
         I1HLHWEQMkFiyTjXZ9ZO4Gb0IPnQ+3eQbLk4S2ZxLzkGWrxkWvcJLvH3IpoYwJq2ONzK
         Gb58NzqU16vf11M8Rni9nYVZubHVDJ9GRaVBZyYLnDc08HGJCNEZ8nZAqoh7ZGj+d1Yc
         tID9gEitCu+OcS+qjmdw7TwsFX2EfPbellc18guPpyCrkmoW+pXtDckDitnTlhCgXCmh
         Kphq42wqijPQI3Xup0dBwXAJQsfsUKqbywSXTbcu4O1Z+sSCOc4qnX9Q/tOkwslXCUua
         iH2Q==
X-Gm-Message-State: APjAAAWNqk1Dm9cBypIbD02us9bBAf8BNOY5fzfYTlLqlcfjmuC+8Esf
        qvxFbrc68CN5trDOlpwNt63hcw==
X-Google-Smtp-Source: APXvYqxHbdw86DQT9DLiLhVUZhwVSNryaz0tC87K271cS45Tz+OjI7rgzVXULNJc92nQD2UrLXWBOQ==
X-Received: by 2002:a5d:5383:: with SMTP id d3mr2573633wrv.105.1556799055563;
        Thu, 02 May 2019 05:10:55 -0700 (PDT)
Received: from localhost.localdomain (aputeaux-684-1-8-187.w90-86.abo.wanadoo.fr. [90.86.125.187])
        by smtp.gmail.com with ESMTPSA id u9sm3648348wmd.14.2019.05.02.05.10.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 May 2019 05:10:54 -0700 (PDT)
From:   Fabien Parent <fparent@baylibre.com>
To:     lgirdwood@gmail.com, broonie@kernel.org, robh+dt@kernel.org,
        mark.rutland@arm.com, matthias.bgg@gmail.com, perex@perex.cz,
        tiwai@suse.com, kaichieh.chuang@mediatek.com,
        shunli.wang@mediatek.com
Cc:     alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        Fabien Parent <fparent@baylibre.com>
Subject: [PATCH 2/5] dt-bindings: sound: Add MT8516 AFE PCM bindings
Date:   Thu,  2 May 2019 14:10:38 +0200
Message-Id: <20190502121041.8045-3-fparent@baylibre.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190502121041.8045-1-fparent@baylibre.com>
References: <20190502121041.8045-1-fparent@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add documentation for the bindings of the MT8516 AFE PCM driver.

Signed-off-by: Fabien Parent <fparent@baylibre.com>
---
 .../bindings/sound/mt8516-afe-pcm.txt         | 28 +++++++++++++++++++
 1 file changed, 28 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt

diff --git a/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt b/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
new file mode 100644
index 000000000000..c5fb3c55a7f4
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/mt8516-afe-pcm.txt
@@ -0,0 +1,28 @@
+Mediatek AFE PCM controller for mt8516
+
+Required properties:
+- compatible:  "mediatek,mt8516-audio"
+- interrupts: should contain AFE interrupt
+- clocks: Must contain an entry for each entry in clock-names
+- clock-names: should have these clock names:
+		"top_pdn_audio",
+		"aud_dac_clk",
+		"aud_dac_predis_clk",
+		"aud_adc_clk";
+
+Example:
+
+
+	afe: mt8516-afe-pcm@11140000  {
+		compatible = "mediatek,mt8516-audio";
+		reg = <0 0x11140000 0 0x1000>;
+		interrupts = <GIC_SPI 120 IRQ_TYPE_LEVEL_LOW>;
+		clocks = <&topckgen CLK_TOP_AUDIO>,
+			 <&audiotop CLK_AUD_DAC>,
+			 <&audiotop CLK_AUD_DAC_PREDIS>,
+			 <&audiotop CLK_AUD_ADC>;
+		clock-names = "top_pdn_audio",
+			      "aud_dac_clk",
+			      "aud_dac_predis_clk",
+			      "aud_adc_clk";
+	};
-- 
2.20.1

