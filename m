Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 445FD367501
	for <lists+devicetree@lfdr.de>; Thu, 22 Apr 2021 00:10:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235447AbhDUWKs (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 21 Apr 2021 18:10:48 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:35684 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235769AbhDUWIz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 21 Apr 2021 18:08:55 -0400
Received: by mail-ot1-f52.google.com with SMTP id 35-20020a9d05260000b029029c82502d7bso8907259otw.2
        for <devicetree@vger.kernel.org>; Wed, 21 Apr 2021 15:08:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ogAI8lijeVMhpP0KzWT5cWLb3gfzY1kK9mczRtEJ5GQ=;
        b=twfHb9xMs9mBCr9XeHlZVpLA3LcfvIG2Ft6t/95nyqF933FC5TLxRTA/HJT4+f6LQu
         ZK6nQK0DaD0YUALxDPHQi5Ir6SLOTfvgnnvH1BDYSsSuu7v4J4ykPrVJJo8d0mlxLYXD
         BB+LtbdvKOmwLK5L52tWFQu2GpWAVS/SgjyOs9NswGkKQwDJia0xWCjJBoaFyGDeMJxy
         Kaz+apUSkuExKqa5AaIuM824S2hoD+mKyKZvm3H8j2LMmRPYkwC28Wa4/eBin7Vlf6X9
         ZnCtdL6Wf61aw3XzyVwtxPhzk1HuLpaS1v3Ovk60cGbhw2SJ6cHQ52AUcCDvy3JdpSTc
         tHtg==
X-Gm-Message-State: AOAM530lftOSDa6SD0N/BXmW2oymIEJ7qvcolZcYG5uYaJ1q0dP1Kdd6
        8ViixSwe0WF21R5bs1HfuQ==
X-Google-Smtp-Source: ABdhPJw0W0dG7gtawcvuBCeeexKFOXPCEzTcs1o3Os9xSTfMg69F/6plTv+OtgNEaEjEI3FUsTqMoA==
X-Received: by 2002:a9d:7b59:: with SMTP id f25mr249406oto.53.1619042900067;
        Wed, 21 Apr 2021 15:08:20 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id x2sm210190ote.47.2021.04.21.15.08.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 21 Apr 2021 15:08:19 -0700 (PDT)
Received: (nullmailer pid 1702678 invoked by uid 1000);
        Wed, 21 Apr 2021 22:08:18 -0000
Date:   Wed, 21 Apr 2021 17:08:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Kevin Hilman <khilman@baylibre.com>
Cc:     soc@kernel.org, Arnd Bergmann <arnd@arndb.de>,
        linux-amlogic@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org
Subject: Re: [PATCH 2/2] dt-bindings: mali-bifrost: add dma-coherent
Message-ID: <20210421220818.GA1702628@robh.at.kernel.org>
References: <20210421204833.18523-1-khilman@baylibre.com>
 <20210421204833.18523-2-khilman@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210421204833.18523-2-khilman@baylibre.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 21 Apr 2021 13:48:33 -0700, Kevin Hilman wrote:
> Add optional dma-coherent property to binding doc.
> 
> Found by 'make dtbs_check' on arm64/amlogic DT files.
> 
> Signed-off-by: Kevin Hilman <khilman@baylibre.com>
> ---
>  Documentation/devicetree/bindings/gpu/arm,mali-bifrost.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
