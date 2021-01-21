Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CC4EB2FEDA1
	for <lists+devicetree@lfdr.de>; Thu, 21 Jan 2021 15:57:10 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732029AbhAUOzv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jan 2021 09:55:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57918 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1731734AbhAUOyX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jan 2021 09:54:23 -0500
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A100FC061788
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 06:53:18 -0800 (PST)
Received: by mail-wm1-x334.google.com with SMTP id c124so1683726wma.5
        for <devicetree@vger.kernel.org>; Thu, 21 Jan 2021 06:53:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q4wdqxJTegCBCyudkxp306qF0hGkVyYVDvgQVJoeSCk=;
        b=i0TAZnF8mXhOlA8h4KBwAMX6kIijqujfjhv0IlCDx/80JiwI/iVBW/rnEiZDNQrF9x
         PrQwSWDBO6L4bgJDXqGaQau+AK71C7/x3rbNhVby2SfvNI+nFzUfNZ5MYtIrryREyUeu
         1vdYR8vDFWIT938VboG27nf6IhAfshWBgi+bodT+PQh5bx6XqqGuMaJV7Nr38qT8GiVf
         MmZNLldBCoxLKnT7m4PM+Kv66bd3g0Z2qycOkmjjTwv/OvBHsmIpUh4BIG12FQY50hgQ
         iICzC75+YJsi0puJMBduKi4qHIp0JD/JcXKTDiXWzWZwVjcTkfU0Mb9bDL1NM4yyz+hf
         +a4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q4wdqxJTegCBCyudkxp306qF0hGkVyYVDvgQVJoeSCk=;
        b=kijhyDtgjWYw4gCq5LEUvpvvKuY+dnvC3Gnldh6SZIb2fUPGbHEdFzHqo7qNUT/X6P
         yNL79ppMuCbr0Tql27AgZbsxwsirsBC00HLQ0rRsKgkg6XOzFO3dDa/Wdoq6Vgk6LXG3
         ZPUwPP3j53ZIb33po+dF+W/DRpL+kNSL9nevFiuxb+IXSX8aRtL8GHe1qNGv2FeLNcIm
         sMuiCa9uyx05lzclVB3u4vXUAs8KnpRkcyOTqyb/rSSGjbIFZQfF0MnXTgFUwS9vvF/L
         6/eYYC30u7Fuu6qdXYfgtqkvtmQMrHIf+9ntyUQqivmp2J/Ke43agZI6FYaihdkqXGjh
         CLng==
X-Gm-Message-State: AOAM533diSk6reo5qIqBff0IyBA3t+klSBuP6XDGJguaaHEBYpmKnZ9m
        bXpdSRCHwS+3smzpyvehv2FTz6nM9eRaVg==
X-Google-Smtp-Source: ABdhPJy14pKkimPBMZLcUFcqTO3N/p4HlHo4oRUVSxAy0QmPrmPmNPb2zeKLFfOScJlLR6sJ9dDdEQ==
X-Received: by 2002:a1c:9844:: with SMTP id a65mr9394986wme.113.1611240797414;
        Thu, 21 Jan 2021 06:53:17 -0800 (PST)
Received: from localhost.localdomain ([212.45.67.2])
        by smtp.googlemail.com with ESMTPSA id a25sm7921770wmb.25.2021.01.21.06.53.16
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Jan 2021 06:53:16 -0800 (PST)
From:   Georgi Djakov <georgi.djakov@linaro.org>
To:     devicetree@vger.kernel.org, robh+dt@kernel.org
Cc:     okukatla@codeaurora.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        Georgi Djakov <georgi.djakov@linaro.org>
Subject: [PATCH] dt-bindings: interconnect: Fix the expected number of cells
Date:   Thu, 21 Jan 2021 16:53:20 +0200
Message-Id: <20210121145320.2383-1-georgi.djakov@linaro.org>
X-Mailer: git-send-email 2.29.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

"make dtbs_check" complains that the number of interconnect-cells
for some RPMh platforms is not "const: 1" (as defined in the schema).

That's because the interconnect-cells now can be 1 or 2, depending
on what is supported by the specific interconnect provider. Let's
reflect this in the schema.

Fixes: 9a34e7ad2e12 ("dt-bindings: interconnect: Document the support of optional path tag")
Signed-off-by: Georgi Djakov <georgi.djakov@linaro.org>
---
 Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
index f9b150b817d8..799e73cdb90b 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
@@ -73,7 +73,7 @@ properties:
       - qcom,sm8250-system-noc
 
   '#interconnect-cells':
-    const: 1
+    enum: [ 1, 2 ]
 
   qcom,bcm-voters:
     $ref: /schemas/types.yaml#/definitions/phandle-array
