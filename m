Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A44C83A4C5F
	for <lists+devicetree@lfdr.de>; Sat, 12 Jun 2021 05:13:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230302AbhFLDPk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Jun 2021 23:15:40 -0400
Received: from mail.kernel.org ([198.145.29.99]:51466 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S229622AbhFLDPk (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Fri, 11 Jun 2021 23:15:40 -0400
Received: by mail.kernel.org (Postfix) with ESMTPSA id D9CEB610A2;
        Sat, 12 Jun 2021 03:13:39 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=k20201202; t=1623467621;
        bh=bGJD6JztuU3YSLTnT+agt51x4VFd4vyLMMp2lpycHg4=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=K0kcj2MwXQvU21bjbAZOW7s2Ttp6O5uqVEvLZdMFhGVTjlvFllyQKh0Vx4qG452NG
         rPvSO3zREhJ3lrDd+SUmBZGWDlX3VUsEqMerMO+yCP3Rq6kjULKWuGtxcp3zCOds7q
         rqarww7oyWj4HS3hdJYga3OVX8+/ZzqwfsjSdt5n6UIEbkGpBUSI5lWr4jrZpwGiAv
         nLnxNloPe0ii4net3tZ7pK888cBpvIm5i2MPxL1TImWA2RZg8qm4HvmWHW0iUuR+yQ
         GMp3knivMh9r4v6w/L2LgAXEVC6KBuEOqoNJm9imFFuw/Qu9ZR6Sqn7S2OG/vd/TXP
         pfhZUz1oSaGnQ==
Date:   Sat, 12 Jun 2021 11:13:36 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Lucas Stach <dev@lynxeye.de>
Cc:     Fabio Estevam <festevam@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        NXP Linux Team <linux-imx@nxp.com>,
        "Lukas F . Hartmann" <lukas@mntre.com>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, kernel@pengutronix.de
Subject: Re: [PATCH v3 3/4] dt-bindings: arm: fsl: add MNT Reform2 board
Message-ID: <20210612031335.GI29138@dragon>
References: <20210524124536.27854-1-dev@lynxeye.de>
 <20210524124536.27854-3-dev@lynxeye.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210524124536.27854-3-dev@lynxeye.de>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, May 24, 2021 at 02:45:35PM +0200, Lucas Stach wrote:
> Add compatible for the MNT Reform2 laptop board.
> 
> Signed-off-by: Lucas Stach <dev@lynxeye.de>

Applied, thanks.
