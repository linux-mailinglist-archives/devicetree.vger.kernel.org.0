Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 586452D5F61
	for <lists+devicetree@lfdr.de>; Thu, 10 Dec 2020 16:20:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S2389056AbgLJPTe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 10 Dec 2020 10:19:34 -0500
Received: from mail-oi1-f193.google.com ([209.85.167.193]:33466 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S2391704AbgLJPT0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 10 Dec 2020 10:19:26 -0500
Received: by mail-oi1-f193.google.com with SMTP id d27so6093948oic.0
        for <devicetree@vger.kernel.org>; Thu, 10 Dec 2020 07:19:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=lnW/OosYumgk1egiUGiVfrvZJRstAsR7RwXvN9hsVl8=;
        b=IUuQXdyYl6JDPxirQowHuqL6+i/RqW5TE6sKdeb/xNtaYXtwRuSHptYSTjH9ns0gf3
         yVA2P+oXBEXLMvR2m6DSbMLTghe09Jx9OHazCoJIouy2yEGpGN0zCBJXkFq7dByEDjsi
         iRDs2205OdaA1SP4WmJ6NuvFTbfFyoe3V45HXXmO9e1AjlSstlgDgicR4IqamAP472cY
         7W0i50OIzRNW7RaPFYFmKzeugFAvqas4vC9zz35TIE4o/sezG0wnv8WM2di3cly5fcbQ
         88gIQXQqE2AX6c0FHlwCxdgvoYKTyobiLE3L3SlxSSzjT4s6GH/zag0d+p0+Bpagx4Q9
         Moag==
X-Gm-Message-State: AOAM532A1wEAPWT75hW4oOJnf+SHtfnb7FwWxeiaW8SnYFKyIr9sVn8Y
        WEOW3KeQVBcjXKgpq0F8+A==
X-Google-Smtp-Source: ABdhPJxehsd5PpUzNMtJ+idsD7wceTd86mAFLIlHn8NkXQx1DqOIr2t7oLil2PKER6iqYD2yWor8tg==
X-Received: by 2002:aca:578d:: with SMTP id l135mr5715801oib.105.1607613525107;
        Thu, 10 Dec 2020 07:18:45 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id i82sm1059137oia.2.2020.12.10.07.18.43
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 10 Dec 2020 07:18:43 -0800 (PST)
Received: (nullmailer pid 2523540 invoked by uid 1000);
        Thu, 10 Dec 2020 15:18:42 -0000
Date:   Thu, 10 Dec 2020 09:18:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Teresa Remmet <t.remmet@phytec.de>
Cc:     Catalin Marinas <catalin.marinas@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        devicetree@vger.kernel.org, Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH v2 3/4] bindings: arm: fsl: Add PHYTEC i.MX8MP devicetree
 bindings
Message-ID: <20201210151842.GA2523493@robh.at.kernel.org>
References: <1607445491-208271-1-git-send-email-t.remmet@phytec.de>
 <1607445491-208271-4-git-send-email-t.remmet@phytec.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1607445491-208271-4-git-send-email-t.remmet@phytec.de>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 08 Dec 2020 17:38:10 +0100, Teresa Remmet wrote:
> Add devicetree bindings for i.MX8MP based phyCORE-i.MX8MP
> and phyBOARD-Pollux RDK.
> 
> Signed-off-by: Teresa Remmet <t.remmet@phytec.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
