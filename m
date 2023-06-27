Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D0E33740343
	for <lists+devicetree@lfdr.de>; Tue, 27 Jun 2023 20:30:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231210AbjF0Sax (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 27 Jun 2023 14:30:53 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55476 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231175AbjF0Saw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 27 Jun 2023 14:30:52 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D496510F5
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 11:30:50 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id 2adb3069b0e04-4f957a45b10so6619907e87.0
        for <devicetree@vger.kernel.org>; Tue, 27 Jun 2023 11:30:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687890649; x=1690482649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=nPo5IxcZGqbsYAtBW/avfH07eeJrRORrjdw+dNFtBTI=;
        b=ExYIVUG+q5VdhUXyRy1i+VhXdt9vz0GajzZA6Q71Xz/0N19EUhB7s7ofT69B23ei0D
         SZgV6t9ucvCfmAKobfDthxbSJx0d7tr4vf7tngd01Vv0KtFmPLCb5sJp/EIYZ7jaOSJs
         jPFYzvInYJUtk+3OSURyVBw/m/d8Raz1wiOkWQ7yMWzPiQ4qSmZ+aosxeXGHWJz3yqJZ
         k5k2hMUC8MZ8u4hqnIvArQ4fx6GGUuCWn2K6Om8cAH9vOKZmeb197InGkjypSwqMaSti
         J0PhtQvd5r3zG5faegrwQT179p00sdM3esmFP9ybQAhJOuuTaMyg4YRcBZLcUuwv/rsO
         l5cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687890649; x=1690482649;
        h=cc:to:in-reply-to:references:message-id:content-transfer-encoding
         :mime-version:subject:date:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=nPo5IxcZGqbsYAtBW/avfH07eeJrRORrjdw+dNFtBTI=;
        b=TIXXc0Znt8c5+/ZeuzWUV6V7u4sQyTqnJNaDKOnmlqVCOENTpSE8Dx24VtbpNHLXLo
         JqtWIQtuJTOxWKK5Nj0BaZA3w8n6Zz7MG+R9mRn5unjVUt94lYTd7zV/5BGr8b9R5PFv
         NGScMUpKq1St+z3BjuqaCQrP95ny2o0kIZK/Y1+i6q97TN4kT9+YhwfalPgCbBpLrxFr
         d273JWLQMBlN2pO7upG88gJLfgiYTf7ZLS36HWBcZfOn9bP4Vyjyjvq+ADJ2yc0Tc86J
         7Cvkv+mvQMzQlbZPubbx/zcd/1Wzan6Z7qUSg9zSxHkaICcrk2EuinSGiVWaimamlyUk
         ZP4Q==
X-Gm-Message-State: AC+VfDxuJ1+8ArnmTMzUkwYLJWtCg2a62YO1LV2hwbqbokYAsjnQmwM8
        FlJ9rVRFSgp5BG8y+Y/0BZIe7Q==
X-Google-Smtp-Source: ACHHUZ64l5YQHgfO/E+MmmPd5eV+pmQ4VV/XeWBc0FppT+qvJhogx0HEkV5kDVZ6zUhnhpzxLYMo5Q==
X-Received: by 2002:a05:6512:3f1d:b0:4fa:ce08:a9d0 with SMTP id y29-20020a0565123f1d00b004face08a9d0mr5690755lfa.57.1687890649079;
        Tue, 27 Jun 2023 11:30:49 -0700 (PDT)
Received: from [192.168.1.101] (abxj103.neoplus.adsl.tpnet.pl. [83.9.3.103])
        by smtp.gmail.com with ESMTPSA id q16-20020ac25290000000b004f640b0fb04sm1605205lfm.212.2023.06.27.11.30.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 27 Jun 2023 11:30:48 -0700 (PDT)
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
Date:   Tue, 27 Jun 2023 20:30:37 +0200
Subject: [PATCH v11 1/9] MAINTAINERS: Add entry for Qualcomm
 CPRv3/v4/Hardened driver
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Message-Id: <20230217-topic-cpr3h-v11-1-ba22b4daa5d6@linaro.org>
References: <20230217-topic-cpr3h-v11-0-ba22b4daa5d6@linaro.org>
In-Reply-To: <20230217-topic-cpr3h-v11-0-ba22b4daa5d6@linaro.org>
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
        Mark Brown <broonie@kernel.org>,
        Conor Dooley <conor+dt@kernel.org>
Cc:     Robert Marko <robimarko@gmail.com>, linux-kernel@vger.kernel.org,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org,
        Marijn Suijten <marijn.suijten@somainline.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>
X-Mailer: b4 0.12.2
X-Developer-Signature: v=1; a=ed25519-sha256; t=1687890646; l=932;
 i=konrad.dybcio@linaro.org; s=20230215; h=from:subject:message-id;
 bh=dr0pvAH0vsRUz7z04jyiD7L2OFZkKiQQ83XjJTz9onM=;
 b=ACykz2g1yY7wZ66JQcK8YbBAagTMfnRnowDNRvfiEOvutkQ1Bl0zdivNf5oM5936bXgHgP77r
 hhO1mGmQxgdCLV/wQ922Ten5EwCSIhI19Ff6l1EXtLqHBKP29yArUxW
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

From: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>

Add maintainers entry for the Qualcomm CPR3/CPR4/CPRh driver.

Signed-off-by: AngeloGioacchino Del Regno <angelogioacchino.delregno@somainline.org>
[Konrad: rebase, update AGdR's email]
Signed-off-by: Konrad Dybcio <konrad.dybcio@linaro.org>
---
 MAINTAINERS | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/MAINTAINERS b/MAINTAINERS
index 4545d4287305..f4218f7a7c33 100644
--- a/MAINTAINERS
+++ b/MAINTAINERS
@@ -17581,6 +17581,12 @@ S:	Maintained
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
2.41.0

