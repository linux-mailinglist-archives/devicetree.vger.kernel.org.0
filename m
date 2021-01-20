Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 135B82FD7A9
	for <lists+devicetree@lfdr.de>; Wed, 20 Jan 2021 19:01:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730960AbhATSBE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jan 2021 13:01:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41932 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2390414AbhATR76 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jan 2021 12:59:58 -0500
Received: from mail-oi1-x229.google.com (mail-oi1-x229.google.com [IPv6:2607:f8b0:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D9694C061575
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:59:14 -0800 (PST)
Received: by mail-oi1-x229.google.com with SMTP id w124so25970474oia.6
        for <devicetree@vger.kernel.org>; Wed, 20 Jan 2021 09:59:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3U6vYGtVByg2m5erRhHMzBzAjaP5prWspvQEAVY9PBM=;
        b=BqVUi1lHHvSjnBV1pZlQumIEQjIPfYjmend3IeZrB4kymw0W0EBFwYxIBa9xtpIJXv
         t8JsEZN8aXoaKP9glxERsAufIB6lmV6RfQxH8tEvfXB5QLV3q3qd1Sf5GWvEzeSPK0a0
         vw9ehStEHB6v1ru32ioXtxy7ebo2fPzFtps1neFaKjpt3AD7PMSKrIH8OLI2KeoT6Jty
         D5zOJZs3huE7HniE37GXu6sRfpKL4qzjfGiA0dChn12nRzHDSnSI5lQUkT4dRDtT7m8B
         V8HPWyg3stVghFtEizTYR/jb5ASFjZU5p2sq/mnSeRYa/sQ6k+7WvA11GQC1APLkIfAf
         +vJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=3U6vYGtVByg2m5erRhHMzBzAjaP5prWspvQEAVY9PBM=;
        b=h7fLOIWAooDLY1hFhQNE1kfSAXM81QWV5PGpPWQWqYD/K8r+yAwhhu+fio/1wt1IG8
         T2qQIDYewlfQCIjQc8D1i/38Gu4j5wiHOpd1Tly9979lpi3XdW2/F9AkioKoSVm72l1P
         0gv6Bsp65ox2Oi/c0IsqnpT9OH6rUOL64u6b/Vu9JuPQh2Xfm4gdXw1v8A4hdVeSaS9X
         KU2ceS3eRx/8cxaH++kfBRPwZwwE9VveNr0wMlXHaj5ulM0IDBEpWd4n+tyOT1F0IFhM
         +Omi7TiSyEHiFj6XdHMqJyWgSYPU8eBXRKuNrloyV3/EZZWWS/mXE2eoax/sfEO7OKY1
         8zXg==
X-Gm-Message-State: AOAM532nYje5S4+eLSD0eAvMk37D+5zmGGsoH938BUhibFDoFr9Lw3mv
        EuFurxNqi1dWpmocUN15bNq1/w==
X-Google-Smtp-Source: ABdhPJzMa4naberyKAQmIyMibf+8/N+b6lX58rrLjrB7kNI9H0JT/6aWR2QZBr4hkaZHhrv5qOUoXw==
X-Received: by 2002:aca:a9d3:: with SMTP id s202mr76631oie.140.1611165554215;
        Wed, 20 Jan 2021 09:59:14 -0800 (PST)
Received: from localhost.localdomain (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id p25sm507421oip.14.2021.01.20.09.59.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Jan 2021 09:59:13 -0800 (PST)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] dt-bindings: dp-connector: Drop maxItems from -supply
Date:   Wed, 20 Jan 2021 09:59:22 -0800
Message-Id: <20210120175922.1579835-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.29.2
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The meta-schema recently gained a definition for the common -supply$
property, which denotes that maxItems is not a valid property. Drop this
to clear up the binding validation error.

Fixes: a46c112512de ("dt-bindings: dp-connector: add binding for DisplayPort connector")
Signed-off-by: Bjorn Andersson <bjorn.andersson@linaro.org>
---
 .../devicetree/bindings/display/connector/dp-connector.yaml      | 1 -
 1 file changed, 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
index 1c17d60e7760..22792a79e7ce 100644
--- a/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
+++ b/Documentation/devicetree/bindings/display/connector/dp-connector.yaml
@@ -26,7 +26,6 @@ properties:
 
   dp-pwr-supply:
     description: Power supply for the DP_PWR pin
-    maxItems: 1
 
   port:
     $ref: /schemas/graph.yaml#/properties/port
-- 
2.29.2

