Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EBCAA50C0BC
	for <lists+devicetree@lfdr.de>; Fri, 22 Apr 2022 22:45:34 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229568AbiDVUoq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 22 Apr 2022 16:44:46 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34818 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229547AbiDVUop (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 22 Apr 2022 16:44:45 -0400
Received: from mailrelay2-1.pub.mailoutpod1-cph3.one.com (mailrelay2-1.pub.mailoutpod1-cph3.one.com [46.30.210.183])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A76E82F9BF7
        for <devicetree@vger.kernel.org>; Fri, 22 Apr 2022 12:42:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=rsa1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=+0GjcSgNYR8svEKkgbaCXst4oyUKLyZjqbzEFlv8CkY=;
        b=IdBRbAfPJ1WO3PxgSP8kUWKodGRvNu9c4ciTV3s0+IL8HTy0fF6hopRXZ6ssJb+WhAj30hxMNsHX4
         R0RfYwhOzhYqelQL8iyxzKOJKI3x3bVpkez2yKt9vELUDDWyO19FJg9+tMY2AijG2ePD7i0ONiS2VP
         XEQ45Q8ekWeesZrVLNpiUOibKbz3Dz+BQwPgE3W/BoCqIijJ6etejZo9aT24gJ0nEueqBpAI1fy2fL
         pKsyvuvNpm0EkXYJr4xj2XYZqmAqOXWJJyGc6UhH5iHqQr8T5cUIve7i4jT0QnibHHKYQtKqmvR4lx
         3ZpDhiUp/3on6/O8Ffy5foWEUjfQmtA==
DKIM-Signature: v=1; a=ed25519-sha256; c=relaxed/relaxed;
        d=ravnborg.org; s=ed1;
        h=in-reply-to:content-type:mime-version:references:message-id:subject:cc:to:
         from:date:from;
        bh=+0GjcSgNYR8svEKkgbaCXst4oyUKLyZjqbzEFlv8CkY=;
        b=LitUeSnTg09toInfwG96fFjgbC564NKTUDGshZIKvRKV5xjcmHPoAGTPLB54meywklY/vBpaaezB5
         1jo0pvgCA==
X-HalOne-Cookie: 9b0a04b396573c0eaff4eedf26990ba5de679069
X-HalOne-ID: 7c949492-c268-11ec-a906-d0431ea8a290
Received: from mailproxy2.cst.dirpod4-cph3.one.com (80-162-45-141-cable.dk.customer.tdc.net [80.162.45.141])
        by mailrelay2.pub.mailoutpod1-cph3.one.com (Halon) with ESMTPSA
        id 7c949492-c268-11ec-a906-d0431ea8a290;
        Fri, 22 Apr 2022 18:17:36 +0000 (UTC)
Date:   Fri, 22 Apr 2022 20:17:35 +0200
From:   Sam Ravnborg <sam@ravnborg.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, hs@denx.de, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 1/2] dt-bindings: display: simple: Add Startek
 KD070WVFPA043-C069A panel
Message-ID: <YmLxP0ToKC6Hlo25@ravnborg.org>
References: <20220420005625.990999-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420005625.990999-1-festevam@gmail.com>
X-Spam-Status: No, score=-0.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,RCVD_IN_DNSWL_NONE,
        SPF_HELO_PASS,SPF_NONE,URIBL_BLACK autolearn=no autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, Apr 19, 2022 at 09:56:24PM -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add Startek KD070WVFPA043-C069A 7" TFT LCD panel compatible string.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
Acked-by: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../devicetree/bindings/display/panel/panel-simple.yaml         | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> index 1eb9dd4f8f58..e190eef66872 100644
> --- a/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> +++ b/Documentation/devicetree/bindings/display/panel/panel-simple.yaml
> @@ -294,6 +294,8 @@ properties:
>        - starry,kr070pe2t
>          # Starry 12.2" (1920x1200 pixels) TFT LCD panel
>        - starry,kr122ea0sra
> +        # Startek KD070WVFPA043-C069A 7" TFT LCD panel
> +      - startek,kd070wvfpa
>          # Team Source Display Technology TST043015CMHX 4.3" WQVGA TFT LCD panel
>        - team-source-display,tst043015cmhx
>          # Tianma Micro-electronics TM070JDHG30 7.0" WXGA TFT LCD panel
> -- 
> 2.25.1
