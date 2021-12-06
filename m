Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 51F90469FDD
	for <lists+devicetree@lfdr.de>; Mon,  6 Dec 2021 16:55:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1387194AbhLFPyn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 6 Dec 2021 10:54:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34702 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1386155AbhLFPrM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 6 Dec 2021 10:47:12 -0500
Received: from mail-wr1-x429.google.com (mail-wr1-x429.google.com [IPv6:2a00:1450:4864:20::429])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0684DC0A88A3
        for <devicetree@vger.kernel.org>; Mon,  6 Dec 2021 07:34:35 -0800 (PST)
Received: by mail-wr1-x429.google.com with SMTP id u17so15933520wrt.3
        for <devicetree@vger.kernel.org>; Mon, 06 Dec 2021 07:34:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pKHqt/ZMaQSJrjYWvX11Lg9YeXWHfk0opUEknxmAiV4=;
        b=OgXSN/RI7Z7ynAp7o4Z2XrIT976qy/PIDvYE5w0s38r6fJpiojE2ucazNajnFss4ti
         JoSwByRXCzTCdMrAzypN3cTW1qx4PQR2kRxiBlm8tFj5f/PDnLSLfM5YyHtzBoRl1A5z
         iO1eg2O/m2fJmqveBm94044vNyFIA5RzRA5cS7zYFEaen7GD0x5S8nQb0plXtmEfu4d2
         7cpEvliq46SSiCgczATjyfcF7oJ8LZIrG6D5DZZM0ylN7VGI9Ra2MiEv6TQvBKDfKtGq
         lNmW9RWo0mMxwlZ/182CcsD/fn8o6eO3h2QKZu7hLTktXWKv30+0dKFViZE5RqGtr0Re
         k2sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=pKHqt/ZMaQSJrjYWvX11Lg9YeXWHfk0opUEknxmAiV4=;
        b=VGZrQKCN79fIryqWio/YWiymcfxQEPy8ipLNedNImP9JOyq9BtAW+4y9qLWFoTE/xv
         TUcASho6nrtPvzeEvXqPvatsZ9ksNks4Jw8n6Hduf2qc5OK7Sr5zYkRxl1NDVu+1+uGo
         y0xIO8RGksqad8BDAccvXed6fzpMYiNE5GbQDh+ctFSv7ZJCk5YeIyRFfq/8nPomPgjp
         pS5VoJQxUDfFNPJvk3ghhM5zFNfB7Pyhm9uxUzlp9DvtCgSwTzVfODTEdHhmIqE40oSt
         ja2boWxDTqKNcaJjPO9ZQ5Ol3AlwXC245O/LZrJ8bYw6p2Pmqj3ZLclzSk5e6hZbJC3K
         yNbA==
X-Gm-Message-State: AOAM5325jCgWjmfJBQlw9sSSphUqLUHShbgvZ+JrKELj+cXxVwQc8J3e
        hweE9VX8dodJNglfmkyiZPFkPquTBEs=
X-Google-Smtp-Source: ABdhPJxlECznCFi0dOAzNCC/lBL9mCyRikJWFROfLRtC4AaTGGhfauNkEJuHjDuQ+MevkMkfTYvGlQ==
X-Received: by 2002:a05:6000:1889:: with SMTP id a9mr45234360wri.68.1638804873606;
        Mon, 06 Dec 2021 07:34:33 -0800 (PST)
Received: from localhost (pd9e51d39.dip0.t-ipconnect.de. [217.229.29.57])
        by smtp.gmail.com with ESMTPSA id k27sm14115637wms.41.2021.12.06.07.34.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 06 Dec 2021 07:34:32 -0800 (PST)
From:   Thierry Reding <thierry.reding@gmail.com>
To:     Mark Brown <broonie@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: regulator: maxim,max8973: Document interrupts property
Date:   Mon,  6 Dec 2021 16:34:32 +0100
Message-Id: <20211206153432.226963-1-thierry.reding@gmail.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Thierry Reding <treding@nvidia.com>

One of the examples in the bindings has an interrupts property and the
Linux kernel driver has support for requesting an interrupt as well. It
looks like the absence from the bindings was just an oversight. Add the
property to make sure the examples can be validated.

Signed-off-by: Thierry Reding <treding@nvidia.com>
---
 Documentation/devicetree/bindings/regulator/maxim,max8973.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml b/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
index 54522827265b..35c53e27f78c 100644
--- a/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
+++ b/Documentation/devicetree/bindings/regulator/maxim,max8973.yaml
@@ -86,6 +86,9 @@ properties:
   reg:
     maxItems: 1
 
+  interrupts:
+    maxItems: 1
+
 required:
   - compatible
   - reg
-- 
2.33.1

