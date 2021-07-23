Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2CB5F3D423F
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:36:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231724AbhGWU4P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 16:56:15 -0400
Received: from mail-io1-f43.google.com ([209.85.166.43]:46607 "EHLO
        mail-io1-f43.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231350AbhGWU4O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 16:56:14 -0400
Received: by mail-io1-f43.google.com with SMTP id u15so4115350iol.13
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:36:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Tdi7EeiWTtpNiVfVfwgzNPlGS395l4AH9igsJkLh0DU=;
        b=iIwN239abn7ljiYml8xdMTHmEvxT6DzqKmsakDeehYiKSSb8tYRBPZWuTAsXNIBloi
         e2mpG0sTP6+FJ3E1trYMuRtLd47TmRWw5htiga8jzmvfqUZJNJtJ8xhRcK3YgYhpbWmZ
         YOhkNknzgW9UpWo1/PWMyOj7H7Jl4jrALLFa9LdgxIT41qX9EiDrzfJxKKZ4vwQlTTdO
         LI2J4R7GdGaWpZqhcq4sV4/rwu2pP3r/M/4p/kzPOEdNV+ShEJu+GvZJP0sr3iUMxBOl
         cnnOPT1Q2l7ryyjD/RTqb+HEp+dPQqvrybMRw8+jWAegckfCroQlHCiif4yCUFO2o7Vn
         vFRw==
X-Gm-Message-State: AOAM530b7KvHvKQa5QqHW93i6LghcPLMzmc95orC66iQCeMAzAYCbjHT
        zD28z4qZn3rypXWo3JtT/Q==
X-Google-Smtp-Source: ABdhPJwQEliVWV65WDW65EHljYR1LZXNiOWSR80/suR3nYXOCGqErLYhbX1OEd4tC5yXBXhwBZKfpA==
X-Received: by 2002:a05:6602:2406:: with SMTP id s6mr5339616ioa.159.1627076206694;
        Fri, 23 Jul 2021 14:36:46 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id j2sm1108477ilr.80.2021.07.23.14.36.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:36:46 -0700 (PDT)
Received: (nullmailer pid 2631446 invoked by uid 1000);
        Fri, 23 Jul 2021 21:36:42 -0000
Date:   Fri, 23 Jul 2021 15:36:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        linux-arm-kernel@lists.infradead.org,
        Jerome Brunet <jbrunet@baylibre.com>,
        linux-sunxi@googlegroups.com,
        Frank Rowand <frowand.list@gmail.com>,
        alsa-devel@alsa-project.org,
        Jernej Skrabec <jernej.skrabec@siol.net>
Subject: Re: [PATCH 04/54] ASoC: dt-bindings: Convert Simple Amplifier
 binding to a schema
Message-ID: <20210723213642.GA2631391@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-5-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-5-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:34 +0200, Maxime Ripard wrote:
> Simple audio amplifiers are supported by Linux with a matching device
> tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: alsa-devel@alsa-project.org
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/sound/simple-amplifier.txt       | 17 -------
>  .../sound/simple-audio-amplifier.yaml         | 45 +++++++++++++++++++
>  2 files changed, 45 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/simple-amplifier.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/simple-audio-amplifier.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
