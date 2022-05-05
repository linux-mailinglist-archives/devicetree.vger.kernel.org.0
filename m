Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E790851BDE6
	for <lists+devicetree@lfdr.de>; Thu,  5 May 2022 13:19:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234884AbiEELXM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 5 May 2022 07:23:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234423AbiEELXK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 5 May 2022 07:23:10 -0400
Received: from mail-oi1-x233.google.com (mail-oi1-x233.google.com [IPv6:2607:f8b0:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A691E53B6D
        for <devicetree@vger.kernel.org>; Thu,  5 May 2022 04:19:31 -0700 (PDT)
Received: by mail-oi1-x233.google.com with SMTP id r8so3990264oib.5
        for <devicetree@vger.kernel.org>; Thu, 05 May 2022 04:19:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k0knzoqQ+CksJKEaUIDp+j9SQXVw3PTcAV96Xbvi4+4=;
        b=Ysz59IG2XceRkyLga69c4HhEAByIUdpHHKT26EF7QAPcjmIZIRKufsH3Rv1a5q5hRs
         xpk1bPZKIrMaSYE51w7dgqa1xmsTLiQ8lx9kWsex4wVCBOhmYO9Z7FwzeY1bMP9fUiF5
         cHQoIkIRoLkMmjTeUh1sMLhQug9BwgvWtad+Uiqegv86muvwDKPNEjPERII9kgoqPVkb
         FP6M255SXAD1r/+Uf2lgJ++HgOGRZtwyliMOdBBK25Loi1mBHLeMKfYdzhhvQeCto6HA
         5REQS2HCHeDTqSVlqIspjnwSReYV0cBAeJ/RvGysV9HGTuNgQzEL+kX9SNTpmhE8e2S3
         6kuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=k0knzoqQ+CksJKEaUIDp+j9SQXVw3PTcAV96Xbvi4+4=;
        b=hxp5vnrLcSOWh5ElZm4tS6MQQ2ftArlGCrGZj7wm/aBWJyc1s1XmAl+rmDBXeBm5n5
         XvCexra/nC8vtXZ0tyY5zbCNc9+sHlobxHnKa1RoZVFQmyoGAnE/WFgG//DKCYmNt6eH
         SgXtbZdnBBLXkYfDxXIkbDIUc64R80H4phfb3SfWNxFvLk4muQBmClUPaEc2ClTajHl3
         xxAR5EO26uZyjbBTMxnOMD+2z4c7CLS09qKJwD84oJKUl/CXCxDLKBPKa2yR4DyruIW0
         225g9F01iZ5HODFo3jAVMgtQig7eiaPXBYpgYvbcyeQNJFdgGs5hIe1YQfyqNbuiyGFJ
         zgrQ==
X-Gm-Message-State: AOAM530lEBHgIa2gl16LGuBLhUQw13fXFKt8H5XPPdoUYQwG9xAz4+KO
        bZvd0yrbRQfunIHidWm1+3wtDgmMTg0=
X-Google-Smtp-Source: ABdhPJwxRUJ1+fAtTmNgZ+1YXyCVw06eL5t7rLzPUi9wiILJYEDMlsBx9fWccayGotCA8ya1SQ4Cbg==
X-Received: by 2002:a05:6808:2085:b0:322:b167:77f9 with SMTP id s5-20020a056808208500b00322b16777f9mr2021822oiw.152.1651749570971;
        Thu, 05 May 2022 04:19:30 -0700 (PDT)
Received: from localhost.localdomain ([2804:431:d77f:b636:b8f0:b089:e0ad:f3c2])
        by smtp.gmail.com with ESMTPSA id n7-20020aca5907000000b00325cda1ff9esm532779oib.29.2022.05.05.04.19.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 05 May 2022 04:19:30 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     shawnguo@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        robh+dt@kernel.org, Fabio Estevam <festevam@denx.de>,
        Rob Herring <robh@kernel.org>
Subject: [PATCH v2 1/3] dt-bindings: vendor-prefixes: Add prefix for Storopack
Date:   Thu,  5 May 2022 08:19:03 -0300
Message-Id: <20220505111905.1510904-1-festevam@gmail.com>
X-Mailer: git-send-email 2.25.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_FROM,
        RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Fabio Estevam <festevam@denx.de>

Add a vendor prefix entry for Storopack (https://www.storopack.com).

Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Rob Herring <robh@kernel.org>
---
Changes since v1:
- None. Only added Rob's Acked-by tag.

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index a1ff0f743e78..e9235ae11e78 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1197,6 +1197,8 @@ patternProperties:
     description: StorLink Semiconductors, Inc.
   "^storm,.*":
     description: Storm Semiconductor, Inc.
+  "^storopack,.*":
+    description: Storopack
   "^summit,.*":
     description: Summit microelectronics
   "^sunchip,.*":
-- 
2.25.1

