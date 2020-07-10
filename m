Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2755421BE75
	for <lists+devicetree@lfdr.de>; Fri, 10 Jul 2020 22:31:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726867AbgGJUby (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jul 2020 16:31:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43436 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726725AbgGJUby (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jul 2020 16:31:54 -0400
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com [IPv6:2607:f8b0:4864:20::741])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 60CB5C08C5DC
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 13:31:54 -0700 (PDT)
Received: by mail-qk1-x741.google.com with SMTP id q198so6588125qka.2
        for <devicetree@vger.kernel.org>; Fri, 10 Jul 2020 13:31:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Ws4QXKiJxpLBjxT3ZdUkj3gHF/c7NBJAkVNuujQ6ISM=;
        b=VpPsz/l3Q/jW9/X/+IEPE09NF2F44rLpqxyQfU8F23od0x+pfqeLavHtknXXvgHBpA
         FDTBj8NmfsGqgTJcRWBsQHWEaUjmj9WipTlTf0pqLc4T+YyPElW0U5nLHj+9gq0MKOV/
         Spi3JShNUvheuj5/8YeavmmgcObGG7DUQcJl8srkbho1paXaW2sZ5DPYXN5qLmgs0GGj
         4JQsnezJntwqzw46oP/tPIA2GChZvmDEAQVM/sOaqv/Hkvllz91ArmbTK8sOGj8IE6jo
         AawzcvPoiBVIEjsD3j1l8hvT4z6lt2+UXS9irNX2Ri3ZrIk7Lm6l1SdIjX8FtbhYFnE7
         2vDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Ws4QXKiJxpLBjxT3ZdUkj3gHF/c7NBJAkVNuujQ6ISM=;
        b=Jo5F4XtyYzm98dl4ncmKgrMLLOcAPhorwP+wpBI7CzbHw/qrucp5Ahxq63/z0jOujW
         ndkv9hRLySSnMN4U8X/hQ0tiYmDBV0XDSRsf5SwQ8onh7PWvkThqFdCT31GvAf+iFsIR
         8vLcKupMtpYiHSmlvntQuOozTNz+/o5KBNt7GOaydH5FRq3lTb7lqBLtqzOUop6kfEer
         BN0a0EtPR2PvW0Yo3QATIuDO+5KDEHEfSFMe4Rnh7l8+pzDg0oPWe5zqm2CtrPpjaEHC
         nKx0vz/9FlsDxc0Pl4daBpXl2NPJfQsNFHDY2etrT2VocwJrKE5RCNyw9v7SYs5mUumR
         1gZg==
X-Gm-Message-State: AOAM531GemShLih2thTvvuesmG8BBhjJEZ5DuCU8vhdbHdATRXxDREOC
        E8fJVMLW2R7zjNKcdMCbngq53NEPVBo=
X-Google-Smtp-Source: ABdhPJyJ/VnbG31NRS7njtdyv2IixhI4CSBxLqjrhQ/KwM3/XeZ+y3/QZpAIXPHoyXyTa4x2YTSUaw==
X-Received: by 2002:a37:a507:: with SMTP id o7mr66248445qke.406.1594413113405;
        Fri, 10 Jul 2020 13:31:53 -0700 (PDT)
Received: from localhost.localdomain ([2804:14c:482:92b:9d6d:2996:7c26:fb1d])
        by smtp.gmail.com with ESMTPSA id 130sm8651818qkn.82.2020.07.10.13.31.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jul 2020 13:31:52 -0700 (PDT)
From:   Fabio Estevam <festevam@gmail.com>
To:     mripard@kernel.org
Cc:     robh+dt@kernel.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Fabio Estevam <festevam@gmail.com>
Subject: [PATCH] dt-bindings: display: sun8i-mixer: Remove duplicated 'iommus'
Date:   Fri, 10 Jul 2020 17:31:24 -0300
Message-Id: <20200710203124.20044-1-festevam@gmail.com>
X-Mailer: git-send-email 2.17.1
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Commit 13871279ff5c ("arm64: dts: allwinner: h6: Fix Cedrus IOMMU usage")
introduced a double instance of 'iommus' causing the following build
error with 'make dt_binding_check':

found duplicate key "iommus" with value "{}" (original value: "{}")
  in "<unicode string>", line 45, column 3

Remove the double occurrence to fix this problem.

Fixes: 13871279ff5c ("arm64: dts: allwinner: h6: Fix Cedrus IOMMU usage")
Signed-off-by: Fabio Estevam <festevam@gmail.com>
---
 .../bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml       | 3 ---
 1 file changed, 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
index c2fbf0b06d32..c040eef56518 100644
--- a/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
+++ b/Documentation/devicetree/bindings/display/allwinner,sun8i-a83t-de2-mixer.yaml
@@ -42,9 +42,6 @@ properties:
   resets:
     maxItems: 1
 
-  iommus:
-    maxItems: 1
-
   ports:
     type: object
     description: |
-- 
2.17.1

