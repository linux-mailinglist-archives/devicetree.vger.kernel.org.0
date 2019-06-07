Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id CCA273869A
	for <lists+devicetree@lfdr.de>; Fri,  7 Jun 2019 10:57:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727826AbfFGI5P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jun 2019 04:57:15 -0400
Received: from mail-wm1-f67.google.com ([209.85.128.67]:36413 "EHLO
        mail-wm1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727728AbfFGI5P (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jun 2019 04:57:15 -0400
Received: by mail-wm1-f67.google.com with SMTP id u8so1111168wmm.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jun 2019 01:57:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=XeGdpoJZKO8xonRoPvjOdBGnzDhlf82qyNmmV40WgQg=;
        b=ik8kIg7c8gHngYFvOgvLDNjZVFS0J/MarZ6AQ00p4jM6fEgI3oml1J5wrZ73JN56OK
         YSEbnUcuMOkB98vLI5RKnfAj1721k9cgTHfCgU9ueZz9vbnwgD2ZcR4k2e+yE1bWSQqv
         4Mo/msNohoAFO3NM2ePmxAdc9vIk9DQNBpo/By/YntrwY6ylDF2d9DVZMhLKdHr8Nt33
         v7vKXR71sucu5sdOFRhvGYcV3e7L6c640BmFQuJE60RdBfUhcPpAIlULNCtn8bVAisEr
         wr3d1Cxl9MNMPyrQvMTZQSeoH4F8nkFQmUPQSTKIsYGz0KfTFK9YAkoRHF0ESOWtl5aO
         wM7g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=XeGdpoJZKO8xonRoPvjOdBGnzDhlf82qyNmmV40WgQg=;
        b=BeCKFQ8GV2k9MTf9HLBVJv3IVCjEXaSanlO/4F/UdU0J495+XZ9jKYwexmfTTT3ssF
         tNrjOm+gDyPgSpAy0eHyAzEnhBnDms5BTHD4AyAR0kzMqMLweHC0q6nZ80rk8MEf3wL5
         NV1BuAOQPFg3ZJiJbYwR1GCOMvowHUaVRsbbkSMttEvUbujMSqP5Ncay1m+ZI75bx1Uc
         37MSUrkH5FqK1s+QPXNCfECxpCzSSOBgzLu3Q8G77V8tksr2APD07AopkYcRH1uaJhy1
         EQYclPNkUVC2iZ3KENOeXuvZI93xK2sEV1g/It22JmiG1otPlGuXahtS0gnZYZff50C/
         9Tvw==
X-Gm-Message-State: APjAAAXTzoZ7GKwCok9qrrOWYmeu8VIx6N6xNWcG1Ibi0QaV6MOf4P5n
        35atrWMexbelA8yGCIPH8vpUfA==
X-Google-Smtp-Source: APXvYqwJNH+r7RO5nlL9EBeByfxYr+83+doptRLLzcM8m5ZBDjJG90TrRhK96lF2uYa2UavRZkGe1g==
X-Received: by 2002:a1c:e3c1:: with SMTP id a184mr2606525wmh.24.1559897833262;
        Fri, 07 Jun 2019 01:57:13 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id d10sm2035308wrh.91.2019.06.07.01.57.12
        (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
        Fri, 07 Jun 2019 01:57:12 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, vkoul@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        mark.rutland@arm.com, pierre-louis.bossart@linux.intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [RFC PATCH 5/6] dt-bindings: soundwire: add bindings for Qcom controller
Date:   Fri,  7 Jun 2019 09:56:42 +0100
Message-Id: <20190607085643.932-6-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
References: <20190607085643.932-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch adds bindings for Qualcomm soundwire controller.

Qualcomm SoundWire Master controller is present in most Qualcomm SoCs
either integrated as part of WCD audio codecs via slimbus or
as part of SOC I/O.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 .../bindings/soundwire/qcom,swr.txt           | 62 +++++++++++++++++++
 1 file changed, 62 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soundwire/qcom,swr.txt

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,swr.txt b/Documentation/devicetree/bindings/soundwire/qcom,swr.txt
new file mode 100644
index 000000000000..eb84d0f4f36f
--- /dev/null
+++ b/Documentation/devicetree/bindings/soundwire/qcom,swr.txt
@@ -0,0 +1,62 @@
+Qualcomm SoundWire Controller
+
+This binding describes the Qualcomm SoundWire Controller Bindings.
+
+Required properties:
+
+- compatible:		Must be "qcom,soundwire-v<MAJOR>.<MINOR>.<STEP>",
+	 		example:
+			"qcom,soundwire-v1.3.0"
+			"qcom,soundwire-v1.5.0"
+			"qcom,soundwire-v1.6.0"
+- reg:			SoundWire controller address space.
+- interrupts:		SoundWire controller interrupt.
+- clock-names:		Must contain "iface".
+- clocks:		Interface clocks needed for controller.
+- #sound-dai-cells:	Must be 1 for digital audio interfaces on the controllers.
+- #address-cells:	Must be 1 for SoundWire devices;
+- #size-cells:		Must be <0> as SoundWire addresses have no size component.
+- qcom,dout-ports: 	Must be count of data out ports
+- qcom,din-ports: 	Must be count of data in ports
+- qcom,ports-offset1:	Must be frame offset1 of each data port.
+			Out followed by In. Used for Block size calculation.
+- qcom,ports-offset2: 	Must be frame offset2 of each data port.
+			Out followed by In. Used for Block size calculation.
+- qcom,ports-sinterval-low: Must be sample interval low of each data port.
+			Out followed by In. Used for Sample Interval calculation.
+
+= SoundWire devices
+Each subnode of the bus represents SoundWire device attached to it.
+The properties of these nodes are defined by the individual bindings.
+
+= EXAMPLE
+The following example represents a SoundWire controller on DB845c board
+which has controller integrated inside WCD934x codec on SDM845 SoC.
+
+soundwire: soundwire@c85 {
+	compatible = "qcom,soundwire-v1.3.0";
+	reg = <0xc85 0x20>;
+	interrupts = <20 IRQ_TYPE_EDGE_RISING>;
+	clocks = <&wcc>;
+	clock-names = "iface";
+	#sound-dai-cells = <1>;
+	#address-cells = <1>;
+	#size-cells = <0>;
+	qcom,dout-ports	= <6>;
+	qcom,din-ports	= <2>;
+	qcom,ports-sinterval-low =/bits/ 8  <0x07 0x1F 0x3F 0x7 0x1F 0x3F 0x0F 0x0F>;
+	qcom,ports-offset1 = /bits/ 8 <0x01 0x02 0x0C 0x6 0x12 0x0D 0x07 0x0A >;
+	qcom,ports-offset2 = /bits/ 8 <0x00 0x00 0x1F 0x00 0x00 0x1F 0x00 0x00>;
+
+	/* Left Speaker */
+	wsa8810@1{
+		....
+		reg = <1>;
+	};
+
+	/* Right Speaker */
+	wsa8810@2{
+		....
+		reg = <2>;
+	};
+};
-- 
2.21.0

