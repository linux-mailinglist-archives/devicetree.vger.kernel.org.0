Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id AD954398EE3
	for <lists+devicetree@lfdr.de>; Wed,  2 Jun 2021 17:42:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231300AbhFBPoR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 2 Jun 2021 11:44:17 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:40877 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232340AbhFBPoP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 2 Jun 2021 11:44:15 -0400
Received: by mail-ot1-f54.google.com with SMTP id c31-20020a056830349fb02903a5bfa6138bso2807536otu.7
        for <devicetree@vger.kernel.org>; Wed, 02 Jun 2021 08:42:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=UGHsuHHa7L0KHOp8mx0zzxyfTFfDs3EKCyx+ZbAHSqc=;
        b=jcOc1ff6EtGaeXbdtLskMOI7WQiETOXLTjZDOUCu6qBauzgSYLRiNKQz4kbZ9LLljv
         FZlxTMg66ZOZoCEaEXUEFXJiM84OWv9B9virhLH2st3oIuljFvHMA6v5SNDOGy2MtPm9
         QF3H4wYd8IgIabAfWi1B1pf/io0MXRWR9PvNc3ebSI0TAPnFan5Dv8Cpc0AgWBZ9ByIf
         MA8s2jQgZDNVsYtp22R5YlZkNv+reh8Ri9Kg9496tuich0yzujSHaQBOLCFemGAsePTE
         wSI+RukvEgjPrgt/bRRwfMh10lcPUOTpnj+Rw/R6lUUtGBqOck7BP/3n/3mYnuAyh16p
         RVsA==
X-Gm-Message-State: AOAM5332N1FdPKtVoSh1pwh6KyffSk3wTJuVv0DXryuPKwrtkJlTlGJb
        MAEDlrpsNZX9FyvZCM3vfGX+wvXQ8w==
X-Google-Smtp-Source: ABdhPJwGIWZcDwqm5H3oRSfw+7XgVDcjAZc3H5pJeqwa7L6fPtx1aEzdK9pfHHNnbkEAuj5Jo/MUCw==
X-Received: by 2002:a05:6830:1507:: with SMTP id k7mr2659547otp.71.1622648552326;
        Wed, 02 Jun 2021 08:42:32 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id h9sm34979oor.16.2021.06.02.08.42.30
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 02 Jun 2021 08:42:31 -0700 (PDT)
Received: (nullmailer pid 3425586 invoked by uid 1000);
        Wed, 02 Jun 2021 15:42:30 -0000
Date:   Wed, 2 Jun 2021 10:42:30 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sudeep Holla <sudeep.holla@arm.com>
Cc:     devicetree@vger.kernel.org, Jerome Brunet <jbrunet@baylibre.com>,
        linux-arm-kernel@lists.infradead.org,
        Rob Herring <robh+dt@kernel.org>,
        Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        Cristian Marussi <cristian.marussi@arm.com>
Subject: Re: [PATCH v2 4/8] dt-bindings: firmware: amlogic,scpi: Move
 arm,scpi-shmem to json schema
Message-ID: <20210602154230.GA3425528@robh.at.kernel.org>
References: <20210601224904.917990-1-sudeep.holla@arm.com>
 <20210601224904.917990-5-sudeep.holla@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210601224904.917990-5-sudeep.holla@arm.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 01 Jun 2021 23:49:00 +0100, Sudeep Holla wrote:
> "amlogic,meson-gxbb-scp-shmem" is already in the Generic on-chip SRAM
> binding though "amlogic,meson-gxbb-scpi" is missing which is now added.
> Also remove the whole old text format binding for the same.
> 
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Kevin Hilman <khilman@baylibre.com>
> Cc: Neil Armstrong <narmstrong@baylibre.com>
> Cc: Jerome Brunet <jbrunet@baylibre.com>
> Signed-off-by: Sudeep Holla <sudeep.holla@arm.com>
> ---
>  .../devicetree/bindings/arm/amlogic,scpi.txt         | 12 ------------
>  Documentation/devicetree/bindings/sram/sram.yaml     |  1 +
>  2 files changed, 1 insertion(+), 12 deletions(-)
> 

Applied, thanks!
