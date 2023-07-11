Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A5B8A74EF1E
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:38:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230203AbjGKMin (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:38:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42070 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232743AbjGKMh6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:37:58 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDB971717
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:37:36 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id 2adb3069b0e04-4fafe87c6fbso8975996e87.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:37:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689079022; x=1691671022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=aAnqUE/WHV036dx6NEY6D3p5kApQ1y3z3qzTH1W8xaQ=;
        b=v3tR0QinqogELObQR3BY2+24kqvHJK1wcp0+7L98lZ9MI7ZRZZrgqu0mJI/Pu9xD73
         Q8OiwpvMz7tEctJE+BPLSJYhsF3+zf/Y6E0TloNM4MuUFTHH2XjgB4Ekbxa1G1c2I7Oh
         4+YaqzlGrjkHSYIuYsugl+beE/ztA4vJiYSgb7F+GcrQDgJ79K9EJGIqt8ibI85ysQt5
         dlOlm6y3sHS4WumIrZuLGat8ixtWZolpl1i+E+cH7NO+LJ0cNVDIIoTTI3hAeW/D8yR1
         41K6JQY8S2eqehcppoHJNxBh2dKa6AQ1kXY3YbIDz1B0lIx8HmWMvPflL+1qejUoRc5Z
         proQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689079022; x=1691671022;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=aAnqUE/WHV036dx6NEY6D3p5kApQ1y3z3qzTH1W8xaQ=;
        b=DE/J0Vd5USc9vXk+gL2eE7KZQrtvoccJT2Iby4F+UVvRC9gzD0vhVDYpLB9jiT6uh6
         NrWP8yM3saLXkf6fppCJSoTfMBTfFVW8P2blgwvfQo3xu7VaGhVMFGm3BsJLu2duSPLZ
         QQ62/+NsFZRQKE3upgoKS18ap7gpxGqotHLPeA5mTGCmLwtwEh1/MMFFytYeZ6Ucy3qT
         OBwvhoBGgXYYRaME85wCOaQB4z9ufh1oWJ768zW/ZGGzwtgO2d5hKGQVyZf8pgQHB2sV
         q0ozSawP4k+Z958XkahURyjR3xkgoPzcBT9ycpOKQlTbA1zimkMBx5bqEfK5ihGjH2Zg
         sdvQ==
X-Gm-Message-State: ABy/qLailT6DRRU+cYFZ9GTwNdudwwh0jQWNtmjz0mFIyo5qlJwV9DTw
        4TsYOnI0d1aiG5tKcrLbMrM0CFd1n7WQpmfAXlOaWg==
X-Google-Smtp-Source: APBJJlHkKTM9ihSn8V3T9xMNbl03fyANS2QLVE+ICIFcS1RM0++00HN+HZZQ1KnCKxZq4VFyL6y+Mw==
X-Received: by 2002:a2e:9455:0:b0:2b7:29b:d5a5 with SMTP id o21-20020a2e9455000000b002b7029bd5a5mr12393829ljh.34.1689077970895;
        Tue, 11 Jul 2023 05:19:30 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:30 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:48 +0200
Subject: [PATCH 49/53] arm64: dts: qcom: sdx65: add qcom,bcm-voter-idx
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-49-b223bd2ac8dd@linaro.org>
References: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
In-Reply-To: <20230708-topic-rpmh_icc_rsc-v1-0-b223bd2ac8dd@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        cros-qcom-dts-watchers@chromium.org
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=652;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=QPuW3Rel3JulR94tJfYoeAL03RliO6PUnmcXiEkxKJ0=;
 b=opllT+GF9a/Bed6/37yPX0plczgSYkuJUB3jZRB8+yo4DeCEiTP93/R6hdGMr7/rzPqNVd68W
 wutnZ86z2tyBySDI8bN7TTvFabHscB2+atTO98lTHMANJcn9Wutslt+
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve the representation and ease handling, identify each BCM voter

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm/boot/dts/qcom/qcom-sdx65.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
index 1a3583029a64..7efdcb2a7a0e 100644
--- a/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
+++ b/arch/arm/boot/dts/qcom/qcom-sdx65.dtsi
@@ -795,6 +795,7 @@ rpmhpd_opp_turbo_l1: opp10 {
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";
+				qcom,bcm-voter-idx = <ICC_BCM_VOTER_APPS>;
 			};
 
 		};

-- 
2.41.0

