Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4BC1963A8E5
	for <lists+devicetree@lfdr.de>; Mon, 28 Nov 2022 14:05:57 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231370AbiK1NFz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Nov 2022 08:05:55 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33872 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231203AbiK1NFx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Nov 2022 08:05:53 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1FBC9F00F
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 05:05:52 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id s8so17230966lfc.8
        for <devicetree@vger.kernel.org>; Mon, 28 Nov 2022 05:05:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yUNR4GlGvY2MmE/GOBrE0d6rt7nFGtY/gmI1Rah391M=;
        b=Hbj1PYHdSvTmPvTMFB5TkzPqI6bynnNE5ZxEtEsglIwsb+BkpvnvFmiYsujnsdm/IV
         T5vQSHxIwJJ6EQuURtL47KMiRPA8nRhJijFCU42CEOYfMieCviaj89Tx6NzfohsvKMHY
         prUDCdBPH64U9hMsw1fQyyFvhfiYOlJ3aF5P3PIk0JeHIKs9lle6eCsR16u6U/mCeeGw
         bbr7XlDPiPb8tobF3rwAlK2Pthmm9RsdOL0YXFju91dkf8qbbkBat+9y8mRUfkRN3AYI
         9p21NZrX3ncCpDYqFv1aLU42sFo5E9y/Y2IQEdzIh8wgj5Ncn+ByWwEzFJD4YUTMnf2z
         bDwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yUNR4GlGvY2MmE/GOBrE0d6rt7nFGtY/gmI1Rah391M=;
        b=8C4EGJD+uQvrvBCey5om9UJvwFDbGN6IrXt9Wi5kZfxMrmpEy1GNQHIGUPtkc477Vl
         fFKrpqOWfccgwq68xGeb+lrUfNCM1qOLN8u+v63hardUO/ccaFaUHVVpfX1IOYP87vf0
         pOsIZ/e3ZCODhPXIraJ4GXaKGOSBIYkKMg31eBJjbm3UO3iLCT7G8rqcBCN/FdFwqLnC
         DGUayEgAXY+4Vax7lkS5gamP7ika8dvW5q5viPFQstoH4LE0K/JUtXUwoWUPydhy4Y0L
         qRNECwGiFP5v8tNe3sLAtXRKuoP2B7Q66c1XT/sekoI6KMLkMt1sAtM6GM9daVaKZ0Kf
         wclQ==
X-Gm-Message-State: ANoB5pnGIMx2vvrIeCx4qx8N7rOSJPtiwd95GMv3/oOqQ9WON+QHuS6D
        7Rn7N2IsVFQVKRj/wFOANcCPCg==
X-Google-Smtp-Source: AA0mqf5v4dkWawEBiMnUQAFJKmFLceCZ4VSmhSWVNHEvG3Mn5ZJvW+1yEa15vvXdgitEznLv5pUVwA==
X-Received: by 2002:a05:6512:3a7:b0:4a4:77a8:5ba1 with SMTP id v7-20020a05651203a700b004a477a85ba1mr15838442lfp.569.1669640749315;
        Mon, 28 Nov 2022 05:05:49 -0800 (PST)
Received: from eriador.lan ([2001:470:dd84:abc0::8a5])
        by smtp.gmail.com with ESMTPSA id s14-20020a056512202e00b004b501497b6fsm1354324lfs.148.2022.11.28.05.05.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Nov 2022 05:05:48 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 1/2] dt-bindings: arm: qcom: split MSM8974 Pro and MSM8974
Date:   Mon, 28 Nov 2022 15:05:44 +0200
Message-Id: <20221128130545.857338-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

The MSM8974 Pro (AC) and bare MSM8974 are slightly different platforms.
Split the compat strings accordingly to clearly specify the platform
used by the device.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 10 +++++++---
 1 file changed, 7 insertions(+), 3 deletions(-)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 463509f0f23a..5977b4fdf38e 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -165,14 +165,18 @@ properties:
 
       - items:
           - enum:
-              - fairphone,fp2
               - lge,hammerhead
-              - samsung,klte
               - sony,xperia-amami
-              - sony,xperia-castor
               - sony,xperia-honami
           - const: qcom,msm8974
 
+      - items:
+          - enum:
+              - fairphone,fp2
+              - samsung,klte
+              - sony,xperia-castor
+          - const: qcom,msm8974pro
+
       - items:
           - const: qcom,msm8916-mtp
           - const: qcom,msm8916-mtp/1
-- 
2.35.1

