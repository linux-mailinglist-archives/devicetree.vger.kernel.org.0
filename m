Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D2F0E74EEA3
	for <lists+devicetree@lfdr.de>; Tue, 11 Jul 2023 14:22:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232392AbjGKMWg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Jul 2023 08:22:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52388 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232542AbjGKMV6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Jul 2023 08:21:58 -0400
Received: from mail-lj1-x22f.google.com (mail-lj1-x22f.google.com [IPv6:2a00:1450:4864:20::22f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0AD3C2D52
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:20:30 -0700 (PDT)
Received: by mail-lj1-x22f.google.com with SMTP id 38308e7fff4ca-2b6f9edac8dso85625501fa.3
        for <devicetree@vger.kernel.org>; Tue, 11 Jul 2023 05:20:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689077962; x=1691669962;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=G9v4ZXfNPn9qlJhxs+gp/ant1A453p1BhRobLNcBnVk=;
        b=uUelbk0wuhxibnQxO1VDFoYVdoluKi9WrU+8rptDSsCDfsgJmjYrV8zVLPwEgEb+RK
         T6R0jQnzCvLbHOI+7vfXHWBZ4+qXKXt7tcPPRAV/GWXV0IGEFyLnQZGadYiXi4qM3Tc2
         01yyP9265iezQao+VttViano1P3SIcn109nURsxeKKLqj0XCDcwhvBkxMoiPU5UWWRJV
         49YuiJSvZ9kGqXhlC+19sPinsP1smastv8oN+6rxKHPw53DxSyPThdVRwE5RYXl7KRgb
         28CDi8jrEfEbmUYLOTguHEkfFbua1QhOVzWu67NwPNNHppquJiPoQSe5hpTrxLFFf1xn
         BPSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689077962; x=1691669962;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=G9v4ZXfNPn9qlJhxs+gp/ant1A453p1BhRobLNcBnVk=;
        b=MfUOiYxFtapPNwptg66RYi927pfMub1zwZjpUJyIuMs1Gp9s3Rm/IPXPvUtoFOPH4T
         4DCH7OcVk0Xenj7sQm9TrLrrr3U0lmlCtl5KBLGLDCS6CdMeuWA1kqgRzbQsfmrtkY9F
         JRg5KKgeDZYyhr2+quqMO5bFYR4cT/LFIxFO+SNXh9TUfueGh8SX2nXYClM4uHOJBx7L
         eH9wasNQKAoAteK1RPuFEd3yaZ48GZyx5HUtH+zjr3rgBEfuwoDClmq0L68FB+VFY6v5
         ZkWHOgvZhO2slPhDzCWS85Lw8dXS1V2zEIeJ8EHDpFsQxRlprVyJxAfI3rpK7IQTC+MW
         w02A==
X-Gm-Message-State: ABy/qLajGEN8I+BX8+ZQ0QGXZTbXJae2Q7fOEsuIFfgqayCkFRgn1wf8
        t21sv8aOmrf78x/ECQB2TB6QIg==
X-Google-Smtp-Source: APBJJlGt975r1L3ME9SiPu7XfWBzrD6W9t9yg+ez2+RHTRoOIxDF6/VsWrx6pvoj7Iig1uZMdsOG9g==
X-Received: by 2002:a2e:9c07:0:b0:2b6:e17c:151e with SMTP id s7-20020a2e9c07000000b002b6e17c151emr12101413lji.48.1689077961981;
        Tue, 11 Jul 2023 05:19:21 -0700 (PDT)
Received: from [192.168.1.101] (abyl96.neoplus.adsl.tpnet.pl. [83.9.31.96])
        by smtp.gmail.com with ESMTPSA id d18-20020a2e96d2000000b002b708450951sm435563ljj.88.2023.07.11.05.19.20
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 11 Jul 2023 05:19:21 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 11 Jul 2023 14:18:41 +0200
Subject: [PATCH 42/53] arm64: dts: qcom: sm6350: add qcom,bcm-voter-idx
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230708-topic-rpmh_icc_rsc-v1-42-b223bd2ac8dd@linaro.org>
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
X-Developer-Signature: v=1; a=ed25519-sha256; t=1689077904; l=644;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=3BXN4Qsquy4y5qOl9KpHX7nLXTZ8ImSw5T4ipGBkQ1A=;
 b=L4P2R1cTX0Mx5tC2KxNyNlk0tY9lOiawmJDvaVn06l3qHluLU/5INXihMYZKQCkrUV54h+PyO
 evh0Q52kgDYDMKkfN9XL1doUqB6VtMhBVyMInXNS4GKDnYkZ4s3SEBh
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

To improve the representation and ease handling, identify each BCM voter

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6350.dtsi | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/boot/dts/qcom/sm6350.dtsi b/arch/arm64/boot/dts/qcom/sm6350.dtsi
index c2b5d56ba242..1f52f63c5a57 100644
--- a/arch/arm64/boot/dts/qcom/sm6350.dtsi
+++ b/arch/arm64/boot/dts/qcom/sm6350.dtsi
@@ -2563,6 +2563,7 @@ rpmhpd_opp_turbo_l1: opp10 {
 
 			apps_bcm_voter: bcm-voter {
 				compatible = "qcom,bcm-voter";
+				qcom,bcm-voter-idx = <ICC_BCM_VOTER_APPS>;
 			};
 		};
 

-- 
2.41.0

