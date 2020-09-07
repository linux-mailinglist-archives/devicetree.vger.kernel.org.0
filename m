Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3BEAA25F94F
	for <lists+devicetree@lfdr.de>; Mon,  7 Sep 2020 13:24:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728980AbgIGLYO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Sep 2020 07:24:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42588 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728941AbgIGLXA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Sep 2020 07:23:00 -0400
Received: from mail-wm1-x342.google.com (mail-wm1-x342.google.com [IPv6:2a00:1450:4864:20::342])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3AE82C0617B9
        for <devicetree@vger.kernel.org>; Mon,  7 Sep 2020 04:10:33 -0700 (PDT)
Received: by mail-wm1-x342.google.com with SMTP id z9so13820877wmk.1
        for <devicetree@vger.kernel.org>; Mon, 07 Sep 2020 04:10:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=AaJv1mu5ukB/CIcMyJjiUkroua19/SVkAvuVAHfagew=;
        b=GxsVYEWAqcHsbTP7ldWw3XMCSUXXkLDNAViB7TZMo3ZdMOGcqOqxNnbyfEhbNIoRUM
         46jE43/CA1WYcTx4AqrwiYOz/01itWTgB+EffYBiHX4xig9Tao2uLgSoQlTWbshlEH2j
         0FPQtFZmsYMXrHjWZYDF7JSkI/IY3sQoSn06lAxsA6tikxN+NkDDlOpLMHVtlLgOYAYV
         xgbWw8OmqH0UulxQdF141iVs1KUGrOXXXpCC5sd7enVwNSdfwFHhGpWtBP9A9yn3fHsC
         BfpBBqMkntjTpjaS26AU1P7IzvA6Yq1idSLklbk8e6YWdhVWF0Gjyo9IT4YixZjMlBYI
         jWQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=AaJv1mu5ukB/CIcMyJjiUkroua19/SVkAvuVAHfagew=;
        b=sLTya/Tct6k6f+XV9RO6NPBJeiisYkOG30nXc6iRNEx1BIwi/fVmkRy3JFfZXnnRkt
         Qb0YZwF4qd4AgsltA/ozi8pALZ+Tz/0NWBJ2i3F61bfaASt/NN+/rxvwTbY8vpJ4fUqH
         VbDrfI7/5Nj8A5m3+gk8TxBJJrKxfVGKxXCTVEmpf7ih9n6BG4LnBLo+xIY+PA8TgQgk
         NaFa1VSS97XU0rZLECj5SkBoW5MP4AQiiThnH+uLpG+2ME6ej4DswmJaGk9wSKrd4C1V
         wbJJJrDBwKILQ581o6qqqRJz/o1DuUm9k5553DhyPE/mc4WvO9Lq3hrjayJce9xWmztb
         14jA==
X-Gm-Message-State: AOAM532YcpFWvplU8UMuC/Sc7j3kBenG7nfBmL0l9SlhMGqR7gd+ZOwQ
        63Js0vclYfzUWJOyKfiB2Oi53Q==
X-Google-Smtp-Source: ABdhPJxBVx0IfuJV1VVAaaxBYLauf53V/lzKaqIwtKzsD1pKBa6yHb2u7PSmJhqIF4DQRqGalb1VWA==
X-Received: by 2002:a7b:cb4e:: with SMTP id v14mr21097200wmj.140.1599477031712;
        Mon, 07 Sep 2020 04:10:31 -0700 (PDT)
Received: from bender.baylibre.local ([2a01:e35:2ec0:82b0:5405:9623:e2f1:b2ac])
        by smtp.gmail.com with ESMTPSA id u13sm19922111wrm.77.2020.09.07.04.10.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 07 Sep 2020 04:10:31 -0700 (PDT)
From:   Neil Armstrong <narmstrong@baylibre.com>
To:     thierry.reding@gmail.com, sam@ravnborg.org,
        devicetree@vger.kernel.org
Cc:     dri-devel@lists.freedesktop.org, linux-amlogic@lists.infradead.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <narmstrong@baylibre.com>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add Shanghai Top Display Optolelectronics vendor prefix
Date:   Mon,  7 Sep 2020 13:10:25 +0200
Message-Id: <20200907111027.21933-2-narmstrong@baylibre.com>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20200907111027.21933-1-narmstrong@baylibre.com>
References: <20200907111027.21933-1-narmstrong@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Shanghai Top Display Optolelectronics Co., Ltd  is a display manufacturer
from Shanghai.
Web site of the company: http://www.shtdo.com/

Signed-off-by: Neil Armstrong <narmstrong@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a1e4356cf522..4e9dfb352c68 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1078,6 +1078,8 @@ patternProperties:
     description: TPK U.S.A. LLC
   "^tplink,.*":
     description: TP-LINK Technologies Co., Ltd.
+  "^tdo,.*":
+    description: Shangai Top Display Optoelectronics Co., Ltd
   "^tpo,.*":
     description: TPO
   "^tq,.*":
-- 
2.22.0

