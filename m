Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CE0406317E9
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 01:49:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229746AbiKUAt1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 20 Nov 2022 19:49:27 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43474 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229677AbiKUAt1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 20 Nov 2022 19:49:27 -0500
Received: from mail-4325.protonmail.ch (mail-4325.protonmail.ch [185.70.43.25])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 332DA2099C
        for <devicetree@vger.kernel.org>; Sun, 20 Nov 2022 16:49:26 -0800 (PST)
Date:   Mon, 21 Nov 2022 00:49:16 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=protonmail.com;
        s=protonmail3; t=1668991764; x=1669250964;
        bh=+5UrjrS0Hz8rcSvOZnq/4+XuJKrPQQTl/BmTyra1KyY=;
        h=Date:To:From:Cc:Subject:Message-ID:Feedback-ID:From:To:Cc:Date:
         Subject:Reply-To:Feedback-ID:Message-ID:BIMI-Selector;
        b=OrUo6Q9qTdq8dRuHva0vH+mzhf9r0/mlxFHKA3Fg9fIPFwVZMYDVC7ndFQI1Wxyx9
         dfhzb4gDBjt0bS7+Y0MKWleOt7BM7UCOuQOF7aqF8pZRdW4UWyF8yImuQyTuRbXpWR
         d4L725L9rZ5PqjUEShAWyvSe0mK9MRVxWtyyXYDe9NcLILjsQgz2m7c6r8w9UgoM2k
         hAAotvg7WcZNILPFUfSnD4f7safm0JaFLlwgwQ9+1WrdmZOIXhLl5gnLb5O/15gIXT
         spARBJJML+5DQWGUKUsx/q3Utxbr0kNmM04vlw1S/xPQt1qv5Ni7zqMfmHSYuAXIhC
         Mi/8wNRGAhUeA==
To:     linux-kernel@vger.kernel.org
From:   "Lin, Meng-Bo" <linmengbo0689@protonmail.com>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Linus Walleij <linus.walleij@linaro.org>,
        Stanislav Jakubek <stano.jakubek@gmail.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Stephan Gerhold <stephan@gerhold.net>,
        Nikita Travkin <nikita@trvn.ru>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org,
        ~postmarketos/upstreaming@lists.sr.ht
Subject: [PATCH v2 0/5] arm64: dts: qcom: msm8916-gplus-fl8005a: Add initial device tree
Message-ID: <20221121004813.3883-1-linmengbo0689@protonmail.com>
Feedback-ID: 40467236:user:proton
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,FREEMAIL_ENVFROM_END_DIGIT,
        FREEMAIL_FROM,SPF_HELO_PASS,SPF_PASS autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

v2: Set property status =3D "okay"; as the last property.
Reword the bindings patch.

GPLUS FL8005A is a tablet using the MSM8916 SoC released in 2015.

Add a device tree for with initial support for:

- GPIO keys
- GPIO LEDs
- pm8916-vibrator
- SDHCI (internal and external storage)
- USB Device Mode
- UART
- WCNSS (WiFi/BT)
- Regulators
- Focaltech FT5402 touchscreen
- SGM3140 Flash LED

