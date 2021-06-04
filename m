Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2776D39C354
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 00:11:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231680AbhFDWNL (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 18:13:11 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:38522 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231683AbhFDWNH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 18:13:07 -0400
Received: by mail-ot1-f53.google.com with SMTP id i14-20020a9d624e0000b029033683c71999so10537849otk.5
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 15:11:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WLN8B07xge5cJTM8Pg+iERNxR95EBfthXjJLDxQ0/Kc=;
        b=GJF+Ar78mHtOhAxnwdC9a7u2+R7PWPBQ8QEHZTIlMMIi5QqkZNPZ3vymNlyUccHpVF
         b57ssuIHkdHMckuQ9E2M6pcsiUYf2l2Mw82gvhv4adWlG6rKZMS+J0qdsJObaGpV+eN2
         AkyPHIlowdENTQrIx2iwnq9hMN4Nu54ZluZxLKBIVwh39Lmsx8ZAiz5ZR6wW2cwbyf/3
         umzbbZe9PuiM6SR19EbdVlnyc8bmE9rugeaDgd5ESXWLHsOddlumVBQOcx4kUZHOrt+n
         5utC1ezzYMK1RqxfFgrZf8szqfeqBlTHOE2xPk4UwEiwEm0q3Q/i3RF6nA8XM0fdb0BE
         c+ig==
X-Gm-Message-State: AOAM530LgFN+RuHUv+CRv0xi9iJgrLdC0EVks8rNfLtviJvEqMfViIL0
        p6oE8WLegGw6zRJAiFqUkA==
X-Google-Smtp-Source: ABdhPJwbzVh/AWQjURD5EhMtt/hTO+gVl3fPhkSLwiHeLx4GStsi1PwVuE3kO7JclRRQv0hxdTUDeg==
X-Received: by 2002:a9d:4115:: with SMTP id o21mr5453143ote.52.1622844679976;
        Fri, 04 Jun 2021 15:11:19 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id r25sm713055oos.44.2021.06.04.15.11.18
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 15:11:19 -0700 (PDT)
Received: (nullmailer pid 4021000 invoked by uid 1000);
        Fri, 04 Jun 2021 22:11:18 -0000
Date:   Fri, 4 Jun 2021 17:11:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Kevin Hilman <khilman@baylibre.com>,
        Jerome Brunet <jbrunet@baylibre.com>,
        devicetree@vger.kernel.org,
        Cristian Marussi <cristian.marussi@arm.com>,
        Viresh Kumar <viresh.kumar@linaro.org>
Subject: Re: [PATCH v3 2/6] dt-bindings: firmware: arm,scpi: Convert to json
 schema
Message-ID: <20210604221118.GA4001991@robh.at.kernel.org>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
 <20210604205710.1944363-3-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604205710.1944363-3-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 21:57:06 +0100, Sudeep Holla wrote:
> Convert the old text format binding for System Control and Power Interface
> (SCPI) Message Protocol into the new and shiny YAML format.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Viresh Kumar <viresh.kumar@linaro.org>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scpi.txt      | 204 ----------------
>  .../bindings/firmware/arm,scpi.yaml           | 227 ++++++++++++++++++
>  MAINTAINERS                                   |   2 +-
>  3 files changed, 228 insertions(+), 205 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scpi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scpi.yaml
> 

Applied. I moved the nodes with fixed strings to 'properties' and 
dropped some literal block ('|') notations where the formatting wasn't 
needed. 

Thanks!
