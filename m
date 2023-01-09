Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DE6FE661BBC
	for <lists+devicetree@lfdr.de>; Mon,  9 Jan 2023 02:11:09 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233695AbjAIBLA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 8 Jan 2023 20:11:00 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36754 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230449AbjAIBK4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 8 Jan 2023 20:10:56 -0500
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0E55CB00
        for <devicetree@vger.kernel.org>; Sun,  8 Jan 2023 17:10:54 -0800 (PST)
Received: by mail-lf1-x129.google.com with SMTP id j17so10735209lfr.3
        for <devicetree@vger.kernel.org>; Sun, 08 Jan 2023 17:10:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=KaA1L8V7aqlSBGw5/TtkMb8FDRgJTYFDnCiRttZ+Q0o=;
        b=dvkiVkd3BdWIz/39ZV+LtGnEvvTzJvPjnnv16TcgzSnGdjtGMDULAM1cu+7eZT0hFD
         YSBwAxAVmY99PWp5bUEm2Q9a0o14khq8z/75TxhZmB9RhCJIBM2NolM7a2SOcnTPkFTt
         ZifNWLfLTN59iMiJsB1xqEJ7bV7RuAiRUCs2MqttNwkvcnjmf1fz10IsLEsjZ4zBE0fy
         ZPyP0MECHnWm0o9tU6/MhCATszdcpikOsAT1m+aMyJ5aU1l2uPwx/WyF8FRqslP+Rf6y
         Ne/3kTwqfw4TDtK3ct6rc70Rz2lcb2JSgpu0fHZP0JWYeKee8qpFBi98LkpFKz3lf0M2
         f7WA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=KaA1L8V7aqlSBGw5/TtkMb8FDRgJTYFDnCiRttZ+Q0o=;
        b=2jztjGmdqEGrAkoT4rIVDmymbvIwHIGB+uxbIkqLSmVyBjgwXisuCVSMbsxsJuc/+9
         lkHnntbp2Lxyv6W8htF67PbQmg207O9Ix9LbLEG8rzICl7k8ROf+ZNI2oQ0pb/bqAL4S
         bJisGcjdaer2r29qk0u0ir6F3/nKajBWzK9lk7x9wBVCp/NDCgvl8XDvbqTyc5Ow4WPH
         3tg3zU2Qvs5ihWfFqTxqkDUSK3O9Q6hBoFkmF1SHsMEG5WFEU1kiIRUDb90D1W0pnAdO
         VMtE+HyUL6egtUPNmyxUTjXo6GUBjF3h14cpzoelaaoP7ta1pzr/XjGekTDvh6a7KVBq
         dwoA==
X-Gm-Message-State: AFqh2krSOsbdBuI5vko1BIXO2f6S9iBK1RcHnPm31RTPTQUOLbHJ5cHy
        vrusb2ADdTBGSfAByJdtuO5zVw==
X-Google-Smtp-Source: AMrXdXtZX4GlcaE+HzIEGljFFR6bPam9KiJ60nQV4PLWci+/KhgtrMBE3d3gg7oJtjPYlbaWU8Q29g==
X-Received: by 2002:a05:6512:2216:b0:4b5:959f:6498 with SMTP id h22-20020a056512221600b004b5959f6498mr21365056lfu.62.1673226652359;
        Sun, 08 Jan 2023 17:10:52 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y4-20020a0565123f0400b004cc590975f7sm1324346lfa.183.2023.01.08.17.10.51
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 08 Jan 2023 17:10:51 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH v4 0/4] dt-bindings: display/msm: convert MDP5 schema to YAML format
Date:   Mon,  9 Jan 2023 03:10:47 +0200
Message-Id: <20230109011051.263391-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.0
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

This patch concludes the conversion of display/msm schema from txt files
to YAML format.

The per-SoC compat (new addition) is required to ease migrating platform
support between mdp5 and dpu drivers.

Changes since v3:
- Drop MSM8998 completely, it conflicts with qcom,msm8998-dpu.yaml

Changes since v2:
- Fix MSM8998 compatible list: "qcom,msm8998-dpu", "msm,mdp5" to allow
  handling this device by either of the drivers.

Changes since v1:
- Renamed mdp@ to display-controller@ in the example (Krzysztof)
- Extended ports description to mention possible ports (Krzysztof)
- Fixed ports@ regexp to limit to just four ports (Krzysztof)
- Included patches adding per-SoC compat strings to the schema and to
  dtsi files.

Dmitry Baryshkov (4):
  dt-bindings: display/msm: convert MDP5 schema to YAML format
  dt-bindings: display/msm: add SoC-specific compats to qcom,mdp5.yaml
  ARM: dts: qcom-msm8974: add SoC specific compat string to mdp5 node
  arm64: dts: qcom: add SoC specific compat strings to mdp5 nodes

 .../devicetree/bindings/display/msm/mdp5.txt  | 132 ---------------
 .../bindings/display/msm/qcom,mdp5.yaml       | 153 ++++++++++++++++++
 arch/arm/boot/dts/qcom-msm8974.dtsi           |   2 +-
 arch/arm64/boot/dts/qcom/msm8916.dtsi         |   2 +-
 arch/arm64/boot/dts/qcom/msm8996.dtsi         |   2 +-
 arch/arm64/boot/dts/qcom/sdm630.dtsi          |   2 +-
 arch/arm64/boot/dts/qcom/sdm660.dtsi          |   2 +
 7 files changed, 159 insertions(+), 136 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/display/msm/mdp5.txt
 create mode 100644 Documentation/devicetree/bindings/display/msm/qcom,mdp5.yaml

-- 
2.39.0

