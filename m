Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DA5369A9C9
	for <lists+devicetree@lfdr.de>; Fri, 17 Feb 2023 12:09:22 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229976AbjBQLJT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Feb 2023 06:09:19 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44876 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229882AbjBQLI4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Feb 2023 06:08:56 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10D25658D
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:08:29 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id z18so1393777lfd.0
        for <devicetree@vger.kernel.org>; Fri, 17 Feb 2023 03:08:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=ewR/4MOaiU/gINYjhrHIOMUBrRkWJaPJ1oY+QNSiKsM=;
        b=S21p2k5B7+ccuNrH49EVUY2chKPzOt6KOrQTxeG1nClJN2/0d9Lj14K69gFVKHinV7
         4c85JGX28yJeJXGGYcbYgOHXKt4pF6HrpmCXCCtjJ+MxeKpnhmtO4HVZk3iWiDd3QJI6
         lRWyza0rFgEjtCVT4ryn2GpKa50/7xmcjOxvYQNRFY5y3X3X9Bdl/yie51J0CQZ9F1ge
         PsKTe65Znn39FWpN/Tajp5qeeb9BKU+P6tl8f7oYWyLfZuAzgjUwt5t+6xlEvzOGKohq
         QeA7TDLgKqZGHCRwnbTgJv/E20G0X8QiYoDp8ChYw4W0IB0lGURhNqWIfnO6LZKk+PkA
         pe1Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=ewR/4MOaiU/gINYjhrHIOMUBrRkWJaPJ1oY+QNSiKsM=;
        b=A1v9xzDIDWOFURvIcxFFbS/1AZ1uzPO5oHvLcSF0I8IOKipnIku3Uo5V73DRfHB9df
         3MZczkH443/hp8TuO3hACGW5LadhVBRws/rafq/QNGH9q3P9YT00wd6kHjGewA6O2u9l
         OFGQ2vexVp40ph2bYH9DEEXx0vEoj3DQ9J8PjO7M3sGYgBHqvqmDXWn+BK5FKZEYnBeL
         mVz3JCm4R+t//nw/u6HQaBM5VFQy8P2JjEIZ72U2gE7sk/2CrvU4j4SKKTB3FEHR3rVe
         gTQyon8/bQxk9V6RKEyIxFmK/FMr3hypu2O+pg++0njoT95OulrJg2zzDbQc5meRv26M
         S8Mg==
X-Gm-Message-State: AO0yUKVTqR8Z1J6UZxGoh5chkODaXRVw6h2ItsUBNAD9InQHdbIc/ajj
        N4lZ9/yv/qn1VJNceKEtGBKOzA==
X-Google-Smtp-Source: AK7set+tbj3V9zMl/QBoojJKTbQHkMgFQ1ehkWHZjbZ4vBazZpNTDQNpZSqk+7DE1gaP3qvW/8QZIQ==
X-Received: by 2002:a19:f505:0:b0:4d5:9682:6ec6 with SMTP id j5-20020a19f505000000b004d596826ec6mr3390390lfb.18.1676632107320;
        Fri, 17 Feb 2023 03:08:27 -0800 (PST)
Received: from [192.168.1.101] (abxh117.neoplus.adsl.tpnet.pl. [83.9.1.117])
        by smtp.gmail.com with ESMTPSA id a12-20020a056512020c00b004b57162edfasm640162lfo.117.2023.02.17.03.08.26
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Feb 2023 03:08:27 -0800 (PST)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Fri, 17 Feb 2023 12:08:24 +0100
Subject: [PATCH v10 1/6] MAINTAINERS: Add entry for Qualcomm
 CPRv3/v4/Hardened driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230217-topic-cpr3h-v10-1-67aed8fdfa61@linaro.org>
References: <20230217-topic-cpr3h-v10-0-67aed8fdfa61@linaro.org>
In-Reply-To: <20230217-topic-cpr3h-v10-0-67aed8fdfa61@linaro.org>
To:     AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@collabora.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Viresh Kumar <vireshk@kernel.org>, Nishanth Menon <nm@ti.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Niklas Cassel <nks@flawful.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Cc:     Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org, Konrad Dybcio <konrad.dybcio@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
X-Mailer: b4 0.12.1
X-Developer-Signature: v=1; a=ed25519-sha256; t=1676632104; l=932;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=hptcp7dy1Sql4Uyt2uSdMeDXtFfyCQiQgPMybKBOj9o=;
 b=VpPxFVfL31OkKA613+uvqzds3QqewiPbWDKdnpR6gN5BMpxCjp7H1np2ABHaCFpzUlXvVoYUykgH
 LyH0TTnhDrUVuIt1vw3PsUv4D+2FUGiyUmUfoSuxR+UXKQlZK9YE
X-Developer-Key: i=konrad.dybcio@linaro.org; a=ed25519;
 pk=iclgkYvtl2w05SSXO5EjjSYlhFKsJ+5OSZBjOkQuEms=
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

Add maintainers entry for the Qualcomm CPR3/CPR4/CPRh driver.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
[Konrad: rebase, update AGdR's email]
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4a56002bcbcd..c31dd8da2a4a 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17259,6 +17259,12 @@ S:	Maintained
 F:	Documentation/devicetree/bindings/power/avs/qcom,cpr.yaml
 F:	drivers/soc/qcom/cpr.c
 
+QUALCOMM CORE POWER REDUCTION v3/v4/Hardened AVS DRIVER
+M:	AngeloGioacchino Del Regno <angelogioacchino.delregno@collabora.com>
+S:	Maintained
+F:	Documentation/devicetree/bindings/soc/qcom/qcom,cpr3.yaml
+F:	drivers/soc/qcom/cpr3.c
+
 QUALCOMM CPUFREQ DRIVER MSM8996/APQ8096
 M:	Ilia Lin <ilia.lin@kernel.org>
 L:	linux-pm@vger.kernel.org

-- 
2.39.1

