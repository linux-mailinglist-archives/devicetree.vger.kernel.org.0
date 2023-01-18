Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 92D2A6717F9
	for <lists+devicetree@lfdr.de>; Wed, 18 Jan 2023 10:42:18 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230206AbjARJjv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Jan 2023 04:39:51 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58928 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230295AbjARJhW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 18 Jan 2023 04:37:22 -0500
Received: from mail-wr1-x434.google.com (mail-wr1-x434.google.com [IPv6:2a00:1450:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E3DAA5F3BA
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:55:38 -0800 (PST)
Received: by mail-wr1-x434.google.com with SMTP id bk16so33148151wrb.11
        for <devicetree@vger.kernel.org>; Wed, 18 Jan 2023 00:55:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=NxEXT0LESmlj7qD9UfRF30ECQSMld+rkC/s6aWWPWoY=;
        b=PhRHuoZ6CfEajv18x+x8srsBKQQpwtHBN5GSOLkZ6PKF+PVdXrEv2s7m86khiI8+Jh
         bWmgxP+WNuw6C/HJWUUirounNekAbSoHuIoXed33lMHXs2Wvj9ht5Uw3SBTetx7I0Agd
         p4Y9qjRId6nllnGEGrwx/pN1xPgIbJTGReZId10SU76txxM2dMofa2y6n+kpW9xxtIM+
         iQnbPzFxadYqFs7JOPqCW+kEnZ3SzCXSt5c5s1/A4msdf9tReBDW3jDuavbvt0Jjfvct
         OfWkEZL9tR19o25rf+5GNaWZvup7RHQSlh0OwAC9CBHb3uUgQxcs1weSwovtCIvLCra6
         vv2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NxEXT0LESmlj7qD9UfRF30ECQSMld+rkC/s6aWWPWoY=;
        b=3xE1WqQVQJr26r9jog8jOkZeLGiew5s8dGY6W58V+fCytBkTMl/LdxafreCGhDtMJe
         OtqG1gv7JDdhlPQuYWyiUqFzTvuwj0uSFPKMA1qg9h2YOCKyVZAgFLQiieq3PblVACEc
         lYOy3f0kt/IGRfRdEsRvUwhBsWqTdRKeBfMwTs+7iLg9C5pXY6VrSBiS9/ZkQVkrZ3JZ
         LHsgBv2tTdypLKHPcWHq7cf31Ehi02VPvJ2MRItvCeKz3RM1etwOlY0h0738bAofzHIr
         bBEkxMAZizlvhdsCiidMSm6PrYCy2jp17BqB9cGq7qgW1oTLES/SSnnxuTHWJIlqo3eJ
         7YuQ==
X-Gm-Message-State: AFqh2kqdYZVPVms96UNCuwxBMdGZQAM1Q5St8xUpIkdTgyU2EGGyb70O
        JVq2f+zueYKri2CZ8X2qoWU+yw==
X-Google-Smtp-Source: AMrXdXsLQR8vuxq+LoiSPnDtSqlqossbezCUuX1n532xP0FY/NuV5UzEwaAhHhI/+PeNDhgdNiBrTg==
X-Received: by 2002:a5d:4563:0:b0:2bd:e4c5:524b with SMTP id a3-20020a5d4563000000b002bde4c5524bmr1695216wrc.51.1674032137266;
        Wed, 18 Jan 2023 00:55:37 -0800 (PST)
Received: from arrakeen.starnux.net ([2a01:e0a:982:cbb0:52eb:f6ff:feb3:451a])
        by smtp.gmail.com with ESMTPSA id m15-20020adffe4f000000b002bdd155ca4dsm16480212wrs.48.2023.01.18.00.55.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 18 Jan 2023 00:55:36 -0800 (PST)
From:   Neil Armstrong <neil.armstrong@linaro.org>
Subject: [PATCH v3 0/3] arm64: dts: qcom: sm8550-mtp: enable DSI panel
Date:   Wed, 18 Jan 2023 09:55:33 +0100
Message-Id: <20230104-topic-sm8550-upstream-dts-display-v3-0-46f0d4e57752@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAAW0x2MC/5XOwQ6CMBAE0F8xPbumLRbBk/9hPGxhkU2wJV0gG
 sO/W7155DhzeDNvJZSYRJ13b5VoYeEYcij2O9X0GO4E3OasrLaFNvoIUxy5AXlUzmmYR5kS4QPa
 SaBlGQd8AaK13pUVoTmp7HgUAp8wNH2WwjwMuRwTdfz8DV9vOfcsU0yv34/FfNstk4sBDUjo65M
 zta26y8ABUzzEdFdffrGbSZvJuvPeOFsWpNs/cl3XD9pTCJA7AQAA
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Neil Armstrong <neil.armstrong@linaro.org>
X-Mailer: b4 0.11.1
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add device tree nodes for MDSS, DPU and DSI devices on Qualcomm SM8550
platform. Enable these devices and add the DSI panel on the MTP device.

Dependencies:
- [1] SM8550 base DT (applied)
- [2] MDSS/DPU/DSI bindings (applied)
- [3] DISPCC bindings (build dependency, applied)
- [4] VTDR6130 Panel bindings (applied)

[1] https://lore.kernel.org/all/20230106201047.337409-1-abel.vesa@linaro.org
[2] https://lore.kernel.org/all/20230103-topic-sm8550-upstream-mdss-dsi-v3-0-660c3bcb127f@linaro.org
[3] https://lore.kernel.org/all/20230103-topic-sm8550-upstream-dispcc-v3-0-8a03d348c572@linaro.org
[4] https://lore.kernel.org/all/20230103-topic-sm8550-upstream-vtdr6130-panel-v2-0-dd6200f47a76@linaro.org

To: Andy Gross <agross@kernel.org>
To: Bjorn Andersson <andersson@kernel.org>
To: Konrad Dybcio <konrad.dybcio@linaro.org>
To: Rob Herring <robh+dt@kernel.org>
To: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc: linux-arm-msm@vger.kernel.org
Cc: devicetree@vger.kernel.org
Cc: linux-kernel@vger.kernel.org
Signed-off-by: Neil Armstrong <neil.armstrong@linaro.org>

---
Changes in v3:
- rebased on https://git.kernel.org/pub/scm/linux/kernel/git/qcom/linux.git arm64-for-6.3
- Link to v2: https://lore.kernel.org/r/20230104-topic-sm8550-upstream-dts-display-v2-0-9fbb15263e0d@linaro.org

Changes in v2:
- reshuffled properties in the order konrad shared
- updated DSI PHY compatible
- renamed mdss@ to display-subsystem@
- added back dispcc bindings include
- added Reviewed-by on patch 2
- Link to v1: https://lore.kernel.org/r/20230104-topic-sm8550-upstream-dts-display-v1-0-aeab9751928f@linaro.org

---
Neil Armstrong (3):
      arm64: dts: qcom: sm8550: add display hardware devices
      arm64: dts: qcom: sm8550-mtp: enable display hardware
      arm64: dts: qcom: sm8550-mtp: add DSI panel

 arch/arm64/boot/dts/qcom/sm8550-mtp.dts |  78 +++++++++
 arch/arm64/boot/dts/qcom/sm8550.dtsi    | 299 ++++++++++++++++++++++++++++++++
 2 files changed, 377 insertions(+)
---
base-commit: c326e851eed4e3ab1cc18deffb6505ce34560ba5
change-id: 20230104-topic-sm8550-upstream-dts-display-aa22b568ea17

Best regards,
-- 
Neil Armstrong <neil.armstrong@linaro.org>
