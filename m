Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7C37C951DE
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 01:51:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728758AbfHSXss (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 19:48:48 -0400
Received: from mail-pl1-f193.google.com ([209.85.214.193]:42087 "EHLO
        mail-pl1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728351AbfHSXss (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 19:48:48 -0400
Received: by mail-pl1-f193.google.com with SMTP id y1so1727576plp.9
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 16:48:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=0FuLv5Zr+cxHC18qV9Ymv7B49a2IFYwtbEueh1KcEvM=;
        b=deXVNLoyRrdJV5151g0Pj2weOCcEQHbEb21VCS8oSn05nF5EWXO9webwpbjy4Ut3Zb
         3LSfDRu3+aJpOCzDEYIVK/trRJQl9rWYVgr0C/70/2k5lL9thzLvbgE1/YlLFwfUC9PC
         AqobLGMOtXBzxKYNOADY2/q7xlXvU9X8WF8Qz38M1Kcr7CUYCQhz/rrLZpUAiCw3ZDf7
         Z/kgAzyvZ7IF1DyrR1/RsoVJfai1gZ61jtd0thGL3aQfQqPoAIGFiH/u+bbc5jurbxDt
         JJqD4iWqPTL/Od+crWcr/D4G55rsMq/iBL64vZpIVxsIVSuexFhkgweWd6XQ+bASDQUP
         x7nQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=0FuLv5Zr+cxHC18qV9Ymv7B49a2IFYwtbEueh1KcEvM=;
        b=XlyVQQEuxvBwrxD6O6y8r/A4Gq+O7R5tV0DKchl8tnVyuK0pqZoPNvC/Q/tp6bOTiq
         sg/HbbHJKI3FcLN98ht9EVd/uIwonMGzAMtYrDzRNRrpNLbz7dfDLI4mGiUCPYBOaFGM
         huw1QV2k0hgnBcbLITJe/6VG8odJv3fcy+dRsnBZMJqWC1oOnQxd5e4rCWNsYVwIjNaw
         iK0acnhvKcg86hLIhv1Z6+qHs61St36ZAiIGjFyRx8luOV6+SX9QBNaCB/xl8/qU4gpN
         xr++bTGOgQ7HreXzVAwG3IwrVSq8VNwzeg2T8S/CLjMC/MCURD48G66NHfAu6Be6RwkM
         muhA==
X-Gm-Message-State: APjAAAU0wDgE44s5+TVX/qJAVeHbREMg7IQ1wNRbKuHQvbLczen9lDLP
        ejA7yVuNy/S01ZpQGddRnCXlWA==
X-Google-Smtp-Source: APXvYqwS90/sOsmy9exLtni67ANg3PZmELosaPRMBAbUykexQdBfrAbKQp74SAYJ2MucrBWI+jCC/Q==
X-Received: by 2002:a17:902:e30b:: with SMTP id cg11mr25695004plb.335.1566258527616;
        Mon, 19 Aug 2019 16:48:47 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id 185sm18769681pfa.170.2019.08.19.16.48.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 16:48:46 -0700 (PDT)
From:   John Stultz <john.stultz@linaro.org>
To:     linux-kernel@vger.kernel.org
Cc:     Peter Griffin <peter.griffin@linaro.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        John Stultz <john.stultz@linaro.org>
Subject: [PATCH 1/3] dt-bindings: gpu: mali-utgard: add hisilicon,hi6220-mali compatible
Date:   Mon, 19 Aug 2019 23:48:38 +0000
Message-Id: <20190819234840.37786-2-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819234840.37786-1-john.stultz@linaro.org>
References: <20190819234840.37786-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Peter Griffin <peter.griffin@linaro.org>

The Hisilicon hi6220 uses a Mali-450MP4 with 4 PPs, so add
a compatible for it.

Cc: David Airlie <airlied@linux.ie>
Cc: Daniel Vetter <daniel@ffwll.ch>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: Philipp Zabel <p.zabel@pengutronix.de>
Cc: dri-devel@lists.freedesktop.org
Cc: devicetree@vger.kernel.org
Reviewed-by: Rob Herring <robh@kernel.org>
Signed-off-by: Peter Griffin <peter.griffin@linaro.org>
Signed-off-by: John Stultz <john.stultz@linaro.org>
---
 Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
index b352a6851a06..ba895efe3039 100644
--- a/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
+++ b/Documentation/devicetree/bindings/gpu/arm,mali-utgard.txt
@@ -24,6 +24,7 @@ Required properties:
       + rockchip,rk3228-mali
       + rockchip,rk3328-mali
       + stericsson,db8500-mali
+      + hisilicon,hi6220-mali
 
   - reg: Physical base address and length of the GPU registers
 
@@ -98,6 +99,10 @@ to specify one more vendor-specific compatible, among:
       * interrupt-names and interrupts:
         + combined: combined interrupt of all of the above lines
 
+  - hisilicon,hi6220-mali
+    Required properties:
+      * resets: phandles to the reset lines for the GPU
+
 Example:
 
 mali: gpu@1c40000 {
-- 
2.17.1

