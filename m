Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AF7B7172F0
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 03:16:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233966AbjEaBQf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 30 May 2023 21:16:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233969AbjEaBQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 30 May 2023 21:16:33 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE731FC
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:31 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id 2adb3069b0e04-4f4f8b94c06so4037340e87.1
        for <devicetree@vger.kernel.org>; Tue, 30 May 2023 18:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685495790; x=1688087790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=TMjfTjBGLXw7IVGJ+nf3D2GY7OrsoBlL/iS2L0XV7Gg=;
        b=L2y9SosxlrvjTJV08OVlHfoKIFH8OYw/2e1GHpt/X4EnbV7B2efpHW6QmmDcxwaTkJ
         fpAYDGJqQf8cR8nwAKabkw8ViN7KGUuVYTMuvTicYdQLU10sGinB5Ir3jyco7dzSudKn
         oS4jpfIOCPvra6GLJzvZyF4hiu65ZtHoViTK3fSmyuIgca7OzHaJXzHqxkdw0Qr9kZz6
         tgv20+oQuibZRUp6R9Pk6s397oqZX22aodbAMJn1+ITd3Z3leM57nczySsZ7plImg/c7
         pa8XA4zhDRh2gZnymXGM5joOdAtCgJjUpk3OkMnNlCBCbE2ve8u5aoHZEPXn28uxd62E
         by4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685495790; x=1688087790;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=TMjfTjBGLXw7IVGJ+nf3D2GY7OrsoBlL/iS2L0XV7Gg=;
        b=J4RsGTuc7FNhi3BFc47E6ChRQUdAbC3/ohx3LhQlxtzhVMhI9pX2iHAePv7eUg2iIb
         GxJIXhs5mLGxCcUPGoddyw29rTeLwltea6IIrVKG0Ysq2D2SN1NnGrMyDylbJFa4eMzV
         NESh2PjvBjm48abEVEiN92Ja+udfzFck1wO8/8FIXgMCpnE/f5/qd//4KNMqTQ1LYt5j
         21ImDEhJFT97aG8A4iY45go6PQ5pLGo5+1XG2QdgTK067pLZBh3ANaGsz5ZeaFzY7vqH
         k9Bd/GsYvgnOAe6e9E/lKCjvKCg29XM2HUlglscvgv8w52FDGe67kEvE1qLGzFQl10WO
         MuHQ==
X-Gm-Message-State: AC+VfDwVOQHJD27YiiJ+dpeC2GjtbbRDi8ad0B+8uhsVODPPyz8uILSj
        fe+ocU1/hFLaoKd97nGlvpNXhQ==
X-Google-Smtp-Source: ACHHUZ55BaJYIc4njdOwvXBII52zDTIe044DyjKXnOIF1/7xd4yIAgtkCGycTitBWBg75Wafnfw5aw==
X-Received: by 2002:a19:5502:0:b0:4f3:8c0d:41c3 with SMTP id n2-20020a195502000000b004f38c0d41c3mr1765898lfe.6.1685495790172;
        Tue, 30 May 2023 18:16:30 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id v24-20020ac25618000000b004f3787d8006sm505640lfd.128.2023.05.30.18.16.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 30 May 2023 18:16:29 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH 03/14] arm64: dts: qcom: sm8450-hdk: remove useless enablement of mdss_mdp
Date:   Wed, 31 May 2023 04:16:12 +0300
Message-Id: <20230531011623.3808538-4-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
References: <20230531011623.3808538-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The MDP/DPU device is not disabled by default, so there is not point in
enabling it in the board DTS file.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm8450-hdk.dts | 4 ----
 1 file changed, 4 deletions(-)

diff --git a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
index d5aeb7319776..bc4c125d1832 100644
--- a/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
+++ b/arch/arm64/boot/dts/qcom/sm8450-hdk.dts
@@ -568,10 +568,6 @@ mdss_dp0_out: endpoint {
 	};
 };
 
-&mdss_mdp {
-	status = "okay";
-};
-
 &pcie0 {
 	status = "okay";
 	max-link-speed = <2>;
-- 
2.39.2

