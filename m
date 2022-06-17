Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BA1DF5500A9
	for <lists+devicetree@lfdr.de>; Sat, 18 Jun 2022 01:21:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1383656AbiFQXVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Jun 2022 19:21:35 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1383493AbiFQXVb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Jun 2022 19:21:31 -0400
Received: from mail-pj1-x102e.google.com (mail-pj1-x102e.google.com [IPv6:2607:f8b0:4864:20::102e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9C22166208
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 16:21:30 -0700 (PDT)
Received: by mail-pj1-x102e.google.com with SMTP id mh16-20020a17090b4ad000b001e8313301f1so8026079pjb.1
        for <devicetree@vger.kernel.org>; Fri, 17 Jun 2022 16:21:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QdJypCW0UuDMsne3jEHW30VIejQbPsslyYr5uuRVmd0=;
        b=rKoF++nLIneka1QOKMgcZeIv/wUy/H28Ej2jEIjyQ8JlDyf4nxwek7iU1V8NRNUOqS
         yhVguY0CI1xW3nau4JfzdzDuCieg4hg+cSpbvT/2gMezxYerBkrGJd20qv5NYgopSBp1
         a+TU3Wn3CJbxhJTOZp9e8v2qmoL3oAOdClOxDhVR3ZfR6lSXMMTbmW1l5VLonrO/Oq/r
         0jbX+7axSfAvktxeAW6sbofDipEOYgMrCDPwTsti3wWOBphQNSS1vsiCK46PN2pBUMCh
         da3g+Gt4HptUZ2or650YEKyLcduX3BqkkyzJNYtuBCuBtbc5HVAibyPbU6S0lK+55IMC
         9OVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=QdJypCW0UuDMsne3jEHW30VIejQbPsslyYr5uuRVmd0=;
        b=ZYDV6FQTPPfmouV9jqKWj2SaEhLTNEGuW5KbYGUnlTvOh+sTb/K5LRpsdeuIsPRY0r
         VTqHAOguFDmnyxZY1cfzMuQzLL7MJxAtuadkdXj1hwE2+epI2AtzlWv450ZWBFrIPQar
         mH43rE9t5YiLbxzpLSrkrtAn3jruuuemmWeYl4I0mH8l029pqxX8GKTxaFfbixqvndlY
         ulMnvnXIH+DLThFIIj1wJyQgVLCcHgvP+MQ7+2QzNqRPq+5ftcevyHo7YGSQ09PDzauC
         qOjs4oGbjZ9ESH+al9PAq9xxMg1i/U/wXf0vwa++QCmGE9FfZkPymiowGj/pZtRvKgHX
         RtGw==
X-Gm-Message-State: AJIora8yrDQNRzlM1uYS/JckIWuivu4L33780Nr6qruEjpeSDAwKevOf
        QdBleArygc7bDEqzLmt5ZA13ww==
X-Google-Smtp-Source: AGRyM1ucPevf10WOCo3szS8jM2+bTtrtkki4IQTjHS3j2ZGUU1BghBpBqAUBSm1dcO9pBwaxbfPOvw==
X-Received: by 2002:a17:902:e78e:b0:163:caf2:2ef2 with SMTP id cp14-20020a170902e78e00b00163caf22ef2mr11764443plb.3.1655508090012;
        Fri, 17 Jun 2022 16:21:30 -0700 (PDT)
Received: from krzk-bin.. ([216.9.110.6])
        by smtp.gmail.com with ESMTPSA id j1-20020a170903028100b00164097a779fsm4065427plr.147.2022.06.17.16.21.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 17 Jun 2022 16:21:29 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: [PATCH] arm64: dts: mediatek: mt7622-rfb1: remove wrong gpio-keys property
Date:   Fri, 17 Jun 2022 16:21:24 -0700
Message-Id: <20220617232124.7022-1-krzysztof.kozlowski@linaro.org>
X-Mailer: git-send-email 2.34.1
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

gpio-keys (regular, not polling) does not use "poll-interval" property.

Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

---

Changes since v3:
1. Correct commit msg (Matthias)
---
 arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts | 1 -
 1 file changed, 1 deletion(-)

diff --git a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
index c28da9323a9c..1a86857c9027 100644
--- a/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
+++ b/arch/arm64/boot/dts/mediatek/mt7622-rfb1.dts
@@ -40,7 +40,6 @@ cpu@1 {
 
 	gpio-keys {
 		compatible = "gpio-keys";
-		poll-interval = <100>;
 
 		key-factory {
 			label = "factory";
-- 
2.34.1

