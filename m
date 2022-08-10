Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7F4658E513
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 05:05:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229736AbiHJDFM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Aug 2022 23:05:12 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36712 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229480AbiHJDFF (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Aug 2022 23:05:05 -0400
Received: from mail-oi1-x22c.google.com (mail-oi1-x22c.google.com [IPv6:2607:f8b0:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1F3DE76967
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 20:05:03 -0700 (PDT)
Received: by mail-oi1-x22c.google.com with SMTP id c185so16219998oia.7
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 20:05:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=rD2IyCzgtwCTzMLZzwIE/tb4oOftEB3n0yJKBiPeWqk=;
        b=UYMg4CGkX0lpqYqaTLWTh/oZoAsza29UnZN+v6fgIHyB29UiemiOIjPXy9Sj78Xirh
         4nBt1/P2oB0qBeTEjR5UjzGbCJXGNAg9pO5E7FOOPooqXxrrzAZYdI2YyQktK6WrnrBv
         KhYjT75iEdt1JVcieiw1Xiw33npdRpsVU1c7XawsJF1IYKWuKMCV6LHl3Vr//TjWCijJ
         nZoS3TdVxQEMQ8ySV63bd26w9xtii/1Bp+VqsB56v/1hk95kPvwqtTaczwEEd6nIzfpv
         meMCTXUJ3Islgsfo2alhb8HuIlxCLy1FfLwx7QqKHqkqQmbvq3VXBu60duGCz58cwdXC
         cpQw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=rD2IyCzgtwCTzMLZzwIE/tb4oOftEB3n0yJKBiPeWqk=;
        b=7W79R6NT8TBoMSCzdHveUa+4kTMBF344Fr6S2g7Minsh2H6RKLXVNayngyYtxT4PBH
         zwarlTF9ZwBs7GkeVrgRq9X7CD8NBChLeTV5aaoPJrzMkaSOsyrxp5f7A4TzltxNSkCX
         DnalLQ8vKt6H3cGvnV++wTdRp+mxls2sumDY++BLQPKMfxXiKoUEWyNFcDjQfTc/CN+s
         3Jfo/AxUwBxNMh6u1crcnXY5gLgM1QwzNk7Or3xhdiLJCXdnQmeZ+C/Vd1Qoleex47Ka
         AQZi82gF4t7nBz0FTPonlTvm0Y5yItxf0WpWB+2IhQBvpqcvEPsKmyvuTh0eTepiaIkK
         3aNA==
X-Gm-Message-State: ACgBeo2YmszIMAbdKLE/TIBBIUW1UmRlX1tFlUBgZWjEWhE47kOniqYE
        UoRXexmsOiZkRiwq9rjgwVCJPw==
X-Google-Smtp-Source: AA6agR6LPBryazczwFOVsHVWIgeyDxW00+kt9qMZdi0LzwOY3/frp5T4tfubd3B+fY1AoDbDFIpNuQ==
X-Received: by 2002:aca:ad0c:0:b0:342:f3e2:32a9 with SMTP id w12-20020acaad0c000000b00342f3e232a9mr595420oie.261.1660100702475;
        Tue, 09 Aug 2022 20:05:02 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id s20-20020a0568080b1400b0032f0fd7e1f8sm409004oij.39.2022.08.09.20.05.01
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 20:05:01 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Sebastian Reichel <sre@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Subject: [PATCH 0/2] power: supply: Lenovo Yoga C630 EC
Date:   Tue,  9 Aug 2022 22:04:58 -0500
Message-Id: <20220810030500.2793882-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.37.1
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

This adds binding and driver for the Lenovo Yoga C630 Embedded Controller, to
provide battery information and DisplayPort support.

Bjorn Andersson (2):
  dt-bindings: power: supply: Add Lenovo Yoga C630 EC
  power: supply: Add Lenovo Yoga C630 EC driver

 .../power/supply/lenovo,yoga-c630-ec.yaml     |  88 +++
 drivers/power/supply/Kconfig                  |  11 +
 drivers/power/supply/Makefile                 |   1 +
 drivers/power/supply/yoga-c630-ec.c           | 547 ++++++++++++++++++
 4 files changed, 647 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/power/supply/lenovo,yoga-c630-ec.yaml
 create mode 100644 drivers/power/supply/yoga-c630-ec.c

-- 
2.37.1

