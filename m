Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3173678B851
	for <lists+devicetree@lfdr.de>; Mon, 28 Aug 2023 21:28:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233379AbjH1T2B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 28 Aug 2023 15:28:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59944 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233423AbjH1T1e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 28 Aug 2023 15:27:34 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FB771AA
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 12:27:16 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id ffacd0b85a97d-31dca134c83so1169425f8f.3
        for <devicetree@vger.kernel.org>; Mon, 28 Aug 2023 12:27:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693250834; x=1693855634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=LCx6rX9XwkuTbZO5oGRhSEBk5e7OaZJRubi6F2ucuO0=;
        b=kbalgKaBhIdUuKiRYkEoB9PjGYYgWzArZwbNwkwnDpDl2p8QWr0ZHt7WAyE7J9OEVS
         qOKK+GJCEwqq7V8OTL4qtinpwf74jAJjquHEn6PNN4/WJQxRpQDVmu+fRkkZG9JqCpkZ
         whLI1B+OhxOabfnsiYrTZPyZaVOdcl2qknkH0MfRSHE7+KHqdC8U9WmWLdNm7HDU02Ov
         0bvmWDhy9DMP6lq7X2xzwiPm4Vr9MBkhtIsj3Uu2Qb4ko8nk3PTXPSW/falJDJRPq/Cl
         3ud4CiLp3RUSsy9QVbIkVoFL5gMf6QdBrna+VPjN+RpVQnivOz/0mAw4PnlbRy04IAVV
         5YmA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693250834; x=1693855634;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=LCx6rX9XwkuTbZO5oGRhSEBk5e7OaZJRubi6F2ucuO0=;
        b=K8cIyeUrYX2sLuVN2LrbWOWKBc7ys6JlZJqkiDwPmdqLtPBcn65ErZKEUP8ZyiLuiY
         zitP31NdiBq1f/csjcLOXtwzY821X2PRBLwLTlr8Iy7CZGRaTS0TiCVcNI5mZwaObbvR
         RxHL1XFpLBhme3LNqWLsJbAZNadAdXiA7NWVj1hYi77X38uA5dHTqEVIfOgv7H+DAn5F
         Bf9Hi0aKV8cBGlfIWgVIX396wkjgx6z4OGB7jJKeWA0W426ETueF6hGYKsFRxHF2ZDHk
         mEaKqLENUbCT9xitJtIKZeI39rXy/4M/DrzWO8PTTzt/q3bXW283ZOXCaJyZZGH67/wn
         kFUw==
X-Gm-Message-State: AOJu0YxMWMqLXdbG1ey+gEB6uG29N4+goyvM4h+yK3z6qchGMC6F4yDj
        cPIzyoFnXJpjB4TVEW26CtT+hg==
X-Google-Smtp-Source: AGHT+IGonPCG2HR4mwHMevXIU/ybI7JuPnQYVr3ZJNLHR2Fi7PQuFZCK98LCZMFUwA5tvpeKIA0xJA==
X-Received: by 2002:adf:ef91:0:b0:318:f7a:e3c8 with SMTP id d17-20020adfef91000000b003180f7ae3c8mr20535179wro.57.1693250834586;
        Mon, 28 Aug 2023 12:27:14 -0700 (PDT)
Received: from brgl-uxlite.home ([2a01:cb1d:334:ac00:8bd:7f16:d368:115f])
        by smtp.gmail.com with ESMTPSA id i20-20020a5d5234000000b003141f96ed36sm11435319wra.0.2023.08.28.12.27.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 28 Aug 2023 12:27:14 -0700 (PDT)
From:   Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>, Arnd Bergmann <arnd@arndb.de>,
        Alex Elder <elder@linaro.org>,
        Srini Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     kernel@quicinc.com, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
Subject: [PATCH 10/11] arm64: dts: qcom: sa8775p: enable SHM bridge
Date:   Mon, 28 Aug 2023 21:25:06 +0200
Message-Id: <20230828192507.117334-11-bartosz.golaszewski@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
References: <20230828192507.117334-1-bartosz.golaszewski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable SHM bridge on sa8775p platforms.

Signed-off-by: Bartosz Golaszewski <bartosz.golaszewski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sa8775p.dtsi | 4 ++++
 1 file changed, 4 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/sa8775p.dtsi b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
index b130136acffe..d8614d15750e 100644
--- a/arch/arm64/boot/dts/qcom/sa8775p.dtsi
+++ b/arch/arm64/boot/dts/qcom/sa8775p.dtsi
@@ -209,6 +209,10 @@ firmware {
 		scm {
 			compatible = "qcom,scm-sa8775p", "qcom,scm";
 		};
+
+		shm-bridge {
+			compatible = "qcom,shm-bridge-sa8775p", "qcom,shm-bridge";
+		};
 	};
 
 	aggre1_noc: interconnect-aggre1-noc {
-- 
2.39.2

