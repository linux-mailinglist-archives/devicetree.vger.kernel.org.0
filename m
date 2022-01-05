Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 309A648586D
	for <lists+devicetree@lfdr.de>; Wed,  5 Jan 2022 19:34:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243039AbiAESeY (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 5 Jan 2022 13:34:24 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41970 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243013AbiAESeT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 5 Jan 2022 13:34:19 -0500
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6B41CC061212
        for <devicetree@vger.kernel.org>; Wed,  5 Jan 2022 10:34:19 -0800 (PST)
Received: by mail-wr1-x436.google.com with SMTP id o3so26667467wrh.10
        for <devicetree@vger.kernel.org>; Wed, 05 Jan 2022 10:34:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QjBi5fYeFYGkdoj528/DSOwlrW5ixEJe9Vn+jZ4Y8b8=;
        b=UPDHMyCzqHNAX+Ppou+LwYpU+ElAEjcIANhveWVZJWYcUwl2rDuEarF3CEblJhNKNl
         eV/5svevFAcjv/+IylVQq42nyECZptMbb8OdRyRkSAO6KcwxenL2BGcL2QfCWMUKwh8t
         JNl1fFk1lESeYeBdkHTILsVnt7dSAEosM29ingFnolVIRcFYFZtuL/iDW1lGvMZa8Cui
         W9ELcZCNIXvbt8V+xMHZYSYnxZl0Mv1iMkLjsTfgpUyIp0L2W+RQESUuvSVhkevdHJ+s
         Eqpnk34Ce/sHsI7oTXQ7L7X5Tehf6DOaHVtEiVABkF7FDcxHL98l/JjFRWNMqRNur1cu
         UmgQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QjBi5fYeFYGkdoj528/DSOwlrW5ixEJe9Vn+jZ4Y8b8=;
        b=WNpB5tgi9lHEinHo4U2dUyv2PO8SXxnRQrzkfdb36gODN0iNjuQ4AnGuABMm2KcsnH
         yDjIWIR/eZwpFC0uE3Nd1Dp8oS7NgdHW7B2DkqQaPpVzXiXz0rP58yiYz/PZ7TNHAgY5
         VNvojnpOvzmn/KnlTgRnhNIH3rJvJlP7BTW37Ap6+Kj12oMneAbRzMPdJQzr1/Y2tm2z
         /eKDee8rbiQQwZs2wpKIbmLH0nx6E2BkP7o7VQI4DgdFzy6yth0HQpWtQ5CH0hJb56rP
         f5kls3OJrkIp6OWSLdhFlsjQ1Hkh+y23GBAg552o6G5vfJ2jqGQXsDnC14rYcyV8RXUR
         dA0g==
X-Gm-Message-State: AOAM531ffofsgAQkO9CJCGeUUs8kFnZFwLYen6HvU2hSN2efjRoN4wrj
        c7VuFk8IzsrXoy6q8Jjnjn7OTw==
X-Google-Smtp-Source: ABdhPJxR+M9AgXVXxAlo3/HZTapEmtTjnt56e0VZivXQ3ykVou0kKKoSkty37wMyWuP1j9swClUl4g==
X-Received: by 2002:a05:6000:18cd:: with SMTP id w13mr20860167wrq.199.1641407657954;
        Wed, 05 Jan 2022 10:34:17 -0800 (PST)
Received: from localhost.localdomain ([81.178.195.252])
        by smtp.gmail.com with ESMTPSA id o1sm3272215wmc.38.2022.01.05.10.34.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 05 Jan 2022 10:34:17 -0800 (PST)
From:   Caleb Connolly <caleb.connolly@linaro.org>
To:     caleb.connolly@linaro.org, Jonathan Cameron <jic23@kernel.org>,
        Lars-Peter Clausen <lars@metafoo.de>,
        Rob Herring <robh+dt@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Lee Jones <lee.jones@linaro.org>, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
Cc:     sumit.semwal@linaro.org, amit.pundir@linaro.org,
        john.stultz@linaro.org
Subject: [PATCH v2 0/7] iio: adc: introduce Qualcomm SPMI Round Robin ADC
Date:   Wed,  5 Jan 2022 18:33:46 +0000
Message-Id: <20220105183353.2505744-1-caleb.connolly@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The RRADC is responsible for reading data about the current and
voltage from the USB or DC in jacks, it can also read the battery
ID (resistence) and some temperatures. It is found on the PMI8998 and
PM660 Qualcomm PMICs.

The RRADC has to calibrate some ADC values based on which chip fab
the PMIC was produced in, to facilitate this the patch
("mfd: qcom-spmi-pmic: expose the PMIC revid information to clients")
exposes the PMIC revision information as a struct and registers it
as driver data in the Qualcomm SPMI PMIC driver so that it can be 
read by the RRADC.

Changes since v1:
 * Rework the RRADC driver based on Jonathan's feedback
 * Pick up Rob's reviewed by for the dt-binding patch.

Caleb Connolly (7):
  mfd: qcom-spmi-pmic: expose the PMIC revid information to clients
  dt-bindings: iio: adc: document qcom-spmi-rradc
  iio: adc: qcom-spmi-rradc: introduce round robin adc
  arm64: dts: qcom: pmi8998: add rradc node
  arm64: dts: qcom: sdm845-oneplus: enable rradc
  arm64: dts: qcom: sdm845-db845c: enable rradc
  arm64: dts: qcom: sdm845-xiaomi-beryllium: enable RRADC

 .../bindings/iio/adc/qcom,spmi-rradc.yaml     |   54 +
 arch/arm64/boot/dts/qcom/pmi8998.dtsi         |    8 +
 arch/arm64/boot/dts/qcom/sdm845-db845c.dts    |    4 +
 .../boot/dts/qcom/sdm845-oneplus-common.dtsi  |    4 +
 .../boot/dts/qcom/sdm845-xiaomi-beryllium.dts |    4 +
 drivers/iio/adc/Kconfig                       |   13 +
 drivers/iio/adc/Makefile                      |    1 +
 drivers/iio/adc/qcom-spmi-rradc.c             | 1070 +++++++++++++++++
 drivers/mfd/qcom-spmi-pmic.c                  |  108 +-
 include/soc/qcom/qcom-pmic.h                  |   63 +
 10 files changed, 1272 insertions(+), 57 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/iio/adc/qcom,spmi-rradc.yaml
 create mode 100644 drivers/iio/adc/qcom-spmi-rradc.c
 create mode 100644 include/soc/qcom/qcom-pmic.h

-- 
2.34.1

