Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AAC5F3AD3F9
	for <lists+devicetree@lfdr.de>; Fri, 18 Jun 2021 22:55:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234334AbhFRU6A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Jun 2021 16:58:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48218 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234285AbhFRU5y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Jun 2021 16:57:54 -0400
Received: from mail-wr1-x430.google.com (mail-wr1-x430.google.com [IPv6:2a00:1450:4864:20::430])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 897E9C061760
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:44 -0700 (PDT)
Received: by mail-wr1-x430.google.com with SMTP id o3so12121138wri.8
        for <devicetree@vger.kernel.org>; Fri, 18 Jun 2021 13:55:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=baylibre-com.20150623.gappssmtp.com; s=20150623;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=jRLam3ZYflZLVyyutvsIpS6o5/Y7d41E9E4JTAN/wTs=;
        b=gWB6youcrGgkWbJ8AIjkohQ82VUYjFUB3tVCiTMNnPvJVfqZnUw8Zf+NjBvaek04OF
         DaMAja3dMKukQuasVORhFiIRkDUkoXk8la/p2H/rsZQ29LK6lXmene7qa4WP5e4kyw47
         uFgYSvv3zqaqnMhwvdASbSSgYpNLQMHqxl0r5NUPezi9AkJabcDLsgYgT6xauMJCHiw1
         gNRcbeT3GW+4BI/c89H4gjNnpVr0l2C6vg/JVlzEXLL8PwsE2xemRvmm6GO5uRsBpopr
         YlWb4l4Av9h7kKCQqT/gJWq3v7vWGE7gyolC5MzSylgZYAN/UcOZGQ7ErFkOOnCBIwCb
         H8gg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=jRLam3ZYflZLVyyutvsIpS6o5/Y7d41E9E4JTAN/wTs=;
        b=R/iyzx1FTyK6jSrkmSjkRtTHgGsR34JbvmJW44DPcCgacbm0s6dLfyKyz0Eh3ZxL4V
         Vq12l42UwC7vdK1vWf9cWPujFstif73rm0czmLcLLfCPzF5b75U6nr/1RXzvTiv5SZ9M
         saIF5R/NumA6mCdc1NmArtMGy+ceI6bCI5h2lzH22zPUw2uFLXIui5Uk8O2qYAlKROJf
         StSPLtCRkjl8G0ybbWS28oq8tCf1yBj2QtRW3PZTaABvsyQDTrpnqIANratGs2lljDpO
         D0+XX7qapmclUSTpzZ1FqEMGtI3sHW5gHsyKuEnqAKWaoHTrsSjPAoVX5wVM+hZYvjM5
         O5eg==
X-Gm-Message-State: AOAM5339zeAvCOKGeP/xbLQwKk+o5YFCFrwlYxcwB6ALGhr6fduU/Zpa
        bcd8ZJIHP3xbklPg5CO3F7Xx2xWydPpgAA==
X-Google-Smtp-Source: ABdhPJwddHi1wiHWVq/27aORb5P87HAYyN2nQPoE9B42oXNCu4EJgWhDBuV2lIRN+TzjLsnmLMLY8A==
X-Received: by 2002:adf:d229:: with SMTP id k9mr14670400wrh.245.1624049743172;
        Fri, 18 Jun 2021 13:55:43 -0700 (PDT)
Received: from localhost.localdomain (laubervilliers-658-1-213-31.w90-63.abo.wanadoo.fr. [90.63.244.31])
        by smtp.googlemail.com with ESMTPSA id j12sm9745476wrt.69.2021.06.18.13.55.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 18 Jun 2021 13:55:42 -0700 (PDT)
From:   Corentin Labbe <clabbe@baylibre.com>
To:     arnd@arndb.de, linus.walleij@linaro.org, olof@lixom.net,
        robh+dt@kernel.org, soc@kernel.org, ulli.kroll@googlemail.com
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Corentin Labbe <clabbe@baylibre.com>
Subject: [PATCH v2 3/5] dt-bindings: add vendor prefix for ssi
Date:   Fri, 18 Jun 2021 20:55:31 +0000
Message-Id: <20210618205533.1527384-4-clabbe@baylibre.com>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20210618205533.1527384-1-clabbe@baylibre.com>
References: <20210618205533.1527384-1-clabbe@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add vendor prefix for SSI Computer Corp (https://www.ssi.com.tw/)

Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 800d0536be75..6d70d6ba60a0 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1090,6 +1090,8 @@ patternProperties:
     description: Spansion Inc.
   "^sprd,.*":
     description: Spreadtrum Communications Inc.
+  "^ssi,.*":
+    description: SSI Computer Corp
   "^sst,.*":
     description: Silicon Storage Technology, Inc.
   "^sstar,.*":
-- 
2.31.1

