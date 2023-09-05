Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 67331792C8B
	for <lists+devicetree@lfdr.de>; Tue,  5 Sep 2023 19:38:30 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231474AbjIERia (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 5 Sep 2023 13:38:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33262 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232517AbjIERhZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 5 Sep 2023 13:37:25 -0400
Received: from mail-ed1-x534.google.com (mail-ed1-x534.google.com [IPv6:2a00:1450:4864:20::534])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0ABB379B5B
        for <devicetree@vger.kernel.org>; Tue,  5 Sep 2023 10:08:36 -0700 (PDT)
Received: by mail-ed1-x534.google.com with SMTP id 4fb4d7f45d1cf-52713d2c606so3872434a12.2
        for <devicetree@vger.kernel.org>; Tue, 05 Sep 2023 10:08:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693933631; x=1694538431; darn=vger.kernel.org;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=u6kNwqRygWFRS5KQ5/JjmBSWEbqa5XGk45okpfYEhOI=;
        b=BvCE+xptIO8kw0q/VdBS9yqSqXB08+E9GuET1FlLzHFmUuiMvri4KvG8N6iJIyIlyT
         F8R7QHZRQGS23qzq355Nolx3AM390aaZen6vLSSHbdDvmwoyS8PnS7+eaVRzWBDr7vD9
         zCtQMUwtMzO5+H7M0mtss1Xj+lfEs7XRMdn1EoAALSKVG4FP5qQkrBSWhIWWYyb+Am1c
         5A3ae/+JpR/F6HCVYYDQ5AquAYNHrJhZ4ikq+BZ8rhWRQPFgMvVXM+wjmhDbIQK7xTHI
         /DKLiXB8x4Ye/qFNS9hSbECwcJxBuKRoJPGkNa3IJCA2kQkRYlflnl3vHmvgsOvspIBS
         87Wg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693933631; x=1694538431;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=u6kNwqRygWFRS5KQ5/JjmBSWEbqa5XGk45okpfYEhOI=;
        b=dgYfs8kVa3jNXcoSBAwCaWQ1x6Uy64xC473btP1VjiK5DGm/lnrCRHx/And0sUm0P0
         KpYOuNyYDpK1NE7UPRdcNyz6ENJ2zAHv48kQIb49r+vJZKXRS/qpUS6fWnIg+VMXy+aD
         zM6M3pKSvcDVo4ohu4sUehdZ8PHkC0FkWVyqMgMs7OsbCIQL4+ecgTzl7Uz3lDN63Wgr
         6J23a50GAOth3fztnBa7l2O1IE24G3lhjepHMlT1Xxn8+1puNK9Utdy03RlrVvXOEm3O
         W+4Qk5c/oG2LIlIC0GhIwoEfUw67564wPKPVGhLum+upT3ROgZvCp/f9+qEBG4FzwHkm
         xFoQ==
X-Gm-Message-State: AOJu0Yw8Q2yQ9bUEYbStHcGnGPvXnicZwm1/qGcWrMiervHW4WiJ9g9I
        3L42yqswvHG1IsJtFabYUQf14OP4KUGbDYizPCQ=
X-Google-Smtp-Source: AGHT+IG6fE0DFLC4mYCTNB761pLBJXI5zEAPWKwDAUwTMhFfQUCno/UDPuizMGw8KuJR95wGbAxJtA==
X-Received: by 2002:a17:906:d0:b0:9a6:1eab:9c84 with SMTP id 16-20020a17090600d000b009a61eab9c84mr287940eji.9.1693930767760;
        Tue, 05 Sep 2023 09:19:27 -0700 (PDT)
Received: from krzk-bin.. (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id v26-20020a170906489a00b0099cc36c4681sm7743165ejq.157.2023.09.05.09.19.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 05 Sep 2023 09:19:27 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/12] arm64: dts: qcom: correct UFS pad supply
Date:   Tue,  5 Sep 2023 18:19:08 +0200
Message-Id: <20230905161920.252013-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

Not tested on hardware.

Best regards,
Krzysztof

Krzysztof Kozlowski (12):
  arm64: dts: qcom: sm6125-sprout: drop incorrect UFS phy max current
  arm64: dts: qcom: sm6125-sprout: correct UFS pad supply
  arm64: dts: qcom: sm6115-pro1x: correct UFS pad supply
  arm64: dts: qcom: sm6115p-j606f: correct UFS pad supply
  arm64: dts: qcom: apq8096-db820c: correct UFS pad supply
  arm64: dts: qcom: msm8996-oneplus: correct UFS pad supply
  arm64: dts: qcom: msm8996-gemini: correct UFS pad supply
  arm64: dts: qcom: msm8998-pro1: correct UFS pad supply
  arm64: dts: qcom: msm8998-mtp: correct UFS pad supply
  arm64: dts: qcom: msm8998-oneplus: correct UFS pad supply
  arm64: dts: qcom: msm8998-sagit: correct UFS pad supply
  arm64: dts: qcom: sm4250-billie2: correct UFS pad supply

 arch/arm64/boot/dts/qcom/apq8096-db820c.dts              | 2 +-
 arch/arm64/boot/dts/qcom/msm8996-oneplus-common.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/msm8996-xiaomi-common.dtsi      | 2 +-
 arch/arm64/boot/dts/qcom/msm8998-fxtec-pro1.dts          | 2 +-
 arch/arm64/boot/dts/qcom/msm8998-mtp.dts                 | 2 +-
 arch/arm64/boot/dts/qcom/msm8998-oneplus-common.dtsi     | 2 +-
 arch/arm64/boot/dts/qcom/msm8998-xiaomi-sagit.dts        | 2 +-
 arch/arm64/boot/dts/qcom/sm4250-oneplus-billie2.dts      | 2 +-
 arch/arm64/boot/dts/qcom/sm6115-fxtec-pro1x.dts          | 2 +-
 arch/arm64/boot/dts/qcom/sm6115p-lenovo-j606f.dts        | 2 +-
 arch/arm64/boot/dts/qcom/sm6125-xiaomi-laurel-sprout.dts | 4 +---
 11 files changed, 11 insertions(+), 13 deletions(-)

-- 
2.34.1

