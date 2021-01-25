Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B0D59302D85
	for <lists+devicetree@lfdr.de>; Mon, 25 Jan 2021 22:25:49 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1732612AbhAYVXi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 25 Jan 2021 16:23:38 -0500
Received: from mail-oi1-f169.google.com ([209.85.167.169]:34749 "EHLO
        mail-oi1-f169.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1732613AbhAYVWd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 25 Jan 2021 16:22:33 -0500
Received: by mail-oi1-f169.google.com with SMTP id h192so16375116oib.1
        for <devicetree@vger.kernel.org>; Mon, 25 Jan 2021 13:22:17 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UgNVnk+XjrBbFMJvHyH+j8J+c8Weu78JzV/h+7zSoyw=;
        b=X5z2o1hLqVifsw1J5LLWRNjdbwIb6Yr3yqhngfRx3TFgIZ60sSgEdKQe7a617nMsQD
         6hVpRHfCFF4BwSghuyAXIkKn4AprloPjbbaKtFgCIvsvc1mNt81TaNC3Ipr0KLLOrHnF
         oyS7GIqvxcTNSJoolPnifWKHukYaapQWPpUjhShE9bFobA61lC+mRMYWMMn4irjposyp
         OrVzjK/QrIofJJ8ZRIjB4CPHwHj6jmViMMM4F83C912bY4OViGxxl6H664SilBIuVjMt
         IDR++W5HPfzqDtZbz9CNvff4JhIqCbv0I6TeSejGDt+0UImTaZFCZCk8pb4BGDUMWif6
         wVPw==
X-Gm-Message-State: AOAM533Kn5Hm2/f0J8gxKu6pOyQmkdibe0MICuXlHKVuO+v6niYov7Ns
        oqinIsGxVuaBP2fCUPMvEA==
X-Google-Smtp-Source: ABdhPJzlcqwNpM2lircOFled+hpymLHLWYDsf4uk22g6xF7gWa+OWHBBlJ2XOHS+n4qtbramJ03bLA==
X-Received: by 2002:aca:c3d2:: with SMTP id t201mr1301884oif.7.1611609712037;
        Mon, 25 Jan 2021 13:21:52 -0800 (PST)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id v2sm1940816ooq.25.2021.01.25.13.21.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 25 Jan 2021 13:21:51 -0800 (PST)
Received: (nullmailer pid 1019226 invoked by uid 1000);
        Mon, 25 Jan 2021 21:21:49 -0000
Date:   Mon, 25 Jan 2021 15:21:49 -0600
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        Jernej Skrabec <jernej.skrabec@siol.net>,
        Frank Rowand <frowand.list@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>,
        Chen-Yu Tsai <wens@csie.org>
Subject: Re: [PATCH 04/19] dt-bindings: bridge: simple: Add corpro, gm7123
 compatible
Message-ID: <20210125212149.GA1019138@robh.at.kernel.org>
References: <20210114113538.1233933-1-maxime@cerno.tech>
 <20210114113538.1233933-4-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210114113538.1233933-4-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 14 Jan 2021 12:35:23 +0100, Maxime Ripard wrote:
> The corpro,gm7123 was in use in a DT but was never properly documented,
> let's add it.
> 
> Cc: Laurent Pinchart <laurent.pinchart+renesas@ideasonboard.com>
> Cc: Sam Ravnborg <sam@ravnborg.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  .../devicetree/bindings/display/bridge/simple-bridge.yaml     | 4 ++++
>  1 file changed, 4 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
