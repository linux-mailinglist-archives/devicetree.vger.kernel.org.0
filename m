Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 47152D44AC
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:45:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728191AbfJKPoz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:44:55 -0400
Received: from mail-wm1-f65.google.com ([209.85.128.65]:55310 "EHLO
        mail-wm1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728185AbfJKPoy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:44:54 -0400
Received: by mail-wm1-f65.google.com with SMTP id a6so10894331wma.5
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:44:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=z0kO6qx1UAc/uP1SKgjN6XAyjR6GuCSBuxXXjXMIpxU=;
        b=Qr/JxQod4/ps5uiH4tGGNZ9yzBI6hkztsB9/YGuAIzeCNNT1qB5a8AG1ZMxY8DWiNo
         dtO3U5vZChtSfm0UqNuMHf8zdwPWMNn7ihD7tMA2WINLj/YLuR7Urwgdnhfj7dcFWKeg
         2FuyCRUD+4ujUkiTXuHpg7b/OjboMqSvViZ2869mggBcejQTQWT6ATYZ/gnUY5yebONY
         vl4m200xa8xbnMRpTqngyXBdTuQWgGl0367V+rBnaWp1SybLg1GrR0AATSxSVTveeO/E
         yeWYZHgzsQfOzobDHu3AfCrpQWwe8fby13ubmTrqWg4lv/CSA77qx3ZFPYPfCE3GI8Ls
         IGig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=z0kO6qx1UAc/uP1SKgjN6XAyjR6GuCSBuxXXjXMIpxU=;
        b=sb3FFoGpFe3tAtNeiKZ04PTJ2r7yrkssi+mqQWwIO1crnlQLpUeknnYY6QdPL9AMBw
         lN6GjKIVGsEOBijLuv8/lk+lArk8H/kvtDFNm5KG7Rt2SBRV7kG2W1vDpKPReLQOJSnj
         9e9aCp0GFwl5eyjIxvBhWFRDp6L81w2xFV+SbdFQtErm7Y7InCMiktXfLgl+KmT3PrYg
         9zLVhDR/CnVUDHSTj5L1w5if1aHcGbLEH57s8f77V8r68L57mMlQAiWr2Hk2GWpXj7Kf
         I0L/IfSqqr2LjKB4MTdfU77QUqnWb+ywU/8+e4e0E28FprEFNUQ7fHcQNa2Y1xd5W8ey
         uKGQ==
X-Gm-Message-State: APjAAAXGHw79xFQ8tfBc9Ilb29YyCQTdRTKIZ3iIsY3gYg6h0DlzJV79
        BqmhzGHvJ1azwzLS8CcXOnKRIg==
X-Google-Smtp-Source: APXvYqy0n+Gi3ikSJSLc4ZiYjrrwPHwbYm/P33/o8JdcsJJo2NnsmzC7x1BlRatWcS4ttAhpUEQu0g==
X-Received: by 2002:a05:600c:3cb:: with SMTP id z11mr3852023wmd.138.1570808691606;
        Fri, 11 Oct 2019 08:44:51 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id y3sm3453044wro.36.2019.10.11.08.44.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:44:51 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     robh@kernel.org, vkoul@kernel.org
Cc:     broonie@kernel.org, bgoswami@codeaurora.org,
        pierre-louis.bossart@linux.intel.com, devicetree@vger.kernel.org,
        lgirdwood@gmail.com, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, spapothi@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: soundwire: add bindings for Qcom controller
Date:   Fri, 11 Oct 2019 16:44:22 +0100
Message-Id: <20191011154423.2506-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011154423.2506-1-srinivas.kandagatla@linaro.org>
References: <20191011154423.2506-1-srinivas.kandagatla@linaro.org>
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
 .../bindings/soundwire/qcom,sdw.txt           | 167 ++++++++++++++++++
 1 file changed, 167 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soundwire/qcom,sdw.txt

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
new file mode 100644
index 000000000000..436547f3b155
--- /dev/null
+++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
@@ -0,0 +1,167 @@
+Qualcomm SoundWire Controller Bindings
+
+
+This binding describes the Qualcomm SoundWire Controller along with its
+board specific bus parameters.
+
+- compatible:
+	Usage: required
+	Value type: <stringlist>
+	Definition: must be "qcom,soundwire-v<MAJOR>.<MINOR>.<STEP>",
+		    Example:
+			"qcom,soundwire-v1.3.0"
+			"qcom,soundwire-v1.5.0"
+			"qcom,soundwire-v1.6.0"
+- reg:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: the base address and size of SoundWire controller
+		    address space.
+
+- interrupts:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: should specify the SoundWire Controller IRQ
+
+- clock-names:
+	Usage: required
+	Value type: <stringlist>
+	Definition: should be "iface" for SoundWire Controller interface clock
+
+- clocks:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: should specify the SoundWire Controller interface clock
+
+- #sound-dai-cells:
+	Usage: required
+	Value type: <u32>
+	Definition: must be 1 for digital audio interfaces on the controller.
+
+- qcom,dout-ports:
+	Usage: required
+	Value type: <u32>
+	Definition: must be count of data out ports
+
+- qcom,din-ports:
+	Usage: required
+	Value type: <u32>
+	Definition: must be count of data in ports
+
+- qcom,ports-offset1:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: should specify payload transport window offset1 of each
+		    data port. Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-offset2:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: should specify payload transport window offset2 of each
+		    data port. Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-sinterval-low:
+	Usage: required
+	Value type: <prop-encoded-array>
+	Definition: should be sample interval low of each data port.
+		    Out ports followed by In ports. Used for Sample Interval
+		    calculation.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-word-length:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be size of payload channel sample.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-block-pack-mode:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be 0 or 1 to indicate the block packing mode.
+		    0 to indicate Blocks are per Channel
+		    1 to indicate Blocks are per Port.
+		    Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-block-group-count:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be in range 1 to 4 to indicate how many sample
+		    intervals are combined into a payload.
+		    Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-lane-control:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be in range 0 to 7 to identify which	data lane
+		    the data port uses.
+		    Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-hstart:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be number identifying lowerst numbered coloum in
+		    SoundWire Frame, i.e. left edge of the Transport sub-frame
+		    for each port. Values between 0 and 15 are valid.
+		    Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,ports-hstop:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be number identifying highest numbered coloum in
+		    SoundWire Frame, i.e. the right edge of the Transport
+		    sub-frame for each port. Values between 0 and 15 are valid.
+		    Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+- qcom,dports-type:
+	Usage: optional
+	Value type: <prop-encoded-array>
+	Definition: should be one of the following types
+		    0 for reduced port
+		    1 for simple ports
+		    2 for full port
+		    Out ports followed by In ports.
+		    More info in MIPI Alliance SoundWire 1.0 Specifications.
+
+Note:
+	More Information on detail of encoding of these fields can be
+found in MIPI Alliance SoundWire 1.0 Specifications.
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
+	qcom,dports-type = <0>;
+	qcom,dout-ports	= <6>;
+	qcom,din-ports	= <2>;
+	qcom,ports-sinterval-low = /bits/ 8  <0x07 0x1F 0x3F 0x7 0x1F 0x3F 0x0F 0x0F>;
+	qcom,ports-offset1 = /bits/ 8 <0x01 0x02 0x0C 0x6 0x12 0x0D 0x07 0x0A >;
+	qcom,ports-offset2 = /bits/ 8 <0x00 0x00 0x1F 0x00 0x00 0x1F 0x00 0x00>;
+
+	/* Left Speaker */
+	left{
+		....
+	};
+
+	/* Right Speaker */
+	right{
+		....
+	};
+};
-- 
2.21.0

