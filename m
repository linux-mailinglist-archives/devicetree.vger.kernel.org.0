Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C9518656637
	for <lists+devicetree@lfdr.de>; Tue, 27 Dec 2022 01:15:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232197AbiL0APx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 19:15:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35800 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230072AbiL0APw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 19:15:52 -0500
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1631F25E6
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 16:15:51 -0800 (PST)
Received: by mail-lf1-x131.google.com with SMTP id z26so17662694lfu.8
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 16:15:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date:message-id:reply-to;
        bh=yQbjy/ZqQS2EH0Nc/WoIrxmxQvS/DxkNoFagQx5floQ=;
        b=xgOfHZZxcfMwW/GCxlxjiiQqnTaoPCYrcvvhwuaHQBQDUXxQ+3r9dfXSV4SeSG+Pss
         xD1fDWvdWemteAFs/86yaxIZLh7l2D1mPWpkAvyPjIrTOrjCmRhQJLVkT2U/z9inUekN
         nX8Fx3VnMKu3z9lobBje37tjqkZZWK3IfsIh7w4+a7AHDxvvaTat7ShOhyViE/8bw+y0
         5tHDJU6JRhWPOFpAfXkolcF2ixEBYNqppuERqDpavUMhwfofZWjzNwtE9yCOR5wv2ii/
         dWJZgj3h17ygYExafg3mMntHjRTHESmJOYYzEpkaSSwKgwvNdfrE59ggfB4OqDTFQOUL
         GB2A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=yQbjy/ZqQS2EH0Nc/WoIrxmxQvS/DxkNoFagQx5floQ=;
        b=JJyBH50KmTYXKDc/I6rPgEk2G/rkdX5r+WJ9YSpCE29a9gY5ccjg3ggYAy2TfLIXem
         MiAGDgFKt80S/nWHXn6aHq3OJG6Qgt0h/4Qml2yLt4eeRgIx8TCDQgFFziJJzEsInEF3
         meiTby0O5gANv55DTcmG7bivImUpYyJFb3wYRoAruAJuQJDGTskSSDExH1gbRTzMazJl
         tRw14kl9dOa6TjWYSWiWrvN2LN3s+c6kjBymGlkBddYbu7tSdiHk6DMrb5FbmH8g+BRv
         EEeW07FrhNoiPIULZdBLWVlpuAL17f8h1oWfWy+u2V3Gt7pYo5C5xITVkmHGvyD+bx3l
         v55A==
X-Gm-Message-State: AFqh2krqP6oMl2KmGdAfJQTqQU/tdyhkNHKYCcktbIO24wxsOTK94MVJ
        0mMovBK0TprNteLjdVlo3B4iWg==
X-Google-Smtp-Source: AMrXdXsoYCxCv+M6D7afOzt/1q/9AqEzRrhajRLHlNSAWF8htm3jcbootoNq0qQRYIeTiYkn72Gw4w==
X-Received: by 2002:a05:6512:2348:b0:4b5:1e6c:785c with SMTP id p8-20020a056512234800b004b51e6c785cmr6348172lfu.34.1672100149157;
        Mon, 26 Dec 2022 16:15:49 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id z25-20020ac24199000000b004b55ef84338sm2017801lfh.305.2022.12.26.16.15.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 16:15:48 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Subject: [PATCH] ARM: dts: qcom: msm8974: add xo clock to rpm clock controller
Date:   Tue, 27 Dec 2022 02:15:47 +0200
Message-Id: <20221227001547.2830656-1-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
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

Populate the rpm clock controller node with clocks and clock-names
properties.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm/boot/dts/qcom-msm8974.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/arm/boot/dts/qcom-msm8974.dtsi b/arch/arm/boot/dts/qcom-msm8974.dtsi
index 8d216a3c0851..81636c76e068 100644
--- a/arch/arm/boot/dts/qcom-msm8974.dtsi
+++ b/arch/arm/boot/dts/qcom-msm8974.dtsi
@@ -307,6 +307,8 @@ rpm_requests: rpm_requests {
 				rpmcc: clock-controller {
 					compatible = "qcom,rpmcc-msm8974", "qcom,rpmcc";
 					#clock-cells = <1>;
+					clocks = <&xo_board>;
+					clock-names = "xo";
 				};
 			};
 		};
-- 
2.35.1

