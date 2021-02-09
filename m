Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 812453159D5
	for <lists+devicetree@lfdr.de>; Wed, 10 Feb 2021 00:06:51 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234701AbhBIXC5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 9 Feb 2021 18:02:57 -0500
Received: from mail-oi1-f180.google.com ([209.85.167.180]:46054 "EHLO
        mail-oi1-f180.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234372AbhBIWyS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 9 Feb 2021 17:54:18 -0500
Received: by mail-oi1-f180.google.com with SMTP id m7so21212511oiw.12;
        Tue, 09 Feb 2021 14:51:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=P3VW+xofmUt3UYHIjrOEYiO784hQdNkcdFTu2Duih6g=;
        b=bje4LY+T+DpEukBGoCZ/nvDb4Fzu/UB2YSj46jtcvc+I/t/CRVY/5j0Uzrq3g1+gqP
         +sMrHXS7j89tVly4C34rgGK0s+2EZkSocA+VXdrb1GI55o2DsUffOH1Hj4Mx/lZ+Dh+n
         LLlw2RM06YvM/H8oo+jCeuNNye3NlV9gUQN2Bw7hkUw1nLtQgSaVsJ46cR95Q0VTuv0u
         n4LMJ1JMhP1xRHmxUsCPE374Egv2E8D8FXi4CA6fkq/sR3RS82FfbzFYOKRsFVXdvBqH
         zKyp/VLIrFDB0iPcwIzQD2gAW5Kb1uhDe+cD7hdcm8a5lI8X+LZgxE4W+es+nCI7Y1uq
         OqRg==
X-Gm-Message-State: AOAM530KhBF9h4pmH6hxqxjDycjyEFpoExaairo4/iFQMrKzc5jKx561
        9pvqg+SKe3o0ptQTDMgO7w==
X-Google-Smtp-Source: ABdhPJzsQlrpStH+x3yWHq3lRmHMXRMThNI493M7PeM1jDykHoEDdQEdA2b5dwJ+TD0E2iupysKaCQ==
X-Received: by 2002:aca:db03:: with SMTP id s3mr44537oig.48.1612911051799;
        Tue, 09 Feb 2021 14:50:51 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id l25sm3113684otd.40.2021.02.09.14.50.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 09 Feb 2021 14:50:50 -0800 (PST)
Received: (nullmailer pid 368704 invoked by uid 1000);
        Tue, 09 Feb 2021 22:50:49 -0000
Date:   Tue, 9 Feb 2021 16:50:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     linux-renesas-soc@vger.kernel.org,
        Magnus Damm <magnus.damm@gmail.com>,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: power: renesas,apmu: Group tuples in cpus
 properties
Message-ID: <20210209225049.GA368656@robh.at.kernel.org>
References: <20210204125542.1645925-1-geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210204125542.1645925-1-geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 04 Feb 2021 13:55:42 +0100, Geert Uytterhoeven wrote:
> To improve human readability and enable automatic validation, the tuples
> in "cpus" properties in device nodes for Advanced Power Management Units
> for AP-System Core (APMU) should be grouped using angle brackets.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  Documentation/devicetree/bindings/power/renesas,apmu.yaml | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Applied, thanks!
