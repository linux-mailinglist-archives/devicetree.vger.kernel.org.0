Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6982C4F6ECA
	for <lists+devicetree@lfdr.de>; Thu,  7 Apr 2022 01:38:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237845AbiDFXjq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 19:39:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58296 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237949AbiDFXjR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 19:39:17 -0400
Received: from mail-pj1-x102b.google.com (mail-pj1-x102b.google.com [IPv6:2607:f8b0:4864:20::102b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A92C31FE54C
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 16:37:12 -0700 (PDT)
Received: by mail-pj1-x102b.google.com with SMTP id m12-20020a17090b068c00b001cabe30a98dso7285654pjz.4
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 16:37:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pensando.io; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vbl0tI5xWg5AbixL0vHnmPtEGDrnQab/dcpQD6r+8gY=;
        b=lz4NLZqcbFnGC7NhpX3Lae6m6aNJN8k/gEoTYdschgXlHu6O6EOfvqWnLyJ2cCIfdQ
         zg3Pevrwe8qeihORSIEva+g+tiakkbGcenhQKaqJarxzZ1vz0Fi/Ej7yv5Z9Rt2Dvgib
         t1Yzo7LVZHrxMmmRU7+IvC6AkrEPgAxurGHO7sA1h9aYOK2d0IagsOxHfbjlSFnFo9Lb
         XLUISq3b+lJe8Rl4YOem0xLXPK7wZXEr+fyruSKRzReiwFr837+08CQqzymNJU8zxluH
         a1x+w0KoazDUm7ueKBF72kCKsxrpKEnShQhYA5EJ9kdrPmSjida07C6DhJcXnEENKv3a
         hJPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=vbl0tI5xWg5AbixL0vHnmPtEGDrnQab/dcpQD6r+8gY=;
        b=sA/f/XxIPnQoElBjeo79UUN0TWnr8LpwSP/qhsL8DFV/u2N5W04dUwAtcZ8eIGMyCn
         O4xloyim3Uof4qRHUUpjmzSoDwaS1rLVUu12zTBKySsU3TI6SVh4iyYZ4goP9NCq4lhA
         XUXBBzday50PFm1o1jJmQZfl9mE2sP9qf2IMuW/OstBfBoevx6BsxBpEUYLyYD4F09Ov
         4bUVjxMNxAiqXPIIP+MZ749riEvMRnTta2GI6iNq5GQYImzx9rdNMOJ2jYnFwRxyqImV
         gNU+gULlv5QSvnt8oPCBeCwJ4cKGlDwTskg+4eAu9v5A2womeWVBmXAq1c1TR8ZkVZo1
         URBQ==
X-Gm-Message-State: AOAM533y3AfUEBNqE2eOAi48Fk4CGzJRIYn94lif45/F/DoMubUuwdKs
        ZJxX1Wq6aztgUP5fHXz+zX6hBA==
X-Google-Smtp-Source: ABdhPJzNbeu9YbyTYgQk5M1AHgqT1izjhc3Ykg1Y14Qdk9e6F6VJyciuXGztQIPXioXWLdqBuiLAXw==
X-Received: by 2002:a17:90a:4897:b0:1c7:5fce:cbcd with SMTP id b23-20020a17090a489700b001c75fcecbcdmr12753579pjh.45.1649288231948;
        Wed, 06 Apr 2022 16:37:11 -0700 (PDT)
Received: from platform-dev1.pensando.io ([12.226.153.42])
        by smtp.gmail.com with ESMTPSA id m21-20020a17090a7f9500b001c97c6bcaf4sm6903667pjl.39.2022.04.06.16.37.10
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 16:37:11 -0700 (PDT)
From:   Brad Larson <brad@pensando.io>
To:     linux-arm-kernel@lists.infradead.org
Cc:     arnd@arndb.de, linus.walleij@linaro.org, bgolaszewski@baylibre.com,
        broonie@kernel.org, fancer.lancer@gmail.com,
        adrian.hunter@intel.com, ulf.hansson@linaro.org, olof@lixom.net,
        brad@pensando.io, dac2@pensando.io, linux-gpio@vger.kernel.org,
        linux-spi@vger.kernel.org, linux-mmc@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 04/11] dt-bindings: spi: Add compatible for Pensando Elba SoC
Date:   Wed,  6 Apr 2022 16:36:41 -0700
Message-Id: <20220406233648.21644-5-brad@pensando.io>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20220406233648.21644-1-brad@pensando.io>
References: <20220406233648.21644-1-brad@pensando.io>
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
        DKIM_SIGNED,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the cadence qspi controller compatible for Pensando Elba SoC
boards.  The Elba qspi fifo size is 1024.

Signed-off-by: Brad Larson <brad@pensando.io>
---
 Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
index 0a537fa3a641..bc298e413842 100644
--- a/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
+++ b/Documentation/devicetree/bindings/spi/cdns,qspi-nor.yaml
@@ -30,6 +30,7 @@ properties:
               - intel,lgm-qspi
               - xlnx,versal-ospi-1.0
               - intel,socfpga-qspi
+              - pensando,elba-qspi
           - const: cdns,qspi-nor
       - const: cdns,qspi-nor
 
@@ -48,7 +49,7 @@ properties:
     description:
       Size of the data FIFO in words.
     $ref: "/schemas/types.yaml#/definitions/uint32"
-    enum: [ 128, 256 ]
+    enum: [ 128, 256, 1024 ]
     default: 128
 
   cdns,fifo-width:
-- 
2.17.1

