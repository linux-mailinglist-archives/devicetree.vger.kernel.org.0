Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 67E71400456
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 19:52:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235425AbhICRxj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 13:53:39 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:38417 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231483AbhICRxj (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 13:53:39 -0400
Received: by mail-oi1-f174.google.com with SMTP id u25so160868oiv.5
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 10:52:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ab+TOfSW9tqy1GvA7+jr5WcKpyI0xKVbDiDjcxTGaRQ=;
        b=QpFxQvlemcSgj2nXLFKqHUSIw+kiv911U/UuoVR3hhMzoRN/PhoqFClenqQpx+gsDJ
         +uNEX4fb3dleB7F2TpEuvkgzod3MGi/09hyhQBZHN/++y6xbI3rI9MYKpz1XAn4JLg4V
         kse8Gk+HM++rXZytuapUhZ1CtgMEZU1UUBomOFNnUp5rq8hd5GI2eU6Fb33+2u0MFVcX
         dyYqAZeKDJX3l1u9k4L1fZpuzCKi8dtsvR/Sm63OW2FfxKkxBZmVi8IEIklgs2hPmlDW
         TyRzQInvA+msHknE3tx421AEbPGccP9tQg0+mC1QBpqheln9UnDvbPk9R93JqGVF3n8W
         CIkg==
X-Gm-Message-State: AOAM531K1O7QA4JkUbF4d/KPB7zpPul484D1NS5HKN9i2GvWns23ajv5
        FVrLZFyOmQK+hVO5QA1/Qw==
X-Google-Smtp-Source: ABdhPJynHisMcXt6Cjq5kcgTxfZ0dwcJc53BrDE8xZsXZNGv8gvY6NKOhq8Gd/AL8RP/wVHKqERS+g==
X-Received: by 2002:a05:6808:494:: with SMTP id z20mr27434oid.103.1630691558782;
        Fri, 03 Sep 2021 10:52:38 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id f25sm7895otp.2.2021.09.03.10.52.37
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 10:52:38 -0700 (PDT)
Received: (nullmailer pid 3166874 invoked by uid 1000);
        Fri, 03 Sep 2021 17:52:37 -0000
Date:   Fri, 3 Sep 2021 12:52:37 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Liam Girdwood <lgirdwood@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        alsa-devel@alsa-project.org, Frank Rowand <frowand.list@gmail.com>,
        Rob Herring <robh+dt@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@googlegroups.com,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH v2 02/52] ASoC: dt-bindings: Convert Bluetooth SCO Link
 binding to a schema
Message-ID: <YTJg5eZqniTY3E4E@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-3-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-3-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:02 +0200, Maxime Ripard wrote:
> Bluetooth SCO Link are supported by Linux with a matching device tree
> binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: alsa-devel@alsa-project.org
> Cc: devicetree@vger.kernel.org
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Cc: Samuel Holland <samuel@sholland.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Accept either a 0 or 1 #sound-dai-cells
> ---
>  .../devicetree/bindings/sound/bt-sco.txt      | 13 -------
>  .../bindings/sound/linux,bt-sco.yaml          | 38 +++++++++++++++++++
>  2 files changed, 38 insertions(+), 13 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/bt-sco.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/linux,bt-sco.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
