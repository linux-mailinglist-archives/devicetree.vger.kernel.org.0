Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8A1DF73389C
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 20:58:22 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345709AbjFPS6T (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 14:58:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37866 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345356AbjFPS6L (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 14:58:11 -0400
Received: from mail-ej1-x630.google.com (mail-ej1-x630.google.com [IPv6:2a00:1450:4864:20::630])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3926C3C04
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 11:57:56 -0700 (PDT)
Received: by mail-ej1-x630.google.com with SMTP id a640c23a62f3a-9786fc23505so143851166b.2
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 11:57:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686941874; x=1689533874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=61umBmg2BApgGh44k/qhSBzIuw5tO2M1QtMIll9DTRk=;
        b=cMqT+PcrzYBUsZpNqq+U7hbGJmxVSENEGfz3347gTVzAn7BvDtxHkZ9uGULoZdd7hy
         cgQRNsHw5WWNSfUb1g9AYigaBVJTiyIps2tstud+kRit/Fw24Ctf5ywetPV8rn8qcuoZ
         VMmQtmEwTCKpkrTUMJbULSrkcsvsjdBO7w4VHiTFFWCMZwXgahRtbP2sS9FcsdXDPnd5
         wTIWmV4LacbgADwCYDbncVKh9864/iFd+P44PiqQXBu/xbById0YB6I9CP1h4bktRRaf
         GHqacL8ji/W5JBRMHxRwafW3mQPD9VMv1aalUI7845iFT4qylOjwWrahtDqzCTiD4EWW
         pUyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686941874; x=1689533874;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=61umBmg2BApgGh44k/qhSBzIuw5tO2M1QtMIll9DTRk=;
        b=DtpJjnrNJgF48ENp3fDPHOsWEiXfQ9IBl/xa0br9tE+yVimt8qxDj5peRiq6R0HRYd
         RKGmRoXpCTEg1GaTRgc4u+K2L6b6TudsklIfJ424baIfy4kSblHvRtxSLqoaHD+uROVQ
         da6pUczNCFx2vI9uyAJBjegVJChTC8QWfJBzODsTfQNloGLA1oH8743V6OO1QRBu34sp
         S+LzQ0nJjgaRmbxz7Or0hmZmlVHCINOCK7DHc12lXHKMUroKdHGWZCU6WfyIgFNM+sw4
         BQ7Jr7avzJceRuMFpjRRiGA1Kli+2d3I9tPrrt126GR9NPmhyA4592mt80NbUb0poeje
         3FDA==
X-Gm-Message-State: AC+VfDzUQWNPApMhJVx3QL/0oTwj0m2X9IMceu13lKZsEK9lDfH4lk0k
        Ajsv5FUuZvXl0EbhQgc8aclmxg==
X-Google-Smtp-Source: ACHHUZ4pBOmtIwxA+PHh+jM68x0Y3Z8hmz52ANcuy8u2gpMpZbSz7W/StE8nwxAeWU+Tf2WkDEhngQ==
X-Received: by 2002:a17:906:594e:b0:973:e4c2:2be9 with SMTP id g14-20020a170906594e00b00973e4c22be9mr2282958ejr.33.1686941874395;
        Fri, 16 Jun 2023 11:57:54 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id e24-20020a170906081800b009786c8249d6sm11284606ejd.175.2023.06.16.11.57.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 16 Jun 2023 11:57:54 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Bjorn Andersson <andersson@kernel.org>,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Catalin Marinas <catalin.marinas@arm.com>,
        Will Deacon <will@kernel.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-gpio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/3] arm64: defconfig: enable Qualcomm SM8350 LPASS pinctrl
Date:   Fri, 16 Jun 2023 20:57:42 +0200
Message-Id: <20230616185742.2250452-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230616185742.2250452-1-krzysztof.kozlowski@linaro.org>
References: <20230616185742.2250452-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Enable the Qualcomm SM8350 LPASS TLMM pin controller driver for
providing GPIOs/pins for audio block on SM8350 based boards (e.g.
HDK8350).

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/configs/defconfig | 1 +
 1 file changed, 1 insertion(+)

diff --git a/arch/arm64/configs/defconfig b/arch/arm64/configs/defconfig
index 57c6b7bb88d4..b7b2b51a4251 100644
--- a/arch/arm64/configs/defconfig
+++ b/arch/arm64/configs/defconfig
@@ -593,6 +593,7 @@ CONFIG_PINCTRL_SM8150=y
 CONFIG_PINCTRL_SM8250=y
 CONFIG_PINCTRL_SM8250_LPASS_LPI=m
 CONFIG_PINCTRL_SM8350=y
+CONFIG_PINCTRL_SM8350_LPASS_LPI=m
 CONFIG_PINCTRL_SM8450=y
 CONFIG_PINCTRL_SM8450_LPASS_LPI=m
 CONFIG_PINCTRL_SC8280XP_LPASS_LPI=m
-- 
2.34.1

