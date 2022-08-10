Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 207A358E5EE
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 06:05:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230393AbiHJEFL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 00:05:11 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230438AbiHJEFJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 00:05:09 -0400
Received: from mail-oa1-x34.google.com (mail-oa1-x34.google.com [IPv6:2001:4860:4864:20::34])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9D1366FA0A
        for <devicetree@vger.kernel.org>; Tue,  9 Aug 2022 21:05:08 -0700 (PDT)
Received: by mail-oa1-x34.google.com with SMTP id 586e51a60fabf-10ec41637b3so16455922fac.4
        for <devicetree@vger.kernel.org>; Tue, 09 Aug 2022 21:05:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc;
        bh=Vlw+TzWyPgd12y2oMgL4R4HJ50qc9vxXJ8xI2NT6Tgg=;
        b=Mk4YfbNfP4qekf3kspd/n/RA9L1SskyD7kfFxDIvLgVsj2TsbRdfY9nGNc329hUhxM
         eA770fwsJI+gDIGmLiCNVDI4QiLq09juBYN2Gg0yQaLti5RIWuYKIGRXUn5nzqhhEKp0
         eVvmNbyWIknpUporgF1/3gI8g2AxZuGpSNmrdn+DXZTjKC/D3HpET2yvcNmjLeYHVtn8
         0LOA6D4zDQxKayH5LiH56wboTQcGwYtKG+Wkmlf603G8zHCfU2Om2CggUrEGDE3ubMdY
         PJq7XIh/n7nrB5ke+cEDQ5/FhTlIzlV82aEOzs01o11XKmdRyhXUrSu8tUvhsX/dO4v/
         TOYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc;
        bh=Vlw+TzWyPgd12y2oMgL4R4HJ50qc9vxXJ8xI2NT6Tgg=;
        b=7yMoELaWuforK50Ky+LQ+R9eMM51Aio0ShnT8d324z+K3drBAwStYP9eZs6CGvSNHw
         S0W6OIgaOW0vRxYjitooHNjyzB0efjGXgDWJ07H94WbDdkX0sotHZDxJ1rgZVtbHZKPN
         l4HzrtQi49SWKnXbbOEzTAjHW8gg5bmW/ym1EF27Y78l0R9+snQc/tUeH3gd4UybTUAu
         HbJaBGp4ZdOE5IXS5x5CERCjxfwpbOKjIoNCiWMpCDPRDJ9oNRDIkSFThZCStn98CFk/
         yCWOO79rACt7InYV8+NnEszDZdD2ycz1imUA2SMNXRkTsR9SdBsfvEnlSZVU5OZ05XVr
         p9VQ==
X-Gm-Message-State: ACgBeo31HGim/gKoJDRfoU1sXM5jWMd+5cSDUB6EiYJZ5sxy+NUyWO4w
        RQAgpXeCCeLg387YNYqGJ8hKhg==
X-Google-Smtp-Source: AA6agR4LektJYrndrjLttwdRSjj4K+7Ffy786YpK2tM5CGpnIvHPzcP5IYgpUzjroGVsdFZZ8NUYCg==
X-Received: by 2002:a05:6870:f203:b0:108:4a52:da42 with SMTP id t3-20020a056870f20300b001084a52da42mr663381oao.59.1660104307980;
        Tue, 09 Aug 2022 21:05:07 -0700 (PDT)
Received: from ripper.. (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id q6-20020a056830440600b00616dfd2c859sm449027otv.59.2022.08.09.21.05.07
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Aug 2022 21:05:07 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Kishon Vijay Abraham I <kishon@ti.com>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Subject: [PATCH 0/5] phy: qcom: edp: Introduce SC8280XP support
Date:   Tue,  9 Aug 2022 21:07:40 -0700
Message-Id: <20220810040745.3582985-1-bjorn.andersson@linaro.org>
X-Mailer: git-send-email 2.35.1
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

What the subject says.

Bjorn Andersson (5):
  dt-bindings: phy: qcom-edp: Add SC8280XP PHY compatibles
  phy: qcom: edp: Generate unique clock names
  phy: qcom: edp: Perform lane configuration
  phy: qcom: edp: Introduce support for DisplayPort
  phy: qcom: edp: Add SC8280XP eDP and DP PHYs

 .../devicetree/bindings/phy/qcom,edp-phy.yaml |   2 +
 drivers/phy/qualcomm/phy-qcom-edp.c           | 193 +++++++++++++++++-
 2 files changed, 184 insertions(+), 11 deletions(-)

-- 
2.35.1

