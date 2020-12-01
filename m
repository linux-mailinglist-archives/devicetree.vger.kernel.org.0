Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 939AA2C952D
	for <lists+devicetree@lfdr.de>; Tue,  1 Dec 2020 03:28:16 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726342AbgLAC2E (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 30 Nov 2020 21:28:04 -0500
Received: from mail-io1-f65.google.com ([209.85.166.65]:40903 "EHLO
        mail-io1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725920AbgLAC2E (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 30 Nov 2020 21:28:04 -0500
Received: by mail-io1-f65.google.com with SMTP id r9so91967ioo.7
        for <devicetree@vger.kernel.org>; Mon, 30 Nov 2020 18:27:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=nxyhjNtLh80XTa42mU4p2SAwKcHJYzeEFt1OD/Owp4w=;
        b=aAX/EI5Yh4XvSiZDU/awYFMhAF/Lp08Jeg1kOAcsD/51sCL2noWt53dorzaZ1cbcsr
         E23om8SBRyYZ/FoE+oAQ1Z9GBAxXNseDEqu8Ux10zmg4r1b745pqVaoUDZw1PiG9/jX5
         ghi7dy649yjpWdhJ9n/Jfvot3E5aRmExsGN6+dZg0/xz4QQlYqR6SzwlW6TIO1Sy+f+B
         tuw3ASBKwGWsshB6Y0Qt3Da/83IMYYTFQlVvfkIUur7YSR94QYpmm1GDZZSljYZkBJix
         89kIV3su7ceR8eN86nwxFZcWgAnKpYwpExPIZCyyYMTE6q2CUm8auVnmCzvqOdrQGbDE
         +drQ==
X-Gm-Message-State: AOAM532b9pdEGzkypTEjiwNwYLy+pK8L5MdHawG1kIqafyk8UUOHkEQE
        F9B5Vcj742NPgmJiv58G1qAB/dgBPw==
X-Google-Smtp-Source: ABdhPJzaWe5D2nmPZBjO3pgEXBkemPgAp9Sp5+ixIO46hJra6+5Nh89fsVwvO0FHLfIk/tB/POA5Gw==
X-Received: by 2002:a6b:7206:: with SMTP id n6mr688822ioc.118.1606789643388;
        Mon, 30 Nov 2020 18:27:23 -0800 (PST)
Received: from xps15 ([64.188.179.253])
        by smtp.gmail.com with ESMTPSA id y8sm248076iln.12.2020.11.30.18.27.21
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Nov 2020 18:27:22 -0800 (PST)
Received: (nullmailer pid 3523582 invoked by uid 1000);
        Tue, 01 Dec 2020 02:27:21 -0000
Date:   Mon, 30 Nov 2020 19:27:21 -0700
From:   Rob Herring <robh@kernel.org>
To:     Linus Walleij <linus.walleij@linaro.org>
Cc:     Sean Paul <sean@poorly.run>, dri-devel@lists.freedesktop.org,
        Sam Ravnborg <sam@ravnborg.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        Maarten Lankhorst <maarten.lankhorst@linux.intel.com>,
        Maxime Ripard <mripard@kernel.org>
Subject: Re: [PATCH v3] dt-bindings: display: mcde: Convert to YAML schema
Message-ID: <20201201022721.GA3523505@robh.at.kernel.org>
References: <20201115185145.566772-1-linus.walleij@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201115185145.566772-1-linus.walleij@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 15 Nov 2020 19:51:45 +0100, Linus Walleij wrote:
> This moves the MCDE bindings over to using the YAML schema
> to describe the ST-Ericsson MCDE display controller,
> making use of the generic DSI controller schema.
> 
> In the process we correct an error in the old text bindings:
> the clocks for the SDI host controllers were specified as
> part of the main MCDE component while they should be
> specified in the DSI host controller subnodes. This was
> a leftover from an earlier iteration of the first patch
> series adding the MCDE.
> 
> We also add the "port" node, we will use this when adding
> LCD panels using the direct parallel interface DPI instead
> of DSI.
> 
> Cc: devicetree@vger.kernel.org
> Signed-off-by: Linus Walleij <linus.walleij@linaro.org>
> ---
> ChangeLog v2->v3:
> - Add resets to the bindings for future-proofing, set
>   additionalProperties: false
> - Extend commit message to explain the the old bindings
>   were incorrect.
> ChangeLog v1->v2:
> - Cut the description on the interrupts.
> - Drop maxItems: 3 on clocks and clock-names: implicit from
>   the number of listed items.
> - Tag the DSI ports with unevaluatedProperties: false
> - Tag the MCDE as such with additionalProperties: true
> - It was a bit hard to test this because of the code base
>   being out of phase with the validation tools but it seems
>   to check out.
> ---
>  .../devicetree/bindings/display/ste,mcde.txt  | 104 -----------
>  .../devicetree/bindings/display/ste,mcde.yaml | 169 ++++++++++++++++++
>  2 files changed, 169 insertions(+), 104 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/ste,mcde.txt
>  create mode 100644 Documentation/devicetree/bindings/display/ste,mcde.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
