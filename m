Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 72A53383D79
	for <lists+devicetree@lfdr.de>; Mon, 17 May 2021 21:32:29 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234364AbhEQTdn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 15:33:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234065AbhEQTdj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 15:33:39 -0400
Received: from mail-wm1-x329.google.com (mail-wm1-x329.google.com [IPv6:2a00:1450:4864:20::329])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 00FE5C061573
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 12:32:20 -0700 (PDT)
Received: by mail-wm1-x329.google.com with SMTP id u5-20020a7bc0450000b02901480e40338bso459549wmc.1
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 12:32:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=avksdsVdDMZgIQ3gqsIJUobMN9ruEWR0vv/Un1XX3xU=;
        b=hTgaBFCmuFToWxc8asnrsyshPzpqHvZ3IqBoEB57RqwsPd/debGCK6X5Q4ySKDo/k/
         8cOZpGUfYySaYQi1oinmuzNTaUcu5HSCVVLFnknxFgvSV2CR6itIKY5KvlhcugGcJtEM
         wEwc2uY6AGNTufVQrlxgHA88xa61dMnwgDvf83/teANds9U5IkoUQ5n58Ac/ciCFNugf
         d9fvnxrI9KkWkcMYDfacBOtEDSsosmy65IEAMEOOS2FlIa0BdQ8jksW8mQF8jBcBW1k4
         /1fXfgtwXOBQNDBJ0G6HITTHnMy6AMRf2NPJES6wqGUU6MKJyLNsdBEozk5daSj/HV1I
         SuQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=avksdsVdDMZgIQ3gqsIJUobMN9ruEWR0vv/Un1XX3xU=;
        b=nfhLtog+NouWG44ZVR5bqIE0iF/jKSEwkZ8eHI/zsRX+hVJDHavP2ThT/qLwVMwv8Y
         SOnG2IsXqTC+0Nzv4XGK+XBE/RWEN8yMwRMEjwn4uF2R1LPZT4pdc1koHE8Syg0Sv3ci
         mLemDZYTIk0cR0w6rHsLzt4ua8hOIH/i12rj452SOJvrE6W2dFcXFuviNaYx+9h/vksw
         I4YBCP1Xjd1IOs03nssYGwNMICjgqaHrHJEGlENhSQnPtFHCEDX0KUfVGJaBJRr5eRzX
         1l2CKSJhbdBJTPa1leQk6+UA+gcEjOi+vyJFWOO/Wx4PR3Ar9Q9hHBazLgcx7SknvNM1
         zsvQ==
X-Gm-Message-State: AOAM530R+cpTEJv+nwRe9GVxgjdaETHX0lN0yoQZftBjPbMcFzspqQTj
        XqCmya1SVtZ3jYaUBhI6Md5UeQ==
X-Google-Smtp-Source: ABdhPJw8RZbZSLGMEc2ndPTw06YXtCitfg1ZKJ/xrkVPyubmbaf6haCN+bTuDb9k6W+bPk20b0z48g==
X-Received: by 2002:a7b:cd01:: with SMTP id f1mr609530wmj.177.1621279938739;
        Mon, 17 May 2021 12:32:18 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id e10sm18928907wrw.20.2021.05.17.12.32.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 12:32:18 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH 2/5] dt-bindings: add vendor prefix for edimax
Date:   Mon, 17 May 2021 19:32:02 +0000
Message-Id: <20210517193205.691147-3-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210517193205.691147-1-clabbe@baylibre.com>
References: <20210517193205.691147-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for EDIMAX Technology Co., Ltd (https://www.edimax.com/)

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index cf69dfd3d522..003f6354db04 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -329,6 +329,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edimax,.*":
+    description: EDIMAX Technology Co., Ltd
   "^edt,.*":
     description: Emerging Display Technologies
   "^eeti,.*":
-- 
2.26.3

