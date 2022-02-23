Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B273B4C139F
	for <lists+devicetree@lfdr.de>; Wed, 23 Feb 2022 14:11:46 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiBWNMM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 23 Feb 2022 08:12:12 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34820 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240711AbiBWNMG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 23 Feb 2022 08:12:06 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 57E355D1B1
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 05:11:38 -0800 (PST)
Received: from mail-ej1-f72.google.com (mail-ej1-f72.google.com [209.85.218.72])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id A73913F1F3
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 13:11:35 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1645621896;
        bh=6ItdzAIC73ba61SL64woNZZ4z8ugfh6dQKurjioqyaA=;
        h=From:To:Cc:Subject:Date:Message-Id:In-Reply-To:References:
         MIME-Version:Content-Type;
        b=qji3mBBEBra1Kmh6YgakCFJSNo8iv8R2NhZxdC6xji32S+1mOBFL1PbwMcspVnoVT
         82+mE6MtF2DYNa1Vi8XtYxfDVAlqhpHWpnE5HltLTQ6gYQNxGC2ptslYaElPDQR4Iv
         6LoCQRM/+G835vXX5lTaTZiD1K3M+wKVM4qv2HYNzdrDnVArhywwIJHgGtUBNRi4iQ
         wOqhPnEz9nYq9eq43vojGIxHQbfCi+xJZEXp5O34drx8WW9y/WoDaXczCQNfCN9gmz
         HtTsNB6rs32HpJ0x5Z4Iocukpk8GTZDZowXCGRGaM7wznxPwUt17or6e8Kr5eq8GWC
         ztrZ6j+w/0D5w==
Received: by mail-ej1-f72.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so7025205ejw.9
        for <devicetree@vger.kernel.org>; Wed, 23 Feb 2022 05:11:35 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=6ItdzAIC73ba61SL64woNZZ4z8ugfh6dQKurjioqyaA=;
        b=DGszvg09QCk933Uy4zT37ejHIbgVWcxb/5bwkZxJiL5UmRYoNfTY7V8tUQVR/8c1Ln
         0ezb9HCS30mVGad6cl9gH6w6lEn6kl/UMXtGedvd+YdmXxsCANoZPP+0Vq0WiQI5LSRZ
         sELkiTBjSP2mn4CB6/aTIJn/DS7b8tfDncYZtH7x1479YqEystCXtRsLa988sYgzaoDg
         YEEfOUmTkC16DMpuS6/2V4J05pKYq9FxRrvjDggj9DK98SDd0IuUAchVMAbZJRZMKmDo
         I3o6J544kQBJADuSgSurQawDQwShmW0WEfleMspgcfmduU52X3Rqsr3NRZIQMiY9fnGG
         VMUw==
X-Gm-Message-State: AOAM532cPgREu3f3Kd/Xq4JxD3aRYkdEmWo13hJjMjChUEAdrYEUbVBt
        B0tHJPtD5YvYypxSxrVvRG3nCD5jtEdADOgjkK1+caii3otbeGxlZUhgawQn5omqgX7o1pEgEdB
        GgK/JAV4ghl4Q1sPE/Zv+aVPFytdxY0WDReQ87OE=
X-Received: by 2002:a17:906:e13:b0:6ce:21ca:1b91 with SMTP id l19-20020a1709060e1300b006ce21ca1b91mr23486657eji.193.1645621893962;
        Wed, 23 Feb 2022 05:11:33 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzqN7LLprVP7W7VK/4Uq3spoFQPaiet9FLARrRJrnw6k3jKocmQL3RLligIlXMbw8qEbieF2Q==
X-Received: by 2002:a17:906:e13:b0:6ce:21ca:1b91 with SMTP id l19-20020a1709060e1300b006ce21ca1b91mr23486648eji.193.1645621893757;
        Wed, 23 Feb 2022 05:11:33 -0800 (PST)
Received: from localhost.localdomain (xdsl-188-155-181-108.adslplus.ch. [188.155.181.108])
        by smtp.gmail.com with ESMTPSA id h7sm11800293ede.66.2022.02.23.05.11.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 23 Feb 2022 05:11:33 -0800 (PST)
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
To:     David Virag <virag.david003@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>,
        linux-arm-kernel@lists.infradead.org,
        Sam Protsenko <semen.protsenko@linaro.org>,
        phone-devel@vger.kernel.org, Alim Akhtar <alim.akhtar@samsung.com>,
        linux-samsung-soc@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, linux-kernel@vger.kernel.org
Subject: Re: [PATCH v6 0/1] Initial Samsung Galaxy A8 (2018) support
Date:   Wed, 23 Feb 2022 14:10:58 +0100
Message-Id: <164562185401.52450.9639221721231378939.b4-ty@canonical.com>
X-Mailer: git-send-email 2.32.0
In-Reply-To: <20220221194958.117361-1-virag.david003@gmail.com>
References: <20220221194958.117361-1-virag.david003@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_MED,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 21 Feb 2022 20:49:55 +0100, David Virag wrote:
> Add basic initial support for the Samsung Galaxy A8 (2018) smartphone.
> This phone is also known as "jackpotlte" and under the model name
> "SM-A530F". In its current state this should work on most if not all
> Exynos7885 phones/devices released.
> 
> As of now, it supports I2C nodes (all disabled by default) and UART
> console with basic clock support in place.
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: exynos: Add initial device tree support for Exynos7885 SoC
      commit: 06874015327ba7bf6aae49ca825a492a2679237f

Best regards,
-- 
Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
