Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0924E6D8297
	for <lists+devicetree@lfdr.de>; Wed,  5 Apr 2023 17:51:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239114AbjDEPvU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Apr 2023 11:51:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35374 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239119AbjDEPvH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Apr 2023 11:51:07 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0C9046EAC
        for <devicetree@vger.kernel.org>; Wed,  5 Apr 2023 08:51:00 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id c9so36810029lfb.1
        for <devicetree@vger.kernel.org>; Wed, 05 Apr 2023 08:50:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680709858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VoZW/t2NItn4c5+IARY96OyebrrhmrilS2i/y95RELk=;
        b=S1xQ05RpN0xuL2zhRUG3HJrXGOw12SWrnx2XMG+rj9mmgum/mk+AXF8na+i9idRvzw
         x5faXylMxXxzKRsx8QbQUxmE3HqBb/Omi2TwQgJoXvJxxYrLO9qQiwYBoC87gG4VEKXg
         /Xxhakdq8A2BjmmScoMjvxvxYIm093kW+A9g2iyg+mCvP800DVvWyBYKXMs34ZS00uui
         WSryiWKIk8Am9+o0coX8SbtcjHc9m7Rx9Hqf330y7zZwUnVaqcTtUCBIi0QSH178e6Uh
         UNMuh5JxTKyAMgRmFFN+vG/3vA3Hjiap9TVpL7JbO3XE+q6lDjX0VceGJCl8SakAGJdZ
         ipTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680709858;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=VoZW/t2NItn4c5+IARY96OyebrrhmrilS2i/y95RELk=;
        b=OMEMwSD7aj6Pxis3O4uE9Bw4OX7QuqsULhmeWxFBf1Tf8wgIpLaBh1YgBtIAVNLlh6
         FqwfNXrN3nFIId2gpE+7cqTTqGdSS1YovAoZ6D9zQN9kmPQNp85QpJVtrn6OnqCqNwLf
         0wbf+ZxdcUde/BcsuhJg7AUS/02oPk5JIrkSSBiWf1NW4mFFfxydVSRVcG2m0XmZWGjA
         kJ6hBS7wfaj/MoR34m7xkvf7PfqSDZHDW2nVm9Y1QKML+k4NIN+GqhbbyprwPXXr/MOG
         gbqQToFLPYhPtd0Vw18t8KcLrTDMEksJp0A4Om0S06/gWCTr9FxGm86KRxKoSuT1SpN1
         1TkQ==
X-Gm-Message-State: AAQBX9c5soW2+p2v9EF/0NAl+dfp/Xf9j+UZ4PFmBoLzs1JPHOKTd4Qx
        b6DhbZ4jfNw+cuUO182QO97JbQ==
X-Google-Smtp-Source: AKy350Y1Bw7EutpOHVvL5IBL1dJieZOl38J+eRPSAGtQCQ4OlkiZWaXHwu2RwepGMJ0EyA8eFdTwZQ==
X-Received: by 2002:ac2:5ed9:0:b0:4e0:fe29:9313 with SMTP id d25-20020ac25ed9000000b004e0fe299313mr1820725lfq.15.1680709857935;
        Wed, 05 Apr 2023 08:50:57 -0700 (PDT)
Received: from [192.168.1.101] (abxh37.neoplus.adsl.tpnet.pl. [83.9.1.37])
        by smtp.gmail.com with ESMTPSA id o28-20020ac2495c000000b004eb2db994e7sm2869344lfi.239.2023.04.05.08.50.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Apr 2023 08:50:57 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 05 Apr 2023 17:50:31 +0200
Subject: [PATCH v2 2/5] dt-bindings: arm: qcom: Add QRB2210/QCM2290 and RB1
 board
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230403-topic-rb1_qcm-v2-2-dae06f8830dc@linaro.org>
References: <20230403-topic-rb1_qcm-v2-0-dae06f8830dc@linaro.org>
In-Reply-To: <20230403-topic-rb1_qcm-v2-0-dae06f8830dc@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Robert Marko <robimarko@gmail.com>,
        Das Srinagesh <quic_gurus@quicinc.com>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1680709854; l=1143;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=e/aVB5KX0++ON0sWAeEBxlEotAP8vaegj0zHbRUzB44=;
 b=GCaSsMsrKx9f3J6VX+j3xO8cxs2hMPCN0xXx9TKY4GezxSoDUXGB0cJdON4CPF2B63ClQaq8i+Cl
 F+Y/O6jrDVoDSKmjheRZI8HYNjKCrjRiv7TAMJIu5zCZGpMlrAal
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document QRB210, a QRB version of QCM2290.

Document QTI Robotics RB1 as a QRB2210 device.

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 05badce5fedc..236ea55aee96 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -47,6 +47,8 @@ description: |
         msm8996
         msm8998
         qcs404
+        qcm2290
+        qrb2210
         qdu1000
         qru1000
         sa8155p
@@ -353,6 +355,13 @@ properties:
           - const: swir,wp8548
           - const: qcom,mdm9615
 
+      - description: Qualcomm Technologies, Inc. Robotics RB1
+        items:
+          - enum:
+              - qcom,qrb2210-rb1
+          - const: qcom,qrb2210
+          - const: qcom,qcm2290
+
       - description: Qualcomm Technologies, Inc. Distributed Unit 1000 platform
         items:
           - enum:

-- 
2.40.0

