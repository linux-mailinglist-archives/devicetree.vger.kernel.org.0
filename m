Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AE5566D25FC
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 18:45:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232389AbjCaQpr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 12:45:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232411AbjCaQpL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 12:45:11 -0400
Received: from mail-pl1-x62c.google.com (mail-pl1-x62c.google.com [IPv6:2607:f8b0:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7ACB922EB2
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 09:43:54 -0700 (PDT)
Received: by mail-pl1-x62c.google.com with SMTP id iw3so21769782plb.6
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 09:43:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680281033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=UYD6p8k0MAvXLgW2ujOSm1q/H2SLlbnZmg0CclkW4x0=;
        b=PZpeZS1KXBC2YN+vJT3OPlyL1yl5kDhSsgqNZdKSUmyXcd4h8PnY79jZxr3Rb/eOo5
         i84DsF7gZ7P5CgFuVCdS+oY2N+xIb+EvR3Xca5NPkQIsDouJUe+aM82iQFssfnWX6GCo
         0DLYNnqoCLo7VSlydptNdrQE1S4o9iRNTlV5Us/vyDfxHIoICT0flwnNStGjVfb5D5SK
         ztFilqrXsNqw07wEE4TM9BPQfptNp97lsguJOjiEw1Z55vOGAXUsSoVRx1BsGERNq9VY
         YtW4u1NiI6VhMNpLqfxzQT1EjNUER4Si3XE5vR3q0mutoqOGSJ06Ew5TLuSkmIPHViel
         NV7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680281033;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=UYD6p8k0MAvXLgW2ujOSm1q/H2SLlbnZmg0CclkW4x0=;
        b=M9/XTQDY2HKrSfaLbpSyNqFKlAHqGdJzBmEFA7Xv21jyUcoPZ9XnkVeyQ9OvBMXKyN
         0mw/dutHPAPCwUFYLSWetBCj5C4ARTu/khu2ljNwEAP7JIY6qic+98hKHEya3P6Cxazz
         z52KrPNhQvErPxStcCiiYeMGFhJQqEqoPmEUmD+oWg9Xz1xt70eHpvoPx1U9/LyjqmOt
         kafYReVESLORFmTFdBMywW4xLEY8y/Axkywn6sXncPzjf0r1x3yJY67ufmFs335V1Eor
         2iuK3UZgW/1LuQUy3waGlLO4P+6OthrjyILqRoQaihJiVR390aWwjIfwKdLpZHLsk4p/
         eZyw==
X-Gm-Message-State: AAQBX9dlxM1hzyo2HdKiE/7/4dV5G/DvClFTlmBt0nd56Vg1cS4Jqd7b
        1+ijZvyanpYq2LWyxgFFKARf8g==
X-Google-Smtp-Source: AKy350aUadKxCjC7T/jtAKyhtu8secZ5aS9M9FzLyNXe0UgsEzCUaS54081hv5nD8SoUiDgQslQ9Gw==
X-Received: by 2002:a17:903:2848:b0:19e:675b:a40f with SMTP id kq8-20020a170903284800b0019e675ba40fmr24719165plb.8.1680281032922;
        Fri, 31 Mar 2023 09:43:52 -0700 (PDT)
Received: from localhost.localdomain ([2401:4900:1c5e:53ce:1f39:30a5:d20f:f205])
        by smtp.gmail.com with ESMTPSA id x13-20020a170902b40d00b0019b089bc8d7sm1798767plr.78.2023.03.31.09.43.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 31 Mar 2023 09:43:52 -0700 (PDT)
From:   Bhupesh Sharma <bhupesh.sharma@linaro.org>
To:     linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org
Cc:     agross@kernel.org, linux-kernel@vger.kernel.org,
        linux-crypto@vger.kernel.org, andersson@kernel.org,
        bhupesh.sharma@linaro.org, bhupesh.linux@gmail.com,
        krzysztof.kozlowski@linaro.org, robh+dt@kernel.org,
        konrad.dybcio@linaro.org, vladimir.zapolskiy@linaro.org,
        rfoss@kernel.org, neil.armstrong@linaro.org
Subject: [PATCH v4 04/11] arm64: dts: qcom: sdm845: Fix the slimbam DMA engine compatible string
Date:   Fri, 31 Mar 2023 22:13:16 +0530
Message-Id: <20230331164323.729093-5-bhupesh.sharma@linaro.org>
X-Mailer: git-send-email 2.38.1
In-Reply-To: <20230331164323.729093-1-bhupesh.sharma@linaro.org>
References: <20230331164323.729093-1-bhupesh.sharma@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,SPF_HELO_NONE,SPF_PASS
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

As per documentation, Qualcomm SDM845 SoC supports SLIMBAM DMA
engine v1.7.4, so use the correct compatible strings.

Signed-off-by: Bhupesh Sharma <bhupesh.sharma@linaro.org>
---
 arch/arm64/boot/dts/qcom/sdm845.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sdm845.dtsi b/arch/arm64/boot/dts/qcom/sdm845.dtsi
index 2f32179c7d1b..17a29184884c 100644
--- a/arch/arm64/boot/dts/qcom/sdm845.dtsi
+++ b/arch/arm64/boot/dts/qcom/sdm845.dtsi
@@ -5152,7 +5152,7 @@ msi-controller@17a40000 {
 		};
 
 		slimbam: dma-controller@17184000 {
-			compatible = "qcom,bam-v1.7.0";
+			compatible = "qcom,bam-v1.7.4", "qcom,bam-v1.7.0";
 			qcom,controlled-remotely;
 			reg = <0 0x17184000 0 0x2a000>;
 			num-channels = <31>;
-- 
2.38.1

