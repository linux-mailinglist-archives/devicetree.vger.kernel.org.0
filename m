Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EC6D83AE44C
	for <lists+devicetree@lfdr.de>; Mon, 21 Jun 2021 09:42:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230175AbhFUHoW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Jun 2021 03:44:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50520 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbhFUHoU (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Jun 2021 03:44:20 -0400
Received: from mail-pg1-x532.google.com (mail-pg1-x532.google.com [IPv6:2607:f8b0:4864:20::532])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D358DC061574
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 00:42:00 -0700 (PDT)
Received: by mail-pg1-x532.google.com with SMTP id g22so13467040pgk.1
        for <devicetree@vger.kernel.org>; Mon, 21 Jun 2021 00:42:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PcRAvrQip+1WJuNclasUdgOdAuaWVTSb28lQVa+Hq0U=;
        b=PW1xTA2/2xO4PqExn5V1DOomUzRaLUlMK7VPvDZAnglAjgj3HF0HR4tTvM1Jyq4Xo/
         lbz8+BPcBz3r6RVcMPnk5m2CUnlfe6Y1yZGbO3GZ9ucEhXHnuWrpQe9DBX2P9BN4xpy/
         k0U3/0P/720ja+nHXJ775gb7N3AE3nuCG4Z3E=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=PcRAvrQip+1WJuNclasUdgOdAuaWVTSb28lQVa+Hq0U=;
        b=Yp0onzAWqzN6XWrDVB5SM4zrcN0/qiDLtYQIyw5HIdAd9F/J+Lne9DsN9cgAXZlJxF
         Zu/S43idVc5vpBFUfxDtwBu9My5U5XBrRjoUbOtOEN0M/SbehHXFST7FO4DZVy6TBUF0
         dQBz3pahP40gGeanHYvLmoG/Uz5p5Kiidq98116mkhyDWVulFP7A/kmu+YuKZiXf2Rm5
         TjL8pk/fxF5WokeFAmPKx0yYapLGyCMiwtDjx/e+DN3kLfBdD/N9cvAuseo+mA6+j6Dn
         h2BlI5YSXZ3GMozPqPP3Zjyfnbhec5ikv0E1nFvpGTvKCxfvo6cvbosle+2nhxu9DMm4
         q32g==
X-Gm-Message-State: AOAM533ZI9FRZECSydr+bWt/SNQj0mQXgEcEDPOU0UM5ir5OwvTtU/gz
        x43eazwivFqvP4hn5U5yMiAGNQ==
X-Google-Smtp-Source: ABdhPJxkwpEFihejVk1nobo1GrlcMvMr+6qs8f9VpwqRVo8xZY9eo8LzrK9zu5A5PICZlxCe0KZu7w==
X-Received: by 2002:a63:e245:: with SMTP id y5mr22455461pgj.171.1624261320340;
        Mon, 21 Jun 2021 00:42:00 -0700 (PDT)
Received: from judyhsiao-p920.tpe.corp.google.com ([2401:fa00:1:10:5a92:9d6d:3875:d2ba])
        by smtp.gmail.com with ESMTPSA id 10sm11954195pfh.174.2021.06.21.00.41.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Jun 2021 00:41:59 -0700 (PDT)
From:   Judy Hsiao <judyhsiao@chromium.org>
To:     broonie@kernel.org
Cc:     Taniya Das <tdas@codeaurora.org>,
        Rohit kumar <rohitkr@codeaurora.org>,
        Banajit Goswami <bgoswami@codeaurora.org>,
        Patrick Lai <plai@codeaurora.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jaroslav Kysela <perex@perex.cz>,
        Takashi Iwai <tiwai@suse.com>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>, dianders@chromium.org,
        dgreid@chromium.org, cychiang@google.com, judyhsiao@google.com,
        tzungbi@chromium.org, swboyd@chromium.org,
        linux-arm-kernel@lists.infradead.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        alsa-devel@alsa-project.org, Judy Hsiao <judyhsiao@chromium.org>
Subject: [PATCH] ASoC: snd-soc-dummy: add Device Tree support
Date:   Mon, 21 Jun 2021 15:41:52 +0800
Message-Id: <20210621074152.306362-1-judyhsiao@chromium.org>
X-Mailer: git-send-email 2.31.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Support for loading the snd-soc-dummy via DeviceTree.
This is useful to create dummy codec devices where we need to have some
DAI links without a real Codec.

Signed-off-by: Judy Hsiao <judyhsiao@chromium.org>
---
 .../devicetree/bindings/sound/snd-soc-dummy.txt  | 16 ++++++++++++++++
 sound/soc/soc-utils.c                            | 11 +++++++++++
 2 files changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/snd-soc-dummy.txt

diff --git a/Documentation/devicetree/bindings/sound/snd-soc-dummy.txt b/Documentation/devicetree/bindings/sound/snd-soc-dummy.txt
new file mode 100644
index 000000000000..7fa8c5751e62
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/snd-soc-dummy.txt
@@ -0,0 +1,16 @@
+* snd-soc-dummy
+
+This node models the snd-soc-dummy.
+This is useful to create dummy codec devices where we need to have
+some DAI links without a real Codec.
+
+Required properties:
+- compatible   : "asoc,snd-soc-dummy"
+
+
+Example:
+
+dummy_codec {
+	compatible = "asoc,snd-soc-dummy";
+	#sound-dai-cells = <0>;
+};
diff --git a/sound/soc/soc-utils.c b/sound/soc/soc-utils.c
index 299b5d6ebfd1..def2cc687415 100644
--- a/sound/soc/soc-utils.c
+++ b/sound/soc/soc-utils.c
@@ -7,6 +7,8 @@
 // Author: Mark Brown <broonie@opensource.wolfsonmicro.com>
 //         Liam Girdwood <lrg@slimlogic.co.uk>
 
+#include <linux/module.h>
+#include <linux/of.h>
 #include <linux/platform_device.h>
 #include <linux/export.h>
 #include <sound/core.h>
@@ -181,9 +183,18 @@ static int snd_soc_dummy_probe(struct platform_device *pdev)
 	return ret;
 }
 
+#ifdef CONFIG_OF
+static const struct of_device_id soc_dummy_device_id[] = {
+	{ .compatible = "asoc,snd-soc-dummy" },
+	{}
+};
+MODULE_DEVICE_TABLE(of, soc_dummy_device_id);
+#endif
+
 static struct platform_driver soc_dummy_driver = {
 	.driver = {
 		.name = "snd-soc-dummy",
+		.of_match_table = of_match_ptr(soc_dummy_device_id),
 	},
 	.probe = snd_soc_dummy_probe,
 };
-- 
2.31.0

