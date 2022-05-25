Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 06690533F6B
	for <lists+devicetree@lfdr.de>; Wed, 25 May 2022 16:44:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S244856AbiEYOoi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 25 May 2022 10:44:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S244771AbiEYOog (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 25 May 2022 10:44:36 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 777E2A7E23
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 07:44:33 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id wh22so42020851ejb.7
        for <devicetree@vger.kernel.org>; Wed, 25 May 2022 07:44:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GC8ExN7zgyMEJWd9pL4zC+r85cZkPtnN1cqYEwb1TYQ=;
        b=iWzN+qaN44xR2/Ui8/XVBZAWL1dNaHgp8yovlEXubsFnybVGy66n2ADXP6AH90/Gl+
         Ed6MV5jipQDiHQylU2s/8hWxdE9rxrx8FIv/TYRZnJx4b6LCPlY3MhgFG2HGwZvnZ1M6
         oSgvSVLTAB8MsdiOgqIrn4NAWc5rBTeHuOm99rx58g/IhFhyxjOZRVHQIbn9dIBRRCUj
         2iu+zfDmyzLpQd4P+73ktua1wl67KzOj9FXV0eZWNh+jY1JBwL2udNTzMatX5zOAKLRw
         JJuiNVqWp60WD2uUMjxMxWdjwsK0w4jAriC1aJ2nkMhpbwOOrylSxkRVom0GoN25adzA
         H3qA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=GC8ExN7zgyMEJWd9pL4zC+r85cZkPtnN1cqYEwb1TYQ=;
        b=WnPKdQ0IV523fsQxU1KRqRn5yA8ILckIRSMu9aKuEk9n/ZhBEdWzpxMaoVBn0DcR4h
         me6CrBmgP7ErOYCes6ZKvZp+eM5QwHnuMw6lgUVw3GLB0FTd5Y28FDfs58PG7O2lV77p
         qa6y/lmgCcMlbiFiRFs0CHIPpwHH9NoWow7NK7NxJXf3S3vDfytu8Xf9bJIs+0/TSIH3
         7TFfuqQmXiFG7BltNoitQpsKjD+vVj/LIRblhkOKsvEj73mYkCNU3/Y2yZ6axKvS8gyI
         gf6m/pTeEYrqUQn/7wJVaRgiHw1kjsNlls8zpyIYCNOyvLHvjj42sRZX+YnZguaG6t8I
         wa5A==
X-Gm-Message-State: AOAM531e8AzZBKz7/wx8DMXLS1aOqtVwb2AKhMdI/bs05eW6rWXj38n5
        Ops1eoeQFW2kHUejV91OgMmARg==
X-Google-Smtp-Source: ABdhPJxmnf+tkmH++ly72dkYx+WDxOisAzmzCy24zFOca1/p18mEgeDDhSek1pEVsT43mA8YMvb/zA==
X-Received: by 2002:a17:906:d550:b0:6ff:1eb1:69e9 with SMTP id cr16-20020a170906d55000b006ff1eb169e9mr255ejc.663.1653489871936;
        Wed, 25 May 2022 07:44:31 -0700 (PDT)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id r2-20020a170906550200b006f3ef214de1sm8159596ejp.71.2022.05.25.07.44.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 25 May 2022 07:44:31 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        devicetree@vger.kernel.org,
        Georgi Djakov <georgi.djakov@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Odelu Kukatla <okukatla@codeaurora.org>
Subject: [PATCH v3 0/5] Add interconnect support for SM6350
Date:   Wed, 25 May 2022 16:43:56 +0200
Message-Id: <20220525144404.200390-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.36.1
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

This series adds interconnect support for the various NoCs found on
sm6350.

A more special modification is allowing child NoC devices, like done for
rpm-based qcm2290 which was already merged, but now for rpmh-based
interconnect.

See also downstream dts:
https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/tags/android-11.0.0_r0.81/qcom/lagoon-bus.dtsi

Luca Weiss (5):
  interconnect: qcom: icc-rpmh: Support child NoC device probe
  dt-bindings: interconnect: qcom: Split out rpmh-common bindings
  dt-bindings: interconnect: Add Qualcomm SM6350 NoC support
  interconnect: qcom: Add SM6350 driver support
  arm64: dts: qcom: sm6350: Add interconnect support

 .../interconnect/qcom,rpmh-common.yaml        |  43 ++
 .../bindings/interconnect/qcom,rpmh.yaml      |  22 +-
 .../interconnect/qcom,sm6350-rpmh.yaml        |  82 +++
 arch/arm64/boot/dts/qcom/sm6350.dtsi          | 109 ++++
 drivers/interconnect/qcom/Kconfig             |   9 +
 drivers/interconnect/qcom/Makefile            |   2 +
 drivers/interconnect/qcom/icc-rpmh.c          |   4 +
 drivers/interconnect/qcom/sm6350.c            | 493 ++++++++++++++++++
 drivers/interconnect/qcom/sm6350.h            | 139 +++++
 .../dt-bindings/interconnect/qcom,sm6350.h    | 148 ++++++
 10 files changed, 1034 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,rpmh-common.yaml
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
 create mode 100644 drivers/interconnect/qcom/sm6350.c
 create mode 100644 drivers/interconnect/qcom/sm6350.h
 create mode 100644 include/dt-bindings/interconnect/qcom,sm6350.h

-- 
2.36.1

