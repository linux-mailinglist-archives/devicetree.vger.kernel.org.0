Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 00D8B73EB61
	for <lists+devicetree@lfdr.de>; Mon, 26 Jun 2023 22:04:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229704AbjFZUAm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Jun 2023 16:00:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51114 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229481AbjFZUAl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Jun 2023 16:00:41 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 68AE7E7B
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 13:00:40 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id 2adb3069b0e04-4f76a0a19d4so5066444e87.2
        for <devicetree@vger.kernel.org>; Mon, 26 Jun 2023 13:00:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687809638; x=1690401638;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:from:to:cc:subject:date:message-id:reply-to;
        bh=MsirXe6F0XKcfpoI+mPFBbyk07gurBlFwHC8qBI/sU8=;
        b=Q/WGo3McwEk59cszkwupzJcRO9xyOSy+utaXON8ApCzhym4ChsXJ+rT3OtJE6MFFgj
         nUx9OD3TkzQ9SoiT2JtOIXza8B8ItW+jxeWsZkvxazdSyLI4FBg4zRkxxPe87QlYlCIE
         KIN3Zu2EcQO7Vhs42Lzp1G7oqcwBY+JWidRD6hryz6WSpc3dvq6CYsRJ+sTfWTnjOAdh
         6Wwl7NCMImN/vPA9CgUREEhiSKFSX64C0VfhOzc83GI/6g7akuzYIpRWz8m3rTlJuvrR
         lJKV2CvCJeG8LXW9py4y3kmcyyfN11kAtUR3yOFwhz22u4USKIMTn3ukpIjju31TYt+E
         fmLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687809638; x=1690401638;
        h=cc:to:content-transfer-encoding:mime-version:message-id:date
         :subject:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=MsirXe6F0XKcfpoI+mPFBbyk07gurBlFwHC8qBI/sU8=;
        b=l7b0BsvrI7+QcjX0Eaeglm5MRp9IhFVlyV/qtw+agj3yyStyxAi2SE2P92eQKBkqMN
         ufMxzZAV6resmCRrfhmY/xxPRzJxDJyzWtGJ7vunUca5ACHl0XfW0uF+lr0yDGrQj6jy
         kWQGUjDYw59pXt4YpceQRHqOIIO/RIYCDT9ja9vYhf3E00nhNvlxnMVx48oFoBajg4ot
         0SQ0EEim4ehqTwjI7kwIpyDHrLK5aKPoXxAy2waSXHcGHomHWcTjpv8PYYeqCzTsyuxK
         6DwoLfs0TQwVVUeMKsDsLpi75LzS8GPVmTE12hrmhWTohKeDrJ2SLawMzBqNF1hfzGwD
         NiPA==
X-Gm-Message-State: AC+VfDy0ezURFfySeQlS2B2QumYy9s6BY5XJy5UlGahbxRO5Spat+2bS
        K6OgyTjVfvxvQbJkSJRMqLbNGg==
X-Google-Smtp-Source: ACHHUZ4ATesustUL/xAV8LHcUVMG7FtETK7Yna7fm5Eluo+f67Ecu8epVQdSXXT6d2/XgnTgdEGgNQ==
X-Received: by 2002:a05:6512:3483:b0:4fb:78a0:dd34 with SMTP id v3-20020a056512348300b004fb78a0dd34mr1564096lfr.42.1687809638646;
        Mon, 26 Jun 2023 13:00:38 -0700 (PDT)
Received: from [192.168.1.101] (abyk179.neoplus.adsl.tpnet.pl. [83.9.30.179])
        by smtp.gmail.com with ESMTPSA id o11-20020ac2494b000000b004fb74cb9670sm628082lfi.125.2023.06.26.13.00.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Jun 2023 13:00:38 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Subject: [PATCH 0/7] random msm bindings fixes
Date:   Mon, 26 Jun 2023 22:00:22 +0200
Message-Id: <20230626-topic-bindingsfixups-v1-0-254ae8642e69@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-B4-Tracking: v=1; b=H4sIAFbumWQC/x2NSwrDMAwFrxK0rsC124T2KqULf5REEBRjJaUQc
 veKLmd4wztAqTEpPLsDGn1YeRWD66WDPEeZCLkYg3c+uN73uK2VMyaWwjLpyN+9Kj5CGcJQ0uj
 uN7A0RSVMLUqeLZZ9WUzWRjb/f73e5/kDVNEqdHsAAAA=
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Bhupesh Sharma <bhupesh.sharma@linaro.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Sibi Sankar <quic_sibis@quicinc.com>,
        Luca Weiss <luca.weiss@fairphone.com>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        AngeloGioacchino Del Regno <kholk11@gmail.com>,
        Luca Weiss <luca@z3ntu.xyz>, Vinod Koul <vkoul@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Rob Herring <robh@kernel.org>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-remoteproc@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687809636; l=1303;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3wIlxdysNDx1S4zitAfCftwhXW5BSqJ8vJhHAM8IWMs=;
 b=ITP1xvCp9uv79ZAHCNFGu/TF4jdTjkj3S4K0O8ZBP20yFazofvjfaai3MusmfJj4Mr68VbtW7
 RDY+A2lYeZZB6zsQ/weoSrwbw3yNzIFFmu+C+3aXMr1tSu77O5Bjwtm
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
Konrad Dybcio (7):
      dt-bindings: qcom: Allow SoC names ending in "pro"
      dt-bindings: remoteproc: qcom,msm8996-mss-pil: Fix 8996 clocks
      arm64: dts: qcom: pm6150l: Add missing short interrupt
      arm64: dts: qcom: pm660l: Add missing short interrupt
      arm64: dts: qcom: pmi8950: Add missing OVP interrupt
      arm64: dts: qcom: pmi8994: Add missing OVP interrupt
      arm64: dts: qcom: sc8180x: Add missing 'cache-unified' to L3

 Documentation/devicetree/bindings/arm/qcom-soc.yaml                | 2 +-
 .../devicetree/bindings/remoteproc/qcom,msm8996-mss-pil.yaml       | 7 +++----
 arch/arm64/boot/dts/qcom/pm6150l.dtsi                              | 5 +++--
 arch/arm64/boot/dts/qcom/pm660l.dtsi                               | 5 +++--
 arch/arm64/boot/dts/qcom/pmi8950.dtsi                              | 5 +++--
 arch/arm64/boot/dts/qcom/pmi8994.dtsi                              | 5 +++--
 arch/arm64/boot/dts/qcom/sc8180x.dtsi                              | 1 +
 7 files changed, 17 insertions(+), 13 deletions(-)
---
base-commit: 3eedd211ad93c322fb360b83a3d76a2c6cd622dc
change-id: 20230626-topic-bindingsfixups-93d737dbf054

Best regards,
-- 
Konrad Dybcio <konrad.dybcio@linaro.org>

