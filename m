Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 0C2D5864A2
	for <lists+devicetree@lfdr.de>; Thu,  8 Aug 2019 16:45:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732477AbfHHOpa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Aug 2019 10:45:30 -0400
Received: from mail-wr1-f68.google.com ([209.85.221.68]:33139 "EHLO
        mail-wr1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732912AbfHHOp3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Aug 2019 10:45:29 -0400
Received: by mail-wr1-f68.google.com with SMTP id n9so95326710wru.0
        for <devicetree@vger.kernel.org>; Thu, 08 Aug 2019 07:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XkV4oZs6ZiC2qzQJvCHYzSVuaz5P2YoXcRt/ldJXf5U=;
        b=Cmstt1tVGYRTZuFBXbdhJ+G+C+NK7oqB9DQGo6s/cQGQ7ycTpaLAzGYn4DV7Gq6D26
         Q89Oj18lD1j5IctLMbOvMvmyoteBXsTTl4EqjGiOgzXpEzgBsWpMuadf3sVxQJavKm5u
         CYoKSgMPMiKyj5ECNVWps666HHfD2EwqUlr8LK1CD1XiPmaEKtrH6Hq//3qJOgNBFkW5
         h77BtlUNVFa/1jv/32Al884UmaU3svQZ5jdwfWpGI4DadINDh89SPK3zQpOjwEdBSloY
         bQfLMVcZDbyVeimk8pGD8YcdOsiWojgOiaIdwpzvzjDIKAklwKCe969dvoSSnHpfyOzi
         uFRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XkV4oZs6ZiC2qzQJvCHYzSVuaz5P2YoXcRt/ldJXf5U=;
        b=E2jEHjEKJngx3rHQgA8jBvtcd2Dkiv8L73irj7DWXsXeaA93NKGYpgbTQd8fvEbClq
         3U+pQJYfLq11fRCHcLHSORVsb7t0/PvcHit3Zy5d1BfkX3qC+dZJplUmp1A7bv+JPixa
         ZPRLcgXBJ1v75sROsi29MRKWEt6lYDaINurAu0qbyMPEucCijlOtzHDotQVyXAkCX5S4
         Gl7P0ZXGbknBw4yDP1LydBA5GBSeWoVXtkjgmXuB7hnC3IZCHPNLXdZpAkTn4RU6S8s6
         Qotl6tY/nBYN4cpEt8540yIo6ll7Wjti9Du1/NOxQYwPwpYTKnDlwnQ/tH1wackNgFL0
         fwpA==
X-Gm-Message-State: APjAAAVJDTWlXDr4nbd1cGCrF9DaJNJgrZ7P4bhjZy/crpbqH+5dRur2
        bqOVUaBxpCdxopsLTt4Cc4D+FA==
X-Google-Smtp-Source: APXvYqxvtipX5ZGjzUSMQiJMzVQY+uy2fllw+fKJ1JcU+ugIbvCyHpyFwIVkEqu5KPNs9bO3Ey+HMg==
X-Received: by 2002:adf:f646:: with SMTP id x6mr18613900wrp.18.1565275528042;
        Thu, 08 Aug 2019 07:45:28 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id g15sm2009060wrp.29.2019.08.08.07.45.26
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Thu, 08 Aug 2019 07:45:27 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org, broonie@kernel.org
Cc:     bgoswami@codeaurora.org, plai@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, robh+dt@kernel.org,
        devicetree@vger.kernel.org, lgirdwood@gmail.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v2 3/4] dt-bindings: ASoC: Add WSA881x bindings
Date:   Thu,  8 Aug 2019 15:45:03 +0100
Message-Id: <20190808144504.24823-4-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
References: <20190808144504.24823-1-srinivas.kandagatla@linaro.org>
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
 .../bindings/sound/qcom,wsa881x.txt           | 27 +++++++++++++++++++
 1 file changed, 27 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sound/qcom,wsa881x.txt

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.txt b/Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
new file mode 100644
index 000000000000..582db402a482
--- /dev/null
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.txt
@@ -0,0 +1,27 @@
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
+			Refer to soundwire/bus.txt for details.
+			Should be "sdw10,0217,2010,0" for WSA8810
+- sdw-instance-id:	Should be ('Instance ID') from SoundWire Enumeration
+		    	address.
+			Refer to soundwire/bus.txt for details.
+- pd-gpios: 		Should be phandle and gpio pair for
+			Powerdown/Shutdown pin.
+- #thermal-sensor-cells: Should be 0 
+
+Example:
+
+spkr_left:wsa8810-left{
+	compatible = "sdw10,0217,2010,0";
+	sdw-instance-id = <1>;
+	#thermal-sensor-cells = <0>;
+	...
+};
-- 
2.21.0

