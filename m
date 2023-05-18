Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 71AB0707FD1
	for <lists+devicetree@lfdr.de>; Thu, 18 May 2023 13:40:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231337AbjERLkg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 18 May 2023 07:40:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36306 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231303AbjERLkf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 18 May 2023 07:40:35 -0400
Received: from mail-wr1-x42d.google.com (mail-wr1-x42d.google.com [IPv6:2a00:1450:4864:20::42d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 126CEE50
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 04:40:12 -0700 (PDT)
Received: by mail-wr1-x42d.google.com with SMTP id ffacd0b85a97d-3063891d61aso1823729f8f.0
        for <devicetree@vger.kernel.org>; Thu, 18 May 2023 04:40:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684409991; x=1687001991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=slLMHWh39zOaBNdbVpwl/j1HD7B9S6TGQGQ7OANz+KY=;
        b=kx5n9GC/vNGIeE2LyD2IqtiC0LBNDAiqelKek+CvGhTZn8OJBC7x3+lrrOTozmyrK5
         tzjQbyIxcYfSgvx+nE+zs8S7BiAyzlRAiwwX0+ln4AMPWi23NqgdGdQ8v06GqREzr1Pi
         muSmvYBBzxs4+zd1erOLLTytWG9ZOjPteo7RofMSJx2XNOO6RG8Z9lpPYLXfdLpZ514s
         6n/WXjds/V51FSzxI9S1JTY9AIZl8BsRn0hCA64Z6DrldKMHjsJoW1GOwM3er+SLYCRA
         +KwHqYUzE/IL7KTZ1hSlXnQFCnBboNWp0ArEJEKBPF5rcbAbwFVmJRtbMc3DVSz4T+n8
         mLXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684409991; x=1687001991;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=slLMHWh39zOaBNdbVpwl/j1HD7B9S6TGQGQ7OANz+KY=;
        b=El8RZuGmFanUbzekrt4O4Z4aiU75zktLc/h8xyZFvSJ1XSGKThk0IW3YWWaIjDZix0
         YqJjTK/AASMiULtKcgpLK+wqBW5PeodjPrXhlvuTSb9WeIUxmca9Y/IKlu4Z/JkPifBC
         nm8GTHVB2KfotdAMHhOazvfwf9fHLWMvN5r6kVv+onHY1AjIXqwluO2+xMRtYrDRyUSy
         +QVOe45NO1x86cI1zGhWZNJo5Re1ICAKMW+7wXpqy2jUtaeg/T1T/9E3NOFXEMBQ+7e+
         TGrqcpxuwnB8JmA9pH/G4zhNOjtYjsUzUXTkrNiIakFBsrUKLCic91eYt3nYUvwlfeDW
         m5Bg==
X-Gm-Message-State: AC+VfDy2urHajaAfMxVAtYcS12BhmqcZvNUaXe2HtVGuFFMB0A+Gwyil
        Huko715sZdaDjldy/qEA3LLSjA==
X-Google-Smtp-Source: ACHHUZ4E4x/FX+OKpX6cuZr+u9L5Sb8D6S6tJyg4Od2ZdXmtRfyzN6favFXt5HQw3Pfa9PKHINHgdg==
X-Received: by 2002:a5d:420c:0:b0:309:3db8:51e6 with SMTP id n12-20020a5d420c000000b003093db851e6mr1399017wrq.35.1684409991406;
        Thu, 18 May 2023 04:39:51 -0700 (PDT)
Received: from localhost.localdomain ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id f14-20020a5d568e000000b003047d5b8817sm1897135wrv.80.2023.05.18.04.39.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 18 May 2023 04:39:50 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
Cc:     johan+linaro@kernel.org, agross@kernel.org,
        konrad.dybcio@linaro.org, mturquette@baylibre.com,
        sboyd@kernel.org, conor+dt@kernel.org,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Subject: [PATCH 0/5] clk: qcom: sc8280xp: add lpasscc reset control
Date:   Thu, 18 May 2023 12:37:55 +0100
Message-Id: <20230518113800.339158-1-srinivas.kandagatla@linaro.org>
X-Mailer: git-send-email 2.25.1
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

On SC8280XP, LPASS IP is controlled by q6dsp, however the reset lines
required by some of the IPs like Soundwire still need to be programmed from
Apps processor. This patchset adds support to reset controller on LPASS
CC and LPASS AudioCC.

Tested on X13s.

Thanks,
Srini

Srinivas Kandagatla (5):
  dt-bindings: clock: Add YAML schemas for LPASSCC and reset on SC8280XP
  dt-bindings: clock: Add YAML schemas for LPASS AUDIOCC and reset on
    SC8280XP
  clk: qcom: Add lpass clock controller driver for SC8280XP
  clk: qcom: Add lpass audio clock controller driver for SC8280XP
  arm64: dts: qcom: sc8280xp: add resets for soundwire controllers

 .../bindings/clock/qcom,sc8280xp-lpasscc.yaml | 68 ++++++++++++++
 arch/arm64/boot/dts/qcom/sc8280xp.dtsi        | 19 ++++
 drivers/clk/qcom/Kconfig                      |  8 ++
 drivers/clk/qcom/Makefile                     |  1 +
 drivers/clk/qcom/lpasscc-sc8280xp.c           | 94 +++++++++++++++++++
 .../dt-bindings/clock/qcom,lpasscc-sc8280xp.h | 17 ++++
 6 files changed, 207 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,sc8280xp-lpasscc.yaml
 create mode 100644 drivers/clk/qcom/lpasscc-sc8280xp.c
 create mode 100644 include/dt-bindings/clock/qcom,lpasscc-sc8280xp.h

-- 
2.25.1

