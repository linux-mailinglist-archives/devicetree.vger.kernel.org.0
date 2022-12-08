Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8105A647090
	for <lists+devicetree@lfdr.de>; Thu,  8 Dec 2022 14:14:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229772AbiLHNOc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Dec 2022 08:14:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37756 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229619AbiLHNOa (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Dec 2022 08:14:30 -0500
Received: from sin.source.kernel.org (sin.source.kernel.org [145.40.73.55])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 97E6181DBD
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 05:14:29 -0800 (PST)
Received: from smtp.kernel.org (relay.kernel.org [52.25.139.140])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by sin.source.kernel.org (Postfix) with ESMTPS id 0F03FCE2442
        for <devicetree@vger.kernel.org>; Thu,  8 Dec 2022 13:14:28 +0000 (UTC)
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 4E840C433C1;
        Thu,  8 Dec 2022 13:14:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1670505266;
        bh=WadoWmzSEhezI89KiTW/e5WPFBONJsvpELRqmsX7g1M=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=G1pFbA1NwK51wx4dTlNEB7U8WWoNFDjqZqjaRhW7W6n6HO6+11cDV2d5sBAYqcziM
         wi4MgirwNKh4Un4FlNy7Chy+dTGYoxHCnK1aUtvkGBmQAQcyu/Vdewr5gmbtjgyuMS
         1gjUwJEwkrfcimMUpGYWdBzHVnUzOus7z6DV7t/GxlQdXjOtmxPA2A7/0N1cGsrZz7
         Jp941d/UaPi3iuz6XMROJjoguD0teB6M83+C0bgxp1jlVLJzxOAshidxG4dYnfhWGX
         4U5ZRYhHjNF1YCzvDC+1uFBRvjhR2znzPNINj/XUttSYw/eNILCuwBma8y/hGoAhw4
         MZDH8HoIadKUQ==
Date:   Thu, 8 Dec 2022 13:14:19 +0000
From:   Lee Jones <lee@kernel.org>
To:     Christoph Niedermaier <cniedermaier@dh-electronics.com>
Cc:     linux-arm-kernel@lists.infradead.org,
        Support Opensource <support.opensource@diasemi.com>,
        Adam Thomson <Adam.Thomson.Opensource@diasemi.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marek Vasut <marex@denx.de>, kernel@dh-electronics.com,
        devicetree@vger.kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: mfd: da9062: Move IRQ to optional
 properties
Message-ID: <Y5HjK6ITymyy2Q3H@google.com>
References: <20221122095833.3957-1-cniedermaier@dh-electronics.com>
 <20221122095833.3957-2-cniedermaier@dh-electronics.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221122095833.3957-2-cniedermaier@dh-electronics.com>
X-Spam-Status: No, score=-7.1 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_HI,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 22 Nov 2022, Christoph Niedermaier wrote:

> Move IRQ to optional properties, because the MFD DA9061/62
> is usable without IRQ. This makes the chip usable for designs
> that don't have the IRQ pin connected.
> 
> Signed-off-by: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> ---
> Cc: Support Opensource <support.opensource@diasemi.com>
> Cc: Adam Thomson <Adam.Thomson.Opensource@diasemi.com>
> Cc: Lee Jones <lee@kernel.org>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Marek Vasut <marex@denx.de>
> Cc: kernel@dh-electronics.com
> Cc: devicetree@vger.kernel.org
> To: linux-kernel@vger.kernel.org
> ---
>  Documentation/devicetree/bindings/mfd/da9062.txt | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)

Applied, thanks.

-- 
Lee Jones [李琼斯]
