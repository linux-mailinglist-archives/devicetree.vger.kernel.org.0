Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D24CE1A89A7
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:34:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2503988AbgDNSeZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:34:25 -0400
Received: from mail-ot1-f67.google.com ([209.85.210.67]:41320 "EHLO
        mail-ot1-f67.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2503532AbgDNSeY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:34:24 -0400
Received: by mail-ot1-f67.google.com with SMTP id f52so680873otf.8
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:34:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aNpXt9qm6dstm/l/OTZTWrrbGypmP32+1gU0CVpcu1M=;
        b=jf5wEuubcjDtOrZu96SgUW1yhb8tDe0jbbdND0aCKrWUepUjSrtO8xpel2kDpGnQM9
         GbRmbYXLGpcjlSGkJn2j2yL0jKBLPnNhMicXX2nu3healPJ5FD7PLDH/zv7aN759DbnX
         IDfLZUZsqdd47cjSYQ3XDUEZio/fSpZnD+H2mM5XjiUcVvzS+v6AdFHaHZZmj6GbPDUq
         5qgQFF/6Q6gEWtW0UCpS5sYA+phHa5z2Nn0iGlOovqExZTvyqiYC3cjJgwnqZilUem0p
         LqZv3Sd4ZbgkheLBa5hXVLgF0GtMlX/9+ORccmoIC5QM9R5aRAj02gfrFCnaeMQu53uB
         2/Vw==
X-Gm-Message-State: AGi0PuYI1OitadsNAR+h7CNWijIo/uPwAMAsX1SCTLWtgiDfwB2CdXzG
        /scD151XL6osv3sGUXRVpQ==
X-Google-Smtp-Source: APiQypI5VZ2X3L0W4mQUSHIi4zZIKsimyyqqm60TzLPNKiCX1GwMUgV7yB8M4Zm21eK5G/p2jmzSGg==
X-Received: by 2002:a4a:b60b:: with SMTP id z11mr5991200oon.86.1586889262976;
        Tue, 14 Apr 2020 11:34:22 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id g12sm1075727otk.71.2020.04.14.11.34.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:34:22 -0700 (PDT)
Received: (nullmailer pid 8690 invoked by uid 1000);
        Tue, 14 Apr 2020 18:34:21 -0000
Date:   Tue, 14 Apr 2020 13:34:21 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Brian Masney <masneyb@onstation.org>,
        Alexandre Courbot <acourbot@chromium.org>
Subject: Re: [PATCH v2 15/36] dt-bindings: display: convert simple lg panels
 to DT Schema
Message-ID: <20200414183421.GA8641@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-16-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-16-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:48 +0200, Sam Ravnborg wrote:
> Add the lg panels that matches the panel-simple binding to
> panel-simple.yaml
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Brian Masney <masneyb@onstation.org>
> Cc: Brian Masney <masneyb@onstation.org>
> Cc: Alexandre Courbot <acourbot@chromium.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../devicetree/bindings/display/panel/lg,acx467akm-7.txt   | 7 -------
>  .../devicetree/bindings/display/panel/lg,ld070wx3-sl01.txt | 7 -------
>  .../devicetree/bindings/display/panel/lg,lh500wx1-sd03.txt | 7 -------
>  .../devicetree/bindings/display/panel/panel-simple.yaml    | 6 ++++++
>  4 files changed, 6 insertions(+), 21 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/lg,acx467akm-7.txt
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/lg,ld070wx3-sl01.txt
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/lg,lh500wx1-sd03.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
