Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id BE02E2A6F31
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 21:52:12 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1731297AbgKDUwM (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 15:52:12 -0500
Received: from mail-ot1-f66.google.com ([209.85.210.66]:42465 "EHLO
        mail-ot1-f66.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727013AbgKDUwM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 15:52:12 -0500
Received: by mail-ot1-f66.google.com with SMTP id h62so21671oth.9
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 12:52:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=/U1Gon/nx3UwHH1KIYdjeRb3/oFW7g1+ELki1qXEMH8=;
        b=E7s9X2iS1S1KNd7l/YrVi2KDj8EphAr6FPVSnzas8EBlJaf6G55zafseiceyEB3R7d
         aXB7bf8XaZ2nnKiMBFQfcKn/Mx/z6cJLYsjMBkJXTz2FdgKiQDx4QGAC6rOl3HgzelfG
         yVKGT9fRZKaSgXR/aKXK/qJNIosHe+3izvmpi1+BSLwbU5ObeWPWMsL5ilmNXjaM7i7y
         NvrOcTWj23i+xvutqTJv2h7U8Sxtv8jIaoACrqJyb2BqwRu1G062Y/hT+ERJ9DPo3E5i
         SYWFd9l+ZUaNU4X6PnExp36SS3yZnGL3TduYP0oJv0xtUxEGoNS+qHu2zG7HK2UkDfCE
         2Q2A==
X-Gm-Message-State: AOAM530hhvGyE172YwrQcqkB+GW4avVeMFuL3J9I8cqELGlY38vLuqDk
        IudZ2wL1DXwzX/f7g5/44A==
X-Google-Smtp-Source: ABdhPJzdgIeFcIpTNdvZ/tRYy2pZkEX6hKiUzDj2jmU/UYZwly85q2v0tQDhns1km7rIudhN2CnTwg==
X-Received: by 2002:a05:6830:15d9:: with SMTP id j25mr19000703otr.259.1604523130006;
        Wed, 04 Nov 2020 12:52:10 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l9sm730481otn.53.2020.11.04.12.52.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 12:52:09 -0800 (PST)
Received: (nullmailer pid 4106299 invoked by uid 1000);
        Wed, 04 Nov 2020 20:52:08 -0000
Date:   Wed, 4 Nov 2020 14:52:08 -0600
From:   Rob Herring <robh@kernel.org>
To:     Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
Cc:     Rob Herring <robh+dt@kernel.org>, alsa-devel@alsa-project.org,
        Mark Brown <broonie@kernel.org>, devicetree@vger.kernel.org,
        Sameer Pujar <spujar@nvidia.com>
Subject: Re: [PATCH v5 3/3] dt-bindings: ASoC: renesas,rsnd: Add r8a77961
 support
Message-ID: <20201104205208.GA4106252@bogus>
References: <87zh45d0zp.wl-kuninori.morimoto.gx@renesas.com>
 <87v9etd0y8.wl-kuninori.morimoto.gx@renesas.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <87v9etd0y8.wl-kuninori.morimoto.gx@renesas.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 29 Oct 2020 15:06:34 +0900, Kuninori Morimoto wrote:
> 
> From: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> 
> Document R-Car M3-W+ (R8A77961) SoC bindings.
> 
> Signed-off-by: Kuninori Morimoto <kuninori.morimoto.gx@renesas.com>
> ---
>  Documentation/devicetree/bindings/sound/renesas,rsnd.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
