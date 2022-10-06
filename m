Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E5C215F64AD
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 12:58:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229729AbiJFK6y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 06:58:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45168 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231417AbiJFK6t (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 06:58:49 -0400
Received: from mail-pl1-x634.google.com (mail-pl1-x634.google.com [IPv6:2607:f8b0:4864:20::634])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ECF339B843
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 03:58:40 -0700 (PDT)
Received: by mail-pl1-x634.google.com with SMTP id n7so1406519plp.1
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 03:58:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=quanta-corp-partner-google-com.20210112.gappssmtp.com; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=DiW8i3DPnjGma7IfUKGltSfwik2WZP+gGKeY6IhjCJo=;
        b=0L+0OwwlP2myUklbVmYsp5ZyzEz6FHhq8EIV78l1dQRPmOjJvZarWPo0jlKlw3SLJN
         2E9BpAYENJpbIwLq9ub/6jmSsMrJBbr1htmUF+LgTCBeeMUBDh2GyeESj6QjSpF5ncMF
         qdFUtNq+qLhXUIaGt9yjCs/HDdvkrMqzQzDlPZ+WPBN6ehKsJ3cocE8PxQ5vi/O3aHNW
         hAWijg6ZUR2288hNUl5ALOS4EyJVB4eiZs7RajA8ocRD3ogh+9R4NadjEoYs+JFe5Pke
         rCeEdm3cTIjgO4aQFOAceJteLmVOjOrIS3tOWRWSAw/guTWnJLlhuepjkpaM1O5hDQ5z
         LLLw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=DiW8i3DPnjGma7IfUKGltSfwik2WZP+gGKeY6IhjCJo=;
        b=NGOheQZSznZ/OEjDFgzS25faOQ9nFtECFXUyI1GfWe7/VKMK+uUaQpMnhjX5MVQlk0
         SCkvVfrtR4Fw+yYcyz8H/kbqL9mmSJBUx/RvInK/CirZU2Yg1K9uib6xkcq4XTB+SKvz
         nKsasaBatCxMuxyjUw4pruqtIiuCLyp/SX7m6aQloVDpoxcq3EpoSyuiY5TKc9FFiMCq
         HHCaFQEkHZY2+leqsObiawl9/Ugir8gh6XIovRhVwynBHnBKyxjzc2Nwx631uCqleyTc
         IbJwP2Tl9vetgke6ECwfb417uovH0GslQI/vKLoDgZqDzK6nHDGbeinxhmNUBLqoNIKb
         /k2Q==
X-Gm-Message-State: ACrzQf22Sed4BAiMxU8kskz3y7Es9xLwSGNJM1girgRssCVBNOlyUgOy
        0AYJiWKyNZUgd89LiH5+qWSk0A==
X-Google-Smtp-Source: AMsMyM5hVgrf4OGJxDnVBNvTwaN7HWXpijuChvg/k3qpDFvBVDDhHdX3ZygN+mwe4qmQJk5Oa1QTLQ==
X-Received: by 2002:a17:903:1d0:b0:178:1d5b:faf8 with SMTP id e16-20020a17090301d000b001781d5bfaf8mr3857673plh.9.1665053919539;
        Thu, 06 Oct 2022 03:58:39 -0700 (PDT)
Received: from liang-Predator-PH517-52.. (60-250-232-247.hinet-ip.hinet.net. [60.250.232.247])
        by smtp.gmail.com with ESMTPSA id c13-20020a170903234d00b0017d12d86901sm10504297plh.187.2022.10.06.03.58.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 03:58:39 -0700 (PDT)
From:   Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
To:     LKML <linux-kernel@vger.kernel.org>
Cc:     dianders@chromium.org,
        Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        Dmitry Torokhov <dmitry.torokhov@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-input@vger.kernel.org
Subject: [PATCH v7 3/4] dt-bindings: input: touchscreen: Add goodix GT7986U touchscreen chip
Date:   Thu,  6 Oct 2022 18:58:22 +0800
Message-Id: <20221006185333.v7.3.I52e4b4b20e2eb0ae20f2a9bb198aa6410f04cf16@changeid>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221006105823.532336-1-sheng-liang.pan@quanta.corp-partner.google.com>
References: <20221006105823.532336-1-sheng-liang.pan@quanta.corp-partner.google.com>
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

Add an goodix touch screen chip GT7986U.

Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>
---

Changes in v7:
- goodix gt7986 dt bindings added in v7

 Documentation/devicetree/bindings/input/goodix,gt7375p.yaml | 5 ++++-
 1 file changed, 4 insertions(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml b/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
index fe1c5016f7f31..1c191bc5a1782 100644
--- a/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
+++ b/Documentation/devicetree/bindings/input/goodix,gt7375p.yaml
@@ -16,8 +16,11 @@ description:
 
 properties:
   compatible:
-    items:
+    oneOf:
       - const: goodix,gt7375p
+      - items:
+          - const: goodix,gt7986u
+          - const: goodix,gt7375p
 
   reg:
     enum:
-- 
2.34.1

