Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C39706D017A
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 12:42:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229770AbjC3Kmn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 06:42:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32938 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229655AbjC3Kmm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 06:42:42 -0400
Received: from mail-ot1-x32d.google.com (mail-ot1-x32d.google.com [IPv6:2607:f8b0:4864:20::32d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D236330ED
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 03:42:41 -0700 (PDT)
Received: by mail-ot1-x32d.google.com with SMTP id 46e09a7af769-69f00c18059so544132a34.0
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 03:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680172961; x=1682764961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=2Uok0Hmd0al/CPOCQ4MNNIKk7OYiNzcT2cb9TQrUjBQ=;
        b=SlPySRm9vRJk6SxCOX0HQ00GpXSJrjXuDg4lkH3y6M5bw+95PoFZ9DSXQIYvi9czed
         klrAq9Z0VIXBsrYst17c/DZGHl52ilPXGn2zSb/HBzmLPlT/Wjv5AXL9fVN0jR5+2hVK
         X0j8ogSCU6tG89hp4oaOqJSqRE4NyKouEMdWVD3hEvIDFjnNr1JQhko4QNWEVpY5fJOh
         fBUvEThMkkCgbwrtfqGyYfRtC0b3qxnr6vcJvOC2s/xwQzKp7lXzVBijOrl4i4CT50Gt
         jfJSa2n5J0COEruuD8UgsBCJQ0/uFep2AZI/vFPbgs8MLzmOXHWIWxSRbsf5ltuXcmsu
         sRGQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680172961; x=1682764961;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=2Uok0Hmd0al/CPOCQ4MNNIKk7OYiNzcT2cb9TQrUjBQ=;
        b=PG9hxbd/BqxzRO3+eYB0PLGHwTYcUikz3Lt8VVOFiGldZ4sMxyg26kUWvova2KyKrt
         TXHCGJQrGErMnyJFEtQHJK4QSZ6w2kQOeKLe7pBWPKCR7pHQjUdGA9kqxginWzN1ivmb
         J0URLv4e81BQ95+VjBnh5FsOy8Wg+eE+REfASRk6/UXl5+prDjaR4HJmNgYDuVVFypxP
         KMueceYwnqf0CSX6mBj3hIbrPUdPc3gIhIAcBOb0ljvLiMiIGM4nF/3HMFWiJQ34tCuN
         /m2UEj+D9nMHvQrIMpg/T4gHaTM8xkwK/bLQOO88D6RU1S4Li1SdVwB90NKPA1Zcx5hK
         NLHA==
X-Gm-Message-State: AAQBX9d2ezHiE/8TuXFmoWhelyfT9+O+bQde8iORDjTrbolKI1+rNgbW
        UQFvB7v/TUlbxn30lE5SaNxIOHs0hLXdZA==
X-Google-Smtp-Source: AKy350YHZUhisACUe5VWR1JQ10GCarrQ8GGTo8J5CY11WD8ixQ5uU2qGNjsCa3TIvNhtyG801M++qA==
X-Received: by 2002:aca:3442:0:b0:37f:9335:7f96 with SMTP id b63-20020aca3442000000b0037f93357f96mr741642oia.0.1680172960960;
        Thu, 30 Mar 2023 03:42:40 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:bb2:6db6:1a29:3df5])
        by smtp.gmail.com with ESMTPSA id s4-20020a0568080b0400b0038755008179sm8414071oij.26.2023.03.30.03.42.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 30 Mar 2023 03:42:40 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH v2 1/2] dt-bindings: display: bridge: ldb: Add i.MX6SX support
Date:   Thu, 30 Mar 2023 07:42:32 -0300
Message-Id: <20230330104233.785097-1-festevam@gmail.com>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

i.MX6SX has a single LVDS port and share a similar LDB_CTRL register
layout with i.MX8MP and i.MX93.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
Changes since v1:
- Do not duplicate the entire if. (Krzysztof)

 .../devicetree/bindings/display/bridge/fsl,ldb.yaml          | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
index 6e0e3ba9b49e..07388bf2b90d 100644
--- a/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/fsl,ldb.yaml
@@ -17,6 +17,7 @@ description: |
 properties:
   compatible:
     enum:
+      - fsl,imx6sx-ldb
       - fsl,imx8mp-ldb
       - fsl,imx93-ldb
 
@@ -64,7 +65,9 @@ allOf:
       properties:
         compatible:
           contains:
-            const: fsl,imx93-ldb
+            enum:
+              - fsl,imx6sx-ldb
+              - fsl,imx93-ldb
     then:
       properties:
         ports:
-- 
2.34.1

