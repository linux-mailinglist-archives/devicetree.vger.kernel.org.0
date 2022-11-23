Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6D396368FC
	for <lists+devicetree@lfdr.de>; Wed, 23 Nov 2022 19:34:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239769AbiKWSd7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Nov 2022 13:33:59 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35590 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239823AbiKWSdf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Nov 2022 13:33:35 -0500
Received: from mail-pj1-x102f.google.com (mail-pj1-x102f.google.com [IPv6:2607:f8b0:4864:20::102f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B1BF56BDDB
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:33:05 -0800 (PST)
Received: by mail-pj1-x102f.google.com with SMTP id ci10so10379276pjb.1
        for <devicetree@vger.kernel.org>; Wed, 23 Nov 2022 10:33:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=hznmRLGZtWDVk6xe+cEmfh6ERNdIeWQVT8+xAR9en0M=;
        b=NEAyrYuBSWUZzzYC/CArDINnXej33Ml6CHoNu0hyk/vpTAaoHwaMK2m9xcV+Zns+SO
         KNoxHJOw8E3m7JnE4ajYr7RzXbonEWpCNybI7ddbZ1cDyD1/Pwvg4/NZXtpLA0V4vk6g
         Q7c6/lZ4vZ4zfpNmREdbUvLKIuqRPsuIhLjZ5AMpuInqzfDPEA/xnOvRxyGTkln4WXZO
         rw4HUbZ5VwHMYm1GjfUJxLbOSYdBircnM6bNX6D/OFO8SZ1lmx19Jn4VnDsHRjenfme/
         ilkPyPRbcKplLZPDKSrGPlKHp4bp9IxH8ALF5eoOa3WF4owfd+TPj4n8NvowDUAPgEom
         oRFQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=hznmRLGZtWDVk6xe+cEmfh6ERNdIeWQVT8+xAR9en0M=;
        b=JH5/S6bNKOhqxZokrzCbodRsLeQoCnzRe9BC/2CiuudNkNqGaeST9qfd6xAV4GqHmw
         YJKjYLwNk6dLxUOsapg/UkJb5dRer9RBdFx1/JxOLxpwKJZ5eiHFSlJc+VrawKDJSE8N
         V8Brk6tvColzO7SGBxFyE6WGv2YQ44IcUMqNaI3TLsFmADLBi6LE8+CobuaKsmB5MFOw
         nZJXzXYXp7s+TgTH89mQi+YXWqCMmqfEDduzNmUvl0rdfTt7IuvEhGLQfsEAvrnGmFb2
         L+4DhJ71VzpdfTXsZayAzqWigiocUydDERyLWQjTmxbanH/TaC7AG9zCmktiBvfOv4Nz
         Wwmg==
X-Gm-Message-State: ANoB5pkqyvIvy3IycotLr24uRcUp8PGBJkybyEW5S+wgOtT0ULci8/ty
        P0iHoIqs41nutxcnLnI652cEfA==
X-Google-Smtp-Source: AA0mqf7ELS3lGTglZuQNe3jM2Ys1koYx2Ube6ZvZqNdXK6zI4QRPeYs5zoAHPo0/ZINyIaLZdS84+A==
X-Received: by 2002:a17:903:291:b0:186:994b:5b55 with SMTP id j17-20020a170903029100b00186994b5b55mr23514251plr.100.1669228385515;
        Wed, 23 Nov 2022 10:33:05 -0800 (PST)
Received: from localhost.localdomain ([2405:201:c00a:a809:a055:fcc4:4677:827])
        by smtp.gmail.com with ESMTPSA id x3-20020aa79403000000b0056d2317455bsm13006732pfo.7.2022.11.23.10.33.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Nov 2022 10:33:04 -0800 (PST)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v8 5/8] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Thu, 24 Nov 2022 00:01:21 +0530
Message-Id: <20221123183124.6911-6-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221123183124.6911-1-jagan@edgeble.ai>
References: <20221123183124.6911-1-jagan@edgeble.ai>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_NONE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Edgeble AI is an Artificial Intelligence company with a focus on
deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v8, v7, v6:
- none

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index c601f5438b02..dfc071548e91 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -370,6 +370,8 @@ patternProperties:
     description: EBV Elektronik
   "^eckelmann,.*":
     description: Eckelmann AG
+  "^edgeble,.*":
+    description: Edgeble AI Technologies Pvt. Ltd.
   "^edimax,.*":
     description: EDIMAX Technology Co., Ltd
   "^edt,.*":
-- 
2.25.1

