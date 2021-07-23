Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A8C5E3D4289
	for <lists+devicetree@lfdr.de>; Sat, 24 Jul 2021 00:01:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232226AbhGWVUc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 17:20:32 -0400
Received: from mail-il1-f178.google.com ([209.85.166.178]:45731 "EHLO
        mail-il1-f178.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231724AbhGWVUc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 17:20:32 -0400
Received: by mail-il1-f178.google.com with SMTP id z3so2829970ile.12
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 15:01:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=TvPJucgbb/qVrHMnVm/MKQYKNgJM4B+ZtgAf+pSDkXA=;
        b=VQZ73LEo9oahpfda8OtXSZy0TKYHMoohlCyKbwayt084hVfR76LcEd7OWOAhkjEw/g
         hqBwzo/bQcI4Q/+3JYiyCxzsWrgXAMNsRDOdk+bn8gNv6Cz4BhxUtQveGx9BZ28Hy0Ni
         Eflwd4yGIygPX+W4JEnb3AVRmNJVTYLjY+3Lz3gx1DKs01sHSPDhD+WKPGogt3dMoRnM
         TyinGdRD1P9LvwDoTjvfUkVjERYCdbY4N46dR4Nyc/bl1n31Xa2Uwco/qxAKIdWso5/B
         LM7Rz8fGEOkxVeaBca0EEbBSf6gZiINL6U/Lj35jN05724cmfCgrbQwOg77UF/2VENTb
         rXaQ==
X-Gm-Message-State: AOAM531oOi9fvTQjaZbL3KjBnrpDgWeykKBq84GXEq1r74si1wG3dG3I
        yPie4/XALoy/960/gDRnOg==
X-Google-Smtp-Source: ABdhPJzyCxY3fVAgd/1/ybKis4hwCSKCsACSlwA/jNEBaB/myIFpV7POxVZv5NtHN2SmeS4tVbOynA==
X-Received: by 2002:a05:6e02:de9:: with SMTP id m9mr4870227ilj.209.1627077664377;
        Fri, 23 Jul 2021 15:01:04 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id p9sm16734028ilj.65.2021.07.23.15.01.02
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 15:01:03 -0700 (PDT)
Received: (nullmailer pid 2670853 invoked by uid 1000);
        Fri, 23 Jul 2021 22:01:01 -0000
Date:   Fri, 23 Jul 2021 16:01:01 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Ondrej Jirman <megous@megous.com>, devicetree@vger.kernel.org,
        Chen-Yu Tsai <wens@csie.org>, linux-sunxi@googlegroups.com,
        Icenowy Zheng <icenowy@aosc.io>,
        Mark Brown <broonie@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH 30/54] dt-bindings: regulator: Convert SY8106A binding to
 a schema
Message-ID: <20210723220101.GA2670792@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-31-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-31-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:04:00 +0200, Maxime Ripard wrote:
> The Silergy SY8106A is a regulator controlled through i2c supported by
> Linux with a matching device tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Icenowy Zheng <icenowy@aosc.io>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Ondrej Jirman <megous@megous.com>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/regulator/silergy,sy8106a.yaml   | 52 +++++++++++++++++++
>  .../bindings/regulator/sy8106a-regulator.txt  | 23 --------
>  2 files changed, 52 insertions(+), 23 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/regulator/silergy,sy8106a.yaml
>  delete mode 100644 Documentation/devicetree/bindings/regulator/sy8106a-regulator.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
