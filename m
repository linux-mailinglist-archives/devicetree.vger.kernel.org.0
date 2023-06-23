Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 29B1173B633
	for <lists+devicetree@lfdr.de>; Fri, 23 Jun 2023 13:30:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231577AbjFWLad (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jun 2023 07:30:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59890 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231608AbjFWLa0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jun 2023 07:30:26 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EA3172699
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 04:30:19 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-988b75d8b28so57580966b.3
        for <devicetree@vger.kernel.org>; Fri, 23 Jun 2023 04:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687519818; x=1690111818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=CzYeX68lKPlCz+L8LZ4YwI674b1AAUDgqY7Xo7im3/4=;
        b=uHJ4+gc4n6QbqMyBWtK7W1Xjt3MTzTnVUjya30Fb5NdXahoVDeLZRl3hgSp278tlE4
         VliyNQplaORSO0/kwQjLUpPqz96HPEJEQWotYXarNJMRZNaUhg5911D/zJmwidH4CFwr
         oTkv1BJJGZWaG4cul83ynqe+ClDig+Eh0r69dXzz6n/dMWh3Ypm5IJyZtq4TcDDyRfSs
         XCf+WWMscRVc8iFb4NuvjeOu3Aw/Z4WvUf+glGyrC0zFfFTDlbSBTilr7zPGYx2FltqR
         YM8RKimFT9j7RUKJQ7sK0lVTAh0i4Uu0yWYMFc0wX1mqz5Jv/JIOu/wUcyXNERoKQXuf
         ILxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687519818; x=1690111818;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=CzYeX68lKPlCz+L8LZ4YwI674b1AAUDgqY7Xo7im3/4=;
        b=IeNCd3dq95sEbNZxaEGPbWqJ08ygbUf6U4sdlBuvyk6BseTrNSricPPm63rT8yW4+H
         eovJVnVNwfTKoqTgOadeG/kbTl+HumGeC1bKaoSx2Aju+EBhiVT7vOFPkkjD+yJeUOJ5
         YXVJYh4t47eYv+d9g4F7ykyDoXMP/+Dy+3GO0WwptBqnEsv8m/OIY7QkTA2xBGxv4SFl
         AdsEjWZlM1aLm9Q9y5EIX+M4TRrDf5QBv7uYlm8XmuuLiKQoF1b+v4PNmzDoTJ2Jdp8h
         wCurirlLHOvf8huehRnPAtj5Vnp/cTzdvsP8CsDnlJaWf6QQp84QkMuEkoPZRVzOHFwj
         ZZJg==
X-Gm-Message-State: AC+VfDyDbIYAPd8ll9Uk0je4iB1Dzd936lnS8vLIQYjQZ19KVIE7JHB6
        PgF55hAgsRFs0wVaEqJ36h4beQ==
X-Google-Smtp-Source: ACHHUZ6nwQNRD1YKOwwps0UGbxCzVqLniiQ53txsZ6ugpBw6DK6UIbEJhyYSWpw+zyT7teqY5aegMQ==
X-Received: by 2002:a17:907:60d6:b0:98d:264a:422e with SMTP id hv22-20020a17090760d600b0098d264a422emr3827978ejc.23.1687519818146;
        Fri, 23 Jun 2023 04:30:18 -0700 (PDT)
Received: from hackbox.lan ([62.231.110.100])
        by smtp.gmail.com with ESMTPSA id z17-20020a1709063ad100b009821ce1ea33sm5908033ejd.7.2023.06.23.04.30.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jun 2023 04:30:17 -0700 (PDT)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Manivannan Sadhasivam <mani@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        "Martin K . Petersen" <martin.petersen@oracle.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Bart Van Assche <bvanassche@acm.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-scsi@vger.kernel.org,
        devicetree@vger.kernel.org,
        Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Subject: [PATCH 3/5] scsi: dt-bindings: ufs: qcom: Add compatible for sc8180x
Date:   Fri, 23 Jun 2023 14:30:07 +0300
Message-Id: <20230623113009.2512206-4-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230623113009.2512206-1-abel.vesa@linaro.org>
References: <20230623113009.2512206-1-abel.vesa@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add the compatible string for the UFS on sc8180x platforms.

Signed-off-by: Abel Vesa <abel.vesa@linaro.org>
---
 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 46f454ec3688..4dad3f9ba81f 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sa8775p-ufshc
+          - qcom,sc8180x-ufshc
           - qcom,sc8280xp-ufshc
           - qcom,sdm845-ufshc
           - qcom,sm6115-ufshc
@@ -113,6 +114,7 @@ allOf:
             enum:
               - qcom,msm8998-ufshc
               - qcom,sa8775p-ufshc
+              - qcom,sc8180x-ufshc
               - qcom,sc8280xp-ufshc
               - qcom,sm8250-ufshc
               - qcom,sm8350-ufshc
-- 
2.34.1

