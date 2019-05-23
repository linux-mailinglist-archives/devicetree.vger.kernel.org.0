Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 4D7BA2733F
	for <lists+devicetree@lfdr.de>; Thu, 23 May 2019 02:25:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728189AbfEWAZP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 May 2019 20:25:15 -0400
Received: from mail.kernel.org ([198.145.29.99]:59158 "EHLO mail.kernel.org"
        rhost-flags-OK-OK-OK-OK) by vger.kernel.org with ESMTP
        id S1727634AbfEWAZP (ORCPT <rfc822;devicetree@vger.kernel.org>);
        Wed, 22 May 2019 20:25:15 -0400
Received: from dragon (98.142.130.235.16clouds.com [98.142.130.235])
        (using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
        (No client certificate requested)
        by mail.kernel.org (Postfix) with ESMTPSA id E382B21019;
        Thu, 23 May 2019 00:25:11 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
        s=default; t=1558571114;
        bh=kZpYOVgq1P8Dc9k5jXTeNu4lA9q7JQgDUMTwYxqWt7I=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=dvPWWRtVAA0NgbSpyEWZB6NGg/YVhm5XS4z+GgKI732gcmvh7MrVaJnxbE/ZYrLvP
         ut9szv/Lr1a6ZOAGtSR849Cx9vxqkW3+6BatJ5wFRCdov2RMX4rzIXBX0eUR8BHJuD
         14HhA41URJSI+y1tjsFqwJZPXE+qXlZ/YJqLRKqQ=
Date:   Thu, 23 May 2019 08:24:18 +0800
From:   Shawn Guo <shawnguo@kernel.org>
To:     Marco Felsch <m.felsch@pengutronix.de>
Cc:     devicetree@vger.kernel.org, Gilles.Buloz@kontron.com,
        Michael.Brunner@kontron.com, frieder.schrempf@kontron.de,
        thomas.schaefer@kontron.com, robh+dt@kernel.org,
        Stefan.Nickl@kontron.com, linux-imx@nxp.com, kernel@pengutronix.de
Subject: Re: [PATCH 00/17] Add Support for Kontron SMARC-sAMX6i
Message-ID: <20190523002417.GA16359@dragon>
References: <20190509155834.22838-1-m.felsch@pengutronix.de>
 <20190520021639.GG15856@dragon>
 <20190521082903.xsc643uvgqjg5ue7@pengutronix.de>
 <20190521091110.GG15856@dragon>
 <20190522105739.tp2mlxel2w7tdvv7@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190522105739.tp2mlxel2w7tdvv7@pengutronix.de>
User-Agent: Mutt/1.5.21 (2010-09-15)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, May 22, 2019 at 12:57:39PM +0200, Marco Felsch wrote:
> Okay, last question. Should I keep Priit Laes patch seperate and add one
> patch above or should I squash all of them?

It's fine to keep Priit's patch as separate.

Shawn
