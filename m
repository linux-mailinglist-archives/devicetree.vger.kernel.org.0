Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B5002597C1A
	for <lists+devicetree@lfdr.de>; Thu, 18 Aug 2022 05:14:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S243006AbiHRDMz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 Aug 2022 23:12:55 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44834 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242548AbiHRDMx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 Aug 2022 23:12:53 -0400
Received: from mail-oa1-x30.google.com (mail-oa1-x30.google.com [IPv6:2001:4860:4864:20::30])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0713C8673A
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 20:12:46 -0700 (PDT)
Received: by mail-oa1-x30.google.com with SMTP id 586e51a60fabf-f2a4c51c45so425840fac.9
        for <devicetree@vger.kernel.org>; Wed, 17 Aug 2022 20:12:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=/Flx4/Oo5ESanVP7AKIxzXsr1aRT9o+BjnyTMGI7qkU=;
        b=r2kiQ7Tlw0XUtQ+sTLrDduaI03eFa9PGyzJg81Iwits/TAD2l7+o1H5s4V18/+qR+e
         jtfwcht9ZVo5PyTWXe8ZKymnbB5/OiXvHKsCr2oCOyHf6db1v0Qi3ON2BnwrjMC6bbhb
         k9GstDvkLuvKdSXH7bRLK8nmIofrqBsFZdpLlAzlpZTzen63PzL52VTthMAtk18DLO3k
         ZX1aMDrcZL17TZGGP8Gc8mw9mG9720n11Hh43gyznH8up2ExBKWjiar12eua0RJArTeO
         k0rjT9xjBvJqmJ6Sq+D7cDIUUzb/2tEQm7aJ7LFxD27iuQUbGj9E+BjjxfD5tYSk3p62
         OvXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=/Flx4/Oo5ESanVP7AKIxzXsr1aRT9o+BjnyTMGI7qkU=;
        b=K7AFpAtSaXW/9QkzYkJUzRXKonyOGmPP4PW0DCRNVFtRdUbg3/I2Txy12SR//l8UYP
         CXSJLen0rEtnbUXUwMV+5mtfyjXPg9Z6k72B24nUWI1IWjNvWotxheqOzE57zefhN5mb
         +XBYPu6GxkTZ78Su138W+oeDYu9HM16mfMI12SZId6/jdStW/cBYo+kZQ23okZjulPYy
         sKWNK4dhO/35YYR1turGTO/BfDojfMypPDdY1LYTnzMvlL7/BJx/RKQNUfdVxduTtI8c
         +pTekgm+4/rMcgSyzoMgLdVlG9XxolzlpjiEC2dr3DpCDrHEQbYaqjFRLsH3cfpqvmmn
         ErvQ==
X-Gm-Message-State: ACgBeo32XEloZyyQSL4CiqE62tCQi/F7EZBZYESE11kOMLLhuAeaYDsH
        S1J1QAMRtattfV8a6nxJInC5Yp+p46N8mA==
X-Google-Smtp-Source: AA6agR6eMk+MtdPrwOVZSddIsIpEOBkiYgjRjL5gQWZFgmVQ6UJqM0KfvV0mQeNYvm8DrutAiUWBsA==
X-Received: by 2002:a05:6870:459d:b0:10e:75b7:15b7 with SMTP id y29-20020a056870459d00b0010e75b715b7mr3264835oao.115.1660792365285;
        Wed, 17 Aug 2022 20:12:45 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id l6-20020a056871068600b0011c25975c1dsm112382oao.25.2022.08.17.20.12.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 Aug 2022 20:12:44 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sebastian Reichel <sre@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org
Subject: [PATCH 0/4] soc: qcom: Introduce PMIC GLINK
Date:   Wed, 17 Aug 2022 20:15:08 -0700
Message-Id: <20220818031512.319310-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
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

This implements the base PMIC GLINK driver, a power_supply driver and a driver
for the USB Type-C altmode protocol. This has been tested and shown to provide
battery information, USB Type-C switch and mux requests and DisplayPort
notifications on SC8180X, SC8280XP and SM8350.

Bjorn Andersson (4):
  dt-bindings: soc: qcom: Introduce PMIC GLINK binding
  soc: qcom: pmic_glink: Introduce base PMIC GLINK driver
  soc: qcom: pmic_glink: Introduce altmode support
  power: supply: Introduce Qualcomm PMIC GLINK power supply

 .../bindings/soc/qcom/qcom,pmic-glink.yaml    |   98 ++
 drivers/power/supply/Kconfig                  |    9 +
 drivers/power/supply/Makefile                 |    1 +
 drivers/power/supply/qcom_battmgr.c           | 1422 +++++++++++++++++
 drivers/soc/qcom/Kconfig                      |   14 +
 drivers/soc/qcom/Makefile                     |    2 +
 drivers/soc/qcom/pmic_glink.c                 |  336 ++++
 drivers/soc/qcom/pmic_glink_altmode.c         |  477 ++++++
 include/linux/soc/qcom/pmic_glink.h           |   32 +
 9 files changed, 2391 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/soc/qcom/qcom,pmic-glink.yaml
 create mode 100644 drivers/power/supply/qcom_battmgr.c
 create mode 100644 drivers/soc/qcom/pmic_glink.c
 create mode 100644 drivers/soc/qcom/pmic_glink_altmode.c
 create mode 100644 include/linux/soc/qcom/pmic_glink.h

-- 
2.35.1

