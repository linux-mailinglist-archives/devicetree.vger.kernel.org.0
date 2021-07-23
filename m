Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 31EDD3D423E
	for <lists+devicetree@lfdr.de>; Fri, 23 Jul 2021 23:35:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232401AbhGWUym (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 23 Jul 2021 16:54:42 -0400
Received: from mail-io1-f45.google.com ([209.85.166.45]:42555 "EHLO
        mail-io1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232296AbhGWUym (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 23 Jul 2021 16:54:42 -0400
Received: by mail-io1-f45.google.com with SMTP id h1so4170847iol.9
        for <devicetree@vger.kernel.org>; Fri, 23 Jul 2021 14:35:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=XlIq9sgkpH0VLjxnlc9KkJaSod6wixszIJrzFBohWBQ=;
        b=TdGJK/IdwNp3mEXTrL5uT2bFZ0XyDrfotVguZvayaohy5OqDjbEJ6oKS4241rfl5R+
         m5cr25F21Gv1dCy8CTI1BunwkSTD1DtyVzId1KG+pTnSXVDr83v8+dbPRT1yN9PuVIN/
         wdhk/WY42wlAMkymaCPpOAay4yankWX9r3hEwbRxvv/RYq7DWIIqH6VssQ2VAzLjM07X
         nXsEOpSnJiNnC8HnoJJRRZPNPSTl1SKkukUMVJSmMTlGKO0o6xFtm+cBJag4rWZrcbuB
         sz9YS3mZvsgH84qc5GUflMt4hCJGVTl3kSyerO2pUeLPTo3HFVmviZLurGhqOcPCRAMW
         mTZg==
X-Gm-Message-State: AOAM530E14AKDDtgas7ZGMViU7DiNtp6ZDC2i+5jRUQvr5TqUggve/a8
        ArDv8TB1HCrDh7GVegkBgA==
X-Google-Smtp-Source: ABdhPJxm3/7JByYULNQVHzHLMkbguEpYVWROlSg6OC5iWccT709JPbbBrofXe/hc2B8/npGbI/nOeg==
X-Received: by 2002:a02:620a:: with SMTP id d10mr5911026jac.22.1627076115287;
        Fri, 23 Jul 2021 14:35:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id z18sm8442819ilh.55.2021.07.23.14.35.13
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 23 Jul 2021 14:35:14 -0700 (PDT)
Received: (nullmailer pid 2628990 invoked by uid 1000);
        Fri, 23 Jul 2021 21:35:11 -0000
Date:   Fri, 23 Jul 2021 15:35:11 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-sunxi@googlegroups.com, Liam Girdwood <lgirdwood@gmail.com>,
        alsa-devel@alsa-project.org, Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org,
        Mark Brown <broonie@kernel.org>, Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 03/54] ASoC: dt-bindings: Convert SPDIF Transmitter
 binding to a schema
Message-ID: <20210723213511.GA2628924@robh.at.kernel.org>
References: <20210721140424.725744-1-maxime@cerno.tech>
 <20210721140424.725744-4-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210721140424.725744-4-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Jul 2021 16:03:33 +0200, Maxime Ripard wrote:
> The SPDIF Transmitter binding is used by Linux with a matching Device
> Tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: alsa-devel@alsa-project.org
> Cc: Liam Girdwood <lgirdwood@gmail.com>
> Cc: Mark Brown <broonie@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../bindings/sound/linux,spdif-dit.yaml       | 32 +++++++++++++++++++
>  .../bindings/sound/spdif-transmitter.txt      | 10 ------
>  2 files changed, 32 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/linux,spdif-dit.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/spdif-transmitter.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
