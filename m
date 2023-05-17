Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7C8C470640C
	for <lists+devicetree@lfdr.de>; Wed, 17 May 2023 11:25:02 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229545AbjEQJY7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 17 May 2023 05:24:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35028 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229963AbjEQJYd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 17 May 2023 05:24:33 -0400
Received: from relay6-d.mail.gandi.net (relay6-d.mail.gandi.net [217.70.183.198])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8517F527D
        for <devicetree@vger.kernel.org>; Wed, 17 May 2023 02:24:32 -0700 (PDT)
Received: (Authenticated sender: gregory.clement@bootlin.com)
        by mail.gandi.net (Postfix) with ESMTPSA id B9683C000A;
        Wed, 17 May 2023 09:24:30 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1684315471;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         in-reply-to:in-reply-to:references:references;
        bh=MD0AngFz+AoQkgODvEVIpd9MOcWiUqbmZunkdnflvi4=;
        b=Qv/KMYjp21LXQxqdNqZizTy8KS+oFnZ6Zq5eVx2mau/FhmjeiBkmkhFXK/OZUv3s1WPX25
        muj6ikWgCsgXGlsMXtO2LqNBZ+pByK9sJlTrA2Czn6NICITh6ysaAo2sgq15lY59MPaSM+
        F9WHWnXCUPnZlRbxSLdvkZiuU9EOPc0KT7A3I9fuyHL3pHq1EvKL5fahGaQ3yMBw4zan/4
        sbKCwxwctCX6BJUaMr4H9YfYPyxnEWjlQY5Q8BTph9rvZcsTvOnigKrTSd0wwlD3Iq6NFt
        WMaVexKb8mo/Gx+ShlBtq2cbyPiui4jvgDzJ+A2qbAlNBGyb9MEZvIUEwKaocQ==
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Andrew Lunn <andrew@lunn.ch>, Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH] ARM: dts: armada-xp: Replace deprecated spi-gpio
 properties
In-Reply-To: <95de8ebf-22b8-4d9a-9121-f35bfc7edf60@lunn.ch>
References: <20230516131157.579676-1-festevam@gmail.com>
 <95de8ebf-22b8-4d9a-9121-f35bfc7edf60@lunn.ch>
Date:   Wed, 17 May 2023 11:24:30 +0200
Message-ID: <874jobxqcx.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,SPF_HELO_NONE,
        SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andrew Lunn <andrew@lunn.ch> writes:

> On Tue, May 16, 2023 at 10:11:57AM -0300, Fabio Estevam wrote:
>> From: Fabio Estevam <festevam@denx.de>
>> 
>> As stated in Documentation/devicetree/bindings/spi/spi-gpio.yaml,
>> 'gpio-mosi' and 'gpio-sck' are deprecated properties.
>> 
>> Use the recommeded 'mosi-gpios' and 'sck-gpios' instead.
>> 
>> Signed-off-by: Fabio Estevam <festevam@denx.de>
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>

Applied on mvebu/dt

Thanks,

Gregory
>
>     Andrew

-- 
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
