Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 0D39B39C359
	for <lists+devicetree@lfdr.de>; Sat,  5 Jun 2021 00:12:52 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229929AbhFDWOh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 4 Jun 2021 18:14:37 -0400
Received: from mail-oi1-f177.google.com ([209.85.167.177]:41610 "EHLO
        mail-oi1-f177.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229668AbhFDWOg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 4 Jun 2021 18:14:36 -0400
Received: by mail-oi1-f177.google.com with SMTP id c3so11192860oic.8
        for <devicetree@vger.kernel.org>; Fri, 04 Jun 2021 15:12:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lQ3T3JBTuv/XHxhU4mLVuzkYo49zTgx9Z9CZ58x4CkA=;
        b=oZYhAo2sc1nFDrXW+6rnUUzAeaNswMsXTwO9L2K3d087/XK7DH+Hqy23OXIKi4WU+H
         NORjUlM9tDX4MF3U78OTaRodz7HYUhspLrt4pD2e/YE2D1SJgPp/aghmy942DPSPYfQX
         GTCpVn17PmmZZ7TthIjNgy1RbwuSsq7u8Tc+5Z7Rhj6678aQPpcHcHnzVsL1UR5XjN16
         U+CKrTVJP0SDKpwZjt6t8XukebOTZBBSIi54tKCQqVi2LzVTHIScNlYd2tzSFlAQIdcm
         jBBu96DwjTB/exWBy77Do0lleJpr3alDbzf2yke5/NTlFVV3BcuJh6apDedan6aGhaDC
         PR+Q==
X-Gm-Message-State: AOAM5308ke0K3dRluxWWh2dmIFYXI5I0fj2/Jk/76H5dxzb8GaouStHY
        f1ZwR4xE+L2e6ZwF7AmhnA==
X-Google-Smtp-Source: ABdhPJwk/Mox8tecxwl8iCCfjMg3TnMWxbeC9NJB/QZECzu6OjRoE5w64oxztUnVxaJvDQQSEhH6mA==
X-Received: by 2002:a54:458b:: with SMTP id z11mr4303867oib.177.1622844756881;
        Fri, 04 Jun 2021 15:12:36 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id s25sm756748otq.26.2021.06.04.15.12.35
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 04 Jun 2021 15:12:36 -0700 (PDT)
Received: (nullmailer pid 4023268 invoked by uid 1000);
        Fri, 04 Jun 2021 22:12:35 -0000
Date:   Fri, 4 Jun 2021 17:12:35 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     Jim Quinlan <jim2101024@gmail.com>,
        Etienne Carriere <etienne.carriere@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Peter Hilber <peter.hilber@opensynergy.com>,
        Rob Herring <robh+dt@kernel.org>,
        Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v3 4/6] dt-bindings: firmware: arm,scmi: Convert to json
 schema
Message-ID: <20210604221235.GA4023131@robh.at.kernel.org>
References: <20210604205710.1944363-1-sudeep.holla@arm.com>
 <20210604205710.1944363-5-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210604205710.1944363-5-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 04 Jun 2021 21:57:08 +0100, Sudeep Holla wrote:
> Convert the old text format binding for System Control and Management Interface
> (SCMI) Message Protocol into the new and shiny YAML format.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Cristian Marussi <cristian.marussi@arm.com>
> Cc: Florian Fainelli <f.fainelli@gmail.com>
> Cc: Jim Quinlan <jim2101024@gmail.com>
> Cc: Etienne Carriere <etienne.carriere@linaro.org>
> Cc: Peter Hilber <peter.hilber@opensynergy.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/arm,scmi.txt      | 224 ------------
>  .../bindings/firmware/arm,scmi.yaml           | 338 ++++++++++++++++++
>  2 files changed, 338 insertions(+), 224 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/arm/arm,scmi.txt
>  create mode 100644 Documentation/devicetree/bindings/firmware/arm,scmi.yaml
> 

Applied, thanks!
