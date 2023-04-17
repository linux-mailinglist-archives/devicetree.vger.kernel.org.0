Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8DBA06E54C0
	for <lists+devicetree@lfdr.de>; Tue, 18 Apr 2023 00:44:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229524AbjDQWn7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 Apr 2023 18:43:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35268 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229477AbjDQWn7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 Apr 2023 18:43:59 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E0A2F46A0
        for <devicetree@vger.kernel.org>; Mon, 17 Apr 2023 15:43:56 -0700 (PDT)
Received: from ip4d1634d3.dynamic.kabel-deutschland.de ([77.22.52.211] helo=phil.lan)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1poXZf-0007IA-MH; Tue, 18 Apr 2023 00:43:51 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Martijn Braam <martijn@brixit.nl>,
        Rob Herring <robh+dt@kernel.org>,
        Caleb Connolly <kc@postmarketos.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Tom Fitzhenry <tom@tom-fitzhenry.me.uk>,
        linux-rockchip@lists.infradead.org,
        Peter Robinson <pbrobinson@gmail.com>,
        Ondrej Jirman <megi@xff.cz>,
        linux-arm-kernel@lists.infradead.org,
        Jarrah Gosbell <kernel@undef.tools>
Cc:     Heiko Stuebner <heiko@sntech.de>,
        =?UTF-8?q?Kamil=20Trzci=C5=84ski?= <ayufan@ayufan.eu>
Subject: Re: [PATCH] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
Date:   Tue, 18 Apr 2023 00:43:50 +0200
Message-Id: <168177137686.3957008.3968889356953831815.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230405123813.2272919-1-pbrobinson@gmail.com>
References: <20230405123813.2272919-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,T_SPF_HELO_TEMPERROR autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 5 Apr 2023 13:38:13 +0100, Peter Robinson wrote:
> From: Ondrej Jirman <megi@xff.cz>
> 
> These are implemented via regular ADC, so regular polling is needed,
> for these keys to work.
> 
> 

Applied, thanks!

[1/1] arm64: dts: rk3399-pinephone-pro: Add support for volume keys
      commit: d3150ed535805403291b95fd84b00b0b5ef41096

With Volume Down increased to 600mV as suggested by Ondrej

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
