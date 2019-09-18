Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 2BFE7B5AB5
	for <lists+devicetree@lfdr.de>; Wed, 18 Sep 2019 07:08:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727204AbfIRFIq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 18 Sep 2019 01:08:46 -0400
Received: from mail.kernel.org ([198.145.29.99]:45598 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727152AbfIRFIp (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 18 Sep 2019 01:08:45 -0400
Received: from kernel.org (unknown [104.132.0.74])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id 35123214AF;
        Wed, 18 Sep 2019 05:08:45 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1568783325;
        bh=lRSb3A3YnwGdnbdfkKS2tcl3uG83G1W3RLa50MybZQI=;
        h=In-Reply-To:References:Cc:To:From:Subject:Date:From;
        b=iGyC2LnMU+hBE9/ZTzfHr+K9WnPHzbI4Yyi8px/9CiTQvtiEd/RVq7U/oUpjeZeki
         rkMtr4d+ariiQb20BWVFZbummerCd7Mk9JewrDWGJY9xILM/tGDQU/hMNrG0tRlqRq
         d+FZTaDnkwCeemYRhO+NzetZSqpYWjb/9es2lrwQ=
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20190805100310.29048-8-miquel.raynal@bootlin.com>
References: <20190805100310.29048-1-miquel.raynal@bootlin.com> <20190805100310.29048-8-miquel.raynal@bootlin.com>
Cc:     devicetree@vger.kernel.org, linux-clk@vger.kernel.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Gregory Clement <gregory.clement@bootlin.com>,
        Antoine Tenart <antoine.tenart@bootlin.com>,
        Maxime Chevallier <maxime.chevallier@bootlin.com>,
        Nadav Haklai <nadavh@marvell.com>,
        Grzegorz Jaszczyk <jaz@semihalf.com>,
        Marcin Wojtas <mw@semihalf.com>,
        Stefan Chulski <stefanc@marvell.com>,
        Yan Markman <ymarkman@marvell.com>,
        Ben Peled <bpeled@marvell.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>
To:     Mark Rutland <mark.rutland@arm.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>
From:   Stephen Boyd <sboyd@kernel.org>
Subject: Re: [PATCH 7/8] clk: mvebu: ap806: Prepare the introduction of AP807 clock support
User-Agent: alot/0.8.1
Date:   Tue, 17 Sep 2019 22:08:44 -0700
Message-Id: <20190918050845.35123214AF@mail.kernel.org>
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Miquel Raynal (2019-08-05 03:03:09)
> From: Ben Peled <bpeled@marvell.com>
>=20
> Factor out the code that is only useful to AP806 so it will be easier
> to support AP807. No functional changes.
>=20
> Signed-off-by: Ben Peled <bpeled@marvell.com>
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> ---

Applied to clk-next

