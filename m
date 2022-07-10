Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 270A456CE2A
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 11:00:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229679AbiGJJAs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 05:00:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34514 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbiGJJAp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 05:00:45 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5F81C11A3F
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:44 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id e28so678231lfj.4
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 02:00:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VZs4kXHK9xbLHkrqMGuJyZ5VoLx/pQiEUX4aKEkcY5A=;
        b=NE0ahQ1LMEzRiDmam57ajPEX+MCfHm20NEAFqzHi/YYk76pgWNaUlBynt1fjo/qMqo
         A5T7sD6O3yrfZ+QlLQMO8PtLQxQMwVmJafXTbs7ZuetGUdqlXQh5HTNaVbSAN2wVKGUc
         cMNEjYgeVeYSPiXtMLgVYI5kF7Bqlmycx42OBbb7lYvSGfrmKY5t+YOkZlpsRZIG4I7y
         B4e2VMR639gQv28cRqt+G/I0+5/d+5fFNL/Owvr2JlPJ/Bo+OZH6Thpd/pvl4DgEK5Q1
         vetJToJjxA0y29kuoXjHpUQO9ixHE8maBjjvBA1B52WYok3uv8CkCQY3Z8HTAEaMAp0R
         CO1g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VZs4kXHK9xbLHkrqMGuJyZ5VoLx/pQiEUX4aKEkcY5A=;
        b=7EXq3efPhXMvvbbtCUxDujOpylWxxp4w0SYSgdSfCB2ORKc9Ji7DaOict5yKTjcP0x
         q0TbiFqC4adHssh8h8o5J0uLNo7Y9rdXBz3u2q3Wr4Agz1c+QmpSlCx0SdAQVMoA8Bhd
         dKJu/wywUDSwqvoZwK1Liq1wPeUwLR9KmhkjFaQ4KNOKPTGGm05L8EubgNwhkpKPVbFH
         V9Jjf08TLi20QFR/Ao0np7IAoM5CXsCPMb0Igua3CQ5fUQnmw0qsTmiQ7TK05Qr1ma/m
         +jXzdxWxvBnUHQQH9dzlxj6eXwRy7jUP3SLR3xOVMGf0AwhD2zH00phUcKc/2OKfr/Fa
         CpVA==
X-Gm-Message-State: AJIora+LjOX3SCkDOzCmjaShswyFpqO+n0Ykke+CyXsvc6toCfYCVhnT
        gmbnvcJ9/imowyyhMfco2zZoPQ==
X-Google-Smtp-Source: AGRyM1vJ2bvlLB+NlRwTwtW/ZZXgTuVBInd2vfmXy7JJPK9tbJTYw/ZGF0qL4Nv+Gv+WtrPPjOt2CA==
X-Received: by 2002:ac2:4e08:0:b0:47f:7b73:c9b9 with SMTP id e8-20020ac24e08000000b0047f7b73c9b9mr8006082lfr.5.1657443642786;
        Sun, 10 Jul 2022 02:00:42 -0700 (PDT)
Received: from eriador.lan ([37.153.55.125])
        by smtp.gmail.com with ESMTPSA id u16-20020a056512095000b004896b58f2fasm822881lft.270.2022.07.10.02.00.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 10 Jul 2022 02:00:42 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH v2 02/11] arm64: dts: qcom: sc7180: rename DPU device node
Date:   Sun, 10 Jul 2022 12:00:31 +0300
Message-Id: <20220710090040.35193-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
References: <20220710090040.35193-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Rename DPU device node to display-controller@ae01000 to follow the
DPU schema.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/sc7180.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sc7180.dtsi b/arch/arm64/boot/dts/qcom/sc7180.dtsi
index 72994f599825..e63b4515453f 100644
--- a/arch/arm64/boot/dts/qcom/sc7180.dtsi
+++ b/arch/arm64/boot/dts/qcom/sc7180.dtsi
@@ -2911,7 +2911,7 @@ mdss: mdss@ae00000 {
 
 			status = "disabled";
 
-			mdp: mdp@ae01000 {
+			mdp: display-controller@ae01000 {
 				compatible = "qcom,sc7180-dpu";
 				reg = <0 0x0ae01000 0 0x8f000>,
 				      <0 0x0aeb0000 0 0x2008>;
-- 
2.35.1

