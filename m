Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9820553F6DD
	for <lists+devicetree@lfdr.de>; Tue,  7 Jun 2022 09:08:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237460AbiFGHIO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Jun 2022 03:08:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55976 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230030AbiFGHIN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Jun 2022 03:08:13 -0400
Received: from mail-ej1-x631.google.com (mail-ej1-x631.google.com [IPv6:2a00:1450:4864:20::631])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 028E5B851
        for <devicetree@vger.kernel.org>; Tue,  7 Jun 2022 00:08:12 -0700 (PDT)
Received: by mail-ej1-x631.google.com with SMTP id h23so22184042ejj.12
        for <devicetree@vger.kernel.org>; Tue, 07 Jun 2022 00:08:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=mb0/PMTGMQy3Na2869mfuqbTj/3GcTnr3aGmpc78Eck=;
        b=IZLKzweiKBdxrwzjteGorWJ1vA012Sio7Z8Ef6jh+u2MdHogCNRN6r4+2yZxTsmmIc
         Lhh2RpHsbc6WxYNwo+XhhpCGFz3VRrAjOaeDY2boeo26QoPN5HSaFDKQJ6b72OeuZee8
         EOC9e/abLSKaNQrg+2rma0mCxpHFpTl+6HhjVaJ6NcArfginA+g/0mmOh2jthbiRN2NM
         jSnDf12/+B5lMX+waAirzzaefn93gMY4g+ZbT8NWF4JTpIcv1j4t2YxHWOaloHM5Guei
         RfLn/gP1Gm9w6WzjN1EAvPxSYAG6KfEb3bktqK4ELSuOUBy6jK8kBUNAkwC8foBkAtYS
         5HdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=mb0/PMTGMQy3Na2869mfuqbTj/3GcTnr3aGmpc78Eck=;
        b=5Q4NJyklk/2luXpOprr8gg5CuY8Q38cj26yK40MEzXN3X7XMQPmYVTBSpz8S3jCCAl
         9+qULWIMe43/cdZhstKChMzHaswA4kPRAbOSBPYOG6xCTqQJK2+3Bow3Hs7RSBfWSEzV
         GptjItEVjRHy3B3CGWkmN9bZCyZU5PagYVVbrszJBWZbSVsp/IYtmYBje5fs7UN8YrO6
         LqmO/jZzhSxvoUXUH1wAddvv9qXB1sKTdBxrvNH2y+e7ylQjHkYZ0qpgndggMuo9pWBP
         YTo9oTZ+8nHy19xRxpmCYzLB2dfrsnLBPdoNzlbxWWG5QklxRgBRGt0e/pGSKm5mdHhO
         gcJw==
X-Gm-Message-State: AOAM531vLlhsvm/tH5DrBOZyfSoJPZi+sYfiBREMqTepPohDW6p+aCyF
        wQz4ArchKlMVfGxaX3MzSFNZTQ==
X-Google-Smtp-Source: ABdhPJy2cG+JIliyyhkdvQCz9LAlzzyTwcyUyJnsGdgfd0dlt3UyTd4BjZFPaNGaNy0W6v/4nheEHQ==
X-Received: by 2002:a17:906:3a92:b0:6fe:9029:b62c with SMTP id y18-20020a1709063a9200b006fe9029b62cmr24860078ejd.569.1654585690576;
        Tue, 07 Jun 2022 00:08:10 -0700 (PDT)
Received: from localhost.localdomain (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id 12-20020a170906058c00b006fed787478asm7104671ejn.92.2022.06.07.00.08.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Jun 2022 00:08:09 -0700 (PDT)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Chanho Park <chanho61.park@samsung.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
Subject: Re: [PATCH RESEND v3 0/2] support secondary ufs for Exynos Auto v9 SoC
Date:   Tue,  7 Jun 2022 09:08:08 +0200
Message-Id: <165458568291.38369.11561110977575494734.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20220607070251.15795-1-chanho61.park@samsung.com>
References: <CGME20220607070324epcas2p388a932021107d9fff9dc133df0e2b389@epcas2p3.samsung.com> <20220607070251.15795-1-chanho61.park@samsung.com>
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

On Tue, 7 Jun 2022 16:02:49 +0900, Chanho Park wrote:
> This is for resending DTS patches of the v2 patchset[1] on top of
> next/dt64 branch.
> 
> [1] https://lore.kernel.org/linux-samsung-soc/20220602053250.62593-1-chanho61.park@samsung.com/
> 
> Changes from v2:
> - Rebase on top of next/dt64 branch after addressing conflicts due to
>   watchdog patches.
> 
> [...]

Applied, thanks!

[1/2] arm64: dts: exynosautov9: add secondary ufs devices
      https://git.kernel.org/krzk/linux/c/fddb7928464d05f3d46852a801aa9ec57be5e74f
[2/2] arm64: dts: exynosautov9-sadk: enable secondary ufs devices
      https://git.kernel.org/krzk/linux/c/5c4a99cf5d254e12295de5d9077f6594966679f4

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
