Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 69E1A74C0DF
	for <lists+devicetree@lfdr.de>; Sun,  9 Jul 2023 06:19:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229958AbjGIETh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 9 Jul 2023 00:19:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40554 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229973AbjGIETe (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 9 Jul 2023 00:19:34 -0400
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24824E45
        for <devicetree@vger.kernel.org>; Sat,  8 Jul 2023 21:19:33 -0700 (PDT)
Received: by mail-lf1-x135.google.com with SMTP id 2adb3069b0e04-4f766777605so5065257e87.1
        for <devicetree@vger.kernel.org>; Sat, 08 Jul 2023 21:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1688876371; x=1691468371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=yGG+JMcZKC2KBKr2b78IW5ceoyyRwJ46V91LM7VfQHU=;
        b=wvisemIqP7za0ZyJCs2ZmSXvrug0NlXlxvgg89MYzXFbpxzq84+Z4xC6vRhqw1kyl6
         yWfKDkpY0I+dM3cptMuA9ET7hFN1rp2f2vQf+zIioTNQDLO4KDq0glBRt1KsUPGOf531
         enUS4t+HYwUfPYHFkM10ZWInuGr/mTQyulm9mKizKwI5wAmHF2TuAVKJRL3QStnxCwBw
         qdYHHK8B6/3mK9EphPVTiaY4abPNuhHacyNhddUGjzOMLcj2JKuGjM14RQ46RVwO6j3y
         reovfGbvM3rmjjlB4pVFCTAubVRpVbiJiVHz5o+bpkFylhADfb7AcLkzQPK9NFs/hy9V
         nRSg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688876371; x=1691468371;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=yGG+JMcZKC2KBKr2b78IW5ceoyyRwJ46V91LM7VfQHU=;
        b=h8lrxVninAVJ0FpVYNuKNVuJLX6+b4QPuOsVh5w52KVeVjHiZDwfC2lIz20VvM5bsU
         P2IqCOOq9tmnsdWIfJv6x7SjiOApOziW6eMRdG0vFjH9RfA+t7SXg4PmFKsQJNvhGV7y
         BShf+C4EIbZOfIvTdSR2+8g+u3o13/l7owciE7mt+MZeIofaxaPU9C/smfYS5ohD5Wfm
         j0pnLyuQj+XHMAsvcYB4pUUQquyWC07qdf6r4suL1Kfgsm3YD7XrSobdDEtYCJ/pjFzQ
         heZ3YGyF9VrO7zgb4hpoF/JcSyhYuvtc7QCZgXwIvsX9bcKckZP5fj4y3L/zpBUK2uDT
         /QKA==
X-Gm-Message-State: ABy/qLYBZIk4oWdQKUoYIxv+zCLBwMNmr01w6ruwOJHis66dQac3Mw8q
        YrMbm50bXULxVCV0wSHrgaCThw==
X-Google-Smtp-Source: APBJJlE6wrvTHb8QSckdbTF1Klp2Gds2woQb5/MRMIXTBG9WuFTpav+rYAy9iN3mheZax4mltaueSw==
X-Received: by 2002:a05:6512:39c3:b0:4fb:896d:bd70 with SMTP id k3-20020a05651239c300b004fb896dbd70mr8357141lfu.46.1688876371382;
        Sat, 08 Jul 2023 21:19:31 -0700 (PDT)
Received: from lothlorien.lan (dzdqv0yyyyyyyyyyybm5y-3.rev.dnainternet.fi. [2001:14ba:a0db:1f00::ab2])
        by smtp.gmail.com with ESMTPSA id r11-20020a19ac4b000000b004fb8603f6e0sm1205851lfc.12.2023.07.08.21.19.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 08 Jul 2023 21:19:30 -0700 (PDT)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Clark <robdclark@gmail.com>, Sean Paul <sean@poorly.run>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org, dri-devel@lists.freedesktop.org,
        freedreno@lists.freedesktop.org
Subject: [PATCH 5/5] arm64: dts: qcom: qrb5165-rb5: enable DP altmode
Date:   Sun,  9 Jul 2023 07:19:26 +0300
Message-Id: <20230709041926.4052245-6-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.2
In-Reply-To: <20230709041926.4052245-1-dmitry.baryshkov@linaro.org>
References: <20230709041926.4052245-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_BLOCKED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add displayport altmode declaration to the Type-C controller node to
enable DP altmode negotiation.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 arch/arm64/boot/dts/qcom/qrb5165-rb5.dts | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
index 210c60025c32..5f289bf640f1 100644
--- a/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
+++ b/arch/arm64/boot/dts/qcom/qrb5165-rb5.dts
@@ -1418,6 +1418,13 @@ PDO_FIXED_DUAL_ROLE |
 					 PDO_FIXED_USB_COMM |
 					 PDO_FIXED_DATA_SWAP)>;
 
+		altmodes {
+			displayport {
+				svid = <0xff01>;
+				vdo = <0x00001c46>;
+			};
+		};
+
 		ports {
 			#address-cells = <1>;
 			#size-cells = <0>;
-- 
2.39.2

