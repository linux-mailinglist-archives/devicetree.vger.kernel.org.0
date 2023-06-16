Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C3B9E7330B7
	for <lists+devicetree@lfdr.de>; Fri, 16 Jun 2023 14:04:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232355AbjFPMEn (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 16 Jun 2023 08:04:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345152AbjFPMEl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 16 Jun 2023 08:04:41 -0400
Received: from relay7-d.mail.gandi.net (relay7-d.mail.gandi.net [217.70.183.200])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4135930F3
        for <devicetree@vger.kernel.org>; Fri, 16 Jun 2023 05:04:37 -0700 (PDT)
X-GND-Sasl: gregory.clement@bootlin.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=bootlin.com; s=gm1;
        t=1686917075;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=hlCuWySWYgX7Kdg+EfFX5CHUsZ8ytLbktxPmYzXn8j8=;
        b=aoltxPQ7yYUzPN9LsHuCZ8qjAYCsLKBhPseiWeKQ8elWopCJXgKLB4jaHkyMAeyj2dMXU+
        E+jUBZF5V14HHXpxPPSB+4bTrraVQpM0bZ7tEMHxP54CF9+xEssOi/+6RmiDuRTeiFGMfw
        Yaj8X2RJrX/uYjhG4N5xzh1otJSOw2Ye+focZyatLfoyuN+aeJdtbOG7DWQ4E645owENuN
        U/N6yvU2aY82DY2xXZUVU/TYhNyojCnEFplQ7pnvq1zXFOkuWJsA6lOg63qQkW8FhlIAnt
        awzKjpyGVsfLKSL6Ya7uZN6SzzA5giwN3Y807e1EJtDaK8hgViYUnSfEW6fqHw==
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
X-GND-Sasl: gregory.clement@bootlin.com
Received: by mail.gandi.net (Postfix) with ESMTPSA id 1B53220007;
        Fri, 16 Jun 2023 12:04:32 +0000 (UTC)
From:   Gregory CLEMENT <gregory.clement@bootlin.com>
To:     Andrew Lunn <andrew@lunn.ch>,
        Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>,
        Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Tali Perry <tali.perry1@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Russell King <linux@armlinux.org.uk>,
        Sebastian Hesselbarth <sebastian.hesselbarth@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-aspeed@lists.ozlabs.org,
        Philippe =?utf-8?Q?Mathieu-Daud=C3=A9?= <philmd@linaro.org>
Subject: Re: [PATCH v2 3/3] arm64: dts: marvell: Fix pca954x i2c-mux node names
In-Reply-To: <685e7539-0a2b-4bf3-9725-a7a4780c82cb@lunn.ch>
References: <cover.1684856632.git.geert+renesas@glider.be>
 <fed5b15691283ce72ceb9fb074f953c5da0f6852.1684856632.git.geert+renesas@glider.be>
 <685e7539-0a2b-4bf3-9725-a7a4780c82cb@lunn.ch>
Date:   Fri, 16 Jun 2023 14:04:32 +0200
Message-ID: <87fs6rhaun.fsf@BL-laptop>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable
X-Spam-Status: No, score=-2.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_LOW,
        RCVD_IN_MSPIKE_H5,RCVD_IN_MSPIKE_WL,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Andrew Lunn <andrew@lunn.ch> writes:

> On Tue, May 23, 2023 at 05:50:21PM +0200, Geert Uytterhoeven wrote:
>> "make dtbs_check":
>>=20
>>     arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb: i2c-switch@70: $n=
odename:0: 'i2c-switch@70' does not match '^(i2c-?)?mux'
>> 	    From schema: Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.=
yaml
>>     arch/arm64/boot/dts/marvell/armada-8040-mcbin.dtb: i2c-switch@70: Un=
evaluated properties are not allowed ('#address-cells', '#size-cells', 'i2c=
@0', 'i2c@1', 'i2c@2' were unexpected)
>> 	    From schema: Documentation/devicetree/bindings/i2c/i2c-mux-pca954x.=
yaml
>>     ...
>>=20
>> Fix this by renaming PCA954x nodes to "i2c-mux", to match the I2C bus
>> multiplexer/switch DT bindings and the Generic Names Recommendation in
>> the Devicetree Specification.
>>=20
>> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
>> Reviewed-by: Philippe Mathieu-Daud=C3=A9 <philmd@linaro.org>
>
> Reviewed-by: Andrew Lunn <andrew@lunn.ch>
>
>     Andrew

Applied on mvebu/dt64

Thanks,

Gregory

--=20
Gregory Clement, Bootlin
Embedded Linux and Kernel engineering
http://bootlin.com
