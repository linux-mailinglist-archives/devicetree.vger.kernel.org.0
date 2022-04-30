Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1295E515D63
	for <lists+devicetree@lfdr.de>; Sat, 30 Apr 2022 15:13:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1382725AbiD3NQ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 30 Apr 2022 09:16:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33394 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1382715AbiD3NQZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 30 Apr 2022 09:16:25 -0400
Received: from mail-wm1-x334.google.com (mail-wm1-x334.google.com [IPv6:2a00:1450:4864:20::334])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3645E8301B
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 06:13:01 -0700 (PDT)
Received: by mail-wm1-x334.google.com with SMTP id p189so5984074wmp.3
        for <devicetree@vger.kernel.org>; Sat, 30 Apr 2022 06:13:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=conchuod-ie.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=xYRDXpY3Iw2Mp2L+0vKKbLbTXTTo1snejpw1fL9RgNM=;
        b=U53G3o1zO2TfWVlvRkK8i7XxN1whWKxR20syfYHosot0Pj91VzSi2LEyZqdDh7kfrq
         ESp4RBFRHnhhskiNmRD0FQKf6Rtu9nmKrIFYAqzhmJ8/+4/60Th4hpZyD9Syi36FgMO4
         gROxG2a2Es4t3+lm80t5o+PqPMvWZ0J+jEKDboaBDO8QVWYVmqH7rGMwXwesYGbz9HYf
         Oi5chDxwdMKBkgf+reDZAEeg9+SCarqF6U7DVhUt6lEqCssDu4HlxGgiiJjk/zKAKWeE
         nhIcoJlms6omOF0Z5ScPUvuhmiPG8Lii5VTQC57WigTFac9JUR1kOn6++7lZ4+14BDIW
         zQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=xYRDXpY3Iw2Mp2L+0vKKbLbTXTTo1snejpw1fL9RgNM=;
        b=3gfYQn0/lcsgzilaCsZDsRNpiHaLnkvSFgowAN1nPwgs0WcslQ+qX29bIPvOs9sE3w
         brs64Pk4wKkbXiZIIb523usf81T+NQuP+8SmFgSOAsccrzvfdE42aLiDoCPTDQOfXlqR
         QLiLb0LxR4bJm6ML0sL5vjFlv50krCq5ZqlImSP9Y0LQSUCsv6z2NHyfjt5D8jpOC/1K
         51RnIq+TueZ0HWAMLdcR4zxcJkLBZ98YOJr2U/bd4p70pbFuWDrZFzp7hULSdeNGqqrd
         tu9rWd9C2KKYVmCKnKGFAZqjJjYPNNZlBzBgF6bc3Cya+7MejwWbPySV8Dutiic8sA2I
         ChUA==
X-Gm-Message-State: AOAM5319rfsIiw6NZhiPLf4Ky864VFr3VnrMeMvPZqHAxH4OmxE9mrBz
        Byqdqh9QpnrcdIoDYHMbn/sKU5FtnYWtph+R
X-Google-Smtp-Source: ABdhPJx5TybxW4mPhyRc1B07zUGZnDh+cnuJd20nySqJGiwWmYa+KtUc1qkRi3Adv3YqzZXrvWGq6A==
X-Received: by 2002:a05:600c:19c6:b0:392:926e:5023 with SMTP id u6-20020a05600c19c600b00392926e5023mr7558948wmq.110.1651324379745;
        Sat, 30 Apr 2022 06:12:59 -0700 (PDT)
Received: from henark71.. ([109.77.36.132])
        by smtp.gmail.com with ESMTPSA id p9-20020adfa209000000b0020c5253d8ebsm2004439wra.55.2022.04.30.06.12.58
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 30 Apr 2022 06:12:59 -0700 (PDT)
From:   Conor Dooley <mail@conchuod.ie>
To:     krzk+dt@kernel.org, palmer@dabbelt.com, robh+dt@kernel.org
Cc:     conor.dooley@microchip.com, Cyril.Jean@microchip.com,
        daire.mcnamara@microchip.com, paul.walmsley@sifive.com,
        aou@eecs.berkeley.edu, palmer@rivosinc.com, arnd@arndb.de,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-riscv@lists.infradead.org, Conor Dooley <mail@conchuod.ie>
Subject: [PATCH v2 6/8] dt-bindings: vendor-prefixes: add Sundance DSP
Date:   Sat, 30 Apr 2022 14:09:21 +0100
Message-Id: <20220430130922.3504268-7-mail@conchuod.ie>
X-Mailer: git-send-email 2.36.0
In-Reply-To: <20220430130922.3504268-1-mail@conchuod.ie>
References: <20220430130922.3504268-1-mail@conchuod.ie>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Conor Dooley <conor.dooley@microchip.com>

Sundance DSP Inc. (https://www.sundancedsp.com/) is a supplier of
high-performance DSP and FPGA processor boards and I/O modules.

Signed-off-by: Conor Dooley <conor.dooley@microchip.com>
Signed-off-by: Conor Dooley <mail@conchuod.ie>
---
 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 01430973ecec..1d47a38c2a2e 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -1197,6 +1197,8 @@ patternProperties:
     description: Summit microelectronics
   "^sunchip,.*":
     description: Shenzhen Sunchip Technology Co., Ltd
+  "^sundance,.*":
+    description: Sundance DSP Inc.
   "^sunplus,.*":
     description: Sunplus Technology Co., Ltd.
   "^SUNW,.*":
-- 
2.36.0

