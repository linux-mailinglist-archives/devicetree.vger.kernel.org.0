Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 14F5E57CAB3
	for <lists+devicetree@lfdr.de>; Thu, 21 Jul 2022 14:34:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232164AbiGUMea (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 21 Jul 2022 08:34:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41006 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233645AbiGUMe3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 21 Jul 2022 08:34:29 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [213.167.242.64])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EDDFC74E39
        for <devicetree@vger.kernel.org>; Thu, 21 Jul 2022 05:34:27 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 6D98E496;
        Thu, 21 Jul 2022 14:34:25 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1658406865;
        bh=4u/Wl5mxuWl6k4D4roY6y5SIN2NN8QO64TNR6Sq5plw=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=vfw7Et/zkla/2ATtBzgqfBnnlCaex0XfbZjJ4o5nxj0tlsMtamhGc5pKQN1UT2gNX
         UAw7jQZRrBsV5TsBRi0wX4M4BIkamT0pv/k+u3gYk3z2T6Ea3JSR3K4WYJgOC8acVb
         DLV59PwlcMxGR0vNwpchrctr/SGHj1KAPSvkfQUI=
Date:   Thu, 21 Jul 2022 15:34:23 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     devicetree@vger.kernel.org, robert.foss@linaro.org,
        dri-devel@lists.freedesktop.org,
        Guido =?utf-8?Q?G=C3=BCnther?= <agx@sigxcpu.org>,
        Jagan Teki <jagan@amarulasolutions.com>,
        Linus Walleij <linus.walleij@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        Thierry Reding <thierry.reding@gmail.com>
Subject: Re: [PATCH] dt-bindings: vendor-prefixes: add Densitron
Message-ID: <YtlHz1+zLR2oi7cK@pendragon.ideasonboard.com>
References: <20220721030327.210950-1-marex@denx.de>
 <YtjnFxA66V6bMePa@pendragon.ideasonboard.com>
 <0b4927f7-f1e4-60a8-1eaf-6d4cbc38daec@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0b4927f7-f1e4-60a8-1eaf-6d4cbc38daec@denx.de>
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,SPF_HELO_PASS,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Thu, Jul 21, 2022 at 02:24:57PM +0200, Marek Vasut wrote:
> On 7/21/22 07:41, Laurent Pinchart wrote:
> > On Thu, Jul 21, 2022 at 05:03:27AM +0200, Marek Vasut wrote:
> >> Densitron is a manufacturer of LCD panels.
> >> https://www.densitron.com
> >>
> >> Signed-off-by: Marek Vasut <marex@denx.de>
> >> Cc: Guido Günther <agx@sigxcpu.org>
> >> Cc: Jagan Teki <jagan@amarulasolutions.com>
> >> Cc: Laurent Pinchart <laurent.pinchart@ideasonboard.com>
> >> Cc: Linus Walleij <linus.walleij@linaro.org>
> >> Cc: Rob Herring <robh+dt@kernel.org>
> >> Cc: Sam Ravnborg <sam@ravnborg.org>
> >> Cc: Thierry Reding <thierry.reding@gmail.com>
> >> ---
> >>   Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
> >>   1 file changed, 2 insertions(+)
> >>
> >> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> index 88859dd4040ee..6277240536b44 100644
> >> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> >> @@ -312,6 +312,8 @@ patternProperties:
> >>       description: Dell Inc.
> >>     "^delta,.*":
> >>       description: Delta Electronics, Inc.
> >> +  "^densitron,.*":
> > 
> > How about "dsn", to follow the practice of using stock names as vendor
> > prefixes ?
> 
> Is there any benefit to that ? All I can see is that it's making DTS 
> less clear and more difficult to read. It is easy to map "densitron" to 
> "densitron" when it is spelled out like so in the DT, but it sure isn't 
> immediately obvious that "dsn" means "densitron" without extra look up. 
> And even that extra look up of "dsn" does not return densitron, but some 
> woodworking company and other totally unrelated results.

I don't know where that practice originates from, and if it's still the
recommended naming scheme these days. All I know is that it was the
recommended scheme at some point. I expect Rob will be able to tell
which name is best.

-- 
Regards,

Laurent Pinchart
