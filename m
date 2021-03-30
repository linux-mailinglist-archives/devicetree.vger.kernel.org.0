Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 593E734EAE6
	for <lists+devicetree@lfdr.de>; Tue, 30 Mar 2021 16:48:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231992AbhC3Or5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 Mar 2021 10:47:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49324 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232224AbhC3Orc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 Mar 2021 10:47:32 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 71A53C061764
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:31 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id jy13so25284782ejc.2
        for <devicetree@vger.kernel.org>; Tue, 30 Mar 2021 07:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=96IKLbOURC0YjosZF10ff1jryU9fCjeBBqqAs+cW9Zo=;
        b=B+vUmE2atWiIRf7GIibr3udvr0xoOQgMm1tLReuc+eaDWeQuoxFRgDgF5NZp+OUeg/
         zTN0qo2hY9Xapgy7PcQPcU7Paw28NSnYH9yUPEX76DZ0N1YiIqo+n2F3CXdDE84XiOxI
         rSiS9Ig3JGTfhrucrIlMPvAyWb9BOghGud31nBJ9/TMvfuaLQBU00g3OxjfCC513zepJ
         WXeWabkFTQjEur1soBDV3KNhfRUPKc46vTL9MKNUWBDsUCzjguqsJF3ycu24jYWW1kWY
         /a1jRj5qE/VqcD9MfBiJrC9I7h35N8gdBbPT3skv2AzUTfHlK082f/RxkhQTCjMq2SU4
         J/XA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=96IKLbOURC0YjosZF10ff1jryU9fCjeBBqqAs+cW9Zo=;
        b=OLAyYjXI4+J1r6HfD4JHxPGaz5iFyA7Vsq1sH1aK3TuRGW1U8nMa201OU2D8bP1xDz
         Hq2xlD2CRcnHV7WWjWbul9LXc2zXKZyvJPN0950ZHkgrPa0GtOEKtcuoq2UVZlaf4FZ+
         1CKT0tUQB/26j80YMlKGBaBbLbU3oBz+rwjfJCUj+Pd0OjvOHR7zsZBC8sEtLcF1/Eg1
         jsaV1D2aUkUW7olR7c7WCquqJazQNKfC/EpOlnK09OMJED6K8OeozIS5U7DJml2GlDPt
         Ax5sIqaz1qtS1zjbJajuuzAUZfQ+wuB2a+m43sT1WOEloYY3pw8qaIApWsNHmKULJ6fw
         vshg==
X-Gm-Message-State: AOAM532NiJD4JeylPb0b5Bl6R36Gn+V+KoD079Uf4fSGnC4xPo+BpSNS
        g9oY+2dYpu0TKMTNIieTV/uOIWa2zeKKeg==
X-Google-Smtp-Source: ABdhPJzeVYSMF3HFVyOYMaUU79Txm34KLYEbu6l9R0FmR98SPUhoLGCE86RKhaobZPI3KkPCP0jmUg==
X-Received: by 2002:a17:907:2642:: with SMTP id ar2mr33729453ejc.145.1617115650095;
        Tue, 30 Mar 2021 07:47:30 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id n16sm11520383edr.42.2021.03.30.07.47.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 Mar 2021 07:47:29 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v6 1/9] dt-bindings: soundwire: qcom: clarify data port bus parameters
Date:   Tue, 30 Mar 2021 15:47:11 +0100
Message-Id: <20210330144719.13284-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
References: <20210330144719.13284-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Some of the parameters for data ports are not applicable or not implemented
in IP. So mark them as invalid/not applicable in DT so that controller is
aware of this.

Add comment to these bindings to provide more clarity on the values!

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Acked-by: Rob Herring <robh@kernel.org>
Reviewed-by: Pierre-Louis Bossart <pierre-louis.bossart@linux.intel.com>
---
 .../bindings/soundwire/qcom,sdw.txt           | 20 +++++++++++++++++++
 1 file changed, 20 insertions(+)

diff --git a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
index b104be131235..b93a2b3e029d 100644
--- a/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
+++ b/Documentation/devicetree/bindings/soundwire/qcom,sdw.txt
@@ -54,6 +54,8 @@ board specific bus parameters.
 	Value type: <prop-encoded-array>
 	Definition: should specify payload transport window offset1 of each
 		    data port. Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-offset2:
@@ -61,6 +63,8 @@ board specific bus parameters.
 	Value type: <prop-encoded-array>
 	Definition: should specify payload transport window offset2 of each
 		    data port. Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-sinterval-low:
@@ -69,12 +73,16 @@ board specific bus parameters.
 	Definition: should be sample interval low of each data port.
 		    Out ports followed by In ports. Used for Sample Interval
 		    calculation.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-word-length:
 	Usage: optional
 	Value type: <prop-encoded-array>
 	Definition: should be size of payload channel sample.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-block-pack-mode:
@@ -84,6 +92,8 @@ board specific bus parameters.
 		    0 to indicate Blocks are per Channel
 		    1 to indicate Blocks are per Port.
 		    Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-block-group-count:
@@ -92,6 +102,8 @@ board specific bus parameters.
 	Definition: should be in range 1 to 4 to indicate how many sample
 		    intervals are combined into a payload.
 		    Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-lane-control:
@@ -100,6 +112,8 @@ board specific bus parameters.
 	Definition: should be in range 0 to 7 to identify which	data lane
 		    the data port uses.
 		    Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-hstart:
@@ -109,6 +123,8 @@ board specific bus parameters.
 		    SoundWire Frame, i.e. left edge of the Transport sub-frame
 		    for each port. Values between 0 and 15 are valid.
 		    Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,ports-hstop:
@@ -118,6 +134,8 @@ board specific bus parameters.
 		    SoundWire Frame, i.e. the right edge of the Transport
 		    sub-frame for each port. Values between 0 and 15 are valid.
 		    Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 - qcom,dports-type:
@@ -128,6 +146,8 @@ board specific bus parameters.
 		    1 for simple ports
 		    2 for full port
 		    Out ports followed by In ports.
+		    Value of 0xFF indicates that this option is not implemented
+		    or applicable for the respective data port.
 		    More info in MIPI Alliance SoundWire 1.0 Specifications.
 
 Note:
-- 
2.21.0

