Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 50D0F6296D6
	for <lists+devicetree@lfdr.de>; Tue, 15 Nov 2022 12:11:44 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238250AbiKOLLl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Nov 2022 06:11:41 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46478 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229545AbiKOLKn (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Nov 2022 06:10:43 -0500
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65D3D1081
        for <devicetree@vger.kernel.org>; Tue, 15 Nov 2022 03:10:25 -0800 (PST)
Received: from wf0498.dip.tu-dresden.de ([141.76.181.242] helo=phil.dip.tu-dresden.de)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1outpe-0007ai-Uv; Tue, 15 Nov 2022 12:10:23 +0100
From:   Heiko Stuebner <heiko@sntech.de>
To:     Peter Robinson <pbrobinson@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>
Subject: Re: [PATCH] arm64: dts: rockchip: Add HDMI supplies on Rock960
Date:   Tue, 15 Nov 2022 12:10:18 +0100
Message-Id: <166851058435.863884.5331116398548373521.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20221102143242.1126229-1-pbrobinson@gmail.com>
References: <20221102143242.1126229-1-pbrobinson@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_PASS,
        T_SPF_HELO_TEMPERROR autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 2 Nov 2022 14:32:42 +0000, Peter Robinson wrote:
> Add the avdd-0v9-supply and avdd-1v8-supply regulators to
> hdmi node for Rock960 to silence the following dmesg warning.
> 
> [    6.582782] dwhdmi-rockchip ff940000.hdmi: supply avdd-0v9 not found, using dummy regulator
> [    6.583094] dwhdmi-rockchip ff940000.hdmi: supply avdd-1v8 not found, using dummy regulator
> 
> 
> [...]

Applied, thanks!

[1/1] arm64: dts: rockchip: Add HDMI supplies on Rock960
      commit: ede9c902220036a7e18d753d2b2352b59757aa67

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
