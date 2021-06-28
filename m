Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 312BF3B5737
	for <lists+devicetree@lfdr.de>; Mon, 28 Jun 2021 04:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231941AbhF1CeN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 27 Jun 2021 22:34:13 -0400
Received: from mail.kernel.org ([198.145.29.99]:53320 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S231678AbhF1CeN (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Sun, 27 Jun 2021 22:34:13 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id 12CBC619C5;
        Mon, 28 Jun 2021 02:31:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1624847508;
        bh=UvrnUJlvZGS8ahvkprOOj1Uez1eNq+9R61Yv8wYuzCI=;
        h=In-Reply-To:References:Subject:From:Cc:To:Date:From;
        b=abO9L+G0zRoraxKBz7u5J0N2c/MbvE8Rs21wyFERMnbHw38PvvayT+N1hDDOniJTc
         X//7SbDfAg9NSz433AKslaHpQMpC/AyczfyfRX8IjbtSphhkgCtAwyIFSF/hLIX7A3
         ljBldEdDdxfJWr9gfJAgwUDgqoCvz2y6hd2Y9FqjvLrUPMHDs86QC2LdgIcdOBwDWl
         Rv23a+HD58s+nSvz+ztFK3i8y7EfjzjZYXDOYEZITx1bPEEtv5H0390nd/l34WRMuW
         MBT8xPE8xXS5glvoApVmoklAPf7WYC2iSPemHceR00fbmgqLazxLgp7V3pREuwsS0K
         R3wFLgqjyR8Tg==
Content-Type: text/plain; charset="utf-8"
MIME-Version: 1.0
Content-Transfer-Encoding: quoted-printable
In-Reply-To: <20210614155437.3979771-1-sean.anderson@seco.com>
References: <20210614155437.3979771-1-sean.anderson@seco.com>
Subject: Re: [PATCH v2 1/2] dt-bindings: clk: vc5: Add properties for configuring the SD/OE pin
From:   Stephen Boyd <sboyd@kernel.org>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Adam Ford <aford173@gmail.com>,
        Sean Anderson <sean.anderson@seco.com>,
        Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org
To:     Luca Ceresoli <luca@lucaceresoli.net>,
        Sean Anderson <sean.anderson@seco.com>,
        linux-clk@vger.kernel.org
Date:   Sun, 27 Jun 2021 19:31:46 -0700
Message-ID: <162484750680.3259633.18396498411614840341@swboyd.mtv.corp.google.com>
User-Agent: alot/0.9.1
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Quoting Sean Anderson (2021-06-14 08:54:36)
> These properties allow configuring the SD/OE pin as described in the
> datasheet.
>=20
> Signed-off-by: Sean Anderson <sean.anderson@seco.com>
> ---

Applied to clk-next
