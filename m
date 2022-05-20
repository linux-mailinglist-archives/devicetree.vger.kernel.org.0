Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 57FD252E5C9
	for <lists+devicetree@lfdr.de>; Fri, 20 May 2022 09:05:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1346485AbiETHE4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 20 May 2022 03:04:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42344 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1346486AbiETHEp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 20 May 2022 03:04:45 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 774D316328B
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 00:04:18 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id y13so13158116eje.2
        for <devicetree@vger.kernel.org>; Fri, 20 May 2022 00:04:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=fairphone.com; s=fair;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q4W2mlHMm7D4D6zpDAgpFZVHJykHhfaywFhVOppDvGc=;
        b=uo6AdawZi5mY/RA1vAXpaBRBH9HMA9BwJvqnadJDTA6NJy2DJ2UGbVKtPxzj8PRlkY
         rrDq67SFEWdSbEmaRy4PpTtczqbwEZTaO5s50y5KNuO49NCHUFkHxDfoYXGYNat4GRMF
         IldyxwEfItwP3Rrz2LKZnB7/Wp/OojYl6K7uq/vrpuCedlBOH9mLMR0Vut4HOAnwFrtF
         xWEKepQU6SuLqSuAs/L+YKEGDH3v0FLFZgWmh5TCdkqGS6AaauFRCS4ceL2/2iP0FXY4
         3pqCLTnW3nA9U7AmVSytP/rLDWqDqtDmaH8RkCZcD2DQautIq7TG8XlfmK4uC6Z55+q5
         w6kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Q4W2mlHMm7D4D6zpDAgpFZVHJykHhfaywFhVOppDvGc=;
        b=x5ku0lhdNKAJnzOlk2/loPDWrIhOAOR2L8Ap5A/0EyCKpWHn6IwE/kEBV9HnJSlp7H
         RWQaQbEUqNJzwSxsgRjD1ZzVMgieMciDY4FvOanN2l9IFdC70mcsA2IHTtVaLRgsJ22m
         3J/KTOi46dcnwvS4nzXHiV/bC5/2T/aw+YbcfpJBYG343HUUuTwmWmp47ofH2kbKO15G
         5/xDjUxetm8088AEZt/enmcKnDBElizJnOZP5Fvng2+MObJYFOvm+HfURg6qleiFsSUi
         /azn3rltysBv9N04kLQo6/JnzxjQQt96qZkIlW54ZcU0aLwpXdx0o6R27fdRcSk1jb/6
         O+Yg==
X-Gm-Message-State: AOAM531QL9YxAsN/7f7nxSME89jHHuIz+RHL6qfMBuSVNQy3vmJVU7Bq
        4j2A7fVgSGGd6v1jvWRhNrmaXw==
X-Google-Smtp-Source: ABdhPJz+v6eSW7qxIRcGH5AHDwjyrQqMDNDa3Xne7+maU27t+DbcIZdGTv6G5dtkjmi4aTYuVKzziA==
X-Received: by 2002:a17:907:720f:b0:6f8:5e72:d8d8 with SMTP id dr15-20020a170907720f00b006f85e72d8d8mr7215439ejc.541.1653030257105;
        Fri, 20 May 2022 00:04:17 -0700 (PDT)
Received: from otso.. (144-178-202-138.static.ef-service.nl. [144.178.202.138])
        by smtp.gmail.com with ESMTPSA id md17-20020a170906ae9100b006feaf472637sm336092ejb.53.2022.05.20.00.04.16
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 20 May 2022 00:04:16 -0700 (PDT)
From:   Luca Weiss <luca.weiss@fairphone.com>
To:     linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>,
        devicetree@vger.kernel.org,
        Georgi Djakov <georgi.djakov@linaro.org>,
        linux-kernel@vger.kernel.org, linux-pm@vger.kernel.org,
        Odelu Kukatla <okukatla@codeaurora.org>
Subject: [PATCH v2 0/5] Add interconnect support for SM6350
Date:   Fri, 20 May 2022 09:03:12 +0200
Message-Id: <20220520070318.48521-1-luca.weiss@fairphone.com>
X-Mailer: git-send-email 2.36.1
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

This series adds interconnect support for the various NoCs found on
sm6350.

A more special modification is allowing child NoC devices, like done for
rpm-based qcm2290 which was already merged, but now for rpmh-based
interconnect.

See also downstream dts:
https://android.googlesource.com/kernel/msm-extra/devicetree/+/refs/tags/android-11.0.0_r0.81/qcom/lagoon-bus.dtsi

Luca Weiss (5):
  interconnect: qcom: icc-rpmh: Support child NoC device probe
  dt-bindings: interconnect: Add Qualcomm SM6350 NoC support
  dt-bindings: interconnect: qcom: Reuse new rpmh-common bindings
  interconnect: qcom: Add SM6350 driver support
  arm64: dts: qcom: sm6350: Add interconnect support

 .../interconnect/qcom,rpmh-common.yaml        |  41 ++
 .../bindings/interconnect/qcom,rpmh.yaml      |  22 +-
 .../interconnect/qcom,sm6350-rpmh.yaml        |  82 +++
 arch/arm64/boot/dts/qcom/sm6350.dtsi          | 109 ++++
 drivers/interconnect/qcom/Kconfig             |   9 +
 drivers/interconnect/qcom/Makefile            |   2 +
 drivers/interconnect/qcom/icc-rpmh.c          |   4 +
 drivers/interconnect/qcom/sm6350.c            | 493 ++++++++++++++++++
 drivers/interconnect/qcom/sm6350.h            | 139 +++++
 .../dt-bindings/interconnect/qcom,sm6350.h    | 148 ++++++
 10 files changed, 1032 insertions(+), 17 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,rpmh-common.yaml
 create mode 100644 Documentation/devicetree/bindings/interconnect/qcom,sm6350-rpmh.yaml
 create mode 100644 drivers/interconnect/qcom/sm6350.c
 create mode 100644 drivers/interconnect/qcom/sm6350.h
 create mode 100644 include/dt-bindings/interconnect/qcom,sm6350.h

-- 
2.36.1

