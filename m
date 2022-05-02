Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 74C6A5175FA
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 19:41:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244152AbiEBRoa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 13:44:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46778 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244083AbiEBRo3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 13:44:29 -0400
Received: from mail-ej1-x636.google.com (mail-ej1-x636.google.com [IPv6:2a00:1450:4864:20::636])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 73C352196
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 10:40:59 -0700 (PDT)
Received: by mail-ej1-x636.google.com with SMTP id kq17so29095752ejb.4
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 10:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T2pqf/ZsMQSKMuxK+/c6zd6+ftGPVEK7T/AqUXfVSTg=;
        b=w6Xa++C37JYlMsXY8QYku3gyilnsILyuKs9Dhiv+0xVGxcRpR1l9UyjuSRbRuoB4OX
         mWKbJ2RxY536xewVProPrUHcnc15MO66QJyK+fVdfgc5ET37LGJGdxIbIyJ+7tSDxLET
         US5eXo9xo1b+FK4u77L4wNSq57GgzoNX3ACtcUwX+ytbowUsxN1R1s8gPd6T9/LnsjYJ
         fOwO2nHL/geYwmSsT4qbGgY/+epHWZeOZpjIMIzrOGPOS1i6SoIc7n9GhGLHaW44qBT2
         6RqSwh1TT9mc1RNogQFamC/AtRI+VoVa8CeTygEWw/5V1mx/BYDJF0cdBplf1deSlqd6
         iruQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=T2pqf/ZsMQSKMuxK+/c6zd6+ftGPVEK7T/AqUXfVSTg=;
        b=r4J22k9cwr6QwQc9xtZ9jN2+AgiXC6NvF6qMf0PtKbS2xQGwSvanwkLbfroVpt7mwS
         gAoCuF0IAMpIynvvhD4YDKJYGNQLHLZcTtIjFSXi9GXUgWdVmSafaIfUQshW9jvNSgAz
         5aD2pVr944tdp05TyquaTKnJoOf5MAHsTmT5Mx96EufOfK2rP2sp7uNWxk95LC6Xo8TY
         6KkeOiyLHaHDDXVfx/2Gv8L7yDt9O96SkCRPJcI+tPs9F/YSanOAVkNkh65GqWPONdmi
         yqLJb3HLU4TwYY4qT/OY5nKBL+AlZVwwKLHoDE1T7GBGJzmOBBDXn+k77KzcTLbZ6gNF
         rmQw==
X-Gm-Message-State: AOAM530doOESTsR9Vk8bExZcOKxW4f43Zke/Aurns6a21aVIy8uaeziZ
        Ua8w/kUhHI9y4IoUJJhYjudMJg==
X-Google-Smtp-Source: ABdhPJwVvu+lkFY73eVNrxet+GQc/E+bRy1O6uMwXhMPN5GQLVixiDxsLFoDD0I94kAPgjYCuasVdg==
X-Received: by 2002:a17:907:7810:b0:6e7:ef73:8326 with SMTP id la16-20020a170907781000b006e7ef738326mr12088942ejc.429.1651513258023;
        Mon, 02 May 2022 10:40:58 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id n9-20020aa7c689000000b0042617ba639csm6908547edq.38.2022.05.02.10.40.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 10:40:57 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/4] soc/PM/arm64: qcom: Add initial version of bwmon
Date:   Mon,  2 May 2022 19:40:42 +0200
Message-Id: <20220502174046.139234-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.32.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

BWMON is a data bandwidth monitor providing throughput/bandwidth over certain
interconnect links in a SoC.  It might be used to gather current bus usage and
vote for interconnect bandwidth, thus adjusting the bus speed based on actual
usage.

The work is built on top of Thara Gopinath's patches with several cleanups,
changes and simplifications.

This is "initial version", which means the work is not finished.  The goal is
to add support for further devices (version 5 of bwmon) and usage of devfreq
governors, similarly to tegra30 devfreq driver.

Best regards,
Krzysztof

Krzysztof Kozlowski (4):
  dt-bindings: interconnect: qcom,sdm845-cpu-bwmon: add BWMON device
  opp: Add apis to retrieve opps with interconnect bandwidth
  soc: qcom: icc-bwmon: Add bandwidth monitoring driver
  arm64: dts: qcom: sdm845: Add CPU BWMON

 .../interconnect/qcom,sdm845-cpu-bwmon.yaml   | 105 ++++++
 MAINTAINERS                                   |   7 +
 arch/arm64/boot/dts/qcom/sdm845.dtsi          |  60 ++++
 drivers/opp/core.c                            | 120 +++++++
 drivers/soc/qcom/Kconfig                      |  10 +
 drivers/soc/qcom/Makefile                     |   1 +
 drivers/soc/qcom/icc-bwmon.c                  | 328 ++++++++++++++++++
 include/linux/pm_opp.h                        |  19 +
 8 files changed, 650 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sdm845-cpu-bwmon.yaml
 create mode 100644 drivers/soc/qcom/icc-bwmon.c

-- 
2.32.0

