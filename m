Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67D7F58603E
	for <lists+devicetree@lfdr.de>; Sun, 31 Jul 2022 19:48:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237367AbiGaRsm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 31 Jul 2022 13:48:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45390 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237383AbiGaRsl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 31 Jul 2022 13:48:41 -0400
Received: from mail-pl1-x635.google.com (mail-pl1-x635.google.com [IPv6:2607:f8b0:4864:20::635])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5AF9CEE06
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:41 -0700 (PDT)
Received: by mail-pl1-x635.google.com with SMTP id y15so8555157plp.10
        for <devicetree@vger.kernel.org>; Sun, 31 Jul 2022 10:48:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=edgeble-ai.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc;
        bh=Kabspo2FOSIUsJJ3vKcxiW9RwiGLG4rT/CMdP3iFq+w=;
        b=kpCiyDangyULpaoKLV8RfoKEgYeUziVTHQkOV5Jx9zb5OXiA6A6AT852gzeupyJzgJ
         +nEd3jNQUZJ+xLmSUOMnHdwSTYURkQhdzhuNbNvHUeHwNT7pSFkTJXfXHmPLjaW95hjr
         SSyknT/zP5B0rmO7QpvHuL/qoURyMTFxyTw4QR3I1JsVGOTIGgvypBfORsdtzk/f8JzG
         bxgkBHIefA1o/waXukY9O+Y2PW5Q4Izn/cHvzMGv00KnlDO9UWV8Y26knejIpa84A1W8
         Xu/8T/RGHqUNmEqfvIZSihrBiNo5zlLFDnarIXyYRYpoUCK5wOTRccklJqG95DuxG5AS
         Rckg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc;
        bh=Kabspo2FOSIUsJJ3vKcxiW9RwiGLG4rT/CMdP3iFq+w=;
        b=Oe+I6g5zleNw5yXqT+CWXF7BfrpLoIEtR0vvQcVjK8D+PSGr5DakMbA/ieujZUAfLx
         R4AR0GNtWlQKZXB1qSAVrgLMle+E3PtRrbemMF+d1Xw1cJ0H6BZVr5w0BAF9OMI807rL
         EUKFmw3Hp81MIfHTjVjguyY4i2+JkqU3CvP2rftomqe315NF7KzJ/LSC+mU1IKt8GJwD
         guBYLJ6P8rlczT5imrxtnlqUirRIsbqE7P2IOnQhRkUuqhbdel1gOiCgPSRa5L8Pp6uC
         scPema7RcA/hOW2iU4mnOk8bKEYYmB3hAmD27vwwuI/sOu03lyrzkTkBMMQyJAvV1MaB
         Yx6A==
X-Gm-Message-State: ACgBeo17OyCOrl0pKPL0DJfk3X1m1G4+d+DZMgZzyucfNkPn4SDr8H8g
        epzP0PZWfPy5UpKLCb7/MkT4Uw==
X-Google-Smtp-Source: AA6agR4WhAE1PyIGA8MY4b05fJZr19/aAdUQEpfNrW7zLYGzIcVOkbLzKKIIuwxmNOFyXcyFmjFR5Q==
X-Received: by 2002:a17:90b:2c13:b0:1f3:359a:c7d5 with SMTP id rv19-20020a17090b2c1300b001f3359ac7d5mr14232318pjb.72.1659289720882;
        Sun, 31 Jul 2022 10:48:40 -0700 (PDT)
Received: from localhost.localdomain ([2405:201:c00a:a073:c5e8:48d3:6a8c:6418])
        by smtp.gmail.com with ESMTPSA id n5-20020a170903110500b0016d3935eff0sm7812062plh.176.2022.07.31.10.48.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 31 Jul 2022 10:48:40 -0700 (PDT)
From:   Jagan Teki <jagan@edgeble.ai>
To:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Kever Yang <kever.yang@rock-chips.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh@kernel.org>
Subject: [PATCH v2 17/20] dt-bindings: vendor-prefixes: Add Edgeble AI Technologies Pvt. Ltd.
Date:   Sun, 31 Jul 2022 23:17:23 +0530
Message-Id: <20220731174726.72631-18-jagan@edgeble.ai>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20220731174726.72631-1-jagan@edgeble.ai>
References: <20220731174726.72631-1-jagan@edgeble.ai>
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

Edgeble AI is an Artificial Intelligence company with a focus
on deploying Neural Acceleration principles at the Edge.

Add vendor prefix for it.

Acked-by: Rob Herring <robh@kernel.org>
Signed-off-by: Jagan Teki <jagan@edgeble.ai>
---
Changes for v2:
- collect Ron ack

 Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
index 0496773a3c4d..d2b8ef2e1ea5 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
+++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
@@ -356,6 +356,8 @@ patternProperties:
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

