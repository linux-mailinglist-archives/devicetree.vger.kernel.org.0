Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 3BCE2D4422
	for <lists+devicetree@lfdr.de>; Fri, 11 Oct 2019 17:27:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726521AbfJKP1M (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Oct 2019 11:27:12 -0400
Received: from mail-wr1-f65.google.com ([209.85.221.65]:40119 "EHLO
        mail-wr1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726332AbfJKP1M (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Oct 2019 11:27:12 -0400
Received: by mail-wr1-f65.google.com with SMTP id h4so12420223wrv.7
        for <devicetree@vger.kernel.org>; Fri, 11 Oct 2019 08:27:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=vqG7+AGfghGk6oxgeHLKo8renKYHQ6ikGsMAIU3fyFY=;
        b=KEKu2/gPosLPl5Pq3bC9ZnPgnkpl4boe0ilknbQYgjhpOCmgCh6BUf3umAF4fq4u7U
         Lb5YJ/l7Q2VuDfmZ+mk7rVQcmzoZ+kMSRPVW6NVy7SsL5Fi/B/4AP0v+WNJ+O7huRMUx
         9UI8JYUh4aLZHqs79yWmPe4BXgZ0NXP16rHI+u2hhL6mxB5efMfbF/QlcOZklN/ZH0Eo
         rAkak4C8T9asM3nDtc3lbXkiulnMaD3GG/Gmzltv/uod9fN/hdwp25vZtvzbEqaYpjoS
         hyHbR3j5FDLX0x4v5Dlie6beAjNyMWur49I7fK3bUD5W9mcpkrQ5aAfG1SsG6bzYF6Vx
         bthA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=vqG7+AGfghGk6oxgeHLKo8renKYHQ6ikGsMAIU3fyFY=;
        b=iOQePudXTYHOMFDpFuIVwqworliUJHIEyakPYiyvkc1VXgdXE9C1L7e2FCelL2RGax
         9okjcZ1mQo05Btmp65mB3Lp8tpeMsbGay6mpD744mUPAX0KyNaImqXDOvArRtg1gpPvf
         pt9jMoZk/8wg/hvvNZXIsOvwh9bfQoHOn+dql51WaxpKrdSjZN7HZy27+1ZXKLxfg0cW
         ih5EleckUujBj40UXaG/eZA1ByMYuDW2Ipe8qJzFxkMG2ZuW0yt3Bc5J0DqkpuJK9fyP
         JsXWSFIpGbzjJ9xBTtgs0IaARmpCbLi95+UnI534Q5jvt5OpmiBl1xfrgMMXkue35neX
         EMGQ==
X-Gm-Message-State: APjAAAWI55FtH+QkZSC5rkKaa84yMHRnTTx7w02DR161/9g8c4WzmjWy
        BzOgJQ+xbHF3rp9fOdQN057CIg==
X-Google-Smtp-Source: APXvYqy78aITUXBHI8DPHAdTjO8XKBGiUnnfb99voA6hpuWolGklgWJIBDhHYFH/4L5KjJjMQe7z+w==
X-Received: by 2002:adf:f744:: with SMTP id z4mr14176405wrp.22.1570807630074;
        Fri, 11 Oct 2019 08:27:10 -0700 (PDT)
Received: from srini-hackbox.lan (cpc89974-aztw32-2-0-cust43.18-1.cable.virginm.net. [86.30.250.44])
        by smtp.gmail.com with ESMTPSA id a204sm16439979wmh.21.2019.10.11.08.27.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 08:27:09 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     broonie@kernel.org, robh@kernel.org
Cc:     devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        spapothi@codeaurora.org, pierre-louis.bossart@linux.intel.com,
        vkoul@kernel.org, lgirdwood@gmail.com, bgoswami@codeaurora.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH v8 2/3] dt-bindings: ASoC: WSA881x: Add missing #sound-dai-cells
Date:   Fri, 11 Oct 2019 16:24:45 +0100
Message-Id: <20191011152446.5925-3-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.21.0
In-Reply-To: <20191011152446.5925-1-srinivas.kandagatla@linaro.org>
References: <20191011152446.5925-1-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As this codec now exposes dai, add missing #sound-dai-cells.

Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
---
 Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
index faa90966a33a..ea44d03e58ca 100644
--- a/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
+++ b/Documentation/devicetree/bindings/sound/qcom,wsa881x.yaml
@@ -29,11 +29,15 @@ properties:
   '#thermal-sensor-cells':
     const: 0
 
+  '#sound-dai-cells':
+    const: 0
+
 required:
   - compatible
   - reg
   - powerdown-gpios
   - "#thermal-sensor-cells"
+  - "#sound-dai-cells"
 
 additionalProperties: false
 
@@ -49,6 +53,7 @@ examples:
             reg = <0 1>;
             powerdown-gpios = <&wcdpinctrl 2 0>;
             #thermal-sensor-cells = <0>;
+            #sound-dai-cells = <0>;
         };
 
         speaker@0,2 {
@@ -56,6 +61,7 @@ examples:
             reg = <0 2>;
             powerdown-gpios = <&wcdpinctrl 2 0>;
             #thermal-sensor-cells = <0>;
+            #sound-dai-cells = <0>;
         };
     };
 
-- 
2.21.0

