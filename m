Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id D86F7951E1
	for <lists+devicetree@lfdr.de>; Tue, 20 Aug 2019 01:51:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728786AbfHSXsw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 19 Aug 2019 19:48:52 -0400
Received: from mail-pg1-f195.google.com ([209.85.215.195]:41808 "EHLO
        mail-pg1-f195.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728768AbfHSXsv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 19 Aug 2019 19:48:51 -0400
Received: by mail-pg1-f195.google.com with SMTP id x15so2089756pgg.8
        for <devicetree@vger.kernel.org>; Mon, 19 Aug 2019 16:48:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Jxj+2KZBWtI0JOpMk5ZJCeu1tAsbbFil+Y5lPkm52H0=;
        b=IQ80pFZQbJTfI6qmkgm+X+z7T8DmQFSexAjS798jPAeYmmSZvKqg06wlrUWHjTqetS
         pHe2HzyMwsb87YS2RnHuQkyNUaEAfCUbelgxXpsrVrA4jVavbmh5+RqRvrKSUL2gDSBq
         HNzka37Lk81sHpP1Y4riaLwTV71A38hbWVOZCBafoKC78lXSVf3bVUbYMOA6VZQ6LYA8
         rwcLSCBDQ2AeHiQpblEGOT+1ZHQuzRIDHmtEbrbzPypjmYgkvsqHYNRWlHow0JAT8DDm
         mokqDCa9u+jye8pLY5XmDAMyT0QgAhT4ezy4EmbVCCydamwAQ+lDBzjVIWGOgd4AYvla
         GRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=Jxj+2KZBWtI0JOpMk5ZJCeu1tAsbbFil+Y5lPkm52H0=;
        b=Ihrz9UnLs10q5ePwJagyLjuwiNiQBLj86+89InTzGBwR25nd+6SnOna00IL8MM88c/
         pK7+0mvNZwJBy/3DEFd0xreLD577F27qdaYGtjgkx1O0nFJTyenn4dCKo7K0mMyYXdRU
         gHJ9RrhY/NBc6GaaD5LDwfTuWw4jPpifXwopXATnQWhPDTBjMx9uhQDnugx5HoJG5t+U
         /ZC8oByqxF4rwW9sWAClGaVg7Pzhj7Xer06lWLe5dqDB5vG2TYOhwL0c5xYHCOD7CEo8
         T2U5DbpN8SneKNgml4Yee29A7MZW5/rBNLcLJGlm7gzkFm5X2lB4JQTxT0E0hVQLCnmJ
         8TLw==
X-Gm-Message-State: APjAAAWm5vRVOAM0MnPGC/Os8KdcE1e7+IO5gHiWQIqvapjGDnOSLX5t
        Zq/3GvbzQ+aYPUX1i2oVFCsIIQ==
X-Google-Smtp-Source: APXvYqxDZJWpa+rGG7aHYapq5x9JNeNVXRKzvW0GVlc0jWWCMSrxU1NQ4LMuf5Vx7sh6EKVz9sl47Q==
X-Received: by 2002:a65:68cd:: with SMTP id k13mr22123663pgt.411.1566258530724;
        Mon, 19 Aug 2019 16:48:50 -0700 (PDT)
Received: from localhost.localdomain ([2601:1c2:680:1319:692:26ff:feda:3a81])
        by smtp.gmail.com with ESMTPSA id 185sm18769681pfa.170.2019.08.19.16.48.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 19 Aug 2019 16:48:50 -0700 (PDT)
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
Subject: [PATCH 3/3] dt-bindings: reset: hisilicon: Add ao reset controller
Date:   Mon, 19 Aug 2019 23:48:40 +0000
Message-Id: <20190819234840.37786-4-john.stultz@linaro.org>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190819234840.37786-1-john.stultz@linaro.org>
References: <20190819234840.37786-1-john.stultz@linaro.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Peter Griffin <peter.griffin@linaro.org>

This is required to bring Mali450 gpu out of reset.

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
 include/dt-bindings/reset/hisi,hi6220-resets.h | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/include/dt-bindings/reset/hisi,hi6220-resets.h b/include/dt-bindings/reset/hisi,hi6220-resets.h
index e7c362a81a97..63aff7d8aa45 100644
--- a/include/dt-bindings/reset/hisi,hi6220-resets.h
+++ b/include/dt-bindings/reset/hisi,hi6220-resets.h
@@ -73,4 +73,11 @@
 #define MEDIA_MMU                       6
 #define MEDIA_XG2RAM1                   7
 
+#define AO_G3D                          1
+#define AO_CODECISP                     2
+#define AO_MCPU                         4
+#define AO_BBPHARQMEM                   5
+#define AO_HIFI                         8
+#define AO_ACPUSCUL2C                   12
+
 #endif /*_DT_BINDINGS_RESET_CONTROLLER_HI6220*/
-- 
2.17.1

