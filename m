Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B64BF6BA11F
	for <lists+devicetree@lfdr.de>; Tue, 14 Mar 2023 22:06:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229769AbjCNVGh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Mar 2023 17:06:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40352 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229540AbjCNVGg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Mar 2023 17:06:36 -0400
Received: from mail-qv1-xf35.google.com (mail-qv1-xf35.google.com [IPv6:2607:f8b0:4864:20::f35])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3F69C43467
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 14:06:33 -0700 (PDT)
Received: by mail-qv1-xf35.google.com with SMTP id t13so6568086qvn.2
        for <devicetree@vger.kernel.org>; Tue, 14 Mar 2023 14:06:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678827992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=zeNB1KMktbKdte2S+8YaFoHdeVrmArJ/QSpeQ+IzHvI=;
        b=vStZHalSBpSrjs1dz4MKVe8u9ZGY4fa5qVhmJJ4hp0YbIkwLmbqOAQP7LSxJqnPhXX
         ph5yKvV2UMG6thgSpJTRDoPMWfJ23dx0GY0I/JKn7dgOtb3xshaisNBvBIm3mswA50rv
         Hx9dr758uY1D0O6W4jRLeMfm7V4AJ7NcG0k7/EnxflfiAG1H71be9/jTMsmZI8p7+YI1
         a9G3yn7K5AtbVI6nSV2eE+AcK+2Uo2LCZUFeNbn19s5v51/oV/1kLi3J9pXqMoACFykT
         Oe4WAn6yIOc9V7p2PPMthjTYHAW9nqPUxf/+OLnmlOV9i4WwywsRaqiDjE3wJOSYmhP5
         p6jA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678827992;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=zeNB1KMktbKdte2S+8YaFoHdeVrmArJ/QSpeQ+IzHvI=;
        b=xSAhGOZJen1hCSeZtYp7Z3aSISOA4wb6dM0nmXH84h2GQA3wvrcKe6eNhY8/63Z6Xa
         BvTZWnt8wWi3rB3vqXyDStaFFSKhnacMbr5v4i6mnthd8LM52NdrlAS40taWLfhm5Ubn
         icSIVL6fY1c1/WYsA97GZOJ2OUw5R0KctD7LNd8BzHT/p+sW7PyY1K9y1XRlOQDiDPK1
         aPK5VulwZnZMRle8dU1wv0j4iAL2C3t7FOUtIM70WSxAgGoFM/M8AVeW5st69Yvkzz2s
         1Rs9Ks7wrlr8pjT7jsgFwb4LbZupG4uE7C/7y60mWejY7qYiHVBCUCMx7998BWA8cgC2
         Bn/Q==
X-Gm-Message-State: AO0yUKWcl7EJrIE3RPa5ZYKIzP8VDcs6DTY1XBvaqnj1wqDYPlt5sT66
        +6dIZtE2pUj72jIfC/AJWT5faQ==
X-Google-Smtp-Source: AK7set9T4ospnPE72hHIectrswsBpVlkH/xN+vJpMdera9IowF0rZDhs29RWjz9lNHHW1mpOj4cfcg==
X-Received: by 2002:a05:6214:4001:b0:570:ccb9:a4d0 with SMTP id kd1-20020a056214400100b00570ccb9a4d0mr18793766qvb.16.1678827992287;
        Tue, 14 Mar 2023 14:06:32 -0700 (PDT)
Received: from localhost.localdomain ([98.61.227.136])
        by smtp.gmail.com with ESMTPSA id d78-20020a376851000000b0074571b64f0fsm2443156qkc.53.2023.03.14.14.06.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Mar 2023 14:06:31 -0700 (PDT)
From:   Alex Elder <elder@linaro.org>
To:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org
Cc:     andersson@kernel.org, konrad.dybcio@linaro.org, agross@kernel.org,
        devicetree@vger.kernel.org, davem@davemloft.net,
        edumazet@google.com, kuba@kernel.org, pabeni@redhat.com,
        elder@kernel.org, netdev@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH net-next] dt-bindings: net: qcom,ipa: add SDX65 compatible
Date:   Tue, 14 Mar 2023 16:06:28 -0500
Message-Id: <20230314210628.1579816-1-elder@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add support for SDX65, which uses IPA v5.0.

Signed-off-by: Alex Elder <elder@linaro.org>
---
 Documentation/devicetree/bindings/net/qcom,ipa.yaml | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/net/qcom,ipa.yaml b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
index 4aeda379726fa..2d5e4ffb2f9ef 100644
--- a/Documentation/devicetree/bindings/net/qcom,ipa.yaml
+++ b/Documentation/devicetree/bindings/net/qcom,ipa.yaml
@@ -49,6 +49,7 @@ properties:
       - qcom,sc7280-ipa
       - qcom,sdm845-ipa
       - qcom,sdx55-ipa
+      - qcom,sdx65-ipa
       - qcom,sm6350-ipa
       - qcom,sm8350-ipa
 
-- 
2.34.1

