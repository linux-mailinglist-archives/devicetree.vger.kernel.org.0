Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3C4E140FE5D
	for <lists+devicetree@lfdr.de>; Fri, 17 Sep 2021 19:08:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245010AbhIQRKP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Sep 2021 13:10:15 -0400
Received: from egress-ip33a.ess.de.barracuda.com ([18.185.115.192]:49000 "EHLO
        egress-ip33a.ess.de.barracuda.com" rhost-flags-OK-OK-OK-OK)
        by vger.kernel.org with ESMTP id S231138AbhIQRKO (ORCPT
        <rfc822;devicetree@vger.kernel.org>);
        Fri, 17 Sep 2021 13:10:14 -0400
Received: from mail-pg1-f200.google.com (mail-pg1-f200.google.com [209.85.215.200]) by mx-outbound15-54.eu-central-1a.ess.aws.cudaops.com (version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256 verify=NO); Fri, 17 Sep 2021 17:08:49 +0000
Received: by mail-pg1-f200.google.com with SMTP id q22-20020a63e956000000b002524787adb1so8156226pgj.3
        for <devicetree@vger.kernel.org>; Fri, 17 Sep 2021 10:08:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=mistralsolutions.com; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bwOzvQw3GwbUgf7WuCURQX+4SKkLKLxeTWq4d+gT4bs=;
        b=O4Hui2g/GlAZP9SrL7MvjhJXM7bLbypxTapNBOP9XdiXDtEkUw9RxvrqNY4x3Jgu+/
         wfDzcFPB6WQ8hL+6u20D2CmLx+OO8J5xcb0ArP4BGZgAvnQBmr45w+pMPWsWosTED16X
         +iUhYWOxAoCMSowbBNse96blRZ2F5I+53V05M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=bwOzvQw3GwbUgf7WuCURQX+4SKkLKLxeTWq4d+gT4bs=;
        b=PpKh/XX7+rJ+9ymNr4E95ECNAl+0RCX+V6yMeSGWiUrVhO5SM4gaaA4o+2B55CvKRN
         5zvd5WNRy42XRvzP9Z2ugtc8ZPgVWgIXdD7fxSfqFk22m8XrVbM4u1TYGlCoZLCjJDuw
         VmtMox5HrxNkW6We2SVGpEea5u0tuP3CV+hKDSw9QD8l7Ky4sLW59bogb4ifYjQ/5/da
         tdy+wzdjlI4/fSMoFfDAqqOtQdYtiYUn4FOllvqEqh5QSQq/1MRKsmyjZw74cgsw4Ysp
         0Z2Y0ovPL2+dApmrM//4nmml3GXDfrs43ngs9Vr3QXNoj4K6Pt8kJoqlWaleqsWrt2xL
         vlYA==
X-Gm-Message-State: AOAM533EFbPsIPNpQm8LB/Xbo/GBHwZSofAA35DR0q+AYwPP9aRshC6s
        5crvuNRUurwwffkwZlnU+hZwMc518PBYkUgou7waWfN2DfzOloyrikM45/+MZHf+JCVbJ+ofgxy
        coBgEBk33ec3UZChvov4Dy153VQMqsy+RfXLjxwWvi1c3eJwKeBmPAaUMZQ==
X-Received: by 2002:a17:90b:198c:: with SMTP id mv12mr13291586pjb.223.1631898528547;
        Fri, 17 Sep 2021 10:08:48 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx7iOZvkn6nOCAelVOx83zET4bRlt0vXH+fSPxBqgg3Akdn+TUIUds1YviHeZtLTMvTOB/Miw==
X-Received: by 2002:a17:90b:198c:: with SMTP id mv12mr13291559pjb.223.1631898528270;
        Fri, 17 Sep 2021 10:08:48 -0700 (PDT)
Received: from localhost.localdomain ([49.207.209.15])
        by smtp.gmail.com with ESMTPSA id d3sm11738452pjc.49.2021.09.17.10.08.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Sep 2021 10:08:47 -0700 (PDT)
From:   Sinthu Raja <sinthu.raja@mistralsolutions.com>
X-Google-Original-From: Sinthu Raja <sinthu.raja@ti.com>
To:     Suman Anna <s-anna@ti.com>, Rob Herring <robh+dt@kernel.org>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Ohad Ben-Cohen <ohad@wizery.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, nm@ti.com,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: [PATCH V2] dt-bindings: hwlock: omap: Remove redundant binding example
Date:   Fri, 17 Sep 2021 22:38:05 +0530
Message-Id: <20210917170805.5079-1-sinthu.raja@ti.com>
X-Mailer: git-send-email 2.31.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-BESS-ID: 1631898529-303894-5362-17912-1
X-BESS-VER: 2019.1_20210916.2102
X-BESS-Apparent-Source-IP: 209.85.215.200
X-BESS-Outbound-Spam-Score: 0.50
X-BESS-Outbound-Spam-Report: Code version 3.2, rules version 3.2.2.234545 [from 
        cloudscan20-164.eu-central-1b.ess.aws.cudaops.com]
        Rule breakdown below
         pts rule name              description
        ---- ---------------------- --------------------------------
        0.00 BSF_SC0_MISMATCH_TO    META: Envelope rcpt doesn't match header 
        0.50 BSF_RULE7568M          META: Custom Rule 7568M 
        0.00 BSF_BESS_OUTBOUND      META: BESS Outbound 
X-BESS-Outbound-Spam-Status: SCORE=0.50 using account:ESS91090 scores of KILL_LEVEL=7.0 tests=BSF_SC0_MISMATCH_TO, BSF_RULE7568M, BSF_BESS_OUTBOUND
X-BESS-BRTS-Status: 1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: Sinthu Raja <sinthu.raja@ti.com>

The example includes a board-specific compatible property, this is wrong
as the example should be board agnostic and should represent the particular
binding. Also, the file includes two similar examples, but with a different
compatible. So, drop the entire second example

Fixes: d8db9dc34871 ("dt-bindings: hwlock: omap: Convert binding to YAML")
Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
---

Changes in V2:
Addressed review comments, that includes dropping the redundant example,
updates to commit message and $subject.

V1: https://lore.kernel.org/all/20210917094740.18891-1-sinthu.raja@ti.com/

 .../bindings/hwlock/ti,omap-hwspinlock.yaml   | 32 +------------------
 1 file changed, 1 insertion(+), 31 deletions(-)

diff --git a/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml
index ae1b37dbee75..4feebd90bff1 100644
--- a/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml
+++ b/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml
@@ -40,38 +40,8 @@ examples:
 
   - |
     /* OMAP4 SoCs */
-    hwspinlock: spinlock@4a0f6000 {
+    spinlock@4a0f6000 {
         compatible = "ti,omap4-hwspinlock";
         reg = <0x4a0f6000 0x1000>;
         #hwlock-cells = <1>;
     };
-
-  - |
-    / {
-        /* K3 AM65x SoCs */
-        model = "Texas Instruments K3 AM654 SoC";
-        compatible = "ti,am654-evm", "ti,am654";
-        #address-cells = <2>;
-        #size-cells = <2>;
-
-        bus@100000 {
-            compatible = "simple-bus";
-            #address-cells = <2>;
-            #size-cells = <2>;
-            ranges = <0x00 0x00100000 0x00 0x00100000 0x00 0x00020000>, /* ctrl mmr */
-                     <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>; /* Main NavSS */
-
-            bus@30800000 {
-                compatible = "simple-mfd";
-                #address-cells = <2>;
-                #size-cells = <2>;
-                ranges = <0x00 0x30800000 0x00 0x30800000 0x00 0x0bc00000>;
-
-                spinlock@30e00000 {
-                    compatible = "ti,am654-hwspinlock";
-                    reg = <0x00 0x30e00000 0x00 0x1000>;
-                    #hwlock-cells = <1>;
-                };
-            };
-        };
-    };
-- 
2.31.1

