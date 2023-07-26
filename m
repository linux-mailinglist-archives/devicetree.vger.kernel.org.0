Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A68CE76378D
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 15:27:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234098AbjGZN1g (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 09:27:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44758 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234086AbjGZN1f (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 09:27:35 -0400
Received: from mail-pf1-x434.google.com (mail-pf1-x434.google.com [IPv6:2607:f8b0:4864:20::434])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A7052128
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 06:27:33 -0700 (PDT)
Received: by mail-pf1-x434.google.com with SMTP id d2e1a72fcca58-686daaa5f1fso396432b3a.3
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 06:27:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690378053; x=1690982853;
        h=content-transfer-encoding:author:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:from:to:cc:subject
         :date:message-id:reply-to;
        bh=89pDHiQuuTGBrFn4u+2m7Al4Ng6hp0tFQ+lBB6CO7z8=;
        b=QzQQ58weFbx13ZPAeX9zmEbDZELDz9db2Ffpc0ES48wh1SJYJGC4Z2mdgS9QFKcYfO
         EabPeQPjzH93WOaUBhAtkLfpQ3qbdX/+1G87al+3Q5xmyFbaDRV3hVxCGMYSpyUMdfdk
         SyWTu/4g62HL7jgUwfP6IzAYd+1kBjxQ2ZBj0cyjtR3MfioY1dvqcN0S42qhUi891/mp
         iNhSgV2sGLEGsDaTfPYotDDu1U5WpavGIR/hLewOnsoO71VMS07S1voZF0xDbMO39Oq3
         nK5sdySJ+brI4wBWZEfQpyLbixODkMRrttYeWAE6L/LQ4i9Y9DVlzorkIcr8BVHwDaa4
         Zqbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690378053; x=1690982853;
        h=content-transfer-encoding:author:mime-version:references
         :in-reply-to:message-id:date:subject:cc:to:from:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=89pDHiQuuTGBrFn4u+2m7Al4Ng6hp0tFQ+lBB6CO7z8=;
        b=TucHFfQXhMBGyiJrktgk5sZ7svh2pHznbLVH+9fLRprV2tHgwE/wGyPAy3b2jttxmy
         hhe3I7JIeXtL38mKBfIAGMzMbzS6HE5uhCUkdpM/G8nxplkqFvL68/gUOlgt+gw9GPuE
         L0nb8X9iYppNYOSVuCD98tplzkGquh9JaXkEZgSZSXrba9mTnRsQsSJ5ZnSSQA9RdxDG
         U8faT2VQdZwQ8ZwifmUHqtt+nwHPRcDG7oxCtYiGjvUJP98qhCtD21h5zv3Ne4nPi9CH
         SEG4CWd2D3qcjRiBy2RTw5qX4X7P7voZKYMk5ZrFxbu4rn0jFHKHua90dY45Lizwp9PU
         5I7g==
X-Gm-Message-State: ABy/qLa1/zdKsrCNqf4RW1fXXIo1ilJC6J+cMG2xSDfsoVkPcQeAr5/R
        D36v/hl8l4mTgdpitT46F3cBqw==
X-Google-Smtp-Source: APBJJlFizJ74bxiKNwhoKoBmbCLVamjSoW8dbcj9VNixsovbSS+Bhsm7WcaYIWUOWupkeWiuWFNlRA==
X-Received: by 2002:a05:6a00:194c:b0:686:dff6:50f with SMTP id s12-20020a056a00194c00b00686dff6050fmr944702pfk.8.1690378053122;
        Wed, 26 Jul 2023 06:27:33 -0700 (PDT)
Received: from x-wing.lan ([49.207.50.231])
        by smtp.gmail.com with ESMTPSA id x52-20020a056a000bf400b00682ba300cd1sm11485918pfu.29.2023.07.26.06.27.27
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 26 Jul 2023 06:27:32 -0700 (PDT)
From:   Amit Pundir <amit.pundir@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Caleb Connolly <caleb.connolly@linaro.org>,
        Bryan Donoghue <bryan.odonoghue@linaro.org>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krishna Manikandan <quic_mkrishn@quicinc.com>
Cc:     dri-devel <dri-devel@lists.freedesktop.org>,
        freedreno <freedreno@lists.freedesktop.org>,
        linux-arm-msm <linux-arm-msm@vger.kernel.org>,
        dt <devicetree@vger.kernel.org>,
        lkml <linux-kernel@vger.kernel.org>, stable@vger.kernel.org
Subject: [PATCH v6 2/2] arm64: dts: qcom: sdm845-db845c: Mark cont splash memory region as reserved
Date:   Wed, 26 Jul 2023 18:57:19 +0530
Message-Id: <20230726132719.2117369-2-amit.pundir@linaro.org>
X-Mailer: git-send-email 2.25.1
In-Reply-To: <20230726132719.2117369-1-amit.pundir@linaro.org>
References: <20230726132719.2117369-1-amit.pundir@linaro.org>
MIME-Version: 1.0
Author: Amit Pundir <amit.pundir@linaro.org>
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

Adding a reserved memory region for the framebuffer memory
(the splash memory region set up by the bootloader).

It fixes a kernel panic (arm-smmu: Unhandled context fault
at this particular memory region) reported on DB845c running
v5.10.y.

Cc: stable@vger.kernel.org # v5.10+
Reviewed-by: Caleb Connolly <caleb.connolly@linaro.org>
Signed-off-by: Amit Pundir <amit.pundir@linaro.org>
---
v6: Collected review tag, updated commit message for the
    context and marked for stable kernel versions.

v5: Re-sending with updated dt-bindings patch in mdss-common
    schema.

v4: Re-sending this along with a new dt-bindings patch to
    document memory-region property in qcom,sdm845-mdss
    schema and keep dtbs_check happy.

v3: Point this reserved region to MDSS.

v2: Updated commit message.

There was some dicussion on v1 but it didn't go anywhere,
https://lore.kernel.org/linux-kernel/20230124182857.1524912-1-amit.pundir@linaro.org/T/#u.
The general consensus is that this memory should be freed and be
made resuable but that (releasing this piece of memory) has been
tried before and it is not trivial to return the reserved memory
node to the system RAM pool in this case.

 arch/arm64/boot/dts/qcom/sdm845-db845c.dts | 9 +++++++++
 1 file changed, 9 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
index d6b464cb61d6..f546f6f57c1e 100644
--- a/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
+++ b/arch/arm64/boot/dts/qcom/sdm845-db845c.dts
@@ -101,6 +101,14 @@ hdmi_con: endpoint {
 		};
 	};
 
+	reserved-memory {
+		/* Cont splash region set up by the bootloader */
+		cont_splash_mem: framebuffer@9d400000 {
+			reg = <0x0 0x9d400000 0x0 0x2400000>;
+			no-map;
+		};
+	};
+
 	lt9611_1v8: lt9611-vdd18-regulator {
 		compatible = "regulator-fixed";
 		regulator-name = "LT9611_1V8";
@@ -506,6 +514,7 @@ &i2c14 {
 };
 
 &mdss {
+	memory-region = <&cont_splash_mem>;
 	status = "okay";
 };
 
-- 
2.25.1

