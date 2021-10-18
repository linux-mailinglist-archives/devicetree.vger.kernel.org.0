Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D45EA43280F
	for <lists+devicetree@lfdr.de>; Mon, 18 Oct 2021 21:58:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230159AbhJRUA2 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 18 Oct 2021 16:00:28 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40256 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231971AbhJRUA1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 18 Oct 2021 16:00:27 -0400
Received: from perceval.ideasonboard.com (perceval.ideasonboard.com [IPv6:2001:4b98:dc2:55:216:3eff:fef7:d647])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4DDCEC06161C
        for <devicetree@vger.kernel.org>; Mon, 18 Oct 2021 12:58:16 -0700 (PDT)
Received: from pendragon.ideasonboard.com (62-78-145-57.bb.dnainternet.fi [62.78.145.57])
        by perceval.ideasonboard.com (Postfix) with ESMTPSA id 9E04118F1;
        Mon, 18 Oct 2021 21:58:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ideasonboard.com;
        s=mail; t=1634587092;
        bh=h9q17lnxPlSuYfsSjKylh2YK+JZl6xp76jzw6AuN+eI=;
        h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
        b=aOSt/e+TKryBtJKxp0QWaHcaNM47x892oLl///9lUx3rQkcQiFf9h2DocYYLKScAH
         e2uNJKZd8+yjGoMNftbMY6P/FCTj3yXf91DXft0D1XB+uoz3jbMRazgJmj8dr4Wpfv
         xXzVh9/gc/peA5/itmBm5F4sK06uQG2+90uhXVlI=
Date:   Mon, 18 Oct 2021 22:57:55 +0300
From:   Laurent Pinchart <laurent.pinchart@ideasonboard.com>
To:     Marek Vasut <marex@denx.de>
Cc:     dri-devel@lists.freedesktop.org, Rob Herring <robh+dt@kernel.org>,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH v5 1/2] dt-bindings: display: bridge: lvds-codec:
 Document pixel data sampling edge select
Message-ID: <YW3Rw0hZmB6plu+V@pendragon.ideasonboard.com>
References: <20211017001204.299940-1-marex@denx.de>
 <YW24EbfbtJdMMDRV@pendragon.ideasonboard.com>
 <c34f8a7e-eec6-9373-0c52-f6546ad689a8@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <c34f8a7e-eec6-9373-0c52-f6546ad689a8@denx.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

Hi Marek,

On Mon, Oct 18, 2021 at 09:47:13PM +0200, Marek Vasut wrote:
> On 10/18/21 8:08 PM, Laurent Pinchart wrote:
> 
> [...]
> 
> >> diff --git a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> >> index 1faae3e323a4..708de84ac138 100644
> >> --- a/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> >> +++ b/Documentation/devicetree/bindings/display/bridge/lvds-codec.yaml
> >> @@ -79,6 +79,14 @@ properties:
> >>         - port@0
> >>         - port@1
> >>   
> >> +  pclk-sample:
> >> +    description:
> >> +      Data sampling on rising or falling edge.
> >> +    enum:
> >> +      - 0  # Falling edge
> >> +      - 1  # Rising edge
> >> +    default: 0
> >> +
> > 
> > Shouldn't this be moved to the endpoint, the same way data-mapping is
> > defined as an endpoint property ?
> 
> The strapping is a chip property, not port property, so no.

For this particular chip that's true. I'm still not convinced overall.
For some cases it could be a per-port property, and moving it there for
lvds-codec too could allow implementing helpers to parse DT properties,
without much drawback for this particular use case as far as I can see.
It's hard to predict the future with certainty of course, so I won't
insist.

-- 
Regards,

Laurent Pinchart
