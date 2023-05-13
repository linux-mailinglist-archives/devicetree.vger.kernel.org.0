Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0ED8870183D
	for <lists+devicetree@lfdr.de>; Sat, 13 May 2023 18:49:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229798AbjEMQtg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 13 May 2023 12:49:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229502AbjEMQtf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 13 May 2023 12:49:35 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 95EF52D6D
        for <devicetree@vger.kernel.org>; Sat, 13 May 2023 09:49:33 -0700 (PDT)
Received: from p508fce4f.dip0.t-ipconnect.de ([80.143.206.79] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1pxsR1-0000Vh-Rd; Sat, 13 May 2023 18:49:31 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        Chris Morgan <macromorgan@hotmail.com>,
        maccraft123mc@gmail.com, sebastian.reichel@collabora.com,
        jagan@amarulasolutions.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Subject: Re: [PATCH 0/2] rockchip: Add Anbernic RG353PS
Date:   Sat, 13 May 2023 18:49:27 +0200
Message-Id: <168399655503.610817.14386300924428899116.b4-ty@sntech.de>
X-Mailer: git-send-email 2.39.0
In-Reply-To: <20230512162039.31132-1-macroalpha82@gmail.com>
References: <20230512162039.31132-1-macroalpha82@gmail.com>
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

On Fri, 12 May 2023 11:20:37 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add support for the Anbernic RG353PS, which is a cheaper variant of the
> Anbernic RG353P.
> 
> Chris Morgan (2):
>   dt-bindings: arm: rockchip: add Anbernic RG353PS
>   arm64: dts: rockchip: add Anbernic RG353PS
> 
> [...]

Applied, thanks!

[1/2] dt-bindings: arm: rockchip: add Anbernic RG353PS
      commit: 4e959380ba823cdf4e643ff247b8359e1bcbf683
[2/2] arm64: dts: rockchip: add Anbernic RG353PS
      commit: 4d83538aab4ccb59abdbf7f39568761a8b7d7ea1

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
