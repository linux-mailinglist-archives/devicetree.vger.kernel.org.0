Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id DD12E293FB5
	for <lists+devicetree@lfdr.de>; Tue, 20 Oct 2020 17:40:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2436658AbgJTPkA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 20 Oct 2020 11:40:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2436585AbgJTPkA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 20 Oct 2020 11:40:00 -0400
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com [IPv6:2607:f8b0:4864:20::542])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B37D2C061755
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 08:39:59 -0700 (PDT)
Received: by mail-pg1-x542.google.com with SMTP id r10so1298117pgb.10
        for <devicetree@vger.kernel.org>; Tue, 20 Oct 2020 08:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=j+khgH0MVIdJPaYX4utAX0es0a1KBkt69gVm+UB8Z4U=;
        b=oPgVstJm/GTDbaGWM7jcq/Uo9Nnh4x77ot8se5J5bt5HR2KA1Lv2KzToDfz2aWTXh5
         aBP9E9az9VUt8LNXiCa9JVwdeN/xYFseaM551GO61zDyPfyT819yoES8CApi4r0KkAYX
         YgdV2mhla3gRtXIAUMpHFKvXTcv8XlYT6hRfFdGP8oPg2v8xJUtsYI7FVzpTrQ6fXZpU
         pFFOC1XJM3apbzky92WspPyFvG+3NDh7XOl+SJJMLhARV5uUzdVIVdtEZzOntoZot2YQ
         nLfyONeMnPQAjwjyd61WW04hToRgXaiFgFXFv6sW+0gppLYA//JEQEhskovL1d/013Gg
         QGsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=j+khgH0MVIdJPaYX4utAX0es0a1KBkt69gVm+UB8Z4U=;
        b=mzRj0+EKTzOgKuWJ/A04yzB/Vi2gskJPzM1WhQnzDVjVLGc2Dl5K7a/r/j89lWEkvJ
         +tkaGQ9bJc5B9YXynw+d/s4TyPU2GtYkjwEuhvl+GiVXzfJ4hNIMoUOGq2JfqqvTpvsi
         hMXnNTOIAVBUSZrV2khobTB5NkPJdK76uAVvSBFu4cjWxsgiXSBzReUezybxHHnkSG6J
         zMqQHfrvIVILXm9goPoHmqRGw06Lke19xCTvZDFoniiu+mBPFVm8dxrTZMYISjBVnLFn
         iQg8sLeWLNCLCsMjnkY1yO8L6sZf+DrMMeCDvfpG0s7g4v0PgKG/1OakyN9CQ+DPrraO
         dY9A==
X-Gm-Message-State: AOAM533+PstHHtC453orEBgy/QjH4tX2ljcLOZ95SXPE8nJIapE0ciHL
        SMQChu2SxXaNb5WRiUTth1kR
X-Google-Smtp-Source: ABdhPJzZqwElgQxECe0/n3fGOzHgIe5k5ae035R+ZBZfDJg9xvXgmNdTqVBPRdbUmkUqoOT0c6GzvA==
X-Received: by 2002:a65:690b:: with SMTP id s11mr3162192pgq.327.1603208398420;
        Tue, 20 Oct 2020 08:39:58 -0700 (PDT)
Received: from Mani-XPS-13-9360.localdomain ([2409:4072:6c87:595a:f155:68:b391:69])
        by smtp.gmail.com with ESMTPSA id r19sm2304961pjo.23.2020.10.20.08.39.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 20 Oct 2020 08:39:57 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     rjw@rjwysocki.net, viresh.kumar@linaro.org, robh+dt@kernel.org
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, bjorn.andersson@linaro.org,
        linux-arm-msm@vger.kernel.org,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v3 1/2] dt-bindings: arm: cpus: Document 'qcom,freq-domain' property
Date:   Tue, 20 Oct 2020 21:09:43 +0530
Message-Id: <20201020153944.18047-1-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add devicetree documentation for 'qcom,freq-domain' property specific
to Qualcomm CPUs. This property is used to reference the CPUFREQ node
along with Domain ID (0/1).

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/arm/cpus.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/cpus.yaml b/Documentation/devicetree/bindings/arm/cpus.yaml
index 1222bf1831fa..f40564bf004f 100644
--- a/Documentation/devicetree/bindings/arm/cpus.yaml
+++ b/Documentation/devicetree/bindings/arm/cpus.yaml
@@ -290,6 +290,12 @@ properties:
 
       * arm/msm/qcom,kpss-acc.txt
 
+  qcom,freq-domain:
+    $ref: '/schemas/types.yaml#/definitions/phandle-array'
+    description: |
+      CPUs supporting freq-domain must set their "qcom,freq-domain" property
+      with phandle to a cpufreq_hw node followed by the Domain ID(0/1).
+
   rockchip,pmu:
     $ref: '/schemas/types.yaml#/definitions/phandle'
     description: |
-- 
2.17.1

