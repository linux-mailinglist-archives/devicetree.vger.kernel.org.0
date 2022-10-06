Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 27F515F68C8
	for <lists+devicetree@lfdr.de>; Thu,  6 Oct 2022 16:06:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231349AbiJFOGr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Oct 2022 10:06:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54252 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230210AbiJFOGq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Oct 2022 10:06:46 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5C1A4A7A8F
        for <devicetree@vger.kernel.org>; Thu,  6 Oct 2022 07:06:44 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id m19so1508767lfq.9
        for <devicetree@vger.kernel.org>; Thu, 06 Oct 2022 07:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=Q9PKkVz5JSd6Red0ZQhk3d2Bnwnk9qONZE4I2NARHis=;
        b=P1yd/GPwotgXVaiYMKA7nJU5+WQr73w+H/smLgRPaht2EATD5u5hsAFELMvXtm7QXU
         p/sA+W7SGJj9LE57tDDL9l8bPuvqgtnzx/8hg/j2W6DF8Pkgl4lkjOuIq4exUuBH5SrE
         +NjkTy46vH9+v4HEUuii5aR7eaD4nAyWbKxL0ErVgGNsvdhVtFaq8mARzxDq5yBTJ44+
         T4NvRYIPHRYGYtoXNoaRur0Sp3az6OHR2wFTZDz0gCFGDqZQtzyN5QLSdVkkOdNr5WEf
         RzEKtBb3MoZ6suDpSG1qsDIXYKg3H90XdNpE5jy/xvOxm7PcschDgtHawrCZD2sSooj4
         noKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=Q9PKkVz5JSd6Red0ZQhk3d2Bnwnk9qONZE4I2NARHis=;
        b=prmbcMoV9mIkDnLxRelWKqLiI2r2oOl9L15tOu2eZnXnNgqZzEZMRCQyOXEmTdvOQK
         FSaaA+OAAUkNKn5QKIowP1UICaCaMO6oO59P99cZr6E8N0aJsziLwgQxqNW3r8c8J9QI
         AmGoEe4UApjb/B+I3zXS57g8eW4wgnbQR6wYp4y8OGQDokmnIrUWAUpA6qYjfl2k600s
         /jlSWqDQZoSq0AquH6sN1dcUbjPtZMXGTFpNX1+I66y+be6xtJRzI4a91JKJp6I5bAq2
         zZcxd1/Esj+EFjIWCRGIGBqCcSifdYxOonMEszjhraS84Aqbi6j0uhQVXkkO7YYQ7GKt
         eQtw==
X-Gm-Message-State: ACrzQf27lOgortbVN5D9d4hA0r3l1EpT7PqwStdjE+TSR8mh+aE1NQ3T
        w+YQzClPdwcd1RlODlBJWpOrDQ==
X-Google-Smtp-Source: AMsMyM7jNkr5nJqC81rh2I33D/cUBPIGVpbYgb6Sc/9YVIQ4bXbpknWTD/xz5aWue1udMin4LwzAgw==
X-Received: by 2002:ac2:4c52:0:b0:4a2:6bf9:bd7e with SMTP id o18-20020ac24c52000000b004a26bf9bd7emr51873lfk.400.1665065202596;
        Thu, 06 Oct 2022 07:06:42 -0700 (PDT)
Received: from krzk-bin.. (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id z3-20020a056512370300b004a2386b8ce8sm1833929lfr.211.2022.10.06.07.06.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 06 Oct 2022 07:06:42 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Shawn Guo <shawn.guo@linaro.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Vinod Koul <vkoul@kernel.org>,
        krishna Lanka <quic_vamslank@quicinc.com>,
        Iskren Chernev <iskren.chernev@gmail.com>,
        Martin Botka <martin.botka@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 00/34] pinctrl/arm64: qcom: continued - fix Qualcomm TLMM pinctrl schema warnings (5th set)
Date:   Thu,  6 Oct 2022 16:06:03 +0200
Message-Id: <20221006140637.246665-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

Hi,

Patches are organized not by file, but rather type of change
1. First patches is for common TLMM schema and dropping unneeded refs.
2. Last patches are pure cleanups without functional impact.

Overview
========
This is the *fifth* patchset around Qualcomm pinctrl in recent days:
1. First round of TLMM fixes: merged
2. LPASS fixes:
   https://lore.kernel.org/linux-devicetree/20220927153429.55365-1-krzysztof.kozlowski@linaro.org/
3. ARMv7 TLMM fixes:
   https://lore.kernel.org/linux-devicetree/20221006124659.217540-1-krzysztof.kozlowski@linaro.org/
4. ARMv8 remaining TLMM fixes:
   https://lore.kernel.org/linux-devicetree/20220930192954.242546-1-krzysztof.kozlowski@linaro.org/
5. Fifth clean - styles and using common TLMM schema: *THIS PATCHSET*

Dependencies
============
1. Almost no dependencies - logically the bindings patch "dt-bindings: pinctrl:
   qcom,sm8250: drop checks used in common TLMM" depends on patchset #3 above.
   This is not a hard-dependency, everything will compile nicely, no warnings.

