Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0A6102B2E99
	for <lists+devicetree@lfdr.de>; Sat, 14 Nov 2020 17:50:55 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726765AbgKNQtf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 14 Nov 2020 11:49:35 -0500
Received: from mail.kernel.org ([198.145.29.99]:58868 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726265AbgKNQtf (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sat, 14 Nov 2020 11:49:35 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 5552120719;
        Sat, 14 Nov 2020 16:49:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605372574;
        bh=SMjNcUazfPNcq5KK3otwxpgQEsmcn3XdecTqcuYARgY=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=es6M0pRmd+QfAc1rYtVprxaBnR2YwTTs77oupnNVBMWKRvbBE7g1pRFcv6yIhwu6d
         caJYDr4Fqe3j10T1zDIkucFb9P8EpeZWTjLBkx6bQFXu9oAhHWGxuvjcOuj+3bJpWF
         uMXKtD69d0DYHdOTLxGGEoy87T7vlXqe8/fPV7QI=
Date:   Sat, 14 Nov 2020 17:49:28 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>
Cc:     arm@kernel.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Andrew Lunn <andrew@lunn.ch>, Rob Herring <robh+dt@kernel.org>,
        devicetree@vger.kernel.org
Subject: Re: [PATCH mvebu-dt 3/6] ARM: dts: turris-omnia: describe
 ethernet-phy interrupt
Message-ID: <20201114174928.5ab4f8ae@kernel.org>
In-Reply-To: <20201114160409.19670-4-kabel@kernel.org>
References: <20201114160409.19670-1-kabel@kernel.org>
        <20201114160409.19670-4-kabel@kernel.org>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 14 Nov 2020 17:04:06 +0100
Marek Beh=C3=BAn <kabel@kernel.org> wrote:

> +		interrupt-parent =3D <&pcawan>;
> +		interrupt =3D <7 IRQ_TYPE_LEVEL_LOW>;

Also we need to use IRQ_TYPE_EDGE_FALLING. The gpio-pca953x driver does
not support IRQ_TYPE_LEVEL_LOW...
