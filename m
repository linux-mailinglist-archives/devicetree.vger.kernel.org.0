Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 6C1A14420B6
	for <lists+devicetree@lfdr.de>; Mon,  1 Nov 2021 20:21:20 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232093AbhKATXw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 1 Nov 2021 15:23:52 -0400
Received: from mail-oi1-f174.google.com ([209.85.167.174]:34709 "EHLO
        mail-oi1-f174.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229549AbhKATXw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 1 Nov 2021 15:23:52 -0400
Received: by mail-oi1-f174.google.com with SMTP id w193so26469688oie.1
        for <devicetree@vger.kernel.org>; Mon, 01 Nov 2021 12:21:18 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=IHEXqz8f4V58xggUiJsoHJioyZZs6cSm/XqeqYEpeTU=;
        b=vy4l3WMJidbuNukzm42wHRWhiS8eGyJ2zjYOUgPsLfyS4NbrsKJsZByIGDAxaZm2W6
         27v4LyXTE/wHgNPb8xa6L7n4HClDfB5xpTiSlxwntUUfb2KKXLkA8QdPTqztupDBR68L
         r/TFGWo5yPMglIdTFHTPpupjaNqWhb3zKLgCqdD97ATInF6Xclnp8kQPzA0+2o5iN2oN
         0aD9NpRLRNSy2rMFAbleoUYRtA6uai4URkhdiOPqz1JbzSJKpxHH2K+Ts0AM93TwzvBK
         Y3fGlM6g4TrcYK5AgFGxIZgepwg8RfLxroQul/6GruEpU7ZxP6noCwOuBOr++K6vBv2U
         Omyg==
X-Gm-Message-State: AOAM532xL3XOc1TD17peNJMMw39wE02HQLD6JgLmMlI3WU5zUrHjkt09
        oSESOiBXJizg1m1nulgBMA==
X-Google-Smtp-Source: ABdhPJwpx3d6wNHdX/AjX1YdO2WbjDeTZkYA5MtvVOj0szNXGgSxw6yMQaI9RifVBVTrTlMRI51M9Q==
X-Received: by 2002:a54:418a:: with SMTP id 10mr821593oiy.13.1635794478401;
        Mon, 01 Nov 2021 12:21:18 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id t22sm2349564otd.25.2021.11.01.12.21.17
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 01 Nov 2021 12:21:17 -0700 (PDT)
Received: (nullmailer pid 868227 invoked by uid 1000);
        Mon, 01 Nov 2021 19:21:16 -0000
Date:   Mon, 1 Nov 2021 14:21:16 -0500
From:   Rob Herring <robh@kernel.org>
To:     Stefan Wahren <stefan.wahren@i2se.com>
Cc:     Ray Jui <rjui@broadcom.com>, Phil Elwell <phil@raspberrypi.com>,
        bcm-kernel-feedback-list@broadcom.com,
        Ojaswin Mujoo <ojaswin98@gmail.com>,
        Scott Branden <sbranden@broadcom.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Florian Fainelli <f.fainelli@gmail.com>,
        Mwesigwa Guma <mguma@redhat.com>, devicetree@vger.kernel.org,
        Nicolas Saenz Julienne <nsaenz@kernel.org>,
        linux-staging@lists.linux.dev
Subject: Re: [PATCH V2 2/2] dt-bindings: soc: bcm: Convert brcm,bcm2835-vchiq
 to json-schema
Message-ID: <YYA+LDHLJTmQVHWp@robh.at.kernel.org>
References: <1635682086-3200-1-git-send-email-stefan.wahren@i2se.com>
 <1635682086-3200-3-git-send-email-stefan.wahren@i2se.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1635682086-3200-3-git-send-email-stefan.wahren@i2se.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 31 Oct 2021 13:08:06 +0100, Stefan Wahren wrote:
> This converts the VCHIQ bindings to YAML format.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>
> ---
>  .../bindings/soc/bcm/brcm,bcm2835-vchiq.txt        | 17 --------
>  .../bindings/soc/bcm/brcm,bcm2835-vchiq.yaml       | 45 ++++++++++++++++++++++
>  2 files changed, 45 insertions(+), 17 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.txt
>  create mode 100644 Documentation/devicetree/bindings/soc/bcm/brcm,bcm2835-vchiq.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
