Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 16799569AF
	for <lists+devicetree@lfdr.de>; Wed, 26 Jun 2019 14:48:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727239AbfFZMs1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jun 2019 08:48:27 -0400
Received: from asavdk3.altibox.net ([109.247.116.14]:35651 "EHLO
        asavdk3.altibox.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727221AbfFZMs1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jun 2019 08:48:27 -0400
Received: from ravnborg.org (unknown [158.248.194.18])
        (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
        (No client certificate requested)
        by asavdk3.altibox.net (Postfix) with ESMTPS id DABE720042;
        Wed, 26 Jun 2019 14:48:23 +0200 (CEST)
Date:   Wed, 26 Jun 2019 14:48:21 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <treding@nvidia.com>,
        Rob Herring <robh+dt@kernel.org>,
        Jan Tuerk <jan.tuerk@emtrion.com>, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: display: Add ETM0700G0DH6 compatible string
Message-ID: <20190626124821.GA23428@ravnborg.org>
References: <20190529102540.4608-1-marex@denx.de>
 <3798152a-59a8-59e0-e733-1ca900c4d8a4@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3798152a-59a8-59e0-e733-1ca900c4d8a4@denx.de>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=dqr19Wo4 c=1 sm=1 tr=0
        a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
        a=jpOVt7BSZ2e4Z31A5e1TngXxSK0=:19 a=kj9zAlcOel0A:10 a=VwQbUJbxAAAA:8
        a=X1gr3gF3AAAA:8 a=Ikd4Dj_1AAAA:8 a=e5mUnYsNAAAA:8 a=sxQASkU8hzfKXED7QdgA:9
        a=CjuIK1q_8ugA:10 a=AjGcO6oz07-iQ99wixmX:22 a=oRtb9Ll-be5EHZAyT61Y:22
        a=Vxmtnl_E_bksehYqCbjh:22
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek.

On Mon, Jun 24, 2019 at 12:43:49AM +0200, Marek Vasut wrote:
> On 5/29/19 12:25 PM, Marek Vasut wrote:
> > The ETM0700G0DH6 is currently documented as using edt,etm070080dh6
> > compatible string, however the Linux kernel driver as well as a
> > couple of DTs use edt,etm0700g0dh6 compatible string. Add it into
> > the documentation.
> > 
> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Jan Tuerk <jan.tuerk@emtrion.com>
> > Cc: Thierry Reding <treding@nvidia.com>
> > Cc: devicetree@vger.kernel.org
> > To: dri-devel@lists.freedesktop.org
> > ---
> >  .../devicetree/bindings/display/panel/edt,et-series.txt         | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/Documentation/devicetree/bindings/display/panel/edt,et-series.txt b/Documentation/devicetree/bindings/display/panel/edt,et-series.txt
> > index be8684327ee4..b7ac1c725f97 100644
> > --- a/Documentation/devicetree/bindings/display/panel/edt,et-series.txt
> > +++ b/Documentation/devicetree/bindings/display/panel/edt,et-series.txt
> > @@ -40,7 +40,7 @@ simple-panel.txt
> >  | Identifier      | compatbile          | description                         |
> >  +=================+=====================+=====================================+
> >  | ETM0700G0DH6    | edt,etm070080dh6    | WVGA TFT Display with capacitive    |
> > -|                 |                     | Touchscreen                         |
> > +|                 | edt,etm0700g0dh6    | Touchscreen                         |
> >  +-----------------+---------------------+-------------------------------------+
> >  | ETM0700G0BDH6   | edt,etm070080bdh6   | Same as ETM0700G0DH6 but with       |
> >  |                 |                     | inverted pixel clock.               |
> > 
> 
> Bump ?
As I got OK on irx to apply trivial dt-bindings patches for panles I
have now taken care of this one.
Applied to drm-misc-next and will push it out soon.

	Sam
