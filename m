Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6148A2B43BF
	for <lists+devicetree@lfdr.de>; Mon, 16 Nov 2020 13:30:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726411AbgKPM2e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 16 Nov 2020 07:28:34 -0500
Received: from mail.kernel.org ([198.145.29.99]:46804 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1726236AbgKPM2e (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Mon, 16 Nov 2020 07:28:34 -0500
Received: from localhost (otava-0257.koleje.cuni.cz [78.128.181.4])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 4E3E12224B;
        Mon, 16 Nov 2020 12:28:32 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1605529714;
        bh=Je2K8BFL1qJ1NxumANlXqNjVdWWoUBvJE/yBgqS2q8I=;
        h=Date:From:To:Cc:Subject:In-Reply-To:References:From;
        b=Ol9FFQhkdZnBVkhEgbNiS/xntv2wf4hAU9d/OxKDb/VugmbXhYAUN+PQUc7osBFvw
         EWlcQmoAgozaVznoxdopfH8JUncciWKpJBqfPTZ/+/Uk4csRimWYAXwT40ynrIBP7d
         hu4B+z125M3LxW8Td6nFvcuutJEYj6ZXkh54uYoA=
Date:   Mon, 16 Nov 2020 13:28:27 +0100
From:   Marek =?UTF-8?B?QmVow7pu?= <kabel@kernel.org>
To:     Gregory CLEMENT <gregory.clement@bootlin.com>,
        devicetree@vger.kernel.org
Cc:     arm@kernel.org, Andrew Lunn <andrew@lunn.ch>,
        Russell King - ARM Linux admin <linux@armlinux.org.uk>,
        linux-arm-kernel@lists.infradead.org,
        Uwe =?UTF-8?B?S2xlaW5lLUvDtm5pZw==?= <uwe@kleine-koenig.org>,
        Jason Cooper <jason@lakedaemon.net>,
        Andreas =?UTF-8?B?RsOkcmJlcg==?= <afaerber@suse.de>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH mvebu-dt v3.1 4/7] ARM: dts: turris-omnia: add SFP node
Message-ID: <20201116132827.07759e64@kernel.org>
In-Reply-To: <20201116122422.6840-1-kabel@kernel.org>
References: <20201115135923.11523-5-kabel@kernel.org>
        <20201116122422.6840-1-kabel@kernel.org>
X-Mailer: Claws Mail 3.17.6 (GTK+ 2.24.32; x86_64-pc-linux-gnu)
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 16 Nov 2020 13:24:22 +0100
Marek Beh=C3=BAn <kabel@kernel.org> wrote:

JFI, added

> maximum-power-milliwatt =3D <3000>;

since HW guys just confirmed this.

Marek
