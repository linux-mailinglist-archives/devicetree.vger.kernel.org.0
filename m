Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D6AF86D25FF
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 18:45:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232858AbjCaQpv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 12:45:51 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38674 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231159AbjCaQpO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 12:45:14 -0400
Received: from mail-pl1-x633.google.com (mail-pl1-x633.google.com [IPv6:2607:f8b0:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 23CEC191F1
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 09:44:00 -0700 (PDT)
Received: by mail-pl1-x633.google.com with SMTP id kc4so21747870plb.10
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 09:44:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680281037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Ns2jPDGRWz/czfPYAkU0ANfXA6YC0owDF4gxQpajwV0=;
        b=aiimWe8pF/BriYtPf0PKn2U8465iFm5sNDYnZtgWj5CHvNm9VwbTArsIug5gxQlP2Z
         zrOvSMF/ptx4zOWzyWFjhYBBelyoVbcuPSXKJDcvVJBIkCwTc93woeMh/2IJDI747rDY
         CgzzdnLMZTIfli/q7zcINzyqmQw0eYwPFMxGeHlKfibPQCD9Jf2O8/Skgdg31EvJcEQA
         w1DhYtK2FdKnhkdIYIrP5rJIGrmXrjgxT7oQkr397823VjrmFDUEE2zhzgOLd5nvttcx
         gP/8GfSDhZRnXrNtQuXUIS+k4sL5WFxgURnXeERKDoIbyXQy+Q6eyZ3UKQNibkjGxVxv
         WrnQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680281037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Ns2jPDGRWz/czfPYAkU0ANfXA6YC0owDF4gxQpajwV0=;
        b=IbKtEeXK0WKbMBpYGKLB186z13J46j7vQ1hpjAvy4acux9QqdcPlL0Hs2Hit+pKwR2
         KokSXo/SFoAlSwLCyExIYTFBW3cBNGK9KEjcXRxF1sBgQk70yuMh7TZktTUlgFOyl+7l
         1wiKzJF9/Q63QFTEBY7hAn15kjNGHvgK+nKM9iqnAZnMeO9Z70Rdm2r3VKvqM7m8Z9os
         DtfRA5wXUIVal65gYjgtdIzN/Wpmof7gixq/Bpi7gjKcqp00l8HBuESogdTX5DW9f1zQ
         ihncYgttKoG6wtnOAwjj6rjQr81ngSep2x74lK9QXLkbgUAcspbiYUM1e6iNOZY5Duy9
         4D+A==
X-Gm-Message-State: AAQBX9fAxkPMaXECnH2c9oO+gtuwJXau120R499Srz1MR0tCa32Kmdps
        IcM+bKKoguNCt4Y65VT9Ou9gJw==
X-Google-Smtp-Source: AKy350YBHz2GwuQS2tjXBT1r2+lcPRvkfPSLqAp9Kv6j/d4fJ/dNHxbGwE54Xnj5FtXfG3O9h4F+RQ==
X-Received: by 2002:a17:90b:1bd1:b0:23d:3fbe:2f7 with SMTP id oa17-20020a17090b1bd100b0023d3fbe02f7mr30224030pjb.20.1680281037447;
        Fri, 31 Mar 2023 09:43:57 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c5e:53ce:1f39:30a5:d20f:f205])
        by smtp.gmail.com with ESMTPSA id x13-20020a170902b40d00b0019b089bc8d7sm1798767plr.78.2023.03.31.09.43.53
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:43:57 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v4 05/11] dt-bindings: qcom-qce: Fix compatible combinations for SM8150 and IPQ4019 SoCs
Date:   Fri, 31 Mar 2023 22:13:17 +0530
Message-Id: <20230331164323.729093-6-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230331164323.729093-1-bhupesh.sharma@linaro.org>
References: <20230331164323.729093-1-bhupesh.sharma@linaro.org>
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

Currently the compatible list available in 'qce' dt-bindings does not
support SM8150 and IPQ4019 SoCs directly which may lead to potential
'dtbs_check' error(s).

Fix the same.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 Documentation/devicetree/bindings/crypto/qcom-qce.yaml | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
index e375bd981300..90ddf98a6df9 100644
--- a/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
+++ b/Documentation/devicetree/bindings/crypto/qcom-qce.yaml
@@ -24,6 +24,12 @@ properties:
         deprecated: true
         description: Kept only for ABI backward compatibility
 
+      - items:
+          - enum:
+              - qcom,ipq4019-qce
+              - qcom,sm8150-qce
+          - const: qcom,qce
+
       - items:
           - enum:
               - qcom,ipq6018-qce
-- 
2.38.1

