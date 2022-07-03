Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CC7A9564427
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232770AbiGCD7d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:59:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57958 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231640AbiGCD6m (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:58:42 -0400
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com [IPv6:2607:f8b0:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 42D8DCE33
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:45 -0700 (PDT)
Received: by mail-oi1-x234.google.com with SMTP id l81so8913799oif.9
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=zHYwjTJQYLTGvQx9gJwu+9TV173JtSa/zYqJz0bsaF8=;
        b=eJT4rAz3DGQtPFVYYDzrnRTeP1Wrdx4lKCdPmidokv91oA3pgsQBYjM5I6sSL5Gnkn
         T2gCCfMttyI33ggxJwt2+BjOfOJqmjMQ5MoJCwR2tzhkDiCXCaM2y6opSgqLIJiAsvUe
         6zF5gbxJHZovdfQU2OX0KHEv067v8xXRBd8IDemvxKVLfQMBpDUs8Y0icl5nMagnEFWi
         PDXX1ePtO9vMV9ykL3F2bJURbheKjb/8IsdMAi1CqsqhYI3ivFBAZ0rHpnTCe8Kr8SQ+
         BPgH4pOLbXDiX4EnQRrtQzntukIsXVZlXljj2AOW2aZd3/U0IlGbqKvUzaqkoZpemy3f
         EmCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=zHYwjTJQYLTGvQx9gJwu+9TV173JtSa/zYqJz0bsaF8=;
        b=F2XmRSkBFB2LfvtTkvdtgsyADLLfEsX2QXMoERrkBAYEFdS9IdR4hmBV/9Kx4/eYt6
         3nfh0ZJBXBEA106ATQpnn9lGMj01jZ04d5q1PKpndDteOrUkA6UpgojVUNF/eZHEnPeN
         CvcyCuzgoOOVmlls9iLNprJQKgovK+XFIbTwUEpS9/PR+Mn8PSY5q7U1R40GAdUJWq2P
         HYtZ5kFQMpSAXj50/Ju3qoqUq4VUNnwptfQdggfeKBG76zwu2pFBkcmju1APyruvwIFX
         h2EvtKNZlmF+Y9lg8M2dgQIhP4FV22QiFqQ+v03TYhHyf5o/7OnFnpP9bMeOslNZG2lY
         pNZA==
X-Gm-Message-State: AJIora9p852N0fsTcE792Que/XDAn8wA7q6Pcj/moSdphLjsdqGnRc08
        PxIfhtTXW5Khmit3Mzlbs4JK9A==
X-Google-Smtp-Source: AGRyM1sZOdHsj22pUb8C+ua7oYuZ1nWy3TeJi1IgRSCvSGZmcJWoShIWdt7ng7wBH8JBnc0K+yodCg==
X-Received: by 2002:aca:bb56:0:b0:32f:2160:bfd8 with SMTP id l83-20020acabb56000000b0032f2160bfd8mr13850298oif.92.1656820665015;
        Sat, 02 Jul 2022 20:57:45 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:44 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org, Luca Weiss <luca@z3ntu.xyz>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org, Andy Gross <agross@kernel.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: (subset) [PATCH] ARM: dts: qcom-msm8974: fix irq type on blsp2_uart1
Date:   Sat,  2 Jul 2022 22:56:38 -0500
Message-Id: <165682055970.445910.18057047383947729410.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220522083618.17894-1-luca@z3ntu.xyz>
References: <20220522083618.17894-1-luca@z3ntu.xyz>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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

On Sun, 22 May 2022 10:36:18 +0200, Luca Weiss wrote:
> IRQ_TYPE_NONE is invalid, so use the correct interrupt type.
> 
> 

Applied, thanks!

[1/1] ARM: dts: qcom-msm8974: fix irq type on blsp2_uart1
      commit: ab1489017aa7a9f02e24bee73cf9ec8079cd3909

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
