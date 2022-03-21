Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2D4644E2792
	for <lists+devicetree@lfdr.de>; Mon, 21 Mar 2022 14:34:02 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1347889AbiCUNfX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Mar 2022 09:35:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53480 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1347886AbiCUNfR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Mar 2022 09:35:17 -0400
Received: from mail-ed1-x529.google.com (mail-ed1-x529.google.com [IPv6:2a00:1450:4864:20::529])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DF3E13C714
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 06:33:51 -0700 (PDT)
Received: by mail-ed1-x529.google.com with SMTP id w25so17816779edi.11
        for <devicetree@vger.kernel.org>; Mon, 21 Mar 2022 06:33:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mZ8HdiTgcVigl0a3UV5zlYJCfBrMwpgPetl89qLpPSQ=;
        b=DlGlkCrtzbxekERuNvjOkzibW+KoiiKsaBjyFta8KwhfwCXES710MnwIsbNk/VoOdj
         Kot/QSNUCXwBiyNS836CFk0qVrUPazQgqKcxfnxbi7dsBkpSmbu63iVUSsguyzeA26oK
         3NfVfJ5IaeByUOnA7GJU/GzD5DHk7SP03TF4CCRrOWJeodI3KnAU8HMtIGrgT3aaGlkC
         5TxxLflrak8WwJe+xR22+ASOI1xPo9OXABrw8WuWc56vOjjAZ88xmsIjaRpDUUwRxedg
         DFtY19B/5zp/Vgpf+LtF1ymNI6Jyks29h3liBSpJfEIW4ibmATo5ev76K4ue4byfuvXW
         +rQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mZ8HdiTgcVigl0a3UV5zlYJCfBrMwpgPetl89qLpPSQ=;
        b=E7b6YY+gRFVAQuFbHVZCoiBHGOESKNMn4X32S9ziz5/lJT6Fs3IzCYmZDRmcDjB9xR
         2cA4kIJbFUxeIwnc/MoJ33jrb66rT0spe5uCxW+k07hJHTC0tv/epbis1I07MyiEObS8
         sqGhBYadLxNj74Tg/kroL+9RFPiZizx/PmAyuBg5pOg8o3Mz9gx5GmWmr/TWDOgq8jOk
         5/TKLw1F60UuGuUnAACnnC6IDr3W3U8DR8rwRrMTPD93xvbnBdJw3Gao94P4yqY7YhnW
         lRDrfOfrhYZwVwUFC4dCT3OqiO7bhYAr2LFqG3PkfnFPoPMIsT6uqYPt7xnJTy9TZ9ZK
         IYew==
X-Gm-Message-State: AOAM533GpdSfQFhw3HaK/NHrvuvUQ1aJ5Bay9s5CeqpurN52DnvS4AOn
        gnmL0MSTWeYKWEVqVGoJUfwdfw==
X-Google-Smtp-Source: ABdhPJx2zzuXLmvAkDeu7gED1IhSElcio6x5gdV3r+KWk0yff6fDQ6CLsQqc2tkzZkv904iYSqyQbA==
X-Received: by 2002:a50:a449:0:b0:418:d875:1730 with SMTP id v9-20020a50a449000000b00418d8751730mr22877841edb.371.1647869630480;
        Mon, 21 Mar 2022 06:33:50 -0700 (PDT)
Received: from otso.arnhem.chello.nl (a246182.upc-a.chello.nl. [62.163.246.182])
        by smtp.gmail.com with ESMTPSA id r22-20020a17090638d600b006d584aaa9c9sm6862154ejd.133.2022.03.21.06.33.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 21 Mar 2022 06:33:50 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Avri Altman <avri.altman@wdc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        linux-scsi@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Subject: [PATCH v2 1/6] scsi: ufs: dt-bindings: Add SM6350 compatible string
Date:   Mon, 21 Mar 2022 14:33:13 +0100
Message-Id: <20220321133318.99406-2-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220321133318.99406-1-luca.weiss@fairphone.com>
References: <20220321133318.99406-1-luca.weiss@fairphone.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Document the compatible for the UFS found on SM6350.

Signed-off-by: Luca Weiss <luca.weiss@fairphone.com>
---
Changes in v2:
- add second hunk for clock validation

 Documentation/devicetree/bindings/ufs/qcom,ufs.yaml | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
index 5b3a2157f7e5..dcd32c10205a 100644
--- a/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
+++ b/Documentation/devicetree/bindings/ufs/qcom,ufs.yaml
@@ -27,6 +27,7 @@ properties:
           - qcom,msm8996-ufshc
           - qcom,msm8998-ufshc
           - qcom,sdm845-ufshc
+          - qcom,sm6350-ufshc
           - qcom,sm8150-ufshc
           - qcom,sm8250-ufshc
           - qcom,sm8350-ufshc
@@ -125,6 +126,7 @@ allOf:
           contains:
             enum:
               - qcom,sdm845-ufshc
+              - qcom,sm6350-ufshc
               - qcom,sm8150-ufshc
     then:
       properties:
-- 
2.35.1

