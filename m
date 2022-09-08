Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8BF895B1ABA
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 12:57:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229761AbiIHK51 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 06:57:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53612 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229574AbiIHK5Z (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 06:57:25 -0400
Received: from mail-wr1-x436.google.com (mail-wr1-x436.google.com [IPv6:2a00:1450:4864:20::436])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95B6836DFB
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 03:57:24 -0700 (PDT)
Received: by mail-wr1-x436.google.com with SMTP id n12so1479183wru.6
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 03:57:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:from:to:cc:subject:date;
        bh=0XntZr01rGA1POmKpXBwRBE55P0uI1oL4HsDs04iVeY=;
        b=TLiFohCTKGEc7RrPqVgj6ILUTPCYX60UI3pg/lAQSoyRrt4u11BcXs3JRFojNCYq+a
         OWe48Fa1g1fdYI7hof6ngXM2K5C71cHHdP459HBKMhBkonOCYxh7Xp40Sw35tjOH4eqh
         sBp87fnz8V0ZUhaILqBBR07yBThi7Jex+Js5z4Ib++jWhFTBhjpMWqAnf84QGD0Rjqrd
         uGr+GZmnfMlcY8LnUcaxLqKhQ8fgCxnKsqNv2yfNtLI94EqTbPjxrBmrC4QwDz3NpGtY
         oAADBUHxrIkllidXSG5FpLga+MFl4n3kW/dFXcWNToDVBgC6wjgDlueFAKy8VnzbZktW
         /WxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:x-gm-message-state:from:to:cc:subject:date;
        bh=0XntZr01rGA1POmKpXBwRBE55P0uI1oL4HsDs04iVeY=;
        b=S6C1brT0CqgUEl3BWYhMZDl788pp71utep2YlVTGseV4y29hqZUtGhn5mccCLyvTvv
         eT76NXCXHGDEmtY2GfXVF3xJv1AXSwGIA2mz+dzPaGTy8v54ZgnhdjOyTVnVKwFU2MYK
         QQJNgwp6qXt3t8bQ8+NbdkI7JxzKmzxnX9kE9aPspTg+MKDHq7FKo6l3ibtRGlVQENRo
         raoqmtLfnvo+HcQuf44wKY+OdFJoOW/+blcE8PdqNPYDCxOhI0EZe6EzfUlLGbD4gTDd
         wZnhmGHn4CYVLrXI9KXfEdONNPZUcqEW7/OnMKIzOBbesZfbbtl4+ozOpCt4/YzgvkQ4
         D4DA==
X-Gm-Message-State: ACgBeo2zbb+K0YwTDoYGuNvuQzMPx5gc9vWMtSvbqKjH1srFRikbwqJK
        cQg9ud90wmuCTZxraVkzjYbAFw==
X-Google-Smtp-Source: AA6agR5HDc6gu2Bj+ugeTREJiHj3KDCOsV7sSTYKK6XOojrV8wILaN8vvzGa19q3ek19ZydnC6dMIw==
X-Received: by 2002:adf:d215:0:b0:228:6293:10ff with SMTP id j21-20020adfd215000000b00228629310ffmr4690937wrh.171.1662634643065;
        Thu, 08 Sep 2022 03:57:23 -0700 (PDT)
Received: from sagittarius-a.chello.ie (188-141-3-169.dynamic.upc.ie. [188.141.3.169])
        by smtp.gmail.com with ESMTPSA id k1-20020adff281000000b00223b8168b15sm20877527wro.66.2022.09.08.03.57.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Sep 2022 03:57:22 -0700 (PDT)
From:   Bryan O'Donoghue <bryan.odonoghue@linaro.org>
To:     agross@kernel.org, andersson@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-arm-msm@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     bryan.odonoghue@linaro.org
Subject: [PATCH 0/1] RESEND: arm64: dts: qcom: Fix apq8016 compat string to match yaml
Date:   Thu,  8 Sep 2022 11:57:19 +0100
Message-Id: <20220908105720.857294-1-bryan.odonoghue@linaro.org>
X-Mailer: git-send-email 2.37.3
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Resending with a cover letter.

The compat string for the lpass was documented as "qcom,apq8016-lpass-cpu"
firstly in the .txt and then subsequnetly in the .yaml.

Commit: dc1ebd1811e9 ("ASoC: qcom: Add apq8016 lpass driver support")
Commit: 4b381d7e86fd ("ASoC: lpass-cpu: Move to yaml format")

We discussed how to fix it and decided to move the driver and the dts to
match the txt/YAML

https://patches.linaro.org/project/alsa-devel/patch/20220418230956.3059563-2-bryan.odonoghue@linaro.org/

We applied the fixed string with text about previous deprecation
Commit: 2a2ef688b1b03e ("ASoC: qcom: lpass: Fix apq8016 compat string to match yaml")

The last fix in the chain is the dtsi.

Bryan O'Donoghue (1):
  arm64: dts: qcom: Fix apq8016 compat string to match yaml

 arch/arm64/boot/dts/qcom/msm8916.dtsi | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

-- 
2.37.3

