Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2C78D34A1F9
	for <lists+devicetree@lfdr.de>; Fri, 26 Mar 2021 07:41:59 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229839AbhCZGl0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 26 Mar 2021 02:41:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35088 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230098AbhCZGlS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 26 Mar 2021 02:41:18 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5D44CC0613B0
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 23:41:18 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id hq27so6747270ejc.9
        for <devicetree@vger.kernel.org>; Thu, 25 Mar 2021 23:41:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=96IKLbOURC0YjosZF10ff1jryU9fCjeBBqqAs+cW9Zo=;
        b=cW1pVehnuPdBaHUoSa7c5YcBSX4O9GlWFResG9lRzoX2wocZ6LHCMOxTOGlmJOyt9Z
         QKsR/Q/WZXvnA7P4+ZWyZay2M3KIu82fSIpkFXVXw0Sef9ytgNO/x9Qmao0ZO4DuvS7Z
         lkj0oJApU3XAdkgLIUd+0xkRbeuNE17oAQIZlp1aXrFOUvuJIDteKHJtYP5HJssKiC6X
         V+KUra/wQ/2UqyEEF7iMKLQ23n35JT3Ae49Lkv4616m9ArEVdlvPsBfb2wOgDv5ICssB
         nGdBh+NaN+mbXpYDTi3wKoypqcRr+ZK2iSRbg7F3Rh6mp8ZURkWpM2nn/KMmBdhf92bX
         furQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=96IKLbOURC0YjosZF10ff1jryU9fCjeBBqqAs+cW9Zo=;
        b=f9oZyj8g44SNFL0CAHQDX2Fhv11ry+8cBvBRYRlj4wUMIK5MtwpsrLewGPam+0vk+V
         cIWdSjzbY3KD26JdTuY88BBVLbAS2pMSQ1FDvju7mde3j+drANoepFZyLUzcQAfJWEKO
         f3zJ80rVfB+xL9AcCDOerWHEQPZ+zJVGbIaE0yd8DDPzgm6FHEDY4RCe1sest3qrbFWZ
         oqoX6l9QEYMYUJ7CF5wy+pTFzXz82iP5hFab4VrZja/aMwrpKmUdrOFvtz1xXXj6yhAp
         tmG1MWT0d22xz4zETjgtMymILD3jzos0ijaDBqNUE5urkvSlLSXqW8EFrLcrcuQygoUY
         L7Dg==
X-Gm-Message-State: AOAM533Pz5fePjBMXRaP7M3gpB1QbLzjQFEh04Gp47IqG2muet2GFsaA
        30ad7pGcbfUvGjN2FDtm/BpGUg==
X-Google-Smtp-Source: ABdhPJzEr41lfTf2pFi+RCaMdPUvAVwZp8Y4UnBYI5frBxz6Bkra8eE8pIgwvOOCd60L0PdhxwhVhQ==
X-Received: by 2002:a17:906:1a4b:: with SMTP id j11mr13705536ejf.55.1616740877062;
        Thu, 25 Mar 2021 23:41:17 -0700 (PDT)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id ci22sm125325ejc.54.2021.03.25.23.41.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 25 Mar 2021 23:41:16 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v5 1/9] dt-bindings: soundwire: qcom: clarify data port bus parameters
Date:   Fri, 26 Mar 2021 06:39:36 +0000
Message-Id: <20210326063944.31683-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210326063944.31683-1-srinivas.kandagatla@linaro.org>
References: <20210326063944.31683-1-srinivas.kandagatla@linaro.org>
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

