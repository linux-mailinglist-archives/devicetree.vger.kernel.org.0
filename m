Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EF3AF302D44
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 22:10:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732100AbhAYVJ1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 16:09:27 -0500
Received: from mail-oi1-f182.google.com ([209.85.167.182]:39935 "EHLO
        mail-oi1-f182.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732439AbhAYVIk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 16:08:40 -0500
Received: by mail-oi1-f182.google.com with SMTP id w124so16297344oia.6
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 13:08:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OyZ3sXxCLqUPY7JLsfpHINHMPH4aj75GZUw/7sIKEoM=;
        b=f1hsra3Pq+K5yS/XBti+Cy7pnui2Nqod/MbhcTdkal47JIEzgdAGHmeECZ3S3sgVgZ
         Gfecqt1RGBweXwFFsGkAHSr1eLgighUUA7wJu3kxurk5qNhKiGQ9Vrgf5DsKbV1JwqEo
         hYTYG47fgTbfEfY3JAGBwLk8i8pjDlgoVJv3okS53xIir2mTbVEKjEmaNVMSOlhD3MkJ
         tkawLUysZemFNh0uPhiWkBnS49peHftxOAOy9Et4Ql33mimVfyYRiKsmSDCrl3WRYeZE
         qJiga78OPw7jk8xVnZeUwsv2xQSKHTNs4DMjefC4HRJqHMezonAt+/j4bSKWUG9siAko
         gi6Q==
X-Gm-Message-State: AOAM530GfWo9z09jron/I7s3v5WgMrDTd7w0R1UlZpKv3d9E1tuNx2MA
        mc2rVBQKpXZ/5T0ejsvw0w==
X-Google-Smtp-Source: ABdhPJzykJRAMbLN4dd0cZ2cDPvP/gWeRpNuaqthhx4O5bB0tqNjiJ5dBnmXqclqbTa9ZAvggGELQw==
X-Received: by 2002:aca:5088:: with SMTP id e130mr1262763oib.78.1611608879364;
        Mon, 25 Jan 2021 13:07:59 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l110sm2675851otc.25.2021.01.25.13.07.57
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 13:07:58 -0800 (PST)
Received: (nullmailer pid 994286 invoked by uid 1000);
        Mon, 25 Jan 2021 21:07:57 -0000
Date:   Mon, 25 Jan 2021 15:07:57 -0600
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     David Airlie <airlied@linux.ie>, Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        dri-devel@lists.freedesktop.org, Daniel Vetter <daniel@ffwll.ch>,
        Maxime Ripard <mripard@kernel.org>,
        Nicolas Saenz Julienne <nsaenzjulienne@suse.de>,
        Eric Anholt <eric@anholt.net>
Subject: Re: [PATCH V4] dt-bindings: gpu: Convert v3d to json-schema
Message-ID: <20210125210757.GA990430@robh.at.kernel.org>
References: <1610564917-11559-1-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1610564917-11559-1-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 13 Jan 2021 20:08:37 +0100, Stefan Wahren wrote:
> This converts the v3d bindings to yaml format.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
> 
> Changes in V4:
> - define order for required reg-names
> - adapt example
> 
> Changes in V3:
> - drop redundant maxItems in case we already have items defined
> - fix order of reg-names enum
> - tag required items in description
> - add reg-names to required properties
> - drop clock-names
> 
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.txt       | 33 ----------
>  .../devicetree/bindings/gpu/brcm,bcm-v3d.yaml      | 75 ++++++++++++++++++++++
>  2 files changed, 75 insertions(+), 33 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.txt
>  create mode 100644 Documentation/devicetree/bindings/gpu/brcm,bcm-v3d.yaml
> 

Applied, thanks!
