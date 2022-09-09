Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9A1395B3EE2
	for <lists+devicetree@lfdr.de>; Fri,  9 Sep 2022 20:34:13 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229491AbiIISeK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 9 Sep 2022 14:34:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229622AbiIISeJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 9 Sep 2022 14:34:09 -0400
Received: from gloria.sntech.de (gloria.sntech.de [185.11.138.130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8AAF41C90D
        for <devicetree@vger.kernel.org>; Fri,  9 Sep 2022 11:34:06 -0700 (PDT)
Received: from ip5b412258.dynamic.kabel-deutschland.de ([91.65.34.88] helo=phil.fritz.box)
        by gloria.sntech.de with esmtpsa  (TLS1.3) tls TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384
        (Exim 4.94.2)
        (envelope-from <heiko@sntech.de>)
        id 1oWipI-0007Ij-5y; Fri, 09 Sep 2022 20:34:04 +0200
From:   Heiko Stuebner <heiko@sntech.de>
To:     devicetree@vger.kernel.org, Chris Morgan <macroalpha82@gmail.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, pgwipeout@gmail.com,
        Chris Morgan <macromorgan@hotmail.com>, cphealy@gmail.com,
        robh+dt@kernel.org, linux-rockchip@lists.infradead.org,
        krzysztof.kozlowski+dt@linaro.org
Subject: Re: [PATCH v3 0/3] Add Anbernic RG353P and RG503
Date:   Fri,  9 Sep 2022 20:33:49 +0200
Message-Id: <166274831283.21181.6861718157177507544.b4-ty@sntech.de>
X-Mailer: git-send-email 2.35.1
In-Reply-To: <20220906210324.28986-1-macroalpha82@gmail.com>
References: <20220906210324.28986-1-macroalpha82@gmail.com>
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

On Tue, 6 Sep 2022 16:03:21 -0500, Chris Morgan wrote:
> Add the devicetrees for the Anbernic RG353P and RG503. This enables
> all the hardware that is currently supported via mainline Linux.
> The remaining hardware (for both devices) includes the display panel
> and the battery. The RG353P also requires drivers to be written and
> mainlined for the touchscreen.
> 
> Changes since V2:
>  - Renamed buttons to be consistent with their externally labelled
>    function. Internal labels (such as sw11) would not allow for reuse
>    of as many buttons in the rgxx3.dtsi tree.
>  - Removed pinctrl for LCD related functions. These will be re-added
>    when the panel drivers are ready.
>  - Changed name of cw2015@62 to power-monitor@62 to keep it generic.
> 
> [...]

Applied, thanks!

[1/3] dt-bindings: vendor-prefixes: add Anbernic
      commit: fff05e5af2247205f2ae4f93d1943d0938d8b2c3
[2/3] dt-bindings: arm: rockchip: Add Anbernic RG353P and RG503
      commit: 22eed92492e4a390da87196d55b1da0af4154595
[3/3] arm64: dts: rockchip: add Anbernic RG353P and RG503
      commit: 523adb553573db46593724fd1cd617339f2e9009

Best regards,
-- 
Heiko Stuebner <heiko@sntech.de>
