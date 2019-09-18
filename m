Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id A8E02B62A1
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 14:01:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1729260AbfIRMBN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 08:01:13 -0400
Received: from mail-pg1-f196.google.com ([209.85.215.196]:35210 "EHLO
        mail-pg1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1728861AbfIRMBN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Sep 2019 08:01:13 -0400
Received: by mail-pg1-f196.google.com with SMTP id a24so3959200pgj.2
        for <devicetree@vger.kernel.org>; Wed, 18 Sep 2019 05:01:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=sifive.com; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=WkQ76CITam9F7JiZEHEwL0RX83IOrZqz3Y++2Xoowf4=;
        b=eCbt59BqCWohhKOx9Y+Z8ftqpShDtgftW5+zz/dI+Ju0QCOAJrpXZrFORiiEptuIvK
         vhaDaD8/3pYuo+FrATD9qYuWzYLvQ0VZhqNfBX0TOh5x+ZjETAmFftVs2GzCGx0ENEIT
         cWJDlROlkMGsN+Ve2tEMn4TINILoLkNIr3ASNBPBbmqflF1dtZsIdyXJ2gFnresOc0Gv
         ZdLO/i7iTr6bC9IZ2eoT2XzBhLm/dwEPnG/8XzWtWbrDlho2sNidw7Xm0l5lEBbJQwi0
         tHitqC51imBnyvE+ZVAsrmvobrsRHw/s2SaB7sDs5bI66RgQkw8ZiHo4PUYTWBAzuAq6
         NJ8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=WkQ76CITam9F7JiZEHEwL0RX83IOrZqz3Y++2Xoowf4=;
        b=f+55G0qCSW3qxFik0xVy0O30aPdPsG6iiiw9MhNrV4cYJUsKQXLQFgtNtXmSGZCfSu
         V7sapxnzV1hOxzYl0fTOkYasyDI7KuXJ8bkL8s+3Ou1yPBDLLmNXvqq8ZkJq73EBdMEq
         VDX42I0KnTTfGL5aWEN8nv8mV1rgWzlKPlGGqE9KKNmXjm8+TAbUJ9gfGMlt+mWKCWKK
         BtGJsxfNCrETI9gvudH1vHYvMCAjoNmXpBlchxP9FiY+KjalGo8t2se5y/rVW+PA7NEE
         91+l2epkjAJyKTQtwPqB68UHUGTnjmrMJ+uLkyd4rY9HpjZeI3B+bLvi0RRckDpDunAh
         mBHA==
X-Gm-Message-State: APjAAAVHBoEMi8oV4GeOI0/OkQkRyBs2Z5y9n9507IUgH/5desGpspUt
        Wc0jbdPgMGXdcj5N5cOdU7gqBw==
X-Google-Smtp-Source: APXvYqybyNmzYSLFX4gGeI++WncUy4zJYIdFMkUqy0VPaTasXIn9sKMgm6+FthWofH2FZyQmGqRg8w==
X-Received: by 2002:a63:5626:: with SMTP id k38mr3667623pgb.134.1568808072722;
        Wed, 18 Sep 2019 05:01:12 -0700 (PDT)
Received: from pragneshp.open-silicon.com ([114.143.65.226])
        by smtp.gmail.com with ESMTPSA id z13sm6882241pfq.121.2019.09.18.05.01.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Sep 2019 05:01:12 -0700 (PDT)
From:   Pragnesh Patel <pragnesh.patel@sifive.com>
To:     mripard@kernel.org
Cc:     Pragnesh Patel <pragnesh.patel@sifive.com>,
        Mauro Carvalho Chehab <mchehab@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Mark Rutland <mark.rutland@arm.com>,
        Chen-Yu Tsai <wens@csie.org>, linux-media@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH] media: dt-bindings: Fix building error for dt_binding_check
Date:   Wed, 18 Sep 2019 17:31:00 +0530
Message-Id: <1568808060-17516-1-git-send-email-pragnesh.patel@sifive.com>
X-Mailer: git-send-email 2.7.4
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

$id doesn't match the actual filename, so update the $id

Signed-off-by: Pragnesh Patel <pragnesh.patel@sifive.com>
---
 Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
index 27f38ee..5dd1cf49 100644
--- a/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
+++ b/Documentation/devicetree/bindings/media/allwinner,sun4i-a10-csi.yaml
@@ -1,7 +1,7 @@
 # SPDX-License-Identifier: (GPL-2.0 OR BSD-2-Clause)
 %YAML 1.2
 ---
-$id: http://devicetree.org/schemas/arm/allwinner,sun4i-a10-csi.yaml#
+$id: http://devicetree.org/schemas/media/allwinner,sun4i-a10-csi.yaml#
 $schema: http://devicetree.org/meta-schemas/core.yaml#
 
 title: Allwinner A10 CMOS Sensor Interface (CSI) Device Tree Bindings
-- 
2.7.4

