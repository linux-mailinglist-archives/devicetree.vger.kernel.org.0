Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9BC82789D49
	for <lists+devicetree@lfdr.de>; Sun, 27 Aug 2023 13:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjH0Lkz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Aug 2023 07:40:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43786 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229631AbjH0Lkc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 27 Aug 2023 07:40:32 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 160E6125
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 04:40:30 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id a640c23a62f3a-9a5b26d8e3aso5316966b.1
        for <devicetree@vger.kernel.org>; Sun, 27 Aug 2023 04:40:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693136428; x=1693741228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=r5yXjlx9eXs/s1lbf4NHbswyaJlJiZM8NIf6FC05ww0=;
        b=NWmpa3ICKJgt/YAFRNQRWMpDVZ8JpJtB6egrzMBKx0soIWIHVZS0r7dFodVnJUVyaB
         1KiNhGWLrvcerJy2J1X8OSXKleDEUDUVzoOgXU3K7Zl/EW8e6Cv0BXHdmx4PRjyetwAo
         gajNF/bCh0wtSjv5rt95wI2Xr9U6QOLpmgRIqMrVvXcOS3yGh4yxXy7c57ZvUluzPm6f
         HbQ8WCEz5bpJuvCqR+dVyIZHXPQkf1KCiCUsMuve/O+8A7YX7TSVx8eYwZ5HKpjdzhvk
         ffk/v3rrtZnlO4giCzQXt1TZF7Ft9AxlHTJ2e09VhVrKAKXkVd6B3Xdt6n0IjcgbEGZi
         /FtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693136428; x=1693741228;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=r5yXjlx9eXs/s1lbf4NHbswyaJlJiZM8NIf6FC05ww0=;
        b=Lt4oztNmsPz7rYmE/R4Cd6L9z8xDePTUBuo6tvk9NgOKmcemwZi/aq3je5+Va1rnVZ
         f2Eznn9ebZBdA+eG2PFflxxN8D0pPMxgoYrErPw3TwOntHhsllHP6Om+9Q9YPXUOHLeq
         HQGcTwJolrpkmHi8nuP1MfKjnCFX/S6+NMYGUPBcZYD4abm1nmsYtC2g4HERK+2dgf/I
         DX+ELZr31dHvF/kQpAPczAvUspR9g6lx705VEOU0gLuvmTVp2ToYM5G7j3mW7Bhyq0w6
         JxECm0WBrwsB1tZeIBU3JEun8bRFoVB3o8dsTeDlSrHlQS8n7lUiyQLWlk5J11++4xU5
         H8ig==
X-Gm-Message-State: AOJu0YwusJ98YMd/Rzk+bX24hYWvuUHp4DqrP4TcYiVI86TyHsPMK0sa
        VtLBdUJdrjRbbD2R1RHfaXpKmg==
X-Google-Smtp-Source: AGHT+IFJzgqawTOC8x8uvouQh8iok/M1NAVoCFi9ln0CxPQRDAoA3OzEUGucKvKZAn5I4wWukUyZ2Q==
X-Received: by 2002:a17:906:5354:b0:9a1:fab3:ee37 with SMTP id j20-20020a170906535400b009a1fab3ee37mr7016209ejo.14.1693136428400;
        Sun, 27 Aug 2023 04:40:28 -0700 (PDT)
Received: from krzk-bin.. ([77.252.47.225])
        by smtp.gmail.com with ESMTPSA id e2-20020a17090681c200b00997e99a662bsm3351927ejx.20.2023.08.27.04.40.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 27 Aug 2023 04:40:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Odelu Kukatla <quic_okukatla@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] dt-bindings: interconnect: qcom,rpmh: do not require reg on SDX65 MC virt
Date:   Sun, 27 Aug 2023 13:40:26 +0200
Message-Id: <20230827114026.47806-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MC virt interconnect in SDX65 DTSI does not have reg.  Similarly in
the downstream DTS, thus assume this is an interconnect without own
dedicated IO address space.  This fixes dtbs_check warnings like:

  qcom-sdx65-mtp.dtb: interconnect-mc-virt: 'reg' is a required property

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
index a46497af1fd8..74ab080249ff 100644
--- a/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
+++ b/Documentation/devicetree/bindings/interconnect/qcom,rpmh.yaml
@@ -113,6 +113,7 @@ allOf:
         properties:
           compatible:
             enum:
+              - qcom,sdx65-mc-virt
               - qcom,sm8250-qup-virt
     then:
       required:
-- 
2.34.1

