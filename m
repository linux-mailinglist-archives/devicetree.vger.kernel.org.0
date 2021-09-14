Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1ED4A40A8CD
	for <lists+devicetree@lfdr.de>; Tue, 14 Sep 2021 10:07:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230032AbhINIHd (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Sep 2021 04:07:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60852 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230273AbhINIGO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Sep 2021 04:06:14 -0400
Received: from mail-pf1-x436.google.com (mail-pf1-x436.google.com [IPv6:2607:f8b0:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9B9F9C061574
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 01:04:41 -0700 (PDT)
Received: by mail-pf1-x436.google.com with SMTP id g14so11418192pfm.1
        for <devicetree@vger.kernel.org>; Tue, 14 Sep 2021 01:04:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=mPxf8n4L3IhQim+FqxOgbXfL3jMltbQ5PguuhqlZwis=;
        b=jXuhTz2cNKtJ3NPxnOg3cpQ0f/hkZoz0EZ9XWrpKu5pQMOAWGEhYgfINCwMnPHZ0lQ
         YVdkKLJwwQgTDtl7sWrMut5/du/OFrbE3JAsL03JhFKa30Vxg2pTpiae18R1lCLfQWCn
         V4K/admGlmXsBKbbVTd4LhrwNpRrLKcUdKOnPgURsSh9MOL1y7hvUU0gUJJVef49EY9E
         Ae9xZQr2HvAWF8Ge0MleZYx5YBPG6pO0GpkJXQjpyz+xOo9B1TBWEqpTQSjLHFvdAqLf
         2rPbKN7KucbU8Q3zmTODxbKU35eUVgKGWS5UksNYYRSyc8HzdgRvdwBoMYkSq61NFVqA
         ZHGw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=mPxf8n4L3IhQim+FqxOgbXfL3jMltbQ5PguuhqlZwis=;
        b=L5LlUB5sLXC7zG3/fBsCLuVXqGZzAneWYn+JexwTtB/TzICxXlmgOkOv02NvVDi0sO
         WXb2IbIA+YJXEjNloNlsmhaJbYl96X2ry/HcsefGLBr21zeYtdGddCg0MTPmv2s0YUQg
         tG3AB7a+jt/7CrHyB1n/Tp4Pr6eg/wYC+FLzGGwZO9JkD3GF6hxPx9MiRYj522cidgW/
         qOm/X4leeA8HREERRXdtNwMIznVO90zSe5CztMeXWd8XsbxOTXqQmOiHxqStwVtEPheL
         zrS78QkIWwFHclqjlY7Jz7UKSy+wMcGZctaWP/0pBa7VCTMg1BZ/4BWpyNslj4JQpVE0
         b3dw==
X-Gm-Message-State: AOAM530l5GrtN7/NoBTwPVGAJ2TvU9nZxmzEzizeRvcn8Igd6aG7xqGA
        bN2TENJkZkPWRcC3MNn9zxgzbQ==
X-Google-Smtp-Source: ABdhPJyBV4Xv+A6RpGj+/8WZTrDIvEBMuenzOA/XTxb+vQGguV8s6pAEMow9p4iiamqfR0koc1YENg==
X-Received: by 2002:a65:6ab0:: with SMTP id x16mr14713986pgu.181.1631606681022;
        Tue, 14 Sep 2021 01:04:41 -0700 (PDT)
Received: from localhost.localdomain (80.251.214.228.16clouds.com. [80.251.214.228])
        by smtp.gmail.com with ESMTPSA id y6sm9328396pfb.64.2021.09.14.01.04.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Sep 2021 01:04:40 -0700 (PDT)
From:   Shawn Guo <shawn.guo@linaro.org>
To:     Jassi Brar <jassisinghbrar@gmail.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org,
        linux-kernel@vger.kernel.org, Shawn Guo <shawn.guo@linaro.org>
Subject: [PATCH] dt-bindings: mailbox: Update maintainer email for qcom apcs-kpss
Date:   Tue, 14 Sep 2021 16:04:33 +0800
Message-Id: <20210914080433.13499-1-shawn.guo@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Sivaprakash's codeaurora.org email address bounces.  Before he comes
back with his new email, fill Jassi's address in there.

Signed-off-by: Shawn Guo <shawn.guo@linaro.org>
---
 .../devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml      | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
index 6395281b0cec..371cf31f4154 100644
--- a/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
+++ b/Documentation/devicetree/bindings/mailbox/qcom,apcs-kpss-global.yaml
@@ -11,7 +11,7 @@ description:
   platforms.
 
 maintainers:
-  - Sivaprakash Murugesan <sivaprak@codeaurora.org>
+  - Jassi Brar <jassisinghbrar@gmail.com>
 
 properties:
   compatible:
-- 
2.17.1

