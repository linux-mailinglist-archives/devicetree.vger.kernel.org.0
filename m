Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50A0178E178
	for <lists+devicetree@lfdr.de>; Wed, 30 Aug 2023 23:30:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S241506AbjH3Vas (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Aug 2023 17:30:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50496 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241517AbjH3Var (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Aug 2023 17:30:47 -0400
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B4A68E4F
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 14:30:16 -0700 (PDT)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-99c0cb7285fso10613066b.0
        for <devicetree@vger.kernel.org>; Wed, 30 Aug 2023 14:30:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693430878; x=1694035678; darn=vger.kernel.org;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=UyTb34CC8o6Ht8AgxrBaKUd8noms1JfX94fq0UgPdCI=;
        b=n+beAyy2w35v7beXwroht4oyWWO/he+8vFscEEHdK5Pek4b+lKNzeCVMviAuICNvIW
         hFQWPdbCTN8dXcYeMsO3lkYwcbVc2+Vp5E+6bN5hIrY48ewssRB9KT/Ot70YsmT6JINg
         yVUMhZfkanNVkvn2hkdWzfnBgkPeC6mnxIx6vQtTyqSeL/sMy+q1FK/Gu7cRS6KRxXZl
         YpZT7RWqW4sRGWl5T+oSEwazxP7gXw8zW+Qu5dAFsybY68GGIiIjPRQzPUVRF5DfpBIe
         /Io+6acad270BZnNn+u9NzMLvoYZ0NQPsAD4Ci3JV36FTz5p5NsQF7N/DzTakBkoTCOr
         K5yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693430878; x=1694035678;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UyTb34CC8o6Ht8AgxrBaKUd8noms1JfX94fq0UgPdCI=;
        b=PLuEjMbDgeHVRqa4fnNmLe4yW3bBeu1Ox+Csr0G8NKzAyVr21ZKxP6oSsdrjwu//4u
         OuCVFPNm7zOY8cYUn66WI2xgiylMCEGeZTBxFBzH+lOy4Xvz6nusjjAzI+LIW7IfoRkg
         YkowxltEOCetl17ndY5OX/VJdMhXKznczHwLX73r0Y38CsJioLx4QhaR/ITtx958XK26
         IlPxZmOk2gsLmvDv6uzGXZu6n8nLS03Qx/1KG4BtBusptWvkad1x9iTsnLXxbaYn0SwW
         MUdVlbpGPUD3U82SfHbsJFXlRpcEi/r8jGC/OPxv/PbXftJTbmgWE3dHj1rCo4CHjGfS
         wZVw==
X-Gm-Message-State: AOJu0YyTZPZssw1zDVlq3aENrEvZ+u0jJxd9nA2RKoI3e5tRyiu+QK1S
        I3ePe7fvHK9nt9NSAlj285LeqjNkkz9rcjeyvhUfoA==
X-Google-Smtp-Source: AGHT+IEzmGKuK2006TWdjdLApsy6n7D2FXVYkf7FTUBXVsxQ81IWEUBLq0vJch02O7U6IiqOWnnJWA==
X-Received: by 2002:a05:6512:3c8b:b0:500:5d5c:ecc9 with SMTP id h11-20020a0565123c8b00b005005d5cecc9mr2813219lfv.62.1693430035654;
        Wed, 30 Aug 2023 14:13:55 -0700 (PDT)
Received: from [192.168.1.101] (abyl195.neoplus.adsl.tpnet.pl. [83.9.31.195])
        by smtp.gmail.com with ESMTPSA id b3-20020ac25623000000b004f37bd02a89sm2516351lff.287.2023.08.30.14.13.54
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Aug 2023 14:13:55 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 30 Aug 2023 23:13:51 +0200
Subject: [PATCH 1/2] dt-bindings: phy: qcom,usb-snps-femto-v2: Add REFGEN
 regulator
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230830-topic-refgenphy-v1-1-892db196a1c0@linaro.org>
References: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
In-Reply-To: <20230830-topic-refgenphy-v1-0-892db196a1c0@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Wesley Cheng <quic_wcheng@quicinc.com>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1693430032; l=921;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=vz1a+iPTk87wOT0fjsMmHkhaWg81ePPnVEq7IVR09VI=;
 b=DeUqTuNNnWAlhWqgl4R5rZoKMeEWwhxo81jSLACtmX0W8ScXz/2107XWlPhOWn21pFFsePvgh
 IoQZZ+Zu85uBLJt03N/briK2+2TsjrZ++D8IVfgBxSenH37ey2PQ9lG
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The HSPHY is (or at least can be) one of the users of the reference
voltage generating regulator. Ensure that dependency is described
properly.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml | 3 +++
 1 file changed, 3 insertions(+)

diff --git a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
index 0f200e3f97a9..e895b6c4ee49 100644
--- a/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
+++ b/Documentation/devicetree/bindings/phy/qcom,usb-snps-femto-v2.yaml
@@ -53,6 +53,9 @@ properties:
     items:
       - description: PHY core reset
 
+  refgen-supply:
+    description: phandle to the REFGEN regulator node
+
   vdda-pll-supply:
     description: phandle to the regulator VDD supply node.
 

-- 
2.42.0

