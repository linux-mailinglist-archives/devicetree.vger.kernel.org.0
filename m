Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 954181A89C5
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:38:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504105AbgDNSip (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:38:45 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:38077 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504089AbgDNSin (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:38:43 -0400
Received: by mail-ot1-f66.google.com with SMTP id k21so720956otl.5
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:38:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=DJ6qutt9QAJXdSjtS7AiyWEiRTP/1mJ7eO7lJ6/te3M=;
        b=bI/bz09SmaAQ2WFSLtkO8h02yVrpIdXqvppAyYUSZkaVGd/YZweqnGdXXNyhjrAyUu
         PlzqRfXTF97sbznQ1VdIT48qKRd6CpJI04CXHOozPbAHYPSuD8rU9L0zLl1h3GJpu+XI
         M3+r3oY+xIpNokvjnztZt0y5VChJEDg6uCIJy7eMA9GuZXE44PLXn2C5t0dGUANV9UKU
         OCNg7ApXjU5Rt69fgfFsp7e7hdjZgxc7ebAt4X5fXXU+HRLXzXhw8qa1FHlNv9W8gqMo
         Dk3oQGt3oP87iYOQfl+5gDwv7C8L2gNqvRl6+r3RHtbW5uLyGL/lgRO+sJiRdT7xumE+
         dzFQ==
X-Gm-Message-State: AGi0PuaJLcI/5ZIf6TMnEjLjndKSECmFdOHzRBEz0rvVpMYCE8hVA/yb
        /XSwNXBB3nou4yT4AIAcuA==
X-Google-Smtp-Source: APiQypJF2iwEBUqeei9FlSDy4sc9fA3N7uV/9740Mn9KpGuZHZ9c2PF8pIusgP7rg//TsoPHjFw7vA==
X-Received: by 2002:a9d:134:: with SMTP id 49mr11644354otu.57.1586889522906;
        Tue, 14 Apr 2020 11:38:42 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id k132sm5817615oih.9.2020.04.14.11.38.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:38:42 -0700 (PDT)
Received: (nullmailer pid 18913 invoked by uid 1000);
        Tue, 14 Apr 2020 18:38:41 -0000
Date:   Tue, 14 Apr 2020 13:38:41 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Hoegeun Kwon <hoegeun.kwon@samsung.com>
Subject: Re: [PATCH v2 20/36] dt-bindings: display: convert samsung AMOLED to
 DT Schema
Message-ID: <20200414183841.GA18856@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-21-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-21-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:53 +0200, Sam Ravnborg wrote:
> For samsung there was two AMOLED panels with the same
> description.
> Collect them in one binding file.
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Hoegeun Kwon <hoegeun.kwon@samsung.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../panel/samsung,amoled-mipi-dsi.yaml        | 65 +++++++++++++++++++
>  .../display/panel/samsung,s6e3ha2.txt         | 31 ---------
>  .../display/panel/samsung,s6e63j0x03.txt      | 24 -------
>  3 files changed, 65 insertions(+), 55 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,amoled-mipi-dsi.yaml
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e3ha2.txt
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e63j0x03.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
