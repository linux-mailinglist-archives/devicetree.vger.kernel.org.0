Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A0366D5658
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 04:01:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231750AbjDDCBi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 3 Apr 2023 22:01:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229689AbjDDCBh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 3 Apr 2023 22:01:37 -0400
Received: from mail-ot1-x331.google.com (mail-ot1-x331.google.com [IPv6:2607:f8b0:4864:20::331])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A1E041725
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 19:01:36 -0700 (PDT)
Received: by mail-ot1-x331.google.com with SMTP id 46e09a7af769-6a11f365f87so926385a34.1
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 19:01:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680573696; x=1683165696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=XZbNozN2utHiE0VKfdEzbsRFpw71XnblNKQNnSFjBl4=;
        b=R9nqQAeAdQkACL3jM/QhABXIdjloVpwbEXqEQjRDX/i5ZhCzDLBo6l+O+8fAq5WzHa
         FqrwesNfw4rMup7d4zws4iB4/WItbrcqG4LaL+JE1DgQXW94k3xR1SpizQ0uxfDBsoIW
         /8vx4d6sB+Xw2fm0M0WOE/OXe1dE2n3gaQDmQLv0nk1J8eiVUd6KOMPJaRBlV+x/WHCt
         e4PE1xCV2IJDRjE45Rc1Rrz+eXdrg3V5UB6ZncT++gg8eicTJy4Q2wew0Wwch+hWkdNN
         H5gpLvyNRQJ7SVbrsQqCiDwk01JJxG2bc+sALBEvLW5ekjiJY7n9MnHlDR1zGd9jaIrf
         VwJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680573696; x=1683165696;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=XZbNozN2utHiE0VKfdEzbsRFpw71XnblNKQNnSFjBl4=;
        b=u9sI9COymlyStzICsD/iQzPs1ndzeaAGbHIvX4FySNwgX7orL+auSyBQgxEnlsQVdO
         lBhjSub9LTMyX9bcDbp4pfZJNM41arIhs8WFRmqm06spNK+Y09Gb55OZGH+P8vSTgdfe
         RzwybmhWY5wI/a6kOSrYitxlUM8zN69oVFx1eynDvDK2EwTnu9vOCxPu6E2P5a6eZ8vI
         VzjHjFnQcsR1596IDdY/NK9W29pi9BWutataL76pTf+b5ubT/4hsG9ukp2zpXDQbS4CU
         JlHX+GdG4t+6vbjZvSvhpVfqby0A5sOgpb2oURnC480jo9mqEZ/m48L1w9EvHB4FVY4z
         /KPA==
X-Gm-Message-State: AAQBX9d4m8XTswOWfzqwvy2UPW9UD6SQWDzm36tC3UgZRpyIOsV+8lLB
        ccTwRaT0U5gRk1McElGxr5c=
X-Google-Smtp-Source: AKy350YxZkywimTf3uIg8Z7XnRTDyfX8FtLWae/PVQD/+4j8YwUC3GzGveod9g1LUhCdDD8yIbqTWw==
X-Received: by 2002:a05:6830:3099:b0:69f:793a:5779 with SMTP id g25-20020a056830309900b0069f793a5779mr572061ots.2.1680573695860;
        Mon, 03 Apr 2023 19:01:35 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:b774:9c46:6b8:3f2])
        by smtp.gmail.com with ESMTPSA id g3-20020a9d6c43000000b0069f509ad088sm4927955otq.65.2023.04.03.19.01.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 03 Apr 2023 19:01:35 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: display: bridge: ldb: Add an i.MX6SX entry
Date:   Mon,  3 Apr 2023 23:01:28 -0300
Message-Id: <20230404020129.509356-1-festevam@gmail.com>
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
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Reviewed-by: Marek Vasut <marex@denx.de>
---
Changes since v2:
- Collected Reviewed-by tags.
- Improved the Subject by not stating support. (Marek).

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

