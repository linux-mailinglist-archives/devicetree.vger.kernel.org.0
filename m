Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 2061A273D0B
	for <lists+devicetree@lfdr.de>; Tue, 22 Sep 2020 10:14:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1726619AbgIVIOo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 22 Sep 2020 04:14:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36046 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726605AbgIVIOo (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 22 Sep 2020 04:14:44 -0400
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com [IPv6:2607:f8b0:4864:20::442])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 472F1C061755
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 01:14:44 -0700 (PDT)
Received: by mail-pf1-x442.google.com with SMTP id x123so11721132pfc.7
        for <devicetree@vger.kernel.org>; Tue, 22 Sep 2020 01:14:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=VvRTHWq9atT0M2ZBSCyp6rDibMZAJDzlcA9mNUPSa1Q=;
        b=UIsiyD65QwMGiOab0ykzjaRHAo1ydlbju+cn5iZoBvahS1pS6vUlqWCapZgjLSeHaN
         PdB9uj3WYuSdOPKVH1nwPcYDHA4EXJU36mVbBnBAAxrSytNZ/81cgPdZdDLOQc6hjVus
         rDX5iZP8/rYc5sX7xUIxbJfIx34Zba5RDrwM3V7zvnTH4z1p3CuJf5sklEocne0UScwE
         Wnug7L2foNRamyKS1UdgsVG8yhMYE2F8yrojPsAOACTpqHxpv9x1VZKO2NjB/H5ocwvI
         7LHCvg0yy/5qXNjHtwtBhzZIG/WI8WpqRDQwvRxepxofyb/4T/44DOpZwkMEukcDfwal
         9FKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=VvRTHWq9atT0M2ZBSCyp6rDibMZAJDzlcA9mNUPSa1Q=;
        b=k9OZUUhW0x0BCQTB1fTYo0Ww3Vb7MSTRyuE4gauBAVonNkB/e3TjB3VD95c7zu8SG+
         MbxNoch5bUoLGL/d/9BcvIBabQzxGqSVQaQS6QDXhpqclCwDpdN78DpCyuL1wG9Pa3ZS
         BQageso4i1KS8dhjbZkkx74yheu2xv3hKyAEag8YEQ8aCJVUjzQEJKVvtsyjp6HPqfWw
         T/WT+W2Bldvkxo/MsdrsYkvMJXrHOcSTX9ngfANYmFNkW+U9Zhd5BDMID8TKIVtO6dz4
         2lrspivkSh4fdYoaBr+37OD+Pktr/wx0FT4LXh6w81dS55ZRiXp2b7claFJGZH5d8VAA
         n3yA==
X-Gm-Message-State: AOAM531qu7k95+9MuDEijzul2jHgwGkeRMCdKUMTiaGqncVzfqr0nm4l
        R8W22x3nGhrSTxYv67s6agS2
X-Google-Smtp-Source: ABdhPJxXMg3Nn0XGG3SBhoXi4mamnDNcOX3VjcS+UMVk72R8qDISYWh3+KAXOZRb+pZ58Ei82a9m6A==
X-Received: by 2002:a63:d918:: with SMTP id r24mr2597057pgg.158.1600762483807;
        Tue, 22 Sep 2020 01:14:43 -0700 (PDT)
Received: from Mani-XPS-13-9360 ([2409:4072:6e1c:c062:1004:2ccf:6900:b97])
        by smtp.gmail.com with ESMTPSA id m25sm13846459pfa.32.2020.09.22.01.14.36
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 22 Sep 2020 01:14:43 -0700 (PDT)
Date:   Tue, 22 Sep 2020 13:44:32 +0530
From:   Manivannan Sadhasivam <manivannan.sadhasivam@linaro.org>
To:     Matheus Castello <matheus@castello.eng.br>
Cc:     afaerber@suse.de, mark.rutland@arm.com, robh+dt@kernel.org,
        edgar.righi@lsitec.org.br, igor.lima@lsitec.org.br,
        helen.koike@collabora.com, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-actions@lists.infradead.org, Rob Herring <robh@kernel.org>
Subject: Re: [PATCH v7 1/4] dt-bindings: Add vendor prefix for Caninos Loucos
Message-ID: <20200922081432.GK29035@Mani-XPS-13-9360>
References: <20200922024302.205062-1-matheus@castello.eng.br>
 <20200922024302.205062-2-matheus@castello.eng.br>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20200922024302.205062-2-matheus@castello.eng.br>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, Sep 21, 2020 at 11:42:59PM -0300, Matheus Castello wrote:
> The Caninos Loucos Program develops Single Board Computers with an open
> structure. The Program wants to form a community of developers to use
> IoT technologies and disseminate the learning of embedded systems in
> Brazil.
> 
> It is an initiative of the Technological Integrated Systems Laboratory
> (LSI-TEC) with the support of Polytechnic School of the University of
> São Paulo (Poli-USP) and Jon "Maddog" Hall.
> 
> Signed-off-by: Matheus Castello <matheus@castello.eng.br>
> Acked-by: Rob Herring <robh@kernel.org>
> Reviewed-by: Andreas Färber <afaerber@suse.de>

Applied for v5.10!

Thanks,
Mani

> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 
> diff --git a/Documentation/devicetree/bindings/vendor-prefixes.yaml b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> index 63996ab03521..aac0dc3caf3b 100644
> --- a/Documentation/devicetree/bindings/vendor-prefixes.yaml
> +++ b/Documentation/devicetree/bindings/vendor-prefixes.yaml
> @@ -179,6 +179,8 @@ patternProperties:
>      description: CALAO Systems SAS
>    "^calxeda,.*":
>      description: Calxeda
> +  "^caninos,.*":
> +    description: Caninos Loucos Program
>    "^capella,.*":
>      description: Capella Microsystems, Inc
>    "^cascoda,.*":
> --
> 2.28.0
> 
