Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0988706991
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 15:20:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231425AbjEQNUC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 09:20:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231915AbjEQNTw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 09:19:52 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6219EE50
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 06:19:51 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id 38308e7fff4ca-2ac7de2b72fso7440081fa.1
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 06:19:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1684329589; x=1686921589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=dlk2ujN0SDgm42MpW/v7qgYGYP2kKFvH8Q9KOMt3D9c=;
        b=vACDgX4pkQQYkCTmtedrd4LJKbS9jitsjWjGIbE4U/fxeV+dkmyK1Vd0I6nCGqF+kt
         4ssq2KctE79tjxYF+Xx8P/Gwnuj+p4Uqp5fx4yhirhbXgQbOtiAf2ev2em/larVhgcVY
         SJi2jSz1VQ+BCF4QfYOzAToKwwW6hQflKe8xh8ptM343Fynr0Y/m2gkYTB5ppEOO/g01
         KffW0RKnJobnRL0JFi0rWTpqWu1pbvJrQvTWcETI0fu9DxiyO7KGYDXgeDgIDPZ0Kk/H
         7mGcNIAl3hh6EjKSlz8c50xGVfljWfpHmxOkjnSONgZEUqcH2CEleDk5y2S6Kn+LlbRP
         ED9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1684329589; x=1686921589;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=dlk2ujN0SDgm42MpW/v7qgYGYP2kKFvH8Q9KOMt3D9c=;
        b=I4p7gNqbJS2nr3L6JApE1n1sbQxDJOHGhn3UAn2hCB018XMYBr5H8OPtQKjNhPiSda
         uWTw+BWuGZ7kfJj4fb8jU9qQNKpDi+ttgU7Yv27gH3DzFCvUckGnF+VI+8lefjiKpAk/
         vA7nRAGbZrOY95Pa6HLYTe6iDHStosdVcvv6zr8+E076qVqV5OQdIX8pch89nQz30x35
         G5K0XvpOpBjLS4LmMgpZ4lQLW+smjH/64kdcIGQNvtEcuHhM4slZMy9e9UVO6PKGGjSl
         PMvihTA9v1ab9nxGXfIU08ciiQpmDy/5lHoYEa6P/0ZBsUB2TBm1bPldEQQnBdZGU4vi
         brQQ==
X-Gm-Message-State: AC+VfDzTL1uhMACkyoKsxQ9Aa3qcVP4QmzARBjT4l3gTK3tJVWcs7Msg
        4ta3Y4dTtgvZeu44B3AZOgfJjw==
X-Google-Smtp-Source: ACHHUZ64M6msuRuV2OiG9TH1a6Z3aFkpHM6Tds9SdeDsgTT+XWdhqymiL2CEDYGdJMQAmSSLa60SZg==
X-Received: by 2002:a2e:9b94:0:b0:2a8:d1cd:a04 with SMTP id z20-20020a2e9b94000000b002a8d1cd0a04mr9022797lji.48.1684329589655;
        Wed, 17 May 2023 06:19:49 -0700 (PDT)
Received: from [10.167.154.1] ([2a00:f41:c93:874f:be7b:fb6c:26f9:307c])
        by smtp.gmail.com with ESMTPSA id f7-20020a2e9187000000b002adadef95c0sm3007457ljg.124.2023.05.17.06.19.48
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 17 May 2023 06:19:49 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Wed, 17 May 2023 15:19:43 +0200
Subject: [PATCH 1/3] dt-bindings: power: qcom,rpmpd: add missing RPMH
 levels
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230517-topic-kailua-rpmhpd-v1-1-cd3013d051a6@linaro.org>
References: <20230517-topic-kailua-rpmhpd-v1-0-cd3013d051a6@linaro.org>
In-Reply-To: <20230517-topic-kailua-rpmhpd-v1-0-cd3013d051a6@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org,
        Konrad Dybcio <konrad.dybcio@linaro.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1684329587; l=1689;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=kFgBqoO9FoxHifw4SFG3wgrwh7M5Xry4p0AvNsa71tk=;
 b=V6skGjA9g450fo34GT5KJ3u/qpI5Ec6FOYRT5PODxRuUrtaQ5MiMKT8zoAqjNGewwEwosPEXV
 Gvcete9DeDbDbyq1Eb5tMyTnfxE0Ap0cdWitiwnMVUpByC3+S4Ru/3S
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

There are a lot of RPMh levels that we haven't included yet.. some
sadly turned out to be necessary, add them!

Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 include/dt-bindings/power/qcom-rpmpd.h | 10 ++++++++++
 1 file changed, 10 insertions(+)

diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
index 1bf8e87ecd7e..e34c01e650d6 100644
--- a/include/dt-bindings/power/qcom-rpmpd.h
+++ b/include/dt-bindings/power/qcom-rpmpd.h
@@ -209,18 +209,28 @@
 /* SDM845 Power Domain performance levels */
 #define RPMH_REGULATOR_LEVEL_RETENTION	16
 #define RPMH_REGULATOR_LEVEL_MIN_SVS	48
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_D2	52
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_D1	56
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_D0	60
 #define RPMH_REGULATOR_LEVEL_LOW_SVS	64
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_P1	72
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_L1	80
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_L2	96
 #define RPMH_REGULATOR_LEVEL_SVS	128
 #define RPMH_REGULATOR_LEVEL_SVS_L0	144
 #define RPMH_REGULATOR_LEVEL_SVS_L1	192
 #define RPMH_REGULATOR_LEVEL_SVS_L2	224
 #define RPMH_REGULATOR_LEVEL_NOM	256
+#define RPMH_REGULATOR_LEVEL_NOM_L0	288
 #define RPMH_REGULATOR_LEVEL_NOM_L1	320
 #define RPMH_REGULATOR_LEVEL_NOM_L2	336
 #define RPMH_REGULATOR_LEVEL_TURBO	384
+#define RPMH_REGULATOR_LEVEL_TURBO_L0	400
 #define RPMH_REGULATOR_LEVEL_TURBO_L1	416
+#define RPMH_REGULATOR_LEVEL_TURBO_L2	432
+#define RPMH_REGULATOR_LEVEL_TURBO_L3	448
+#define RPMH_REGULATOR_LEVEL_SUPER_TURBO 464
+#define RPMH_REGULATOR_LEVEL_SUPER_TURBO_NO_CPR	480
 
 /* MDM9607 Power Domains */
 #define MDM9607_VDDCX		0

-- 
2.40.1

