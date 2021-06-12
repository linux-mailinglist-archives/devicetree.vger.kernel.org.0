Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id F05FE3A4C5E
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 05:13:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230040AbhFLDO7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 23:14:59 -0400
Received: from mail.kernel.org ([198.145.29.99]:50770 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229622AbhFLDO6 (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 23:14:58 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id A366E610A2;
        Sat, 12 Jun 2021 03:12:58 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623467580;
        bh=AndJ5NkC1wQ6d/5ujqwEsw2EKlrGm1sepUgQalWFdnY=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=e6Om7rhSjX0pilMJwCCPjVgO73MVCsq6wIKWkLmhdO/y7HlzN+jN9XX1g+95uwafs
         am6irX8EtKApq97x0g1r5su+T9cFaTFvQo4z/nCqHnrFAX6ns1bkiZsWiW0C0bIVeR
         m4Y3EIj3ELgt0GzjkVDjcAOIE9+SkWw4bPq7FJiDA/0eJR4fRXjEsUIjnIzlUq/fJV
         BMnFm3qQ6h8Hky0+raWhu/hp7KcrzX76akljQBAEERBVsHCnvC9Nqpllu6E2kDa99Y
         VBszdvwQlMa3CXvGXj6d9YiPz0yJ30BjybNJfpCGVw0ee2lMiADsNvi7V4YJN53Dpl
         ywa24zv2PsGfA==
Date:   Sat, 12 Jun 2021 11:12:55 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 2/4] dt-bindings: vendor-prefixes: add mntre
Message-ID: <20210612031246.GH29138@dragon>
References: <20210524124536.27854-1-dev@lynxeye.de>
 <20210524124536.27854-2-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210524124536.27854-2-dev@lynxeye.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 24, 2021 at 02:45:34PM +0200, Lucas Stach wrote:
> MNT Research GmbH develops open source hardware, software
> and textiles in Berlin, Germany.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>
> Acked-by: Rob Herring <robh@kernel.org>

Applied, thanks.
