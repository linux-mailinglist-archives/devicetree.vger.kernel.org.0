Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2F57A64F619
	for <lists+devicetree@lfdr.de>; Sat, 17 Dec 2022 01:24:07 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231305AbiLQAYE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Dec 2022 19:24:04 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56750 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230153AbiLQAXK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Dec 2022 19:23:10 -0500
Received: from mail-lf1-x135.google.com (mail-lf1-x135.google.com [IPv6:2a00:1450:4864:20::135])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6750F7E288
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 16:17:37 -0800 (PST)
Received: by mail-lf1-x135.google.com with SMTP id m29so5659207lfo.11
        for <devicetree@vger.kernel.org>; Fri, 16 Dec 2022 16:17:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=Z8N5ydZapE9yeBlNhMZ07JwORTldxH5hrTYllEJ/OYg=;
        b=gsZ6e4ArpWVKRfXvUFCMFQaok7KPdHcbGL1SokLjFt2lfX8ObjodGKOllyyEk2wi1F
         Oe/BF0kYzh+jf36azDhiyscU56m/Vzlu1gZt5zWrF8/YipGZo69lgZahFKWOMBHmvYYJ
         jx91DRE041+fQdZb+qXNIHeHzhDPq1PqbZK1roH0KyuJWzbOw3Ac/Agj6DrCek930thV
         SgAvjrK9ZjJGkLZ7TSvyzbhb6iXe93UjRxbWJJTk4+TytLyU6r98WO/b0WV900XVqAbw
         F0HwdmUwMZA1XujLU5RIs/Z1HV+FjulU3VacvAhPhH6ok4t3TCm02mpyZLSb1zHNLUsX
         jNwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=Z8N5ydZapE9yeBlNhMZ07JwORTldxH5hrTYllEJ/OYg=;
        b=NvYrM6Nu9Dvq/+aQXxsCjIRRUf/xGwp0ms7AGdWJWBDz/M2WgN290dsGeUTLGP9H/C
         /ExH0i74D+rwzY0SPsHkHFNoAc+bqr/0hHD8OkWGmOsZreYZxwUUHqFqC7LF19sh+i9E
         k0K3YoZ1eWYDMuyQaQTdFaxVfzKdYgNRnV/asZ8kkfxwr7ELQ6LEw026dcR/6rZK6Gn2
         M4fpOKohpjE6C7+Vpro8pJjdsxbmrzEN2q6UZGl6yshXam5FpHOY8goF419HHSFTiEgz
         HqhV6XAxdd+4MQUcLx+HlFiax+4jaIcIZUjfjGZAZ976LDozCtFwowNiOD4+WjBMiYj7
         y5zQ==
X-Gm-Message-State: ANoB5pmTnbPnMoRrih2XqV4hQ8o5xXST9xQ8miKlEz2nC76Zq2oZsPAO
        cfVd+aQH9xYNdqdB0nR201r1gg==
X-Google-Smtp-Source: AA0mqf5mg7VY7/KBkYk1y6GR4jSGPJNJQOvxLSEk/ZTtVtm0d4bfZaOx+unI/KndIl9kL0th0ZEI7Q==
X-Received: by 2002:ac2:5f49:0:b0:4b6:e121:4617 with SMTP id 9-20020ac25f49000000b004b6e1214617mr7340690lfz.68.1671236256942;
        Fri, 16 Dec 2022 16:17:36 -0800 (PST)
Received: from eriador.lan (dzccz6yyyyyyyyyyybcwt-3.rev.dnainternet.fi. [2001:14ba:a085:4d00::8a5])
        by smtp.gmail.com with ESMTPSA id c19-20020a056512325300b004b5adb59ed5sm341228lfr.297.2022.12.16.16.17.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Dec 2022 16:17:36 -0800 (PST)
From:   Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Taniya Das <quic_tdas@quicinc.com>
Cc:     linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org
Subject: [PATCH 07/15] clk: qcom: gcc-qcs404: fix the name of the HDMI PLL clock
Date:   Sat, 17 Dec 2022 02:17:22 +0200
Message-Id: <20221217001730.540502-8-dmitry.baryshkov@linaro.org>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221217001730.540502-1-dmitry.baryshkov@linaro.org>
References: <20221217001730.540502-1-dmitry.baryshkov@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

The QCS404 uses 28nm HDMI PHY. The in-kernel driver doesn't provide the
PLL (yet), but the out of tree patches used the name "hdmi_pll" for it.
Other Qualcomm HDMI PHYs use either the name "hdmi_pll" (8960) or
"hdmipll" (8996). Thus change the expected HDMI PLL clock name to
"hdmi_pll".

Signed-off-by: Dmitry Baryshkov <dmitry.baryshkov@linaro.org>
---
 drivers/clk/qcom/gcc-qcs404.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/clk/qcom/gcc-qcs404.c b/drivers/clk/qcom/gcc-qcs404.c
index 23562096298d..5636c6524d0f 100644
--- a/drivers/clk/qcom/gcc-qcs404.c
+++ b/drivers/clk/qcom/gcc-qcs404.c
@@ -160,7 +160,7 @@ static const struct parent_map gcc_parent_map_8[] = {
 
 static const char * const gcc_parent_names_8[] = {
 	"cxo",
-	"hdmi_phy_pll_clk",
+	"hdmi_pll",
 	"core_bi_pll_test_se",
 };
 
-- 
2.35.1

