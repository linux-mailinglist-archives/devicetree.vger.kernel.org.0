Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 5ED9D30CB49
	for <lists+devicetree@lfdr.de>; Tue,  2 Feb 2021 20:21:13 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234354AbhBBTTx (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Feb 2021 14:19:53 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239499AbhBBTRv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Feb 2021 14:17:51 -0500
Received: from mout-p-102.mailbox.org (mout-p-102.mailbox.org [IPv6:2001:67c:2050::465:102])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 24027C0617A7
        for <devicetree@vger.kernel.org>; Tue,  2 Feb 2021 11:17:11 -0800 (PST)
Received: from smtp2.mailbox.org (smtp2.mailbox.org [80.241.60.241])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange ECDHE (P-384) server-signature RSA-PSS (4096 bits) server-digest SHA256)
        (No client certificate requested)
        by mout-p-102.mailbox.org (Postfix) with ESMTPS id 4DVZLL5V8LzQlZD;
        Tue,  2 Feb 2021 20:16:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mailbox.org; h=
        content-type:content-type:content-transfer-encoding:mime-version
        :references:in-reply-to:message-id:date:date:subject:subject
        :from:from:received; s=mail20150812; t=1612293397; bh=j5o4g5IgR5
        bogQDxz/xO2FW94e0Zmzci3W+4QYAWG/4=; b=ntne0RMxxcleZPvRv+JNWBQmHP
        mI8zHFl+/nvUJlj7Ro7OBqo+cOyttbLogkg6gU7M7Uop1/U/D+Yg+1Mg5SlEoCEC
        p+ze7eOrahHUGFnrDwX7+DDbMSkltVgSlrusF9eHVFw9a41nW9ZGLGdyrlq6SWq1
        aujmnFEx3BFh+eB3ka2T/rAngXVmx9FTIrqsax7x6i2KraJH1IZC7+nwRxIn/Ljx
        yU+AsEzHZz44wNw+5G0UXBybLmS73J3DMVII06Im+lXaf0WF/oSxZguX5yosF+u0
        0/magbd7vqEYwN53JvQlmNUS+8nwru+uTDDGAfGG0wM2LI0khjp3Jl47xIRQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mailbox.org; s=mail20150812;
        t=1612293398;
        h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
         to:to:cc:cc:mime-version:mime-version:content-type:content-type:
         content-transfer-encoding:content-transfer-encoding:
         in-reply-to:in-reply-to:references:references;
        bh=mLMdFWiF13BPV8bIu9fLvw1Ac9+BtdWUE1eYsk4p6j4=;
        b=Zl75wn5XbfiJAI4qSGgbKu1GDE8HaQ5HA+JjalyRSWi3rLqOZ9cuS8aR7CNc3+UglbozPX
        po6qTF+GNM4JZ+9BZEji0gVIF1wyB8EWfZ+nFNn9OFQc33BguzogZxDEX1z1lKuwoNhACg
        Tz2OhzfHReibd/dLOffAxwwBrGFbWHXPvA7CSq1AjULiYQ3axR+OzvPlaFhwRSv4PjANHj
        DdY0ruKaFAH15t1ZKDhiG2e4NNTzKkpKmqTbwQaHePxWnlfoxmLQWW2350PRYF29sYe7dr
        JVzzTTnidYRXt424cF36qoAwAPPijM8psXgaqzg4Rhh5w7UbioijVmYB4iCg6g==
X-Virus-Scanned: amavisd-new at heinlein-support.de
Received: from smtp2.mailbox.org ([80.241.60.241])
        by spamfilter01.heinlein-hosting.de (spamfilter01.heinlein-hosting.de [80.241.56.115]) (amavisd-new, port 10030)
        with ESMTP id K_NZxzID2G8p; Tue,  2 Feb 2021 20:16:37 +0100 (CET)
From:   Alexander Stein <alexander.stein@mailbox.org>
To:     Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        Neil Armstrong <narmstrong@baylibre.com>
Cc:     devicetree@vger.kernel.org, linux-amlogic@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 1/1] arm64: dts: meson: g12b: odroid-n2: Add I2C RTC device node
Date:   Tue, 02 Feb 2021 20:16:35 +0100
Message-ID: <5974424.6LiauEnjn7@kongar>
In-Reply-To: <c63a4da5-b598-2484-24bf-d7b4697e28e1@baylibre.com>
References: <20210202170846.81685-1-alexander.stein@mailbox.org> <c63a4da5-b598-2484-24bf-d7b4697e28e1@baylibre.com>
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset="iso-8859-1"
X-MBO-SPAM-Probability: 
X-Rspamd-Score: -6.14 / 15.00 / 15.00
X-Rspamd-Queue-Id: 7BFB917E6
X-Rspamd-UID: 2bbc93
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi,

 On Tuesday, February 2, 2021, 6:29:48 PM CET Neil Armstrong wrote:
> Hi,
>=20
> On 02/02/2021 18:08, Alexander Stein wrote:
> > This is taken from the downstream kernel and works out of the box.
>=20
> Please keep authorship of the downstream commit.

Sure, will do.

> > +&i2c3 {
> > +	status =3D "okay";
> > +	pinctrl-0 =3D <&i2c3_sda_a_pins>, <&i2c3_sck_a_pins>;
> > +	pinctrl-names =3D "default";
> > +
> > +	rtc: rtc@51 {
> > +		compatible =3D "nxp,pcf8563";
> > +		reg =3D <0x51>;
>=20
> Interrupt line is missing, Anand added:
> +=BB       =BB       /*=B7RTC=B7INT=B7*/
> +=BB       =BB       interrupts=B7=3D=B7<GPIOAO_7=B7IRQ_TYPE_LEVEL_LOW>;
> +=BB       =BB       interrupt-parent=B7=3D=B7<&gpio_intc>;
>=20
> > +		wakeup-source;
> > +	};
> > +};

Eh, where did you get that? I'm talking about this commit https://github.co=
m/
hardkernel/linux/commit/b2e22de15e55bb070a2fd45150a6d3e0179ed0e6

There is no interrupt line, although I understand it's missing.

Best regards,
Alexander




