Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 326461A893A
	for <lists+devicetree@lfdr.de>; Tue, 14 Apr 2020 20:22:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2503843AbgDNSWt (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 14 Apr 2020 14:22:49 -0400
Received: from mail-ot1-f68.google.com ([209.85.210.68]:40322 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2503836AbgDNSWk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 14 Apr 2020 14:22:40 -0400
Received: by mail-ot1-f68.google.com with SMTP id i27so642517ota.7
        for <devicetree@vger.kernel.org>; Tue, 14 Apr 2020 11:22:40 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=uZUhJk9RG4n2nHH8maECnVbbQCyLJ6sX2FQBvOd5hJM=;
        b=mrgPYqoDR3am0JoitPNd8yfc0HGxRkm3sB+IoZ7fSiz+vlUmwo6KFS4jfcIZafjhrq
         sQcXh7OLu6lUEsOsWGNfoHVsfnmndYYt9XxbJ2ZLRDqbpxuGyU+eI8X6mA9weHp6iC6b
         7o1vU+eJvqvcHwzhZ725ZBMih8AlImGh2ti1+M7jh2hZeoJr2AzsGL/H0zUV79H9kamy
         IiXc1lRcBf75ItJIes1a6m5XKVeM6Xi14abbcp2CzSYFrsU3zWEpDuwoJOTkQbgG/hYS
         ycpvAHlO8cXlXbnXkAxOMIiNMhnlcruryR3KGIcr5NBUieqegGlXnQtinJY1lHe3nTUB
         ObBA==
X-Gm-Message-State: AGi0PuZKM1rUfpg09+rMrNdL48gFqWJeMGJBRwv6DMktIDaY5wA4H1r4
        CH8srG5PrEzX+klIsUzjXQ==
X-Google-Smtp-Source: APiQypIr3jipNBz31YgokkRv69rs1cbC//NOXH/M/K/yHL4tIy/S0qNCBdt9QZbOIx23krkPaZW6Lg==
X-Received: by 2002:a05:6830:2152:: with SMTP id r18mr20378428otd.338.1586888559597;
        Tue, 14 Apr 2020 11:22:39 -0700 (PDT)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id p5sm154543ooa.14.2020.04.14.11.22.38
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 14 Apr 2020 11:22:38 -0700 (PDT)
Received: (nullmailer pid 7604 invoked by uid 1000);
        Tue, 14 Apr 2020 18:22:38 -0000
Date:   Tue, 14 Apr 2020 13:22:38 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sam Ravnborg <sam@ravnborg.org>
Cc:     dri-devel@lists.freedesktop.org,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org, Sam Ravnborg <sam@ravnborg.org>,
        Maxime Ripard <mripard@kernel.org>,
        Jonathan Bakker <xc-racer2@live.ca>
Subject: Re: [PATCH v2 04/36] dt-bindings: display: convert samsung,s6e63m0
 to DT Schema
Message-ID: <20200414182238.GA7528@bogus>
References: <20200408195109.32692-1-sam@ravnborg.org>
 <20200408195109.32692-5-sam@ravnborg.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200408195109.32692-5-sam@ravnborg.org>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed,  8 Apr 2020 21:50:37 +0200, Sam Ravnborg wrote:
> The binding for this panel is a SPI slave.
> 
> v2:
>   - Drop use of spi-slave (Maxime)
>   - Introude unevaluatedProperties (Maxime)
>   - Drop reg entry in example (Rob)
> 
> Signed-off-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Maxime Ripard <mripard@kernel.org>
> Cc: Rob Herring <robh@kernel.org>
> Cc: Jonathan Bakker <xc-racer2@live.ca>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> ---
>  .../display/panel/samsung,s6e63m0.txt         | 33 ----------
>  .../display/panel/samsung,s6e63m0.yaml        | 60 +++++++++++++++++++
>  2 files changed, 60 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.txt
>  create mode 100644 Documentation/devicetree/bindings/display/panel/samsung,s6e63m0.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
