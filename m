Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 82C0A46268C
	for <lists+devicetree@lfdr.de>; Mon, 29 Nov 2021 23:51:00 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235642AbhK2WyN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 17:54:13 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:33333 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235797AbhK2WxL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 17:53:11 -0500
Received: by mail-ot1-f49.google.com with SMTP id 35-20020a9d08a6000000b00579cd5e605eso27747069otf.0
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 14:49:53 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lgpJDEy/DEmK8UFLaeIWSUbO9Yqo5LKn3BjNolq3NLA=;
        b=dHFZqcNbgAEjL6z8TGreLiRQx+5onLei8cnDYaevAg0ZOVooFRdt+FcdJ1/npXm2k/
         3MOJInBQRhK+jENeg8owCMILvlEnOjWZMCAS/BhJxmjj2lQZL4QnSGMdvi6QqwZxQu40
         7DinpMJePq35qe8OjIzpygXa46Qwz68Oqt5kkZwRfyQRHBV7h9oWdj6+qMQWU3ToDO32
         hnakO5XUKVL7uIeuxi63cYBUXM01h1xsDN4dx2ruCJQBYrjlzlm6VpCnY+z7Jgo56kmp
         emn1mougM+AQGuUT+XeUdaZ5auvMPMHtk7cVYnb734EatTWP7tFCYltSwvlKeN3roIN2
         TW1Q==
X-Gm-Message-State: AOAM532/fHQbGu4tyhubSL7xzHQ9v4F1I/7em8m2aDA+1wXMZ67P1JP2
        4ZyITMa2dvbVQnVgJCbkVg==
X-Google-Smtp-Source: ABdhPJwA6KqX3QbtFMquS84BeoB10ocNLEcrE8q5FJnCKsRjemYVJZbBxHo5WBw+uf9OlxKBceqPAA==
X-Received: by 2002:a05:6830:2712:: with SMTP id j18mr46832046otu.302.1638226193372;
        Mon, 29 Nov 2021 14:49:53 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e14sm2505203oow.3.2021.11.29.14.49.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 14:49:52 -0800 (PST)
Received: (nullmailer pid 755875 invoked by uid 1000);
        Mon, 29 Nov 2021 22:49:51 -0000
Date:   Mon, 29 Nov 2021 16:49:51 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Scott Branden <sbranden@broadcom.com>,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Daniel Vetter <daniel.vetter@intel.com>,
        David Airlie <airlied@linux.ie>,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Thomas Zimmermann <tzimmermann@suse.de>,
        linux-rpi-kernel@lists.infradead.org,
        dri-devel@lists.freedesktop.org,
        linux-arm-kernel@lists.infradead.org,
        Dave Stevenson <dave.stevenson@raspberrypi.com>,
        Phil Elwell <phil@raspberrypi.com>,
        Tim Gover <tim.gover@raspberrypi.com>,
        Dom Cobley <dom@raspberrypi.com>, devicetree@vger.kernel.org,
        bcm-kernel-feedback-list@broadcom.com
Subject: Re: [PATCH 1/5] dt-bindings: display: vc4: Add optional phandle to
 firmware
Message-ID: <YaVZDxac/OGyJVC9@robh.at.kernel.org>
References: <20211117145040.334827-1-maxime@cerno.tech>
 <20211117145040.334827-2-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211117145040.334827-2-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, Nov 17, 2021 at 03:50:36PM +0100, Maxime Ripard wrote:
> The firmware can free all the resources it was using to run the display
> engine that won't be needed once the kernel has taken over.
> 
> Thus, we need a phandle to the firmware DT node to be able to send that
> message when relevant.

Why? Just use of_find_compatible_node(). 

> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/display/brcm,bcm2835-vc4.yaml        | 5 +++++
>  1 file changed, 5 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
> index 49a5e041aa49..18de6912b833 100644
> --- a/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
> +++ b/Documentation/devicetree/bindings/display/brcm,bcm2835-vc4.yaml
> @@ -21,6 +21,11 @@ properties:
>        - brcm,bcm2835-vc4
>        - brcm,cygnus-vc4
>  
> +  raspberrypi,firmware:
> +    $ref: "/schemas/types.yaml#/definitions/phandle"
> +    description: >
> +      Phandle to the firmware node
> +
>  required:
>    - compatible
>  
> -- 
> 2.33.1
> 
> 
