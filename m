Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id C97E412AF8B
	for <lists+devicetree@lfdr.de>; Fri, 27 Dec 2019 00:11:23 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726806AbfLZXLX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 26 Dec 2019 18:11:23 -0500
Received: from mail-io1-f66.google.com ([209.85.166.66]:35276 "EHLO
        mail-io1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726277AbfLZXLX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 26 Dec 2019 18:11:23 -0500
Received: by mail-io1-f66.google.com with SMTP id v18so24418897iol.2
        for <devicetree@vger.kernel.org>; Thu, 26 Dec 2019 15:11:22 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=iYgfCFDWP9Pmlfyghxs7WFYI9NQtivbPrXUsgSAT1Uw=;
        b=d87hJ0OvwwBhpvIfcauiSE3ZRvNoqVdH3gfr4hQkYQn0heM21NtJgVYT+MHJ55/XIR
         ytrHw2UkXobZTq1uQGU4VTENCAyodfkiMW+Z0sL7C0n0CrKsSWj6pedCDx4uoPyiOHOk
         ML2lP0k3YwZuCjIcEFx3fRpOP3kOaB3rxhVJSp1GSwcmOAigzIQOs80iKVChPBtK4TAJ
         Zs1g95EWFndKQ10D0oJF9nFwjWcgJ+fsC+BJ7yQMmOnfZcwqfLAfn0qtIjBhmglkEPih
         qNvdhPRsGRQvT1gJoEiPlf84ryoJis879huGNrQLCIYsMpw82tz+tMX5eJSsNo0WsJMs
         zUpQ==
X-Gm-Message-State: APjAAAXGUcnR/25KtAENgsxbDxIgIcqbCiIn8Ij5SFBYIh+Ch3JwpJVe
        zf3L61J8WrlaUtTeNPI11A==
X-Google-Smtp-Source: APXvYqxbOeaFzx0StvAHdq538fpCIHc4NpKp3GRzDKEyzS40STfSyUmgMsX15xFCYFlJqc3NclJbxg==
X-Received: by 2002:a6b:6f06:: with SMTP id k6mr33492727ioc.204.1577401882429;
        Thu, 26 Dec 2019 15:11:22 -0800 (PST)
Received: from localhost ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id u29sm12647753ill.62.2019.12.26.15.11.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 26 Dec 2019 15:11:21 -0800 (PST)
Date:   Thu, 26 Dec 2019 16:11:20 -0700
From:   Rob Herring <robh@kernel.org>
To:     Jyri Sarha <jsarha@ti.com>
Cc:     dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        tomi.valkeinen@ti.com, laurent.pinchart@ideasonboard.com,
        peter.ujfalusi@ti.com, bparrot@ti.com, praneeth@ti.com,
        yamonkar@cadence.com, sjakhade@cadence.com, sam@ravnborg.org,
        robh+dt@kernel.org, maxime@cerno.tech
Subject: Re: [PATCH v5 3/5] dt-bindings: display: ti,j721e-dss: Add dt-schema
 yaml binding
Message-ID: <20191226231120.GA11462@bogus>
References: <cover.1576857145.git.jsarha@ti.com>
 <e05570c9c5c0a22f5aaa36dd2503fe918b1f941e.1576857145.git.jsarha@ti.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e05570c9c5c0a22f5aaa36dd2503fe918b1f941e.1576857145.git.jsarha@ti.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 20 Dec 2019 17:55:11 +0200, Jyri Sarha wrote:
> Add dt-schema yaml bindig for J721E DSS, J721E version TI Keystone
> Display SubSystem.
> 
> Version history:
> 
> v2: no change
> 
> v3: - reg-names: "wp" -> "wb"
>     - Add ports node
>     - Add includes to dts example
>     - reindent dts example
> 
> v4: - Add descriptions to reg, clocks, and interrups properties
>     - Remove minItems when its value is the same as maxItems value
> 
> v5: - itemize reg, clocks and interrupts properties' descriptions
>     - there is no "vp" reg-name, only "wb" for write back
> 
> Signed-off-by: Jyri Sarha <jsarha@ti.com>
> ---
>  .../bindings/display/ti/ti,j721e-dss.yaml     | 208 ++++++++++++++++++
>  1 file changed, 208 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/ti/ti,j721e-dss.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
