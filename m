Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 923D742EC5D
	for <lists+devicetree@lfdr.de>; Fri, 15 Oct 2021 10:29:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236847AbhJOIbb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Oct 2021 04:31:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236738AbhJOIba (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Oct 2021 04:31:30 -0400
Received: from mail-ed1-x530.google.com (mail-ed1-x530.google.com [IPv6:2a00:1450:4864:20::530])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9125BC061753
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 01:29:24 -0700 (PDT)
Received: by mail-ed1-x530.google.com with SMTP id y12so36127596eda.4
        for <devicetree@vger.kernel.org>; Fri, 15 Oct 2021 01:29:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=monstr-eu.20210112.gappssmtp.com; s=20210112;
        h=sender:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=l0Tx9iZpCn8NfqfEU533iI2UZ/o3xsa1dTldorvR6kU=;
        b=DJTisoa6EnC2iFV9nXUMQm0OEsa6OFm6JQd6nWy6dgqkl9qZJW8LKeV+HjQdJNz2dd
         /fcnrzJhRV//FemIUZR/QkVNap8XGTwyipJ8rNrekp/Vvroes1cTaETZgXD1dSiFDcoq
         dcXNUniGMQxKi2YqqEN9O3Ta9j+l9arMvE5se0Pc0DNu+QnM+L8Lc2d01nFay8tVKlyD
         0Ch2Cew33vfrgU5H+HFBjp4mn1++2S7mJgr+jJegiuAUP3Yz4d4dTdON+Bj14npAyp5E
         HCK9ZsQrNb0878wEZGTlaQ0h9Q7efEUs4jYm2PPPowkXYM4oCDE4DmhZ/IqIP5jH9VWO
         PXCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:sender:from:to:cc:subject:date:message-id
         :mime-version:content-transfer-encoding;
        bh=l0Tx9iZpCn8NfqfEU533iI2UZ/o3xsa1dTldorvR6kU=;
        b=TYGMb2VGIUvJR+mEnAXai50vetXvBiH5ewsFbJ9++xofZRHQ4AjJDArVbB+F/IaOR8
         aaXQgV01VDjooa1muEOdvl9+z6IQ+PhJS7Qg2QtKXlDRxXOpQJJ4VOwq/yoUx0MJ8wDH
         +RHDsQL9eqnFXKj3YHb2U3/6141fhmm93zI2Ua9PFY52PU3xJ/EE3P6sidR8x99Gt1eX
         LxvmtLUEoLdvMPLefHC3asIAYkjFM7w3h+On/UAZ+NL7v471cUc3+motfW+qPImZ4DXZ
         lPZbrYO9f0xxHxtEs1X9IiwGB3LRbH8bB1H4AooAXbLTYA4BH9aa+Yfy/5ky4/WVcCzt
         tgXw==
X-Gm-Message-State: AOAM5322H+pSIhs+CxlU57I95Oshkjmn1t/UihuHn4tbMnbSub+lNV6U
        2vpEwINyKvPbabdQaLYALK1yXw==
X-Google-Smtp-Source: ABdhPJz8/9mEae9VWXeWcBJm1LdoOTr9eHTGNl95EfWyA7wAsNIa9jHI1bS08rIuXDXXbVCRWjmPqA==
X-Received: by 2002:aa7:c501:: with SMTP id o1mr2405562edq.99.1634286563229;
        Fri, 15 Oct 2021 01:29:23 -0700 (PDT)
Received: from localhost ([2a02:768:2307:40d6:f666:9af6:3fed:e53b])
        by smtp.gmail.com with ESMTPSA id p10sm831983edj.91.2021.10.15.01.29.22
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 15 Oct 2021 01:29:22 -0700 (PDT)
Sender: Michal Simek <monstr@monstr.eu>
From:   Michal Simek <michal.simek@xilinx.com>
To:     linux-kernel@vger.kernel.org, monstr@monstr.eu,
        michal.simek@xilinx.com, git@xilinx.com
Cc:     Daniel Lezcano <daniel.lezcano@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: timer: cadence_ttc: Add power-domains
Date:   Fri, 15 Oct 2021 10:29:14 +0200
Message-Id: <cc655a72b20790f6d7408b1aaf81c4bf878aafb4.1634286552.git.michal.simek@xilinx.com>
X-Mailer: git-send-email 2.33.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Describe optional power-domain property to fix dts_check warnings.
The similar change was done by commit 8c0aa567146b ("dt-bindings: gpio:
fsl-imx-gpio: Add power-domains").

Signed-off-by: Michal Simek <michal.simek@xilinx.com>
---

 Documentation/devicetree/bindings/timer/cdns,ttc.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/timer/cdns,ttc.yaml b/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
index 8615353f69b4..c3386076a98c 100644
--- a/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
+++ b/Documentation/devicetree/bindings/timer/cdns,ttc.yaml
@@ -25,6 +25,9 @@ properties:
   clocks:
     maxItems: 1
 
+  power-domains:
+    maxItems: 1
+
   timer-width:
     $ref: "/schemas/types.yaml#/definitions/uint32"
     description: |
-- 
2.33.1

