Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 109126C741E
	for <lists+devicetree@lfdr.de>; Fri, 24 Mar 2023 00:37:50 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230316AbjCWXhs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Mar 2023 19:37:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35538 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230388AbjCWXhs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Mar 2023 19:37:48 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B54652D156
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 16:37:40 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id q16so26789lfe.10
        for <devicetree@vger.kernel.org>; Thu, 23 Mar 2023 16:37:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679614659;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=kz7hbZEbSy59b3TBJkLmaK9i9tw1WG/da69gA7A8TYk=;
        b=QcQyNHjgwKMtdaFXr7iHabQ/kvsucbo7UbWV3E4coVDNIIri18jiw0bi/I6XHoeneF
         bvlQ94wp8feTwWS1reYjb7BNPKwqagJHSggnxsYOVNPXdaxJsZS22K1lwYJGk9gKsRMp
         eHC1wjUuq8HsJFOZa0v7eQawksp61rLuBpNdD7gEPS7mRzZKMC9Ens5mKFNEU3JTDWIK
         /Bzsm716XygMmxn4cKbzAIlrLugL4abIL5VRhBlsBSWrZOlmiA5Gvaj2FFFsX+iWKkTR
         1MKy+ITr4d0aekrbyy8hIoSl4Tci1ZMkY2UVebngCjgdDlqvY33o8zZEQWjJ7ZU0Cwkq
         EPjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679614659;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=kz7hbZEbSy59b3TBJkLmaK9i9tw1WG/da69gA7A8TYk=;
        b=II/iPJOCXUV78/eLZH4afvnJRLWGZpd+hSnr3vgqN1BXP+n/egjdC6LrXiVM2nCnkW
         KLuKKPzr6ndRerY4huHfycbk2yJLfHdR4RvzAd1ugHEBwezGaf7Uio0C1FxNPNJ30pWR
         boPhH2a+UZEgIbAs7okDpbZ9ateQjRUakBIRuZuMZWTvhCZGbDGKMpmeOPIVsD/noWeR
         BLhZ8O2YEKsXepPJOQ8dPL5K8oJdV+BC1hhwcu5hXqw3r/+2oojqaJ7oWp+qkJAe7L08
         mctdEXTKBPX1fKuQtz7Gv4sChvjARMTe33pvVW70yGXedIunnpU8Ca7L+WK1WnCCn/1u
         s07A==
X-Gm-Message-State: AAQBX9eW0YRHYb4IZECxtv94mUwwu2wEhBMLSFVknyUODifc/EDzNH9i
        e3tgI9l/RhNu67RS0b6+KdJhpA==
X-Google-Smtp-Source: AKy350ZSGK0r+IX6NXXTUL2PHNkRiGnUtWoEAs5lwgq0g7liyOF1dw5nUhPMwyQTqSbVi9Y6FdcwjA==
X-Received: by 2002:ac2:4464:0:b0:4e8:5738:78a9 with SMTP id y4-20020ac24464000000b004e8573878a9mr149535lfl.3.1679614658961;
        Thu, 23 Mar 2023 16:37:38 -0700 (PDT)
Received: from localhost.localdomain (88-112-131-206.elisa-laajakaista.fi. [88.112.131.206])
        by smtp.gmail.com with ESMTPSA id w9-20020ac254a9000000b004e845b49d81sm3105264lfk.140.2023.03.23.16.37.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 23 Mar 2023 16:37:38 -0700 (PDT)
From:   Vladimir Zapolskiy <vladimir.zapolskiy@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 0/5] arm64: dts: qcom: add QCE on SM8250 and SM8450 platforms
Date:   Fri, 24 Mar 2023 01:37:30 +0200
Message-Id: <20230323233735.2131020-1-vladimir.zapolskiy@linaro.org>
X-Mailer: git-send-email 2.33.0
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

The changeset updates Qualcomm Crypto Engine compatible values from
deprecated ones to new according to the recent changes in
Documentation/devicetree/bindings/crypto/qcom-qce.yaml, also two
more Qualcomm platforms SM8250 and SM8450 gained QCE and BAM DMA
device tree nodes.

Vladimir Zapolskiy (5):
  arm: dts: qcom: ipq4019: update a compatible for QCE IP on IPQ4019 SoC
  arm64: dts: qcom: msm8996: update QCE compatible according to a new scheme
  arm64: dts: qcom: sdm845: update QCE compatible according to a new scheme
  arm64: dts: qcom: sm8250: add description of Qualcomm Crypto Engine IP
  arm64: dts: qcom: sm8450: add description of Qualcomm Crypto Engine IP

 arch/arm/boot/dts/qcom-ipq4019.dtsi   |  2 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi |  2 +-
 arch/arm64/boot/dts/qcom/sdm845.dtsi  |  2 +-
 arch/arm64/boot/dts/qcom/sm8250.dtsi  | 24 ++++++++++++++++++++++++
 arch/arm64/boot/dts/qcom/sm8450.dtsi  | 22 ++++++++++++++++++++++
 5 files changed, 49 insertions(+), 3 deletions(-)

-- 
2.33.0

