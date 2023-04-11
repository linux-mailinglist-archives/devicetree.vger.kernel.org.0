Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA7AB6DD41C
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 09:29:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229928AbjDKH3C (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 03:29:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46826 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229624AbjDKH27 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 03:28:59 -0400
Received: from mail-pj1-x1032.google.com (mail-pj1-x1032.google.com [IPv6:2607:f8b0:4864:20::1032])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 589112717
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 00:28:58 -0700 (PDT)
Received: by mail-pj1-x1032.google.com with SMTP id h24-20020a17090a9c1800b002404be7920aso7075159pjp.5
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 00:28:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681198138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=/ZcDkyocBFtXfB3hNoFbJbADRnMzJyduSdgyIw9Wyfg=;
        b=U38hShlJtmEqZxiFFLx6mROt0BhFkdfr3TxyoaNbYqqORx4X34LCT11Z9izAUU/bVr
         N99QJrALPExphP9uYs4pBV3V6XzxlZkbU/nF8V2u2AuetKw8W+edkpXePjErahoJI892
         iIuQxR75XJJbM7pFrLgt668ARrb9+empa5ve3G21Xue8gqzuAUHnwq2pZB0JvSYfWczO
         tBntaixPlu9t710fMEi8OKO5Y4YWDBbXweqFo8L0Ol+9dKRBNiPlGDxXiyEnj+IKsRTo
         FuFpex4CpygJTHEnUkbaFldVPSZcooZSJgPbUU1UxYEiOij1svyHy96ad+as3bOI//3z
         LZWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681198138;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=/ZcDkyocBFtXfB3hNoFbJbADRnMzJyduSdgyIw9Wyfg=;
        b=x5H1h5NJC/SQ6JS8OhNTBPaiDb/32b0KHIOuXugsnBU+pIgwv9e9PWzBV3zJq0l0oB
         Jg6Q7wilq6Ys3XBj1ZRL6FwwoEqUwYgHQZt9btF+VsFyXlicacNLaHLQRqNE5AQmHWvL
         s5MEzeu7BYCPlH6kLcmIRX7tcJ251COl2DpOBu3Hbr6r5Ndap3FAXVEYTLXLDSj1q3f5
         vu6c97HRVV3DmRfTsgpHFd3oRCkc4dqBBgzzv3FhmZdbzJNzxNQ3Y8yU1MOSNBLYvLiR
         FRCfRTHAdoaSI/jvj0dcKRsYeZbTQ79q3Aq6UD/iIZc4f6Diu8dq3e6m5lZJnIbG/TYR
         Qd5g==
X-Gm-Message-State: AAQBX9d21fExqNj8dpRgctbQ8fpjzIcFZIivKgAOc4pka6ZCSuODR1ra
        HPoqXsgqO8kH3l/wr+mQ5ROOJQ==
X-Google-Smtp-Source: AKy350acsjQOjo9KiFsfo+ba1xDynCedFYPnp3IFhVEJuFn+Mdc8L/lTe32RNkFSDv7YiqXDOZUMmw==
X-Received: by 2002:a17:903:249:b0:19d:1bc1:ce22 with SMTP id j9-20020a170903024900b0019d1bc1ce22mr18486535plh.5.1681198137731;
        Tue, 11 Apr 2023 00:28:57 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c60:6a11:8ba1:beba:def7:a4ae])
        by smtp.gmail.com with ESMTPSA id s7-20020a170902988700b001a043e84bf0sm8946612plp.209.2023.04.11.00.28.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 00:28:57 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, andersson@kernel.org, konrad.dybcio@linaro.org,
        linux-kernel@vger.kernel.org, bhupesh.linux@gmail.com,
        bhupesh.sharma@linaro.org, robh+dt@kernel.org,
        krzysztof.kozlowski@linaro.org
Subject: [PATCH v3 1/3] dt-bindings: arm: qcom: Document the Qualcomm qrb4210-rb2 board
Date:   Tue, 11 Apr 2023 12:58:38 +0530
Message-Id: <20230411072840.2751813-2-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230411072840.2751813-1-bhupesh.sharma@linaro.org>
References: <20230411072840.2751813-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the Qualcomm qrb4210-rb2 board based on Robotics version
of the Snapdragon SM4250 Soc, i.e. QRB4210.

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/arm/qcom.yaml | 8 ++++++++
 1 file changed, 8 insertions(+)

diff --git a/Documentation/devicetree/bindings/arm/qcom.yaml b/Documentation/devicetree/bindings/arm/qcom.yaml
index 785b969294a8..d9dd25695c3d 100644
--- a/Documentation/devicetree/bindings/arm/qcom.yaml
+++ b/Documentation/devicetree/bindings/arm/qcom.yaml
@@ -50,6 +50,7 @@ description: |
         qcm2290
         qdu1000
         qrb2210
+        qrb4210
         qru1000
         sa8155p
         sa8540p
@@ -97,6 +98,7 @@ description: |
         liquid
         mtp
         qrd
+        rb2
         ride
         sbc
         x100
@@ -874,6 +876,12 @@ properties:
               - oneplus,billie2
           - const: qcom,sm4250
 
+      - items:
+          - enum:
+              - qcom,qrb4210-rb2
+          - const: qcom,qrb4210
+          - const: qcom,sm4250
+
       - items:
           - enum:
               - lenovo,j606f
-- 
2.38.1

