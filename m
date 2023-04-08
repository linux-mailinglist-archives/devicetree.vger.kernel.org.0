Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CDFFD6DBC61
	for <lists+devicetree@lfdr.de>; Sat,  8 Apr 2023 19:47:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229517AbjDHRrr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 8 Apr 2023 13:47:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40278 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229454AbjDHRrq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 8 Apr 2023 13:47:46 -0400
Received: from mail-ot1-x32a.google.com (mail-ot1-x32a.google.com [IPv6:2607:f8b0:4864:20::32a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 13BC66A74
        for <devicetree@vger.kernel.org>; Sat,  8 Apr 2023 10:47:46 -0700 (PDT)
Received: by mail-ot1-x32a.google.com with SMTP id 46e09a7af769-6a37d42f989so247734a34.0
        for <devicetree@vger.kernel.org>; Sat, 08 Apr 2023 10:47:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680976065; x=1683568065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mxx7dBXytjcvNm/rosWinVPjziS+rj8SL88BmUqc9E4=;
        b=BrNwpICCDSH3WMVLXtDJp08IMOJLzOL6jtHSWroA8TtRbW4pkVaiKyeGbnXq11ZJ+U
         jNwiKlqusYdGnoSL3QWDNc90CNOsbpgXILGxCHUCxwHdaEBO3xgV6VJfvucG4qkK7Eri
         /f02jrUpc3jeDZmpNiHJ8ugivGFzKnpEBtqD1rYrsqzcIccHjLMrVAvOxQ56s9nPFlov
         5pkRDT3IuOX9XgMCt8xwCwzTmoD14On7Nzqgbi9AmoEVyt1ioR15T13evasWWBBKX5JO
         O8VIDHx0guD5ekK5AJprthQMZL0wz+8FySzeKBwM4tEMF1CCfynljR07lB0qtJNizA/n
         MPdw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680976065; x=1683568065;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mxx7dBXytjcvNm/rosWinVPjziS+rj8SL88BmUqc9E4=;
        b=JawD3UNpGF4D/ArloBPUbTKrxqH3jfy/LvccapcTIGWueFrLIYlQQd6nMugfvjuU73
         /4TJNb6kRl4u7Doqa+5ObXTyYI7MYUxNCEUpiSXhKpEnhClQGuwljKQmWE2SI8jbT5pL
         ieWeUkCK//mkCSCBsKQll0EYYVxZevbyKAtwPtN3y40ctFvPOcX1cmsarmsBhY0jn2g9
         ahE32O5FOjNohqNRm5b50YdEcMxV4smaxVU8RrJD+9co72rIo4a+G7vNPQHjGvUDxhfz
         iz1uZaGhAcaOKcv26EWDbGla+qy4Y2js46HykutGWHvwBB2e6C6iGqAEosRKsrlB1Omz
         RKoQ==
X-Gm-Message-State: AAQBX9eKz+5PsRAGXWDh86CZKLUX3yt5ck9BMfm1yO+ieP7CKbEUYw27
        ksPmvWABvj8x0yVrQqonxhc=
X-Google-Smtp-Source: AKy350YfWPPhiA07t0vZNxQB6bRWNnhghQHfxIA4MFZyyof9eJboYjDRI10kDRtqt4SphuQsHTGgFQ==
X-Received: by 2002:a05:6870:b512:b0:17e:3772:bdcc with SMTP id v18-20020a056870b51200b0017e3772bdccmr1479902oap.5.1680976065298;
        Sat, 08 Apr 2023 10:47:45 -0700 (PDT)
Received: from fabio-Precision-3551.. ([2804:14c:485:4b69:c705:4ba6:4922:a289])
        by smtp.gmail.com with ESMTPSA id w2-20020a056830110200b006a13f7701e3sm2724210otq.32.2023.04.08.10.47.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Apr 2023 10:47:44 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     robh+dt@kernel.org
Cc:     dianders@chromium.org, neil.armstrong@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: [PATCH] dt-bindings: drm/bridge: ti-sn65dsi86: Fix the video-interfaces.yaml references 
Date:   Sat,  8 Apr 2023 14:47:36 -0300
Message-Id: <20230408174736.1789082-1-festevam@gmail.com>
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

video-interface.txt does not exist anymore, as it has been converted
to video-interfaces.yaml.

Update the references to the new file name.

Signed-off-by: Fabio Estevam <festevam@denx.de>
---
 .../devicetree/bindings/display/bridge/ti,sn65dsi86.yaml  | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
index 911564468c5e..967b1deb4936 100644
--- a/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
+++ b/Documentation/devicetree/bindings/display/bridge/ti,sn65dsi86.yaml
@@ -106,7 +106,7 @@ properties:
                     description:
                       If you have 1 logical lane the bridge supports routing
                       to either port 0 or port 1.  Port 0 is suggested.
-                      See ../../media/video-interface.txt for details.
+                      See ../../media/video-interfaces.yaml for details.
 
                   - minItems: 2
                     maxItems: 2
@@ -118,7 +118,7 @@ properties:
                     description:
                       If you have 2 logical lanes the bridge supports
                       reordering but only on physical ports 0 and 1.
-                      See ../../media/video-interface.txt for details.
+                      See ../../media/video-interfaces.yaml for details.
 
                   - minItems: 4
                     maxItems: 4
@@ -132,7 +132,7 @@ properties:
                     description:
                       If you have 4 logical lanes the bridge supports
                       reordering in any way.
-                      See ../../media/video-interface.txt for details.
+                      See ../../media/video-interfaces.yaml for details.
 
               lane-polarities:
                 minItems: 1
@@ -141,7 +141,7 @@ properties:
                   enum:
                     - 0
                     - 1
-                description: See ../../media/video-interface.txt
+                description: See ../../media/video-interfaces.yaml
 
             dependencies:
               lane-polarities: [data-lanes]
-- 
2.34.1

