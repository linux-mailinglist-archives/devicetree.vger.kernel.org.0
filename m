Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5EF8D68B344
	for <lists+devicetree@lfdr.de>; Mon,  6 Feb 2023 01:27:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229649AbjBFA1n (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 5 Feb 2023 19:27:43 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229478AbjBFA1n (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 5 Feb 2023 19:27:43 -0500
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A246318141
        for <devicetree@vger.kernel.org>; Sun,  5 Feb 2023 16:27:41 -0800 (PST)
Received: by mail-ej1-x62b.google.com with SMTP id hr39so268553ejc.7
        for <devicetree@vger.kernel.org>; Sun, 05 Feb 2023 16:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mxwl3YRJUzbo8fSMHrnnIcR0IoUl4vPzxhW6soDvfYM=;
        b=vX0pEk42BMOXZi1U7yMuHVsLP+TCD98KGj5FruNDMvJ48wK3QrQUC64gXIVk+NGyXp
         y92MbV8aoAKSP34WF9fXsGQZC/PciS0SCvuzjRRu58243vCXSCgw7Q1xm9jOryzEsSDM
         lvResgl0shZGh0zV2roQ0sl7HEzLPF6xa8mZ3Q7AfAusmP2IYhuneHIapSg3L+It29MM
         xGZMNnajHydvwRCuHMHidC52TwmZhSUtfaXOJ2W85xhP0RB6BB7AmBoQGqj6z70G7NiJ
         1UYZRJc2QfEQasEDs6CO+/DPfnq2gPUsZAsGr3lv7JefuzvkmQ1hn3d8CXy+L7ZReAdU
         mJHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mxwl3YRJUzbo8fSMHrnnIcR0IoUl4vPzxhW6soDvfYM=;
        b=yEP8s4JiUh9ZBT055hOE3Uv9JLM0Gud/XMNAINL5h6aptbZyo7y1ClLFnGDHBA+3Km
         +1vYe6DAFuUqB24Ky3x/rjhrzFQ5GIadP3PAemTfnYzV0LcipKPl79iCThjpII7ExdK+
         Eey8aakHUrFAlBrq9ralAZTKXvSBg6zlIWDJQ5HvL5hnbQHjQH+2JoG13d4/lh9qV+IJ
         7fiUfK5NtquZ2go/QeChvyRiXH0cbAgEQ6XLg7XFct4Lj7vYuml86liiiWbK78aIKtKI
         tPj4Ov6wbExZC9pVuf8I/Pz3ZS06AsjAqAZcO09PcPQhm7m/+PxA1iqZWEER38Lt5d2g
         pVCA==
X-Gm-Message-State: AO0yUKUVmfzGrQzEV0aO7V1yVyEcvHZedON3TpQ9jf/wltplnyed2PvH
        uI/LTKS6cR32Ihp5ZBTXGRubDA==
X-Google-Smtp-Source: AK7set99WYqIIHfjzNDlsnhre+kGIR2HyyMw/wlJRUBCyrDN084HeJKaHXsYzc8vBFdBjAqjToKFWA==
X-Received: by 2002:a17:907:9917:b0:88d:6de1:96bf with SMTP id ka23-20020a170907991700b0088d6de196bfmr20179478ejc.12.1675643260082;
        Sun, 05 Feb 2023 16:27:40 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id y18-20020a1709063a9200b00878b89075adsm4716085ejd.51.2023.02.05.16.27.39
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 05 Feb 2023 16:27:39 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>,
        Rob Clark <robdclark@gmail.com>,
        Abhinav Kumar <quic_abhinavk@quicinc.com>,
        Sean Paul <sean@poorly.run>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, freedreno@lists.freedesktop.org,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        dri-devel@lists.freedesktop.org
Subject: [PATCH 2/8] arm64: dts: qcom: sm8350: add RPMH_REGULATOR_LEVEL_LOW_SVS_L1
Date:   Mon,  6 Feb 2023 02:27:28 +0200
Message-Id: <20230206002735.2736935-3-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.39.1
In-Reply-To: <20230206002735.2736935-1-dmitry.baryshkov@linaro.org>
References: <20230206002735.2736935-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Add another power saving state used on SM8350.

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 include/dt-bindings/power/qcom-rpmpd.h | 1 +
 1 file changed, 1 insertion(+)

diff --git a/include/dt-bindings/power/qcom-rpmpd.h b/include/dt-bindings/power/qcom-rpmpd.h
index 4a30d10e6b7d..1bf8e87ecd7e 100644
--- a/include/dt-bindings/power/qcom-rpmpd.h
+++ b/include/dt-bindings/power/qcom-rpmpd.h
@@ -211,6 +211,7 @@
 #define RPMH_REGULATOR_LEVEL_MIN_SVS	48
 #define RPMH_REGULATOR_LEVEL_LOW_SVS_D1	56
 #define RPMH_REGULATOR_LEVEL_LOW_SVS	64
+#define RPMH_REGULATOR_LEVEL_LOW_SVS_L1	80
 #define RPMH_REGULATOR_LEVEL_SVS	128
 #define RPMH_REGULATOR_LEVEL_SVS_L0	144
 #define RPMH_REGULATOR_LEVEL_SVS_L1	192
-- 
2.39.1

