Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 035E46FF1BC
	for <lists+devicetree@lfdr.de>; Thu, 11 May 2023 14:44:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237394AbjEKMoB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 11 May 2023 08:44:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237355AbjEKMoA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 11 May 2023 08:44:00 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1510C4EC5
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 05:43:59 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-9661047f8b8so1160900966b.0
        for <devicetree@vger.kernel.org>; Thu, 11 May 2023 05:43:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1683809037; x=1686401037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=B78qU79u+pggk87zvrUws0OM04ktfZG0Nhpeqi3E0n8=;
        b=VrdiPEZHXAuSQA8o7hWdh19QMusTk5IlknJDmA7J89JNw0CokXkenxV0oNTWnqVtHQ
         Gd2PoFTa+4+44hjucLWAVdsN70ACrvu7r8jlPZzAZNppbf7a9OflRIePTh2Fx+QmRWvI
         T/KThbGFtvBPV+UW3UbbSg3oK8l3q5VVP0KNm4cpghruN8pNW9QJ50RTmO8/wEWIhXnL
         mKxFvLAvINZdsWJd7Mr0vhws1V91ST8WXJDfdxJYDo+bDze18crMXA8zodsUNQ2QpcK6
         8e3sKwZQf+E3LFbdPxxWrWW1PL4KuFRfQ4k+TSF5CzTLTMa5RheKFhsOlwETvWEKzpqC
         76+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683809037; x=1686401037;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=B78qU79u+pggk87zvrUws0OM04ktfZG0Nhpeqi3E0n8=;
        b=Kan748fZrha1HUhx6jjMt0EDVTovIPyoOO7VF9knyg7TV+6I/P3ZTzsw1GDSaeVWxY
         dacN5kAncFj50FWr9cd25hvqgEpvLxB1Ei/8pKh5B6tjis5GOFcrjTmeXUXPGW4hkvFY
         0upDrG/God+UWPF6clYFDs1PZktJP/oe9ZmbHrtnXtrUhTs3hCWIijjaWkBwDRPqNm3a
         ullj+JlZLlpqo1eJ8sk5dP4d70ydhkObPfx+KeVlwGwMLu0vqTfGeVI7qtkW4woBnaIc
         7XzbwKY3TnZRWxwZcxe7FfbvmPh1CzY/X5NhRllOrQuycixrHxhStK7u2IRqjFGVOWrV
         BDdQ==
X-Gm-Message-State: AC+VfDxnT3MD/vUeCr3Ii3l32wLwhKR0ZONbTEkeIA1y7+dLY/cMH0uw
        vnG/qO4gxnbmPWszdXlJryTG6g==
X-Google-Smtp-Source: ACHHUZ4VDdroTP4QStI01ZbfFBFsbxkbjFxJGhgNLoKlOsYEPxKm1wA+/iiFtAEmZpdlF9EWF00hVg==
X-Received: by 2002:a17:907:72d1:b0:967:dff4:e0f9 with SMTP id du17-20020a17090772d100b00967dff4e0f9mr12801672ejc.71.1683809037527;
        Thu, 11 May 2023 05:43:57 -0700 (PDT)
Received: from krzk-bin.. ([2a02:810d:15c0:828:41e7:1b68:d38e:1348])
        by smtp.gmail.com with ESMTPSA id t27-20020a170906269b00b0096616aef7e5sm4073675ejc.149.2023.05.11.05.43.56
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 11 May 2023 05:43:56 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCH] arm64: dts: mba6ulx: correct GPIO keys wakeup
Date:   Thu, 11 May 2023 14:43:53 +0200
Message-Id: <168380903252.184807.8687658539539135053.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20230304123341.34223-1-krzysztof.kozlowski@linaro.org>
References: <20230304123341.34223-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
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


On Sat, 04 Mar 2023 13:33:41 +0100, Krzysztof Kozlowski wrote:
> gpio-keys,wakeup is a deprecated property.
> 
> 

Applied, thanks!

[1/1] arm64: dts: mba6ulx: correct GPIO keys wakeup
      https://git.kernel.org/krzk/linux-dt/c/7c4f1f1830648bbdce02b13ff5f215c7400e7ea0

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
