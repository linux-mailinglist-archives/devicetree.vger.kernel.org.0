Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B198D56441D
	for <lists+devicetree@lfdr.de>; Sun,  3 Jul 2022 06:19:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232530AbiGCD72 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 2 Jul 2022 23:59:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56508 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232533AbiGCD6e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 2 Jul 2022 23:58:34 -0400
Received: from mail-ot1-x32c.google.com (mail-ot1-x32c.google.com [IPv6:2607:f8b0:4864:20::32c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3659EBF74
        for <devicetree@vger.kernel.org>; Sat,  2 Jul 2022 20:57:42 -0700 (PDT)
Received: by mail-ot1-x32c.google.com with SMTP id b23-20020a9d7557000000b00616c7999865so5069750otl.12
        for <devicetree@vger.kernel.org>; Sat, 02 Jul 2022 20:57:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Sg1JuGe8NUunuT5VvGnoHM/xzW2U0bu23BAY3DCd9mM=;
        b=yqJub9mvpzQN59zZa3saThKzScm+mFApLBtp8T9+xRKmKWFACbZZOZSjk1P5GOiaUI
         tIhJSqYv5+gmDgVr7rzK8w7Um/lf23gXrZxpZrOhtl0Wp2PBB5tEiQMsvXNn8005rGqm
         RcGJTChnrSgvO5wLChL8ucHKholF/LfIljFx/dgburognCswpoiGOkjaf1YFL73FrEKn
         8rmiodktuRmRPeQfBOR61DlpTP36DEARrHDDNbR7z52phhqCH3jIkVlFMznmDu+WoSh1
         m7faH6LloCdtokOeKl3ahpT1GE19VJ7KEFvQ7KwDoq1pLpxlu8HHGi4B34Pjda5xtjG+
         yVsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Sg1JuGe8NUunuT5VvGnoHM/xzW2U0bu23BAY3DCd9mM=;
        b=zmBnDFxgFGaTLG4y2Cx2R9bmnuoSft1is2qm3iFioYdv28JL5J/WQMjr58iqPrY4YZ
         hbo/SA+iSL1qbflA/P1vs0JPNOR9Qx5i7GwfYde/0K8G7JMOnTHE0MNiVGf2fHqOojdh
         iVfKVovGKR8Dl/Uu+ZStufUmFhSPtPTcr2wGFq+f6F5zOTeN5O+X+1eVl94pN/28m/t7
         bWntHS3wvfylMD94AirnDbi9vzrLypvM+IkUe67/+8kR/qUMdiycIrSM9ch+0HhoYtL5
         xZT2wxN32KqkNlUAWTzCdhBRfiCU1r1OO4wCc0J5Hi6boQq1FHVooFRyXTg/vEO1roIS
         /Vlw==
X-Gm-Message-State: AJIora8jz/agjGP4YobK0KYEQId+zZ1DP2/IwrUJzH6ZJfKQgIoSDGYb
        LZ1Kt8dAW/vLcdUKurTX6XwlOQ==
X-Google-Smtp-Source: AGRyM1snoFXagGCa2xEjxs3qlmsK0jo4W/1lMGfF8Gi5A8It9E1ZWEDYvoF5F9HJNsvP97kqVMHvAA==
X-Received: by 2002:a9d:3e50:0:b0:616:bcbf:afed with SMTP id h16-20020a9d3e50000000b00616bcbfafedmr9801454otg.63.1656820661824;
        Sat, 02 Jul 2022 20:57:41 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id 25-20020aca0f19000000b0032e5d0b5d5fsm12965910oip.58.2022.07.02.20.57.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 02 Jul 2022 20:57:41 -0700 (PDT)
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     linux-arm-msm@vger.kernel.org,
        Luca Weiss <luca.weiss@fairphone.com>
Cc:     Rob Herring <robh+dt@kernel.org>, Andy Gross <agross@kernel.org>,
        linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, phone-devel@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: Re: [PATCH 1/2] arm64: dts: qcom: sdm845*: replace i2s reg with constant
Date:   Sat,  2 Jul 2022 22:56:35 -0500
Message-Id: <165682055970.445910.11507642895650379080.b4-ty@linaro.org>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220603094710.64591-1-luca.weiss@fairphone.com>
References: <20220603094710.64591-1-luca.weiss@fairphone.com>
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

On Fri, 3 Jun 2022 11:47:09 +0200, Luca Weiss wrote:
> Make it easier to understand what the reg in those nodes is by using the
> constants provided by qcom,q6dsp-lpass-ports.h.
> 
> 

Applied, thanks!

[1/2] arm64: dts: qcom: sdm845*: replace i2s reg with constant
      commit: a102644dccfe3c0e91d517d3cad2b846e793eddb
[2/2] arm64: dts: qcom: sm8250: use constants for audio clocks
      commit: 7858ef3cfba2e123835b1b561deb9357afbfae29

Best regards,
-- 
Bjorn Andersson <bjorn.andersson@linaro.org>
