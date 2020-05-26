Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 132FE1A89C0
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:37:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2504092AbgDNSha (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:37:30 -0400
Received: from mail-ot1-f66.google.com ([209.85.210.66]:44955 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2504090AbgDNSh0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:37:26 -0400
Received: by mail-ot1-f66.google.com with SMTP id j4so666638otr.11
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:37:23 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=/Z+2mWiqdz7nZgXdoRIFLOMZis6GhqLXgKMULSd886I=;
        b=Vvzh3JebVA6J+kZizbjLs0SwVt6TbwAPqeuRF573bb6KvgfNcrspwWXrG2M+LmdRu/
         cxxgYiO3ZvU4ViRzgizpx3OCyPexxCYR2jbJEGfiTVSAdsyJ6rP3iJ+UVfgZ4efVeYlx
         /MVdlLxijmj0yzc8xve8BpSc8bLFAJLlPxkC9Fa0TI2OmEGGmvkwjJdodEfOAeXhS9DH
         /dHYk79yZ2zCy8YFekrmoZ6L+m9qOEI9gm+swef0/9/U0DjqUrGabrloY0GiSubQYMvd
         a5tdKVBXoQ+ep8mY52rkG/5KyE1o7NeHwgDBV0DMCx/EJvEV/BbznQ0EgUTJ5JpTPqTi
         fBAw==
X-Gm-Message-State: AGi0PuYSnJfmZs31DiikFyXEGRHx3Omg8baYqUawUGzxcFNcr44cCeSV
        RHkPwHG2symsEU3oGm3C1w==
X-Google-Smtp-Source: APiQypJfNbHAXGBSoIJ4PMVaR4eNG1YDNWCC8Kfz/4EnOXihoGhsRYeBeqs46FivHtrSTvtNjZBeeg==
X-Received: by 2002:a05:6830:4c:: with SMTP id d12mr4555446otp.85.1586889443559;
        Tue, 14 Apr 2020 11:37:23 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id j186sm1016067oia.31.2020.04.14.11.37.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:37:22 -0700 (PDT)
Received: (nullmailer pid 16983 invoked by uid 1000);
        Tue, 14 Apr 2020 18:37:21 -0000
Date:   Tue, 14 Apr 2020 13:37:21 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Guido =?iso-8859-1?Q?G=FCnther?= <agx@sigxcpu.org>,
        Purism Kernel Team <kernel@puri.sm>
Subject: Re: [PATCH v2 19/36] dt-bindings: display: convert
 rocktech,jh057n00900 to DT Schema
Message-ID: <20200414183721.GA16927@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-20-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200408195109.32692-20-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:52 +0200, Sam Ravnborg wrote:
> v2:
>   - Fix entry in MAINTAINERS
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Reviewed-by: Guido G�nther <agx@sigxcpu.org>
> Cc: "Guido G�nther" <agx@sigxcpu.org>
> Cc: Purism Kernel Team <kernel@puri.sm>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/rocktech,jh057n00900.txt    | 23 --------
>  .../display/panel/rocktech,jh057n00900.yaml   | 57 +++++++++++++++++++
>  MAINTAINERS                                   |  2 +-
>  3 files changed, 58 insertions(+), 24 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/rocktech,jh057n00900.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
