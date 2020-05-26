Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 79F9A1A89B9
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:36:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504070AbgDNSgt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:36:49 -0400
Received: from mail-oi1-f196.google.com ([209.85.167.196]:39352 "EHLO
        mail-oi1-f196.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1730984AbgDNSgr (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:36:47 -0400
Received: by mail-oi1-f196.google.com with SMTP id 8so1092931oiy.6
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:36:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=RiaQWq2NYwgbrwKOf4tUCMX0fzNiLyUXlcD+SP0MVHY=;
        b=jNJGxTk4TCFSeDFjNsqOfNycIZCPMm0H1SQrvUNmirLMz8FaH7/62HilXmJwN5R3WX
         XOh3xKWQp5Nfd9jQKB9jza7j5wOI7DgF3zQrDoVtTvWhKJrDzhDRRn1C2G+1sz2JwW7v
         r3/ic6dxeAoGl3GKiuPeQvY9om6CXvHJjBevRv2vRhLzhSE+N+f6i3NRWhkM4GrDZc1s
         jqfBxVenYMuOUssWR0wG6X4ueAv+26GpreME2JL0RkgxJV0GA+7G/n44E7fgtUGIkFb6
         /Rm66difotGNDujeZVTVeg4W1RJAQDa2oTSiogKFvugNclJFv1HfqNuly+nx0pUjrfw9
         /4vw==
X-Gm-Message-State: AGi0Pua/ot4uzA6jH8v2Ik5s9jWy3o3/kpZEfV1eSGQewJlpKm2BVrqY
        cTumOXimCnbYAFnbhO1/Ow==
X-Google-Smtp-Source: APiQypKaf2LvtYE5Z9bp53Kr+d+5Lc8yerArAJZVegI5fi7TiOKfTa+p66W1cGVP/ccAsa6dn7eFsA==
X-Received: by 2002:a05:6808:8:: with SMTP id u8mr15805568oic.37.1586889406416;
        Tue, 14 Apr 2020 11:36:46 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id c15sm6342649oot.23.2020.04.14.11.36.45
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:36:46 -0700 (PDT)
Received: (nullmailer pid 16031 invoked by uid 1000);
        Tue, 14 Apr 2020 18:36:45 -0000
Date:   Tue, 14 Apr 2020 13:36:45 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Robert Chiras <robert.chiras@nxp.com>
Subject: Re: [PATCH v2 18/36] dt-bindings: display: convert raydium,rm67191
 to DT Schema
Message-ID: <20200414183645.GA15991@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-19-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-19-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:51 +0200, Sam Ravnborg wrote:
> v2:
>   - Fix entry in MAINTAINERS
>   - Add reg number to node name (Rob)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Robert Chiras <robert.chiras@nxp.com>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/raydium,rm67191.txt         | 41 ----------
>  .../display/panel/raydium,rm67191.yaml        | 75 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 76 insertions(+), 42 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/raydium,rm67191.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/raydium,rm67191.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
