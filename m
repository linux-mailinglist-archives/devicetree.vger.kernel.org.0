Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 73BB5612B59
	for <lists+devicetree@lfdr.de>; Sun, 30 Oct 2022 16:55:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229647AbiJ3Pz1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 30 Oct 2022 11:55:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229515AbiJ3Pz0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 30 Oct 2022 11:55:26 -0400
Received: from mail-lf1-x129.google.com (mail-lf1-x129.google.com [IPv6:2a00:1450:4864:20::129])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2F378217
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 08:55:25 -0700 (PDT)
Received: by mail-lf1-x129.google.com with SMTP id r12so15846503lfp.1
        for <devicetree@vger.kernel.org>; Sun, 30 Oct 2022 08:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=BZp0NQP0lgPwZjKnwJKXyWOEO/gnreyYLhCWIi2mwRs=;
        b=zSxqffjfW1qQqQTpRWn8S4lhJ0q06YLifuQFWWcwukRKoin/0VSWjPJotV29X2YY9w
         NmBKmTADmKdLQ1LWbUOYq2gbOBfITsBo1Ix3Qng5Q+YUGjb9i+FC9MNsJxyHWLN6Mc34
         EguihXIHb8fjrtHugK4sZCqQF806yrsI/Cx913XOUG3948uPTn5nNlbjgagjTeMxTXe2
         25XcU/beijhnq1IzI8SXm6GtrpuisHdqA6edFQbWcwVC3F7YyHhw1i1WNRFY0fxSA/cf
         TSCd69CvAr3QoTsVSo6bftW/P8mdQ6WHyH9ajv3PE4StH0TAxATty2+ZQkvj7YaKJ9nM
         SHBA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=BZp0NQP0lgPwZjKnwJKXyWOEO/gnreyYLhCWIi2mwRs=;
        b=OkY6GySaHXLspYCIBoH8VY14xcUUOJG7BzCVVPmHdYOJyDpam/maBt7JHQwxXcm2XA
         g+E3ikUXnDmkLukJXA7Q4S3QpFWfHzpywN2sbyE5hTQFSa0EeT6xS+JWhqSo8AZf0VKX
         hKOrW8LiYxAAeRxi6dXccivdtkqlBQ7XhFtBR8o2X4J+jo2Fy8FNjndWhZFC/2mew/Wj
         fbkxFeXhRXxhdhUV00uTRlEzXW2wctf7u894Q6hSdLcHAthP/hJcz/gIR1sUM01sQBHN
         4Z34oB1LVAiOKDRJSoksqPWzD4oPh1bjAlJOKxKc3J9/R5WFGu7kdWTkHGH11wgMEghD
         Uz7g==
X-Gm-Message-State: ACrzQf11qF+TVBSurf1l/j9vhj3D/Z5F6Pim+zzIx8xHNi5NTleF6jGY
        ZXUBwutNgsVOX/0HOe9H7y5gvA==
X-Google-Smtp-Source: AMsMyM7+UW9NPqpYNh0tFgkME1TQ95gYq+YW0/4vKJjXx0lox8YM84XIMKu7IytQydAKFLFwHdzkEA==
X-Received: by 2002:a05:6512:3981:b0:49a:d169:5808 with SMTP id j1-20020a056512398100b0049ad1695808mr3412229lfu.241.1667145323417;
        Sun, 30 Oct 2022 08:55:23 -0700 (PDT)
Received: from localhost.localdomain ([195.165.23.90])
        by smtp.gmail.com with ESMTPSA id f4-20020ac24e44000000b00497a1f92a72sm842982lfr.221.2022.10.30.08.55.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 30 Oct 2022 08:55:23 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH v3 00/11] clk: qcom: update MSM8974 clock controller drivers
Date:   Sun, 30 Oct 2022 18:55:09 +0300
Message-Id: <20221030155520.91629-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Modernize drivers for global and multimedia clock controllers on the
MSM8974 platform. Switch them to using parent_hws/parent_data, use
clocks through the DT links rather than fetching them from the system
clocks list, update schema and platform DT files.

Changes since v2:
- Fix typos in the commit messages (Niel)

Changes since v1:
- Fix typos in the commit messages (Niel)
- Change bindings license to dual GPL + BSD (Krzysztof)
- Fix issues in gcc bindigns pointed out by Krzysztof
- Fix Taniyas's email (Krzysztof)
- Removed dsi-names and changed dsi-phy node in the patch adding the
  second DSI host+PHY (Krzysztof)

Dmitry Baryshkov (11):
  dt-bindings: clock: split qcom,gcc-msm8974,-msm8226 to the separate
    file
  dt-bindings: clocks: qcom,mmcc: define clocks/clock-names for MSM8974
  clk: qcom: gcc-msm8974: use ARRAY_SIZE instead of specifying
    num_parents
  clk: qcom: gcc-msm8974: move clock parent tables down
  clk: qcom: gcc-msm8974: use parent_hws/_data instead of parent_names
  clk: qcom: mmcc-msm8974: use ARRAY_SIZE instead of specifying
    num_parents
  clk: qcom: mmcc-msm8974: move clock parent tables down
  clk: qcom: mmcc-msm8974: use parent_hws/_data instead of parent_names
  ARM: dts: qcom: msm8974: add second DSI host and PHY
  ARM: dts: qcom: msm8974: add clocks and clock-names to gcc device
  ARM: dts: qcom: msm8974: add clocks and clock-names to mmcc device

 .../bindings/clock/qcom,gcc-msm8974.yaml      |  64 ++
 .../bindings/clock/qcom,gcc-other.yaml        |   9 +-
 .../devicetree/bindings/clock/qcom,mmcc.yaml  |  38 +
 arch/arm/boot/dts/qcom-msm8974.dtsi           | 105 +++
 drivers/clk/qcom/gcc-msm8974.c                | 682 ++++++++--------
 drivers/clk/qcom/mmcc-msm8974.c               | 736 +++++++++---------
 6 files changed, 930 insertions(+), 704 deletions(-)
 create mode 100644 Documentation/devicetree/bindings/clock/qcom,gcc-msm8974.yaml

-- 
2.35.1

