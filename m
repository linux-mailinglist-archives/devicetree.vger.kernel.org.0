Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3F33032F3A3
	for <lists+devicetree@lfdr.de>; Fri,  5 Mar 2021 20:15:36 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229783AbhCETPD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 5 Mar 2021 14:15:03 -0500
Received: from mail-oo1-f42.google.com ([209.85.161.42]:37395 "EHLO
        mail-oo1-f42.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230056AbhCETOi (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 5 Mar 2021 14:14:38 -0500
Received: by mail-oo1-f42.google.com with SMTP id e17so686585oow.4
        for <devicetree@vger.kernel.org>; Fri, 05 Mar 2021 11:14:38 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ahnVuVrp3hmi8OUmRx9LZ5ZjgKO6WwU83me0vSNT/jM=;
        b=AoxKHzkctgiNGDxEmQVb0vGchbqSvwd9DxWrEVXBLzgOsg3K4mohjC2f2/vJHH5D4A
         4RZn+B9io73E0uoyEOYK29iEzLrAmkF3jJvyuhpgm8iVsMEGuEEPIJyfvuDWiQrc7y/w
         +xlcwRWIupLTcnVsA3N8SUKQpWk0F0x1QLpEjfXrgW+W2CWOGrimBpMVhqEofOHC+2+w
         9p4vrlpqm8fhLnJAXkIMmZ8OuIdwDSiVyN33dt8BNn7d0Yn60mtDZG+32wGOkieK48Z/
         Vk9T7ISeh7vrq5pfE1Ee62fbFMfMhJxKX4SXHZ3gQ1voM8dtT7V+dIcwzrTrkWgSKHD8
         /H9g==
X-Gm-Message-State: AOAM530lgMRZPtJpqWH7+TSr7Q2Bwe/kkj5M9lTbv67oeWAqr+FPMbFh
        iqKk65l7PHvZ8v/GSPPcNg==
X-Google-Smtp-Source: ABdhPJxAtGAYmnXHAGusGObW6k43DZ48CS1JE+xa7Bv8d5o3UT8yuZqG/VMK0adpv9k9plZkOCTHCQ==
X-Received: by 2002:a4a:6b44:: with SMTP id h4mr8948136oof.38.1614971677892;
        Fri, 05 Mar 2021 11:14:37 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id y143sm694815oie.50.2021.03.05.11.14.36
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 05 Mar 2021 11:14:37 -0800 (PST)
Received: (nullmailer pid 495683 invoked by uid 1000);
        Fri, 05 Mar 2021 19:14:36 -0000
Date:   Fri, 5 Mar 2021 13:14:36 -0600
From:   Rob Herring <robh@kernel.org>
To:     Liu Ying <victor.liu@nxp.com>
Cc:     dri-devel@lists.freedesktop.org, Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        devicetree@vger.kernel.org,
        Sebastian Reichel <sebastian.reichel@collabora.com>,
        David Airlie <airlied@linux.ie>
Subject: Re: [PATCH v7] dt-bindings: display: panel: one file of all simple
 LVDS panels with dual ports
Message-ID: <20210305191436.GA495631@robh.at.kernel.org>
References: <1613017672-2734-1-git-send-email-victor.liu@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1613017672-2734-1-git-send-email-victor.liu@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 11 Feb 2021 12:27:52 +0800, Liu Ying wrote:
> To complement panel-simple.yaml, create panel-simple-lvds-dual-ports.yaml.
> panel-simple-lvds-dual-ports.yaml is for all simple LVDS panels that
> have dual LVDS ports and require only a single power-supply.
> The first port receives odd pixels, and the second port receives even pixels.
> Optionally, a backlight and an enable GPIO can be specified as properties.
> 
> Panels with swapped pixel order, if any, need dedicated bindings.
> 
> Migrate 'auo,g133han01', 'auo,g185han01', 'auo,g190ean01',
> 'koe,tx26d202vm0bwa' and 'nlt,nl192108ac18-02d' over to the new file.
> 
> The objectives with one file for all the simple LVDS panels with dual ports are:
> - Make it simpler to add bindings for this kind of LVDS panels
> - Keep the number of bindings file lower
> - Keep the binding documentation for this kind of LVDS panels more consistent
> - Make it possible for drivers to get pixel order via
>   drm_of_lvds_get_dual_link_pixel_order(), as the 'ports' property is required
> 
> Suggested-by: Sam Ravnborg <sam@ravnborg.org>
> Cc: Thierry Reding <thierry.reding@gmail.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Cc: David Airlie <airlied@linux.ie>
> Cc: Daniel Vetter <daniel@ffwll.ch>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: Sebastian Reichel <sebastian.reichel@collabora.com>
> Signed-off-by: Liu Ying <victor.liu@nxp.com>
> ---
> v6->v7:
> * Reference '#/$defs/port-base' instead of '#/properties/port'. (Rob)
> 
> v5->v6:
> * Use OF graph schema.
> * Drop Rob's R-b tag, as review is needed.
> 
> v4->v5:
> * Require the 'ports' property and update commit message accordingly. (Rob)
> * Add Rob's R-b tag.
> 
> v3->v4:
> * Add type and descriptions for dual-lvds-{odd,even}-pixels properties.
>   Also, update descriptions for port@0 and port@1 properties accordingly. (Rob)
> 
> v2->v3:
> * Do not allow 'port' property. (Rob)
> * Define port number. (Rob)
> * Specify 'dual-lvds-odd-pixels' and 'dual-lvds-even-pixels' properties. (Rob)
> 
> v1->v2:
> * Correct pixel order in example LVDS panel node.
> 
>  .../panel/panel-simple-lvds-dual-ports.yaml        | 118 +++++++++++++++++++++
>  .../bindings/display/panel/panel-simple.yaml       |  10 --
>  2 files changed, 118 insertions(+), 10 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/panel-simple-lvds-dual-ports.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
