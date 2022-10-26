Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BBD3F60E591
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 18:43:23 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233635AbiJZQnW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 12:43:22 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36846 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233545AbiJZQnV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 12:43:21 -0400
Received: from mail-qv1-xf33.google.com (mail-qv1-xf33.google.com [IPv6:2607:f8b0:4864:20::f33])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 460FD75FC7
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:43:20 -0700 (PDT)
Received: by mail-qv1-xf33.google.com with SMTP id i12so12000743qvs.2
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 09:43:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=mzWvOz4xlS7L3D9T4rYd7JcZn+pzJHU2kPLw2mhBPuM=;
        b=KOkEfP2xpRurEbYg+xQTVNwiZfGj3RiNZiEcehd4CgcqnnG4IFx3UKtOjlGSemDbPQ
         0OnIs/LTiX2qwceK4CMeaxVEwrzkEfSRa8S7l5FS1SdMXA5GTBkMXY/24hwIPJXP2eQb
         s3bYfXUbUpb65zOyBbZC0B7YfrgaMcFn6rz01Wc1k82pcL3/hBFEyLa01MUXlcQLmNZB
         i1oIVykGn16gBLLLlq4lAx2i1M8SqQykQ2EfLg6o7i0OQOewgwOpuwUERwW74CSMc1X0
         eO6iX0gjFeuplDPso9WHI8nrpFIr0kjWVwS1ldABtBxDnwKiGyR3MWaUN1UvUdbXdKFq
         2EdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=mzWvOz4xlS7L3D9T4rYd7JcZn+pzJHU2kPLw2mhBPuM=;
        b=UPlYKBIlnAxxaumStrPsuGyOe0lywhB2+Q7C/t1iPFHpkbMZP5eI2X3rPbipmPE+LK
         NJ49HMP+5iW0mYasYZE+1RTgVfg4Uw+N6dpPY+mheJZ1KOjbgaUl/j+qZ3xYwqvx4mhb
         h4lTab4hF83tisx97HgljltmB1iuS3L/2WgSBVfuGkXAue33rkI6VOuDG/AeG/jOZuli
         Ecm54bjNZBjfEsbSjslRGb8OoWtEdVNF8aqP/cHsWmB1j1hRiCtu7+fVnY1cOUOjYJ6n
         LseaaQANM15w/1OqcMZkxCBwRAsZ6+SEJbq/sjwXhXk0u6xSCCNAgm6PUu5qVBdMslCj
         FCwg==
X-Gm-Message-State: ACrzQf1on+oX5NE5eLi/kJPax/TdLDDT77amupq9rR4FuYiQeNeohwLV
        O+am3eEMvoMDgwtKThpP96rasg==
X-Google-Smtp-Source: AMsMyM4iAG3FrGgLa5u3fVo4ArWXqF/ECAWI08B9jzMkRd9NbPYsZvn6nwCH0MlU4TpX4OF79c3ACQ==
X-Received: by 2002:a05:6214:d42:b0:4bb:75aa:7d7 with SMTP id 2-20020a0562140d4200b004bb75aa07d7mr13016281qvr.22.1666802599432;
        Wed, 26 Oct 2022 09:43:19 -0700 (PDT)
Received: from krzk-bin.. ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id j6-20020a37c246000000b006eed47a1a1esm3989938qkm.134.2022.10.26.09.43.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Oct 2022 09:43:18 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        alsa-devel@alsa-project.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH v3 0/3] arm64/slimbus/dt-bindings: convert to DT Schema, minor cleanups
Date:   Wed, 26 Oct 2022 12:43:12 -0400
Message-Id: <20221026164315.39038-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Changes since v2
================
1. None, rebased and dropped applied patches.

Changes since v1
================
1. Fix commit title typo (Steev).
2. Add Rb/Tb tags.

Dependencies
============
No dependencies. Binding patches are independent from DTS.

Best regards,
Krzysztof

Krzysztof Kozlowski (3):
  dt-bindings: slimbus: convert bus description to DT schema
  dt-bindings: slimbus: qcom,slim: convert to DT schema
  dt-bindings: slimbus: qcom,slim-ngd: convert to DT schema

 .../devicetree/bindings/slimbus/bus.txt       |  60 ---------
 .../bindings/slimbus/qcom,slim-ngd.yaml       | 120 ++++++++++++++++++
 .../bindings/slimbus/qcom,slim.yaml           |  86 +++++++++++++
 .../bindings/slimbus/slim-ngd-qcom-ctrl.txt   |  84 ------------
 .../bindings/slimbus/slim-qcom-ctrl.txt       |  39 ------
 .../devicetree/bindings/slimbus/slimbus.yaml  |  95 ++++++++++++++
 6 files changed, 301 insertions(+), 183 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/slimbus/bus.txt
 create mode 100644 Documentation/devicetree/bindings/slimbus/qcom,slim-ngd.yaml
 create mode 100644 Documentation/devicetree/bindings/slimbus/qcom,slim.yaml
 delete mode 100644 Documentation/devicetree/bindings/slimbus/slim-ngd-qcom-ctrl.txt
 delete mode 100644 Documentation/devicetree/bindings/slimbus/slim-qcom-ctrl.txt
 create mode 100644 Documentation/devicetree/bindings/slimbus/slimbus.yaml

-- 
2.34.1

