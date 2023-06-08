Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6787A7285FB
	for <lists+devicetree@lfdr.de>; Thu,  8 Jun 2023 19:09:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236366AbjFHRJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Jun 2023 13:09:29 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232178AbjFHRJ2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Jun 2023 13:09:28 -0400
Received: from mail-wm1-x335.google.com (mail-wm1-x335.google.com [IPv6:2a00:1450:4864:20::335])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B016F2697
        for <devicetree@vger.kernel.org>; Thu,  8 Jun 2023 10:09:27 -0700 (PDT)
Received: by mail-wm1-x335.google.com with SMTP id 5b1f17b1804b1-3f6e1394060so6308485e9.3
        for <devicetree@vger.kernel.org>; Thu, 08 Jun 2023 10:09:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686244166; x=1688836166;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=mTPmOQp+qFA828Yk2a/Gg/HuOyPG12vS163GsUtONY8=;
        b=SwC3MqxK5lbgVQHewPe0fy+769Qpx2swm+D2sDUT50gbalQRtHHVeHmsdnd3fmXwBH
         RBobvnn+WZbFDfF09K9E9jr9Z4cDAzGttYNlCPeY20AIe69c7Fl06sQHgs6haqfnyThH
         1VW2OxqB3fowI4hCAKvcwmAiP5djjEHRmslYui+NMxRR6uiI6VvzMl6oZuwpOMXWQy2u
         PWA3RH18mI0kWWZ+odsJ9D4IjIzxJhmePHh1++Sgweb5ReQdqat/eduRx77y6HHSuA/B
         kBpHcmFjsc8xVQPuwmY+6j4zz51VpEF2lIkxsC1Welfsdu0tSvhMT+e4z4O1hXHTB68L
         0J8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686244166; x=1688836166;
        h=content-transfer-encoding:mime-version:date:message-id:subject
         :references:in-reply-to:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=mTPmOQp+qFA828Yk2a/Gg/HuOyPG12vS163GsUtONY8=;
        b=da4lzGT4bV0y3gClFGBShuB6AIYGFnBTNvxE367v/PpMMeEPD4LZN+2W7MWnLMmF1y
         sB3NWGWzpv+s6eEluf7hubHo5HJgFc1f6lTci8LxjUmB1WPyOd04gfLNjGSYBALvfR1X
         sGI8C25IgBh+bSrnEDr1FaS6v+TR+tkxHfMCX9nP5HEhlaAxDMxE90wv+vyUulad7ezp
         L4qzko69BJ01Cm+niGmSryiQsREVrtsezXLNJKpYqPkdpiqZVcU7URv9IPjvGLAmvO/Z
         2dr+3K25QeCS4Rpw3OZgUyGihBzGP3rGVkFNhT14Ryx/w9Uy1V7DlvOnzG8c0MHi/EqD
         3Ogg==
X-Gm-Message-State: AC+VfDwfWtGMr9Iuhk8nzfPqbvOM6aXvPr9KmjnC6RCyrZuooV1ynz5K
        +PHDpSBX4oPjNNY5QofG4rLXSA==
X-Google-Smtp-Source: ACHHUZ66Z2HtOrV/blaotwHoVVTQMW2zz/mtlvyuY7NxfVvT3A+tVsXMfZX3OSiBsqdNHm69vhRorQ==
X-Received: by 2002:a7b:c455:0:b0:3f6:5cbf:a3a1 with SMTP id l21-20020a7bc455000000b003f65cbfa3a1mr2069259wmi.14.1686244166163;
        Thu, 08 Jun 2023 10:09:26 -0700 (PDT)
Received: from [192.168.1.195] ([5.133.47.210])
        by smtp.gmail.com with ESMTPSA id 10-20020a05600c22ca00b003f427687ba7sm148251wmg.41.2023.06.08.10.09.25
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 08 Jun 2023 10:09:25 -0700 (PDT)
From:   Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        Anson Huang <Anson.Huang@nxp.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Cc:     Peng Fan <peng.fan@nxp.com>
In-Reply-To: <20230506064128.34005-1-krzysztof.kozlowski@linaro.org>
References: <20230506064128.34005-1-krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] dt-bindings: nvmem: imx-ocotp: drop unneeded
 address/size-cells and children
Message-Id: <168624416510.17727.4833007391825860716.b4-ty@linaro.org>
Date:   Thu, 08 Jun 2023 18:09:25 +0100
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
X-Mailer: b4 0.12.2
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Sat, 06 May 2023 08:41:28 +0200, Krzysztof Kozlowski wrote:
> Referenced nvmem.yaml schema already defines address/size-cells and its
> children, so remove redundant entries.
> 
> 

Applied, thanks!

[1/1] dt-bindings: nvmem: imx-ocotp: drop unneeded address/size-cells and children
      commit: 4a43546dbd0b15fc21994a95ab565721f24c59d0

Best regards,
-- 
Srinivas Kandagatla <srinivas.kandagatla@linaro.org>