2. dt-bindings are independent of DTS patches.

Best regards,
Krzysztof

Krzysztof Kozlowski (34):
  dt-bindings: pinctrl: qcom,mdm9607: drop ref to pinctrl.yaml
  dt-bindings: pinctrl: qcom,sc7280: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,sc8180x: drop ref to pinctrl.yaml
  dt-bindings: pinctrl: qcom,sc8180x: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,sc8280xp: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,sm6115: use common TLMM schema
  dt-bindings: pinctrl: qcom,sm6125: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,sm6125: drop ref to pinctrl.yaml
  dt-bindings: pinctrl: qcom,sm6350: drop ref to pinctrl.yaml
  dt-bindings: pinctrl: qcom,sm6350: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,sm6375-tlmm: drop ref to pinctrl.yaml
  dt-bindings: pinctrl: qcom,sm6375-tlmm: drop checks used in common
    TLMM
  dt-bindings: pinctrl: qcom,sm8250: use common TLMM schema
  dt-bindings: pinctrl: qcom,sm8350: drop ref to pinctrl.yaml
  dt-bindings: pinctrl: qcom,sm8350: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,sm8450: drop checks used in common TLMM
  dt-bindings: pinctrl: qcom,mdm9607: minor style cleanups
  dt-bindings: pinctrl: qcom,msm8909-tlmm: minor style cleanups
  dt-bindings: pinctrl: qcom,qcm2290: minor style cleanups
  dt-bindings: pinctrl: qcom,sdx65: minor style cleanups
  dt-bindings: pinctrl: qcom,sc8180x: minor style cleanups
  dt-bindings: pinctrl: qcom,sc8280xp: minor style cleanups
  dt-bindings: pinctrl: qcom,sm6115: minor style cleanups
  dt-bindings: pinctrl: qcom,sm6125: minor style cleanups
  dt-bindings: pinctrl: qcom,sm6350: minor style cleanups
  dt-bindings: pinctrl: qcom,sm6375: minor style cleanups
  dt-bindings: pinctrl: qcom,sm8250: minor style cleanups
  dt-bindings: pinctrl: qcom,sm8350: minor style cleanups
  dt-bindings: pinctrl: qcom,sm8450: minor style cleanups
  dt-bindings: pinctrl: qcom,sc7280-lpass-lpi: minor style cleanups
  dt-bindings: pinctrl: qcom,sm8250-lpass-lpi: minor style cleanups
  dt-bindings: pinctrl: qcom,sc8280xp-lpass-lpi: minor style cleanups
  dt-bindings: pinctrl: qcom,sm8450-lpass-lpi: minor style cleanups
  dt-bindings: pinctrl: qcom: adjust description

 .../pinctrl/qcom,ipq6018-pinctrl.yaml         |  5 +-
 .../pinctrl/qcom,mdm9607-pinctrl.yaml         | 16 ++---
 .../pinctrl/qcom,msm8226-pinctrl.yaml         |  5 +-
 .../bindings/pinctrl/qcom,msm8909-tlmm.yaml   | 11 ++-
 .../pinctrl/qcom,msm8953-pinctrl.yaml         |  5 +-
 .../pinctrl/qcom,qcm2290-pinctrl.yaml         | 10 ++-
 .../qcom,sc7280-lpass-lpi-pinctrl.yaml        | 13 ++--
 .../bindings/pinctrl/qcom,sc7280-pinctrl.yaml | 16 +----
 .../pinctrl/qcom,sc8180x-pinctrl.yaml         | 27 +++----
 .../qcom,sc8280xp-lpass-lpi-pinctrl.yaml      | 13 ++--
 .../pinctrl/qcom,sc8280xp-pinctrl.yaml        | 22 ++----
 .../bindings/pinctrl/qcom,sdx55-pinctrl.yaml  |  5 +-
 .../bindings/pinctrl/qcom,sdx65-pinctrl.yaml  | 10 ++-
 .../bindings/pinctrl/qcom,sm6115-pinctrl.yaml | 53 +++-----------
 .../bindings/pinctrl/qcom,sm6125-pinctrl.yaml | 30 +++-----
 .../bindings/pinctrl/qcom,sm6350-pinctrl.yaml | 23 ++----
 .../bindings/pinctrl/qcom,sm6375-tlmm.yaml    | 23 ++----
 .../qcom,sm8250-lpass-lpi-pinctrl.yaml        | 16 ++---
 .../bindings/pinctrl/qcom,sm8250-pinctrl.yaml | 70 ++++++-------------
 .../bindings/pinctrl/qcom,sm8350-pinctrl.yaml | 23 ++----
 .../qcom,sm8450-lpass-lpi-pinctrl.yaml        | 13 ++--
 .../bindings/pinctrl/qcom,sm8450-pinctrl.yaml | 22 ++----
 22 files changed, 136 insertions(+), 295 deletions(-)

-- 
2.34.1

