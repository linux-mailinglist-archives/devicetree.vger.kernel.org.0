Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CE5628557D
	for <lists+devicetree@lfdr.de>; Wed,  7 Oct 2020 02:43:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726697AbgJGAnS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Oct 2020 20:43:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725972AbgJGAnS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Oct 2020 20:43:18 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCDF2C061755
        for <devicetree@vger.kernel.org>; Tue,  6 Oct 2020 17:43:17 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id B6F481452;
        Wed,  7 Oct 2020 02:43:14 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1602031394;
        bh=Fz/gNwuZM6o+ijfta4jObivmjg6DcDL11Y35o/Zp5Yk=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=RbQuMgPHbvZpLAYnd/YmrlcbecWRETti1+wp/tZGsaUaYmuP7OsM7V8rA1mZUTPy9
         mkmvPs0anZnNNRUeHRwz9XY3xMx4QfsuRMeLqcotl61nXkEcXBNKmmmO0h3wiOkpk/
         LpdUEY9l7xp2zSe+3wpRzAVLPlVwO7lehQ3C6TNE=
Date:   Wed, 7 Oct 2020 03:42:33 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     Rob Herring <robh@kernel.org>, devicetree@vger.kernel.org,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org,
        NXP Linux Team <linux-imx@nxp.com>,
        Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>
Subject: Re: [PATCH] dt-bindings: mxsfb: Add compatible for i.MX8MM
Message-ID: <20201007004233.GA30598@pendragon.ideasonboard.com>
References: <20201003224801.164112-1-marex@denx.de>
 <20201006211508.GA2853753@bogus>
 <16d91fb6-608f-a199-e3bf-99c5d7b85497@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <16d91fb6-608f-a199-e3bf-99c5d7b85497@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Wed, Oct 07, 2020 at 12:38:50AM +0200, Marek Vasut wrote:
> On 10/6/20 11:15 PM, Rob Herring wrote:
> > On Sun, 04 Oct 2020 00:48:01 +0200, Marek Vasut wrote:
> >> NXP's i.MX8MM has an LCDIF as well.
> >>
> >> Signed-off-by: Marek Vasut <marex@denx.de>
> >> Cc: Fabio Estevam <festevam@gmail.com>
> >> Cc: Guido Günther <agx@sigxcpu.org>
> >> Cc: Lucas Stach <l.stach@pengutronix.de>
> >> Cc: NXP Linux Team <linux-imx@nxp.com>
> >> Cc: Rob Herring <robh+dt@kernel.org>
> >> Cc: Shawn Guo <shawnguo@kernel.org>
> >> ---
> >>  Documentation/devicetree/bindings/display/mxsfb.txt | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> > 
> > Acked-by: Rob Herring <robh@kernel.org>
> > 
> > Though Laurent posted converting this to schema...
> 
> Do you want me to rebase this on top of it or the other way around ?

Would it be OK if I rebased this on top of the conversion, and included
it in the v2 of the mxsfb series ?

-- 
Regards,

Laurent Pinchart
