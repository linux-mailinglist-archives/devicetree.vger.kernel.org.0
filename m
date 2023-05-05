Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 768CD6F829C
	for <lists+devicetree@lfdr.de>; Fri,  5 May 2023 14:08:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232117AbjEEMI3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 May 2023 08:08:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60170 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232097AbjEEMI1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 May 2023 08:08:27 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 38C8F1A62F
        for <devicetree@vger.kernel.org>; Fri,  5 May 2023 05:08:26 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-965e93f915aso79489266b.2
        for <devicetree@vger.kernel.org>; Fri, 05 May 2023 05:08:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683288504; x=1685880504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=9udWwCFHsOC3DQ0vpx+JwdWShmWZlF9axAT8Fq+ggvI=;
        b=M3sYAbxkO2ZrPFvP7Fyta2MFvPqkZdZ5qyEY0sP7GCkeACFFj6+0SjzgkJf2vc+1nZ
         VEP33tctD67iwCmA0EMgxNufOGVT9Fr+UHcTKxej/L69CIsG7oSqUDAAJvPpbGmeavoO
         Sdi9R9ITDU7Gkm2Oeh0YW7wCzB7WROjcrVSAGDPF2W+cSpRIV0ulTL+R+Q+HSkFdF47A
         Zc1UvgnoQ2Sy1VdBS1S7JzsVFceod3ntKJssNnS+MAnkFtHbDf78Bm6ZZlgGzJIq0vhd
         J4U/Ld0b8qeXY7EBaS1s2C9NArDdQzAdcT9LDxSZi+Vf/6PCe6vXtRgkVxzFfc2XlkU5
         Q31g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683288504; x=1685880504;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=9udWwCFHsOC3DQ0vpx+JwdWShmWZlF9axAT8Fq+ggvI=;
        b=XDZqYSNdStqE8wlCKGYrU81BZIumJ76YbfvJNSKiwA2EUFT3vaTtMy4bn0BquYUxUY
         WgDdzxTkMes4gb5Ux8Sp9yL2Ixn0Gsr7cytzs1+5Kea+b6vpg93CGa6SW5+ROjNchw/K
         lQfTa5XueRBf0ExL3YeLn7Xuyq79OSVKeeLnXK/nHeIOvekA+ELjI/mseLDpKCdcrZLS
         0953InIAMo/Pun6muUKcHzPTMW4kmtkp5BE1iht+YS9/MDRzwZc+nHX3bBIZJo6V+rX8
         B9foVjjFpiij/XpVneojtqP7ML0z7GDBD8l1AMu0x+sLqH4Ehj/xmPCPF0sEXnupPJnx
         HfrQ==
X-Gm-Message-State: AC+VfDwjkHM40yii8YV3x7hZVOY9RGam0t/cKbbwG7dMmC/WqZusWxih
        woVzZ11dxlnOPXHVmK3+L3x42Q==
X-Google-Smtp-Source: ACHHUZ6lEg5ak9H5lfBUWgF/kU39/1f2DWqB+bBn0yMP8bVAItcRlTjoJjSycn9gbPnz11VmCYthTA==
X-Received: by 2002:a17:906:d550:b0:94e:ffab:296a with SMTP id cr16-20020a170906d55000b0094effab296amr1165378ejc.73.1683288504721;
        Fri, 05 May 2023 05:08:24 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:52e:24ce:bbc1:127d])
        by smtp.gmail.com with ESMTPSA id ze16-20020a170906ef9000b00965ec1faf27sm457551ejb.74.2023.05.05.05.08.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 May 2023 05:08:24 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Masami Hiramatsu <mhiramat@kernel.org>,
        Vincent Shih <vincent.sunplus@gmail.com>,
        Anson Huang <Anson.Huang@nxp.com>,
        Kumar Thella <sthella@codeaurora.org>,
        Keiji Hayashibara <hayashibara.keiji@socionext.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-arm-msm@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 5/5] dt-bindings: nvmem: sunplus,sp7021-ocotp: drop unneeded address/size-cells
Date:   Fri,  5 May 2023 14:08:14 +0200
Message-Id: <20230505120814.1057152-5-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230505120814.1057152-1-krzysztof.kozlowski@linaro.org>
References: <20230505120814.1057152-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Referenced nvmem.yaml schema already defines address/size-cells, so
remove redundant entries.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 .../devicetree/bindings/nvmem/sunplus,sp7021-ocotp.yaml     | 6 ------
 1 file changed, 6 deletions(-)

diff --git a/Documentation/devicetree/bindings/nvmem/sunplus,sp7021-ocotp.yaml b/Documentation/devicetree/bindings/nvmem/sunplus,sp7021-ocotp.yaml
index 8877c2283e9e..da3f1de7d281 100644
--- a/Documentation/devicetree/bindings/nvmem/sunplus,sp7021-ocotp.yaml
+++ b/Documentation/devicetree/bindings/nvmem/sunplus,sp7021-ocotp.yaml
@@ -28,12 +28,6 @@ properties:
   clocks:
     maxItems: 1
 
-  "#address-cells":
-    const: 1
-
-  "#size-cells":
-    const: 1
-
   thermal-calibration:
     type: object
     description: thermal calibration values
-- 
2.34.1

