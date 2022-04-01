Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E55294EFA14
	for <lists+devicetree@lfdr.de>; Fri,  1 Apr 2022 20:46:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235854AbiDASr6 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 1 Apr 2022 14:47:58 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56396 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235316AbiDASr5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 1 Apr 2022 14:47:57 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0772B1544BC
        for <devicetree@vger.kernel.org>; Fri,  1 Apr 2022 11:46:03 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 348F92F7;
        Fri,  1 Apr 2022 20:46:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1648838761;
        bh=bIPnJlMFDVmi0C1I8Q2bPj5LFxQ4imZIJVNx9HE6Nwg=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=j3/dgBqn91Fd07hpAMTcNUbc3I/u9WoPvb38QJyYB6PVZKVIL5lFU+xd+YH30kjob
         gskPGn8cDTtBhdk1MzLczSI4ejtjRrdoh1OBIz3SruxITLJV4E8e7MwAmIMXrNwTz1
         ftDnTnwtRXdLwHlGS4v5exk8Gqc7Oy6gZVu5MxBc=
Date:   Fri, 1 Apr 2022 21:45:58 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Rob Herring <robh+dt@kernel.org>
Cc:     Marek Vasut <marex@denx.de>,
        dri-devel <dri-devel@lists.freedesktop.org>,
        Robert Foss <robert.foss@linaro.org>,
        Christoph Niedermaier <cniedermaier@dh-electronics.com>,
        Daniel Vetter <daniel.vetter@ffwll.ch>,
        Dmitry Osipenko <digetx@gmail.com>,
        Noralf =?utf-8?Q?Tr=C3=B8nnes?= <noralf@tronnes.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        devicetree@vger.kernel.org
Subject: Re: [RFC][PATCH 1/3] dt-bindings: display: panel: mipi-dbi-spi: Make
 width-mm/height-mm mandatory
Message-ID: <YkdIZhpy6px3Xgk9@pendragon.ideasonboard.com>
References: <20220401163755.302548-1-marex@denx.de>
 <CAL_JsqKVkc51sXWE6Sh5yHxLX0vJWgFpn8cmjjKSBx4dYzA8qA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAL_JsqKVkc51sXWE6Sh5yHxLX0vJWgFpn8cmjjKSBx4dYzA8qA@mail.gmail.com>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS,
        T_SCC_BODY_TEXT_LINE autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, Apr 01, 2022 at 01:36:53PM -0500, Rob Herring wrote:
> On Fri, Apr 1, 2022 at 11:38 AM Marek Vasut <marex@denx.de> wrote:
> >
> > Make the width-mm/height-mm panel properties mandatory
> > to correctly report the panel dimensions to the OS.
> 
> Adding required properties is an ABI break.

Only if drivers don't provide backward compatibility.

There's still the issue of validation warnings of course. We can ensure
that DT sources in the kernel are updated. For out-of-tree DT, I'll
argue that a validation warning is a good thing, it will notify that an
update is needed.

> > Signed-off-by: Marek Vasut <marex@denx.de>
> > Cc: Christoph Niedermaier <cniedermaier@dh-electronics.com>
> > Cc: Daniel Vetter <daniel.vetter@ffwll.ch>
> > Cc: Dmitry Osipenko <digetx@gmail.com>
> > Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> > Cc: Noralf Trønnes <noralf@tronnes.org>
> > Cc: Rob Herring <robh+dt@kernel.org>
> > Cc: Robert Foss <robert.foss@linaro.org>
> > Cc: Sam Ravnborg <sam@ravnborg.org>
> > Cc: Thomas Zimmermann <tzimmermann@suse.de>
> > Cc: devicetree@vger.kernel.org
> > To: dri-devel@lists.freedesktop.org
> > ---
> >  .../devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml   | 2 ++
> >  1 file changed, 2 insertions(+)
> >
> > diff --git a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > index f29789994b18..c2df8d28aaf5 100644
> > --- a/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > +++ b/Documentation/devicetree/bindings/display/panel/panel-mipi-dbi-spi.yaml
> > @@ -83,6 +83,8 @@ properties:
> >  required:
> >    - compatible
> >    - reg
> > +  - width-mm
> > +  - height-mm
> >    - panel-timing
> >
> >  unevaluatedProperties: false

-- 
Regards,

Laurent Pinchart
