Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3793962BF4D
	for <lists+devicetree@lfdr.de>; Wed, 16 Nov 2022 14:22:39 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233652AbiKPNWh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Nov 2022 08:22:37 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39686 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233926AbiKPNWa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Nov 2022 08:22:30 -0500
Received: from mail-wr1-x42a.google.com (mail-wr1-x42a.google.com [IPv6:2a00:1450:4864:20::42a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5940B43AFD
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:22:25 -0800 (PST)
Received: by mail-wr1-x42a.google.com with SMTP id o4so29758121wrq.6
        for <devicetree@vger.kernel.org>; Wed, 16 Nov 2022 05:22:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KpUdJlnQfqKDJegMVjWAaP6n4Q/jt7E6huCsmrKl3/0=;
        b=PYN056v8Qz3l77gju7ewP7oM4PTxqFHcJ+ZMk23X6YkN25AYQc+DG8TJdfPJ29ja47
         hQTh0Lr6fdnKuNxrjOyNuMjq7vB1RFcF8guaiwl9rjkbGeN9GokD5yJLDNP7dCLI6OU+
         0pjR5zNmft+qDVMTvCJAhv9taUNtOkKa2wXgS1lceZv3O0Ht8iGXye+sSu+Pa2n3PLKH
         pPHQDNRijXzG1w1GS25eW+3b6ePpe9p3b9S/xE6wMmNDSivGq+fPdm8DOxF1mrYTzTJ/
         Ve96BA8s8fqZYRhPjLddUtR3VnQnwmQ1YVXvcSuhxMJBA7+oys7oA/y+z6FpIWnSqf9I
         VANg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KpUdJlnQfqKDJegMVjWAaP6n4Q/jt7E6huCsmrKl3/0=;
        b=c5VOzDhhMGiCKH1mqftz1wkWgCH6UW/2xbtx4UZwj5hJ+OfclSl/FhXFn3JRaFkUx9
         szHWIXYzJYTSVVlIL8nucOhxnuN95+yB5fnnErwxxxmf3AXP4/mP4MWSLBZ+GJ7NnIVD
         53AagF43lutfG4khbxxrWnN6S8t1IB7xn8+co1Q6XECsIaOHRnik5dEywHgNaZDbCaRE
         IHVCMetp/lym+u/GIjyFEbMD3z2bbujdKnlOn1IwIkTWGqMUdj/hFj7s7NHd+k5ZcDYS
         TeSB0dIcO434AEqYKFdlLQ04soA1knhiREi9KrcjPnBPveyoOEarra19tMF1drx6Ad7d
         YmTA==
X-Gm-Message-State: ANoB5pkr5DuGj/glWCseBGYiWGsThL1KUsmlrfQpCNPBbAw/AjwnUpQB
        dhugR8y3B80a+zasPr2Wwi7+xQ==
X-Google-Smtp-Source: AA0mqf6/T98a6RXhfPTEzVkebocc4zKcSbYrZB3T7qg+4fRARUqClVaHL+D2DeQffrwaUwKBlSoMHg==
X-Received: by 2002:a5d:4352:0:b0:236:7a11:b061 with SMTP id u18-20020a5d4352000000b002367a11b061mr14636155wrr.292.1668604943929;
        Wed, 16 Nov 2022 05:22:23 -0800 (PST)
Received: from localhost.localdomain ([94.52.112.99])
        by smtp.gmail.com with ESMTPSA id e17-20020a05600c4e5100b003cfa81e2eb4sm2322074wmq.38.2022.11.16.05.22.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Nov 2022 05:22:23 -0800 (PST)
From:   Abel Vesa <abel.vesa@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
        devicetree@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 0/2] arm64: dts: qcom: sm8550: Add USB HC and PHY support
Date:   Wed, 16 Nov 2022 15:22:10 +0200
Message-Id: <20221116132212.2842655-1-abel.vesa@linaro.org>
X-Mailer: git-send-email 2.34.1
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

This patchset adds USB controller and PHYs support to SM8550 platform
and enables them on the MTP board.

This patchset depends following patchsets:
[1] https://lore.kernel.org/all/20221116103146.2556846-1-abel.vesa@linaro.org/
[2] https://lore.kernel.org/all/20221116114526.2679041-1-abel.vesa@linaro.org/

Abel Vesa (2):
  arm64: dts: qcom: sm8550: Add USB PHYs and controller nodes
  arm64: dts: qcom: sm8550-mtp: Add USB PHYs and HC nodes

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts | 22 ++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 99 +++++++++++++++++++++++++
 2 files changed, 121 insertions(+)

-- 
2.34.1

