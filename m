Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 3FB45429AB8
	for <lists+devicetree@lfdr.de>; Tue, 12 Oct 2021 03:05:56 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230060AbhJLBHz (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Oct 2021 21:07:55 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:46616 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231199AbhJLBHy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Oct 2021 21:07:54 -0400
Received: by mail-ot1-f53.google.com with SMTP id u20-20020a9d7214000000b0054e170300adso23780189otj.13
        for <devicetree@vger.kernel.org>; Mon, 11 Oct 2021 18:05:54 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=VjdYNK7OQ7hv3OxllKfXVmVGKMwQu3mEkE/Q9mo5ta0=;
        b=Fy2Guv4nvwyn6B7eVyiDMMq0rQm4dPfbATWE/HVEPh2o/ylZRc7nUvJYzzooQyfbDQ
         aDjfF25mgZEHyDp8AAB4IWAi2A7CZnKYo2cwH+13ECWoFt75GRG/O3mwin/0o62kpY1L
         WU4pLmP3MCPqH6O7mEdfxamVYQ/GpBo//oE4Y3k403SPceRHjLgGGy5ElS6lK9LUS22w
         9d8UX+qfvn2xQ+yKl0uCTfqQeGlbVFE2YQOz+qYy7L7p+xMTygvs51xg5NYgCFTehpGl
         ZmHiZR1PR1nf4RWctS/1NYhjMvFRxzyl6oJkc6rLTwJPG15Yp8+DMiXrFtVuTd/kwFdA
         aH9w==
X-Gm-Message-State: AOAM532ULHsb6DaOshUNqexpaW8MYweA6dAbEAbIqzF52rA7PiQGdL4K
        MuKHQQFPA4h/Gq5EH8V7zg==
X-Google-Smtp-Source: ABdhPJxPZmvk4gqoyqDn3+CCwopf9IfMsBPzmI+VY99BWhzrp7o3kCdoLZS+LpvgtPHt7npOpmadVw==
X-Received: by 2002:a05:6830:3184:: with SMTP id p4mr4257859ots.219.1634000753686;
        Mon, 11 Oct 2021 18:05:53 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id e7sm1029343otq.4.2021.10.11.18.05.52
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 11 Oct 2021 18:05:53 -0700 (PDT)
Received: (nullmailer pid 1512514 invoked by uid 1000);
        Tue, 12 Oct 2021 01:05:52 -0000
Date:   Mon, 11 Oct 2021 20:05:52 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     robh+dt@kernel.org, neil@brown.name, devicetree@vger.kernel.org
Subject: Re: [PATCH] dt-bindings: memory: add binding for Mediatek's MT7621
 SDRAM memory controller
Message-ID: <YWTfcJoKNpIBc4kl@robh.at.kernel.org>
References: <20211002060910.30613-1-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211002060910.30613-1-sergio.paracuellos@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 02 Oct 2021 08:09:10 +0200, Sergio Paracuellos wrote:
> Add binding documentation for Mediatek's SDRAM memory controller present on
> MT7621 SoC.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../mediatek,mt7621-memc.yaml                 | 30 +++++++++++++++++++
>  1 file changed, 30 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/memory-controllers/mediatek,mt7621-memc.yaml
> 

Applied, thanks!
