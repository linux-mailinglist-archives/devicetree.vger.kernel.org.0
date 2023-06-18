Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5672F7345F0
	for <lists+devicetree@lfdr.de>; Sun, 18 Jun 2023 13:45:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229787AbjFRLo4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 18 Jun 2023 07:44:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229783AbjFRLoy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 18 Jun 2023 07:44:54 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E2CFA10D0
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 04:44:52 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-5196a728d90so3439893a12.0
        for <devicetree@vger.kernel.org>; Sun, 18 Jun 2023 04:44:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1687088691; x=1689680691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:from:to:cc:subject:date
         :message-id:reply-to;
        bh=HFYdBV55OCJJ86vmgEdrgI7fkJKCaJKaUvm1YLpC5XM=;
        b=AXs8s0Txd65E96lhJH01MhCi/5B3SZNfeivXk1cCjqAEVXQ8mSYfMMgg4IYXFc4Ucr
         MfVHqhh9bSOnSfTEUWU7G1+LZDwVvWMiWQBMxhP62TEWkhMSXYYQbzd0jpYv/oaeOsk7
         teVCaLCM28hmUWYEGfLfMUFLpU7cXPok4rDnWDhLUYMI0aLOmecc5Q1X6BR0oWIG+KMt
         vm2fEFpUsMGpkurXhGoUeofgMxSi7T7RsBj30Ssds8w6Px5wLMEA28eZKHsGy6x8f8PQ
         9RXa4WT00u1k73Hhoeov+HfUU3ijUv4MfPRhCKxGxHJFfzyWPesfdOtxE1JJwJ4Dc1tt
         uPwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1687088691; x=1689680691;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=HFYdBV55OCJJ86vmgEdrgI7fkJKCaJKaUvm1YLpC5XM=;
        b=Voc/fqkABlI9uvfXLZAWW9tUkqZ3SdFuCAgITqNAU8i3IlTNghxtGmG/XcBXnnbbN6
         vw8QoCQ6Y2G0nEEDIXsXU+tcEDad4YTN4Cj3ix+HbrN2BFHo7aWhfkHKbpjdh1lfRHZJ
         1K0HyaDo33OcinIt9BfY6NFtQbE4dFPMUNFXtIMQzIK0iEZSGhrz7SmN0KEZHyaAwSMd
         Pxlj4riWkTmxkp6tZey83muFyzUHikh8CiO8XUGYPo2Aux2Aes61I0pcbRHsmQRuJDx6
         XF/qtTVEMvHr2vlO/EtAbwrSaX/YfJuzfSa5BlW3wdRJE1A1wsX1gHaBmTlaDKhWKRLN
         6Xng==
X-Gm-Message-State: AC+VfDx+YXbTi9ntUjxi+BGhohn/EZCcSZeKEsvpkOJfeXVaL+V9B9SL
        aCe4txwBQopxLHmb00CxYwowvAXWlfxLl4zQ7Cs=
X-Google-Smtp-Source: ACHHUZ5IpqumNQukF2F7hqtI2Dig8Z/BMspkoqR/66ebZy6jV1N8mgHx09PKGakv6xuXFgycqfLGBA==
X-Received: by 2002:a17:907:8748:b0:974:1c91:a751 with SMTP id qo8-20020a170907874800b009741c91a751mr5873867ejc.29.1687088691444;
        Sun, 18 Jun 2023 04:44:51 -0700 (PDT)
Received: from krzk-bin.. ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id p4-20020a1709060dc400b0096f937b0d3esm13183854eji.3.2023.06.18.04.44.49
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sun, 18 Jun 2023 04:44:51 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Kees Cook <keescook@chromium.org>,
        Tony Luck <tony.luck@intel.com>,
        "Guilherme G. Piccoli" <gpiccoli@igalia.com>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-hardening@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH 3/7] arm64: dts: qcom: sm6125-pdx201: correct ramoops pmsg-size
Date:   Sun, 18 Jun 2023 13:44:38 +0200
Message-Id: <20230618114442.140185-3-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230618114442.140185-1-krzysztof.kozlowski@linaro.org>
References: <20230618114442.140185-1-krzysztof.kozlowski@linaro.org>
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

There is no 'msg-size' property in ramoops, so assume intention was for
'pmsg-size':

  sm6125-sony-xperia-seine-pdx201.dtb: ramoops@ffc00000: Unevaluated properties are not allowed ('msg-size' was unexpected)

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
---
 arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
index 2b4840446cb0..9e44ac229619 100644
--- a/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
+++ b/arch/arm64/boot/dts/qcom/sm6125-sony-xperia-seine-pdx201.dts
@@ -79,7 +79,7 @@ pstore_mem: ramoops@ffc00000 {
 			reg = <0x0 0xffc40000 0x0 0xc0000>;
 			record-size = <0x1000>;
 			console-size = <0x40000>;
-			msg-size = <0x20000 0x20000>;
+			pmsg-size = <0x20000>;
 		};
 
 		cmdline_mem: memory@ffd00000 {
-- 
2.34.1

