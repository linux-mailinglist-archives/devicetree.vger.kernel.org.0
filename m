Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1DA03613CEB
	for <lists+devicetree@lfdr.de>; Mon, 31 Oct 2022 19:03:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229911AbiJaSDy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 31 Oct 2022 14:03:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42966 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230169AbiJaSD3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 31 Oct 2022 14:03:29 -0400
Received: from mail-pg1-x52b.google.com (mail-pg1-x52b.google.com [IPv6:2607:f8b0:4864:20::52b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC9BDF02C
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 11:03:23 -0700 (PDT)
Received: by mail-pg1-x52b.google.com with SMTP id q71so11344831pgq.8
        for <devicetree@vger.kernel.org>; Mon, 31 Oct 2022 11:03:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=i6bI2G8GIEEo0BDFgcfeWu7FnSciJmuXXXHS3QIkOfs=;
        b=GYLJ5dP9svMb4OtR4ddpG8ce6S4fq7m1mFNIV2Ttl46seLZqlFPwVeur7n5+ITO7Zg
         KgqlWPxuwvQ5CGGszgRz4BEOR8YmmcO2+e7aYai4ULMxdjndxV/F7WDcAjmii+2u03ng
         Ksg3Yx0yRUBnaBsk08DyNOKRxkexeJV3QuIjNJsmvBK64fideKnrc2959ouxzz4mNSy0
         E1dsNDvdjTCV8U/JJFK1NtBSppUIjz8Q/zrg3Zw258BkkO2t0IWP1x3tFuYnaQ+ZBDU9
         TV0YDyYvi/rH8MslglzzF+0gNh3JSFCa/h2ffTxJUDH+GkAgV+4KJ7lcmpu7K1Q9jKCu
         yF+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=i6bI2G8GIEEo0BDFgcfeWu7FnSciJmuXXXHS3QIkOfs=;
        b=TkMK4dPOY9X4PSIAfTNe2I1ZiTHw+oSc1znPzMHnQ48jAljQBo/WjuClh7II4w6djn
         Wqdafp6HbBtjjdvhq7cJ6HxJIejAF7IflVnSU5W7ms9wxSvj/OWMucrDfbTydx2E8477
         +qxZr06UFjJj4aO0xpZVivlwGDbAAr5j50Q6qKtNeCN8WcMpbwcNyoCDRboVD353a/7B
         7MmcWtW5HEVaM1T/kyXFgzY3xIqqNJL8TepBCYcQ/rEwRj65qqmDXVjcObGuGoOl3cn3
         Q+MBZf38xQV+oJE7NN/WYwyTwpKgcn5UDJIGWKUjqOIZ0+y4pp0+KdBA9maSb43oxIRY
         DGQg==
X-Gm-Message-State: ACrzQf1WZ522fj3Fvt8p5qPAXrNrlviDNYmgbVE55faA2heWHYxbcBdq
        SHRmXHwFQ5VN8aeTcEZ6eIqR
X-Google-Smtp-Source: AMsMyM7eDqp0MAJayBElp6vKNbseMAqO0uaRkOgHaD0JYIbuqiBn6QFTcqJXxhIc+evWMRMYKnLVqw==
X-Received: by 2002:a65:6148:0:b0:458:88cd:f46 with SMTP id o8-20020a656148000000b0045888cd0f46mr13451082pgv.303.1667239402882;
        Mon, 31 Oct 2022 11:03:22 -0700 (PDT)
Received: from localhost.localdomain ([117.193.209.221])
        by smtp.gmail.com with ESMTPSA id q14-20020a170902a3ce00b00186c6d2e7e3sm4742224plb.26.2022.10.31.11.03.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 31 Oct 2022 11:03:19 -0700 (PDT)
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     martin.petersen@oracle.com, jejb@linux.ibm.com,
        andersson@kernel.org, vkoul@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     konrad.dybcio@somainline.org, robh+dt@kernel.org,
        quic_cang@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-phy@lists.infradead.org, linux-scsi@vger.kernel.org,
        dmitry.baryshkov@linaro.org, ahalaney@redhat.com,
        Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
Subject: [PATCH v2 06/15] dt-bindings: ufs: Add "max-device-gear" property for UFS device
Date:   Mon, 31 Oct 2022 23:32:08 +0530
Message-Id: <20221031180217.32512-7-manivannan.sadhasivam@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
References: <20221031180217.32512-1-manivannan.sadhasivam@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The maximum gear supported by the UFS device can be specified using the
"max-device-gear" property. This allows the UFS controller to configure the
TX/RX gear before starting communication with the UFS device.

Signed-off-by: Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
---
 Documentation/devicetree/bindings/ufs/ufs-common.yaml | 5 +++++
 1 file changed, 5 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/ufs-common.yaml b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
index 47a4e9e1a775..5dcd14909ad5 100644
--- a/Documentation/devicetree/bindings/ufs/ufs-common.yaml
+++ b/Documentation/devicetree/bindings/ufs/ufs-common.yaml
@@ -73,6 +73,11 @@ properties:
     description:
       Specifies max. load that can be drawn from VCCQ2 supply.
 
+  max-device-gear:
+    description:
+      Specifies max. gear the UFS device supports.
+    enum: [1, 2, 3, 4, 5]
+
 dependencies:
   freq-table-hz: [ 'clocks' ]
 
-- 
2.25.1

