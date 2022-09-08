Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 843265B1ACD
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 13:02:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229706AbiIHLCt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 07:02:49 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60490 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229526AbiIHLCs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 07:02:48 -0400
Received: from dfw.source.kernel.org (dfw.source.kernel.org [IPv6:2604:1380:4641:c500::1])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 59225B276D
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 04:02:47 -0700 (PDT)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by dfw.source.kernel.org (Postfix) with ESMTPS id E93C0619F2
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 11:02:46 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 306E7C433D6;
        Thu,  8 Sep 2022 11:02:44 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1662634966;
        bh=iNASgoNSy1xhUIG434EmNtPD+/r4/y4HDceKBOThb+Y=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=L63njUKp0whTAXjnrrs3lpAaSiZLiucoFweTPv9bfMTJJrJflc1D4tKT/vEiLIjFT
         ogJ74kluGrRnNWg/UntyYojWVGgN5SZJ1TtSoHoohMMjkb0stYnnOpjQQUaP9IAVp/
         OgvTN91Lqu7CRinAmYkd6KaWeiomE4fo1cmB+fLaAYSpw1uZSOXaTQhIUj+GwAgERu
         cKCUzGRoTlDBy2BT9iM2DEhVqUu3MeI5MhSjK0XA4jt9F24PohviISKG5gNaN5pKTc
         xsY5lcyS8aKOvAOnmNGqC5i841VFUJptLv+xYFX9bkDDShL69OIOJX7eqOWtSwS269
         ka993s8weSLVw==
Date:   Thu, 8 Sep 2022 12:02:40 +0100
From:   Lee Jones <lee@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Heiko Stuebner <heiko@sntech.de>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com,
        Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
Subject: Re: [PATCHv3 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Message-ID: <YxnL0DuCxGrwY8LD@google.com>
References: <20220906143825.199089-1-sebastian.reichel@collabora.com>
 <20220906143825.199089-5-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20220906143825.199089-5-sebastian.reichel@collabora.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 06 Sep 2022, Sebastian Reichel wrote:

> Document rk3588 compatible for QoS registers.
> 
> Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/mfd/syscon.yaml | 1 +
>  1 file changed, 1 insertion(+)

Applied, thanks.

-- 
Lee Jones [李琼斯]
