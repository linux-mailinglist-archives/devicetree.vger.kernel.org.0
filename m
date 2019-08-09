Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id E077087B43
	for <lists+devicetree@lfdr.de>; Fri,  9 Aug 2019 15:34:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436502AbfHINee (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Aug 2019 09:34:34 -0400
Received: from mail-wr1-f67.google.com ([209.85.221.67]:41336 "EHLO
        mail-wr1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2406937AbfHINed (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Aug 2019 09:34:33 -0400
Received: by mail-wr1-f67.google.com with SMTP id c2so95040138wrm.8
        for <devicetree@vger.kernel.org>; Fri, 09 Aug 2019 06:34:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=nGnMhbFLMwKaZqSRo6t069vkX6KSorhAL/bGFm/B64c=;
        b=aAqbD1pCduSPQug8H068mIGYwMnydpfRqfrz+BhIM7QDXpCnKaDTBmgbLS3bw4E5fQ
         Mxx2pqI6DZ3uA3kwtP6MZ0kRP11HNB/rIrla8eGBzN5j/t83ccDZW+RPEvTvILLkAD6d
         /jAdkObQN2ftOjazZIIcWBgRjGriE7wnZEn5qAYdaFroH5G+/P4omqlvFmQegmorffWV
         pFttMgy2AobZBENQkjHwUKunOfXRlyQIvwJbdTTjue2iBtJrTWEDawQhYCZJ2jXpGDn5
         NWLWbjGIZ7GqlFa0xt2HDiguu5ym5TJmRYfdfmZZpF6mYjNtIVx0yMtOgQjf+5HNQnhI
         z8BQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=nGnMhbFLMwKaZqSRo6t069vkX6KSorhAL/bGFm/B64c=;
        b=FvYr5+pW449i9lK9Nwq3iSiKbn+s6y1pIGUJv7AONR0gDK3nLN4ndFgyQnQSVYaZAt
         EFmNI6fJVHLwx0lBNy95e9UzUeNa9iD4Aj2NvtNoVphy+zwSgxPAIGKUkOKsAb5n/miw
         GO9Of1BUFltCHc6Y4s6aRIrsSd0kwIuthZLHiICjtlBLR0P8JTcHUqY3fwNbgMhOyBAU
         LtJCgNBzwjc3lzxCqziYH4fCnfxVdJkwZvZ/uzTs7+DTR7BTbeVChmRe5yUW1QICyqAH
         3463Xo+wR6YU0YWUfKpNPQzWSWYxfI2zXZ5dxtDu5+2RGp7hvyOv+v/y2roNVjUSCGoB
         GaOw==
X-Gm-Message-State: APjAAAUGM45j8+ljxkWClZqWZGNC81JNLmNQ6r+sGIu8WD/6cCJDwTgz
        E6lQOkJJd27nv7regwuNFqzMbw==
X-Google-Smtp-Source: APXvYqzU83AJ7CB0CJokv1UGB18ihZ8yZDXGXOlPR8Dh+H1ArA13WdVyGEPj1S3ihkchxV2DRtWsKQ==
X-Received: by 2002:a5d:52c5:: with SMTP id r5mr23637150wrv.146.1565357671795;
        Fri, 09 Aug 2019 06:34:31 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id y18sm5674641wmi.23.2019.08.09.06.34.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 09 Aug 2019 06:34:31 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 3/4] dt-bindings: ASoC: Add WSA881x bindings
Date:   Fri,  9 Aug 2019 14:34:06 +0100
Message-Id: <20190809133407.25918-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190809133407.25918-1-srinivas.kandagatla@linaro.org>
References: <20190809133407.25918-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for WSA8810/WSA8815 Class-D Smart Speaker
Amplifier. This Amplifier also has a simple thermal sensor for
over temperature and speaker protection.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/sound/qcom,wsa881x.txt           | 24 +++++++++++++++++++
 1 file changed, 24 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.txt

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.txt b/Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
new file mode 100644
index 000000000000..d2aeb5c58d30
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
@@ -0,0 +1,24 @@
+Bindings for Qualcomm WSA8810/WSA8815 Class-D Smart Speaker Amplifier
+
+WSA8810 is a class-D smart speaker amplifier and WSA8815 is a high-output
+power class-D smart speaker amplifier. This amplifier uses SoundWire
+digital audio as primary interface.
+
+Required properties with SoundWire Interface:
+
+- compatible:		Should be textual representation of SoundWire Enumeration
+			address.
+			Refer to soundwire/slave.txt for details.
+			Should be "sdw0110217201000" for WSA8810
+
+- pd-gpios: 		Should be phandle and gpio pair for
+			Powerdown/Shutdown pin.
+- #thermal-sensor-cells: Should be 0 
+
+Example:
+
+spkr_left:wsa8810-left{
+	compatible = "sdw0110217201000";
+	#thermal-sensor-cells = <0>;
+	...
+};
-- 
2.21.0

