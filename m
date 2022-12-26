Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 645536563BC
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 16:17:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230520AbiLZPRX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 10:17:23 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229533AbiLZPRW (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 10:17:22 -0500
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B264325C4
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 07:17:20 -0800 (PST)
Received: by mail-lj1-x22c.google.com with SMTP id n1so11449286ljg.3
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 07:17:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NE9vhGolKZh4qk6h13gH/hif2BGc/nXGsk3gcrABu0s=;
        b=Snp+V/1JNPEJWCzyjiW0XERLLTqxUhNzRMR7zbzie3Y5TIPw/Tlz0FXyAozn4yu5RH
         /BC42f+bsjZ6gT4yXvHJ9YcfBFs43KgD8CRFZGunLDgpu0uT/oaPbfXKEtVdBzEpaLN3
         LrB2mlQX93L30I/tRaEBUVSiuWsyqnniotLc0NnkH+oWRwL72gPS66O4yxi2iav/w+Zd
         LjK6XdUBdn0Fx49TxCfq3MuhO5puSLKvUDDL2sFHdUnODG60EjXtVdJSQ8CMlpQ6q1J6
         VQTiSZ2XhHGCx9sWGVweBdfgWVt8y9AMzfMDk+tp0h+wKdCZxInhaR7UmPWOTDcGg+A2
         vfWQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:to:from:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=NE9vhGolKZh4qk6h13gH/hif2BGc/nXGsk3gcrABu0s=;
        b=MklmqbRLwnzbROAMJeTkUK4XGx3t3tT/24//nXOHeFpWbaIBtFXpKpjG7VVm9ga1Cc
         hbiCKrWvRtrFAt3jkPsI2BWdeLR8IvsVNelgYvs4JHJqlO6BHO/tn2/ya2AkZBR5YF+e
         vkhH3WDXZrLXmrJN3pVpCtJXqu9buBbvD//3K0xP23h71W6kxT9Xyc6ccYsH1jct68Zo
         F7bAVCo/AGrv4UlQYlytgdrLEbpy7HqrlsRGqEncpHah6bOIBkUZCwWLX0RY+iZZJ/fV
         ruDpCQ2+I6mNvIRB/2PwzTQnpFp8WG0F12pvEewcAWOrZ0KRnjURT75/OkV563fxQC+N
         VRBw==
X-Gm-Message-State: AFqh2krjFBNrtut7r8duvT82Fa/fH6Nm8wdyGT6478YuHiwtuvTP8EhQ
        1VzV1jqkMzWrM7N8ehDaQrhv74Y4BQNf4vH5
X-Google-Smtp-Source: AMrXdXuLyt4i7NA9WzbUQrj7oRqYpVf8cgATRPCrU4EG9oywAaIM6lbk0rHTzoFGKzlVMlYlclyIDw==
X-Received: by 2002:a2e:3c11:0:b0:27f:c557:697a with SMTP id j17-20020a2e3c11000000b0027fc557697amr377016lja.53.1672067839073;
        Mon, 26 Dec 2022 07:17:19 -0800 (PST)
Received: from krzk-bin.NAT.warszawa.vectranet.pl (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id k2-20020ac24562000000b004b4ea0f4e7fsm1821286lfm.299.2022.12.26.07.17.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 26 Dec 2022 07:17:18 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] arm64: dts: exynos: use 8-bit for SPI IR LED duty-cycle in TM2
Date:   Mon, 26 Dec 2022 16:17:12 +0100
Message-Id: <167206781676.20416.5753749208705846208.b4-ty@linaro.org>
X-Mailer: git-send-email 2.34.1
In-Reply-To: <20221204104242.117558-1-krzysztof.kozlowski@linaro.org>
References: <20221204104242.117558-1-krzysztof.kozlowski@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 4 Dec 2022 11:42:42 +0100, Krzysztof Kozlowski wrote:
> The 'duty-cycle' of SPI IR LED property is u8:
> 
>   exynos/exynos5433-tm2e.dtb: irled@0: duty-cycle:0: [0, 0, 0, 60] is too long
> 
> 

Applied, thanks!

[1/1] arm64: dts: exynos: use 8-bit for SPI IR LED duty-cycle in TM2
      https://git.kernel.org/krzk/linux/c/254b8f4b219211e1e2fb6c91edd96aa583c78720

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
