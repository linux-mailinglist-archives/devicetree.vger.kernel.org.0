Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11278434D59
	for <lists+devicetree@lfdr.de>; Wed, 20 Oct 2021 16:21:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229771AbhJTOXQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Oct 2021 10:23:16 -0400
Received: from mail-ot1-f50.google.com ([209.85.210.50]:46046 "EHLO
        mail-ot1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229639AbhJTOXP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Oct 2021 10:23:15 -0400
Received: by mail-ot1-f50.google.com with SMTP id l16-20020a9d6a90000000b0054e7ab56f27so8359346otq.12
        for <devicetree@vger.kernel.org>; Wed, 20 Oct 2021 07:21:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OtlyZ4tM5HVNxxxSuht/xQxNTgNpEFDHBixCg8G/aP0=;
        b=5Rti/LbbsfnRUjHxiUJUcI9ifCnv+vvnaxq4B0zWFeIDu7pDkF3z2lVRq5ENBRsUyw
         BvOg/THm+pjDIk865g+e67wBy4oJSlNxgAKzK6PIbxixIFPA6BEI8sE0dkHTHg53zYC6
         y1iM5+OAB3qeDmTHHYcesQQmTkd5rj1f8kxAnTZ7op8ZKkIxA5jPcS1SI5HfBbgfUw85
         6PEgDLlVpuK6ihkQeXfGfsub3F1fGIA92YxuXP0EoN2UpndczNOpMeMDM6IyWShxXnhK
         s4lxb5DfZbjiYmljf34KSNQJdtESAFHpiR0JJJFgj5WQCzuMtaAHTXRSNDAp7vECH4Dd
         Gl0g==
X-Gm-Message-State: AOAM5321eia3Ck6c4hvXi071cVrEPK0GCG+CSW2Dyh6IjhbYqZiaM0Ax
        E0Y14KzhKqg/Z+63hu0DB+3sxe27fQ==
X-Google-Smtp-Source: ABdhPJzVTXxnsvrkypxQr92U5Baw1wlrHKzXZIiEHF7zFf35Dsmgo8RmLjasUUdOtXj1BE8czU7iyA==
X-Received: by 2002:a05:6830:3096:: with SMTP id f22mr107618ots.195.1634739661049;
        Wed, 20 Oct 2021 07:21:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id y12sm473538otq.60.2021.10.20.07.20.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 07:21:00 -0700 (PDT)
Received: (nullmailer pid 2301034 invoked by uid 1000);
        Wed, 20 Oct 2021 14:20:58 -0000
Date:   Wed, 20 Oct 2021 09:20:58 -0500
From:   Rob Herring <robh@kernel.org>
To:     Geert Uytterhoeven <geert+renesas@glider.be>
Cc:     patches@opensource.cirrus.com, devicetree@vger.kernel.org,
        Mark Brown <broonie@kernel.org>, alsa-devel@alsa-project.org,
        Rob Herring <robh+dt@kernel.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Adam Ford <aford173@gmail.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 2/2] ASoC: dt-bindings: wlf,wm8962: Convert to json-schema
Message-ID: <YXAlyjCOjmh96gL1@robh.at.kernel.org>
References: <cover.1634565154.git.geert+renesas@glider.be>
 <b0868d2f62fd57499c79d96298e99e5f9e4fbc76.1634565154.git.geert+renesas@glider.be>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <b0868d2f62fd57499c79d96298e99e5f9e4fbc76.1634565154.git.geert+renesas@glider.be>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 18 Oct 2021 15:59:03 +0200, Geert Uytterhoeven wrote:
> Convert the Wolfson WM8962 Ultra-Low Power Stereo CODEC Device Tree
> binding documentation to json-schema.
> 
> Add missing *-supply and port properties.
> Update the example.
> 
> Signed-off-by: Geert Uytterhoeven <geert+renesas@glider.be>
> ---
>  .../devicetree/bindings/sound/wlf,wm8962.yaml | 118 ++++++++++++++++++
>  .../devicetree/bindings/sound/wm8962.txt      |  43 -------
>  2 files changed, 118 insertions(+), 43 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8962.yaml
>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8962.txt
> 

Reviewed-by: Rob Herring <robh@kernel.org>
