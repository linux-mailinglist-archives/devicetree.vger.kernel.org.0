Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 8420F412AC0
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 03:56:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236577AbhIUB55 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 20 Sep 2021 21:57:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:32936 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236370AbhIUBuK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 20 Sep 2021 21:50:10 -0400
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com [IPv6:2607:f8b0:4864:20::333])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 36F01C0698E6
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:02:00 -0700 (PDT)
Received: by mail-ot1-x333.google.com with SMTP id c42-20020a05683034aa00b0051f4b99c40cso25674579otu.0
        for <devicetree@vger.kernel.org>; Mon, 20 Sep 2021 15:02:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=oXcLbrW/jld7ga+Id5i7zCjnyuP2u7hgKeQbsqpm3lE=;
        b=musV8BSbVTQc6Ot70mb+YNLLf1Ey1gcjytW9W3BGeVuQp8YuAaTKZL6rQvwxeOIBmT
         J47M1jR96nGflfaSYygsD3w7f2adYUjUar04fI1i6jn9D2ihKY3ewdTBC7Dl+q0su+ZS
         H8Q94+2V7fipJ6sxDYQVNBASF7HOwju4P8NTDk7AK9J9VlFGW/bE/HlCjtQ/Tr/6BLGb
         ZORi7RJSyasyDZaglbhsnoU8H8kBOI+aCOf34GXVkn9Jtj2I8iY9UqeOz9H+1UhYoENh
         27H3MU7cSA7vsRbbj61H4WZJTJQ7lQna2nfo9ULa/YPjInCtNi6qcPYONg47LYqKMJOZ
         3N9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=oXcLbrW/jld7ga+Id5i7zCjnyuP2u7hgKeQbsqpm3lE=;
        b=rD/pAjTeHV1slsEM6qWWKe3+587cwwAd8b9EOAA4Gi9JKlTRQX5lwJwBx6gL59uGmf
         qQ6nkXPPycW5UdLlQ6qIOsIf/5Dj9rhEybkQRqmGkC5iL96hD5OK5S/7r8KGK7nDF8ka
         VR5+XV2dgt+0zbFKjyNdQtUzTrKXIzSAMrmKYntyeVUDYfY1DNZpn1VTQqGzKM709flH
         +nnL9QaU3ilLdVR8svpYGiwylN7Xjg0HR93pRBINZhnNWKWvpeYwVKvqd1hd0B4gtTOR
         yGpT+9mluvoIa8FIrkSl83NNRdymRJrYdOplsN23nLF2XaPAi3qiJ492j8caP32oOBOU
         OsuQ==
X-Gm-Message-State: AOAM531N6Afla8XxMdA+H4ZIiekqFQEMCkVlnZWpgmf+guCwU8koNWtP
        Bgt7ojzp9ehE3MGwV1oDHaLg5A==
X-Google-Smtp-Source: ABdhPJx1XnRjOjIhKGabi9jCc+dSftQbBkK54NUpzpRRN+rkMCrfAnUBvbA0WFVfiOe1eBmEv4x/JQ==
X-Received: by 2002:a9d:6359:: with SMTP id y25mr22735337otk.274.1632175320007;
        Mon, 20 Sep 2021 15:02:00 -0700 (PDT)
Received: from builder.lan (104-57-184-186.lightspeed.austtx.sbcglobal.net. [104.57.184.186])
        by smtp.gmail.com with ESMTPSA id j13sm2923244oos.22.2021.09.20.15.01.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 20 Sep 2021 15:01:59 -0700 (PDT)
Date:   Mon, 20 Sep 2021 17:01:57 -0500
From:   Bjorn Andersson <bjorn.andersson@linaro.org>
To:     Suman Anna <s-anna@ti.com>
Cc:     Nishanth Menon <nm@ti.com>,
        Sinthu Raja <sinthu.raja@mistralsolutions.com>,
        Rob Herring <robh+dt@kernel.org>,
        Baolin Wang <baolin.wang7@gmail.com>,
        Ohad Ben-Cohen <ohad@wizery.com>, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Sinthu Raja <sinthu.raja@ti.com>
Subject: Re: [PATCH] dt-bindings: hwlock: omap: Remove board-specific
 compatible from DT example
Message-ID: <YUkE1TRVBxnLuktb@builder.lan>
References: <20210917094740.18891-1-sinthu.raja@ti.com>
 <20210917144455.nj6bc2enytlgqmzn@studied>
 <ba7e9eff-6cd1-2705-4c27-f3a700345ed2@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ba7e9eff-6cd1-2705-4c27-f3a700345ed2@ti.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon 20 Sep 16:14 CDT 2021, Suman Anna wrote:

> On 9/17/21 9:44 AM, Nishanth Menon wrote:
> > On 15:17-20210917, Sinthu Raja wrote:
> >> From: Sinthu Raja <sinthu.raja@ti.com>
> >>
> >> The example includes a board-specific compatible property, this is
> >> wrong as the example should be board agnostic. Replace the same with a
> >> generic soc node.
> >>
> >> Fixes: d8db9dc34871 ("dt-bindings: hwlock: omap: Convert binding to YAML")
> >> Signed-off-by: Sinthu Raja <sinthu.raja@ti.com>
> >> ---
> >>
> >> This patch was triggered by discussions in [1].
> >>
> >> When applying the patch, if you could provide an immutable tag for the
> >> bindings, it would help line things up for new platforms to be added for
> >> us. See [2] for the context
> > 
> > 
> > Aah yes, thanks.. Bjorn.. once Rob acks ofcourse (since this is
> > bindings).
> 
> Hmm, I don't think an immutable tag is needed for this patch. This is just
> cleanup, what is your exact dependency here?
> 
> The relevant HwSpinlock dts nodes are all upstream on all applicable platforms
> already.
> 

I agree and in general I think it's better to do DT validation against
linux-next, as you would otherwise miss out on any newly introduced
issues from inherited bindings etc.

Regards,
Bjorn

> regards
> Suman
> 
> 
> > 
> > Reviewed-by: Nishanth Menon <nm@ti.com>
> > 
> > 
> >>
> >> [1] https://lore.kernel.org/all/20210818074030.1877-1-sinthu.raja@ti.com/
> >> [2] https://lore.kernel.org/linux-arm-kernel/20210125141642.4yybjnklk3qsqjdy@steersman/
> >>
> >>  .../devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml        | 4 +---
> >>  1 file changed, 1 insertion(+), 3 deletions(-)
> >>
> >> diff --git a/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml b/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml
> >> index ae1b37dbee75..d56dc1bebdc6 100644
> >> --- a/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml
> >> +++ b/Documentation/devicetree/bindings/hwlock/ti,omap-hwspinlock.yaml
> >> @@ -47,10 +47,8 @@ examples:
> >>      };
> >>  
> >>    - |
> >> -    / {
> >> +    soc {
> >>          /* K3 AM65x SoCs */
> >> -        model = "Texas Instruments K3 AM654 SoC";
> >> -        compatible = "ti,am654-evm", "ti,am654";
> >>          #address-cells = <2>;
> >>          #size-cells = <2>;
> >>  
> >> -- 
> >> 2.32.0
> >>
> > 
> 
