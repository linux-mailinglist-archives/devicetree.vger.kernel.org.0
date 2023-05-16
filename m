Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 77ECE704F7B
	for <lists+devicetree@lfdr.de>; Tue, 16 May 2023 15:39:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233115AbjEPNjK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 May 2023 09:39:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50422 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232637AbjEPNjJ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 May 2023 09:39:09 -0400
Received: from vps0.lunn.ch (vps0.lunn.ch [156.67.10.101])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 50D8290
        for <devicetree@vger.kernel.org>; Tue, 16 May 2023 06:39:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=lunn.ch;
        s=20171124; h=In-Reply-To:Content-Disposition:Content-Type:MIME-Version:
        References:Message-ID:Subject:Cc:To:From:Date:From:Sender:Reply-To:Subject:
        Date:Message-ID:To:Cc:MIME-Version:Content-Type:Content-Transfer-Encoding:
        Content-ID:Content-Description:Content-Disposition:In-Reply-To:References;
        bh=J1XZMG/FhwkDvmBGD1OtQvFhMx495NR/vuYDF2ytjUs=; b=GaqhTQorciDvseZZttynArRxEj
        D9arYh5h+/WI5Q4N+Eljhdw9F9W69BEsf/piI5tDNOehjWNPTpmPVSi7h1uaLTtEU7JEirKApMLve
        qRFPfsZSeNLW3eeS/TXaTl12g5uv1negRjD24LQh9xugS2rXgAp8XMZHeYDPH7WLOABU=;
Received: from andrew by vps0.lunn.ch with local (Exim 4.94.2)
        (envelope-from <andrew@lunn.ch>)
        id 1pyutD-00D1LN-DZ; Tue, 16 May 2023 15:38:55 +0200
Date:   Tue, 16 May 2023 15:38:55 +0200
From:   Andrew Lunn <andrew@lunn.ch>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     gregory.clement@bootlin.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: armada-xp: Replace deprecated spi-gpio
 properties
Message-ID: <95de8ebf-22b8-4d9a-9121-f35bfc7edf60@lunn.ch>
References: <20230516131157.579676-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20230516131157.579676-1-festevam@gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, May 16, 2023 at 10:11:57AM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
> 'gpio-mosi' and 'gpio-sck' are deprecated properties.
> 
> Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Reviewed-by: Andrew Lunn <andrew@lunn.ch>

    Andrew
