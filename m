Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 9E445338C28
	for <lists+devicetree@lfdr.de>; Fri, 12 Mar 2021 13:01:28 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231277AbhCLMAr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Mar 2021 07:00:47 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231344AbhCLMA0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Mar 2021 07:00:26 -0500
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE3CBC061763
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:25 -0800 (PST)
Received: by mail-wr1-x430.google.com with SMTP id b18so4654741wrn.6
        for <devicetree@vger.kernel.org>; Fri, 12 Mar 2021 04:00:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=j1DVrtDjiNfpMvwpqyQlbpz2bqVmuofXtsZIJDWEwa0=;
        b=SsCoXK0SqP0VUwLVdEmtmSTcvDgX8/74fLxQMnWyD7ZTwKchBMev4r9vaO08c0mVVp
         gYoHGT0OA/Vu0WXUMuBU5+W0uAGX4Xq/L/Tj/AmPJhVAJzgEHvD8d5ddokosquklWarE
         xUfpA/R+p0fY3DkdSn7g4PhM6EA220jfY5T7lpng1KZI7kRUpchcDjZ9LWhZTN9XhRoP
         HkCNgyevql9QEg3yaurq/S76tdyqGd2KrxR/pUFJqEIJlk5hPj+2iWvTg8JzWGz3EKmK
         KHbeT5q+mvuXjKKSTwGqHPUtAOot0c9X2Ai8YWYJPo3UVd7wNwlOCM2jbZSxoxYSUHN+
         TvVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=j1DVrtDjiNfpMvwpqyQlbpz2bqVmuofXtsZIJDWEwa0=;
        b=o1Zxz78GKXmm+HiNh787ITycmZY354Dntns9YfdL9lsxGkXWcpxyEmvmJED+XqSpkz
         mNm7lTdesmnKlS9pHnfqDUvhEsHCJwCRhKYzESzMEIEaQueyHsv+9NCAZhDM+Ot7RSTH
         EdbE6ZQ/qzNz8Y7OczM38DP74cLs6BvfMmYde9XQXK7lIAMI9tEbPdlPxByz+sy4NkeK
         BZ/QYzcgJxI+ACJKjcoKknc9n8dmyupMJLnOGDR3sqsiM3n894NHU0d1ZpL8IKGi8ZxZ
         8k9buMd1zXMdaanecQWFW9kWdKMMQUFTWKQNPFPyRpSFpX3tZbZdrXcGfBcAKzRI8pO2
         avdQ==
X-Gm-Message-State: AOAM530KUDX8NArNCvmrndSoEfA3jkyc3khxnWv8BHdyzmi4nxZf/PSb
        L95Hj5SdAa4yeNU4NvJHNBh12Q==
X-Google-Smtp-Source: ABdhPJyahixTlJ4FldSgjHcTPFpCWEc0DOYzPjLjbKhEbXXiKjqBXT9G4mHhurytCqMKiYC9lJbrLg==
X-Received: by 2002:adf:f4ce:: with SMTP id h14mr13589603wrp.257.1615550424486;
        Fri, 12 Mar 2021 04:00:24 -0800 (PST)
Received: from srini-hackbox.lan (cpc86377-aztw32-2-0-cust226.18-1.cable.virginm.net. [92.233.226.227])
        by smtp.gmail.com with ESMTPSA id h25sm2268315wml.32.2021.03.12.04.00.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 12 Mar 2021 04:00:23 -0800 (PST)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     vkoul@kernel.org
Cc:     yung-chuan.liao@linux.intel.com,
        pierre-louis.bossart@linux.intel.com, sanyog.r.kale@intel.com,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        robh@kernel.org, devicetree@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v4 1/9] dt-bindings: soundwire: qcom: clarify data port bus parameters
Date:   Fri, 12 Mar 2021 12:00:01 +0000
Message-Id: <20210312120009.22386-2-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
References: <20210312120009.22386-1-srinivas.kandagatla@linaro.org>
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

