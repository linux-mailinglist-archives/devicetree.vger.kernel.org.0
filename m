Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7FB876DDC94
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 15:47:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230351AbjDKNrX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 09:47:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33734 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230313AbjDKNrW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 09:47:22 -0400
Received: from mail-lj1-x22e.google.com (mail-lj1-x22e.google.com [IPv6:2a00:1450:4864:20::22e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id DADD12D48
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 06:47:20 -0700 (PDT)
Received: by mail-lj1-x22e.google.com with SMTP id bx15so6627898ljb.7
        for <devicetree@vger.kernel.org>; Tue, 11 Apr 2023 06:47:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681220839;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=VpV7MNh7YkHay8Lg/z9KE+NPODSRKpQNoxPyzTQboHE=;
        b=MuQb5oZbdvkg838emv9dnOO3i+1b0FPsyL0hRrv38uc0L1sLq7hb0jy5V/2QhsJDGR
         TFmI9896NnFPgKOEiLAS9erdp/SdizrdrD+nsLJhM2fo6q9nOmnUHHahTXrbIYvrQhPO
         AiGl3mMt+B1Zrzj/8t7sKhPsAlMR8zYp8QHlKF76ngQKtkrM88aLVRQ4qtrLRaszwHiN
         isnNX52vhoJFGl4qZY64SCAelPlZceO+bSgPcQN2iUoL+PxxRFYwtfpCoJkW/QddGftq
         oZhPYWiKFbE3sQ0lUInUbhSHSH+pQVMu2duZzqDKT9Z8Kn4vBrr/5+aasQjngaluMOoH
         ruNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681220839;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=VpV7MNh7YkHay8Lg/z9KE+NPODSRKpQNoxPyzTQboHE=;
        b=u10lk5Rpacv/X/XCipMcB75grRABCfkWv7fbTKsIaZUyXgGc7BPt6LwA1fyTiD7JmA
         jNPl7bPUKiOiT8rvHlGr6+zLtko/WgQo5JN3HuLRapmNQKC2IA0CP2sr2YfIBCDo4DRN
         pPGh5EvjScbd2m30HOr8i9bUMfA6TDTGd7GBudBu/lsLddM70ZXW0wLY0ftdVn2jLA0x
         u6URPb2RIg2XSh2HFzjP8tWoFMmwWUtqZ6Dl/UOmc3Tg7EKdcJwZeES28GB79NtFP5tT
         TLIwkhzStF0SY+G6p8kZn0QruWi79YojXn3K5zO2hiatJboadbzrvBWArYZ8wr1WvL5B
         Mfbw==
X-Gm-Message-State: AAQBX9dwvUdWLCMdc9JNluy3iA+IrWf5oltzjk/+NgCvBfAtt5LUtJ97
        KyzsnCBEbqBtJ8RZCoUYhbDyTLWfs/jSExlv5+g=
X-Google-Smtp-Source: AKy350YNW8XcTKSvr4Rp9OJGc+ZZ1XltXvstXhuRLfyLnl7JkYbbtzmjcgYytCY30KLjSzaPZN1fuQ==
X-Received: by 2002:a2e:90ca:0:b0:2a7:6807:2ced with SMTP id o10-20020a2e90ca000000b002a768072cedmr3056891ljg.42.1681220838906;
        Tue, 11 Apr 2023 06:47:18 -0700 (PDT)
Received: from [192.168.1.101] (abxj23.neoplus.adsl.tpnet.pl. [83.9.3.23])
        by smtp.gmail.com with ESMTPSA id c10-20020a2e680a000000b002a77583b718sm1245887lja.12.2023.04.11.06.47.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Apr 2023 06:47:18 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH v2 0/3] Fix SA8155P RPMPDs
Date:   Tue, 11 Apr 2023 15:47:14 +0200
Message-Id: <20230411-topic-hanaau-v2-0-fd3d70844b31@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAOJkNWQC/x2NQQqEMAxFryJZG9BqB2auIi7SGMeAVGlVBPHuB
 pfvfR7/gixJJcOvuCDJoVmXaODKAnii+BfUwRhc5ZqqrWvcllUZbSLasfVf/nAIo/cMlgTKgiF
 R5MmiuM+zyTXJqOf70fX3/QDNxi/ZcwAAAA==
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1681220837; l=1322;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=qVng4pJR4fg7JVVEXtiVeltZoqePuiwtmcjJiT2J9yI=;
 b=PV9gcUzWj8EQ6ZCeInWRMxwaBmHBrO3aQeKaIs/QfoTj9dUArp4BTSp4YH84kFI3X84SLjt6uga1
 6yB9F4AtBA1DOhYv2L8zUJgekKGzCoIixyXCfL8Mw5pTM9Ilc9j2
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

SA8155P has some kind of a faulty firmware that advertises power
domains that are actually absent (and trying to access them results
in a lockup and reboot).. This series tries to amend that.

v1 -> v2:
- Reuse 8150 indices for 8155
- As a consequence of /\, only update domains that differ in the DT

I did not pick up any tags, as things changed rather significantly.

Compile-tested only.

v1: https://lore.kernel.org/linux-arm-msm/20230214095435.2192153-1-konrad.dybcio@linaro.org/

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (3):
      dt-bindings: power: qcom,rpmpd: Add SA8155P
      soc: qcom: rpmhpd: Add SA8155P power domains
      arm64: dts: qcom: Split out SA8155P and use correct RPMh power domains

 .../devicetree/bindings/power/qcom,rpmpd.yaml      |  1 +
 arch/arm64/boot/dts/qcom/sa8155p-adp.dts           |  2 +-
 arch/arm64/boot/dts/qcom/sa8155p.dtsi              | 40 ++++++++++++++++++++++
 drivers/soc/qcom/rpmhpd.c                          | 16 +++++++++
 include/dt-bindings/power/qcom-rpmpd.h             |  9 +++++
 5 files changed, 67 insertions(+), 1 deletion(-)
---
base-commit: 009795d283d1f9f043e5a4ff97d4140cde17e2d3
change-id: 20230411-topic-hanaau-459c6cbbf55c

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

