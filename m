Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 356783E0923
	for <lists+devicetree@lfdr.de>; Wed,  4 Aug 2021 22:05:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240805AbhHDUFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Aug 2021 16:05:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47598 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240801AbhHDUFM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Aug 2021 16:05:12 -0400
Received: from mail-il1-x133.google.com (mail-il1-x133.google.com [IPv6:2607:f8b0:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 729ECC06179A
        for <devicetree@vger.kernel.org>; Wed,  4 Aug 2021 13:04:59 -0700 (PDT)
Received: by mail-il1-x133.google.com with SMTP id j18so2778583ile.8
        for <devicetree@vger.kernel.org>; Wed, 04 Aug 2021 13:04:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WpJTczWcMa/wlQB3c8ZVvUWtfwUJzoex9JrRy9qZMaU=;
        b=V2EDbbaFFgv/yFfhmUf9155JJ/wIPornZXPN5AzHMdPUVi9oaTtJHHA3yLPuRQMgqy
         zbJtaSsDaAy7JzbAIYII7nU0nm0OBeVxtXYt1k1K9NX0kzAQy8s15auhXOTIIAMAgmdB
         asCu7p8zDWaWpxHnXDklH9PVT0bW6J2749f7WmmtsT5m+zt9IZ0cy7QwSbCNxVa4FzMp
         EkftrmLD1ielcb7qYdXN2h202l07Z/vYeS1zutrclwZrikfMvFpQgy4DI2stqWPPh98m
         Yk0xOk9+3dXTvCmwZ+HiDYSAViWN2YO/VPV7HPyZP5gecmsaIgoXo1qz5s9kD1kPjHHP
         lu5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=WpJTczWcMa/wlQB3c8ZVvUWtfwUJzoex9JrRy9qZMaU=;
        b=oNxu6H2OOOOn4peFQ3ow8ovcda02iXh/91j5AZbdTGrMzIXti7kYIZjVYg8Snah5Mk
         pYQWmbjeFuBpMeEmoHDU+A5YBioanLXabGijK9M2YAAbhUq9sJ5v9HEXCRPjG6k747jG
         eNBNKM86tZImdxRdn2cPBC6v3XjxcsZoFekcFx9348tsmMd0A/mLLSHxDZsQcUYL3GBS
         jpjdcW+dXSk3UsDoynaAEq7WV0qD/qEzNr7egPGGefv1NW4YdbtWOYXIkkzAzCltny/s
         VQCzLL3Edi0IttrDkE88/0cPiP5KkVKpXb0RSCyZM51BkgH1LcngBkWniEtqK8325PH9
         qJ7w==
X-Gm-Message-State: AOAM532gmqcAquzTCYfgBFKJZwMJBlVZT+If5Ra0ajP/DgbcqdNaJ+Mp
        utGZqpiPnjcazyz8yzdaSoAX4YLIyKS2TA==
X-Google-Smtp-Source: ABdhPJzJIABp7xpm/81s+uXVZS7zz3xFasgjCDYFrHACNOujmuT8N5qBYNf/d3dOd4DZdir1dr7VqA==
X-Received: by 2002:a92:c8c1:: with SMTP id c1mr999791ilq.106.1628107498554;
        Wed, 04 Aug 2021 13:04:58 -0700 (PDT)
Received: from presto.localdomain (c-73-185-129-58.hsd1.mn.comcast.net. [73.185.129.58])
        by smtp.gmail.com with ESMTPSA id f7sm1681097ils.42.2021.08.04.13.04.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Aug 2021 13:04:58 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, bjorn.andersson@linaro.org, agross@kernel.org
Cc:     elder@kernel.org, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH v2] dt-bindings: net: qcom,ipa: make imem interconnect optional
Date:   Wed,  4 Aug 2021 15:04:55 -0500
Message-Id: <20210804200455.1878582-1-elder@linaro.org>
X-Mailer: git-send-email 2.27.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On some newer SoCs, the interconnect between IPA and SoC internal
memory (imem) is not used.  Update the binding to indicate that
having just the memory and config interconnects is another allowed
configuration.

Signed-off-by: Alex Elder <elder@linaro.org>
---
v2:  Now based on linux-next/master (not net-next/master)

Rob, Bjorn, Andy:

This was posted as part of a small series once before, and accepted
into the net-next/master branch by David Miller:
  https://lore.kernel.org/netdev/20210719212456.3176086-1-elder@linaro.org/

That series got reverted yesterday:
  https://lore.kernel.org/netdev/20210802233019.800250-1-elder@linaro.org/

Now I'm posting this patch again (by itself, and a little different
this time based on input from Rob) so that this patch can be taken
through the Qualcomm repository.  I will be posting other updates to
DTS files in a separate series shortly.

I didn't copy networking addressees this time...

					-Alex

 .../devicetree/bindings/net/qcom,ipa.yaml     | 24 ++++++++++++-------
 1 file changed, 16 insertions(+), 8 deletions(-)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index ed88ba4b94df5..b8a0b392b24ea 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -87,16 +87,24 @@ properties:
       - const: ipa-setup-ready
 
   interconnects:
-    items:
-      - description: Interconnect path between IPA and main memory
-      - description: Interconnect path between IPA and internal memory
-      - description: Interconnect path between IPA and the AP subsystem
+    oneOf:
+      - items:
+          - description: Path leading to system memory
+          - description: Path between the AP and IPA config space
+      - items:
+          - description: Path leading to system memory
+          - description: Path leading to internal memory
+          - description: Path between the AP and IPA config space
 
   interconnect-names:
-    items:
-      - const: memory
-      - const: imem
-      - const: config
+    oneOf:
+      - items:
+          - const: memory
+          - const: config
+      - items:
+          - const: memory
+          - const: imem
+          - const: config
 
   qcom,smem-states:
     $ref: /schemas/types.yaml#/definitions/phandle-array
-- 
2.27.0

