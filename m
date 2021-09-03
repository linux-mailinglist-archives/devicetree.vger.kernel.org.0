Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E806B400600
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:40:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S245273AbhICTlR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:41:17 -0400
Received: from mail-oo1-f45.google.com ([209.85.161.45]:42977 "EHLO
        mail-oo1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1348217AbhICTlR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:41:17 -0400
Received: by mail-oo1-f45.google.com with SMTP id e206-20020a4a55d7000000b00291379cb2baso10379oob.9
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:40:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=78vFv4K5BgRw71WMqFXciYYwEBEB/P+dERdOybqtMWQ=;
        b=gaKO7AfFF/MEzYhV6fAqplBBj9aEPSltQaiWM3ki+giqCrap8ohfRO22/Nl1KLBrBP
         sVQDFi2qGHGawfo/3dS3BkUcD7sBNTzP+fz2xmXtEhvyGKmVIKMR5h0Sx14dTaaJL9HV
         R1g+gZ0bylCJ7dbbphn1Z7nyrgl3yJ6a1snQYwzR/bNqtF29eLKtcOETitkUsK9NsHZ0
         rGLNL+Z2f57hAPefiePx6z7+TtxbvzB7fcAvuUk8Ax3KJu7hGVz5oY+9r4WF+zxQGCmr
         RIVMZ3y8SMqfBEjCQrgFMD4uuXBioACQi0WLMEx4f2j4874T6OKNZK//GosNP3jCMv91
         n67A==
X-Gm-Message-State: AOAM533VILxxhZZ31XXlBMZtKf+37nLi7W6ZOAyoZFXPVlkQEM8erQhe
        l36ByE0LR0vlhDodSjPDCw==
X-Google-Smtp-Source: ABdhPJy/JFbtTJr7AcaxPZQIBIpoTnA9+SUM61/jy5jtJQyzl7g74Ueb6Sgii+E0FU1SrUWSCgICyA==
X-Received: by 2002:a4a:1506:: with SMTP id 6mr4300053oon.93.1630698016656;
        Fri, 03 Sep 2021 12:40:16 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id l16sm59164ota.55.2021.09.03.12.40.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 12:40:16 -0700 (PDT)
Received: (nullmailer pid 3332694 invoked by uid 1000);
        Fri, 03 Sep 2021 19:40:15 -0000
Date:   Fri, 3 Sep 2021 14:40:15 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Lee Jones <lee.jones@linaro.org>, linux-sunxi@googlegroups.com,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [PATCH v2 28/52] dt-bindings: mfd: Convert X-Powers AC100
 binding to a schema
Message-ID: <YTJ6H2IyfXVBLQu4@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-29-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-29-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:28 +0200, Maxime Ripard wrote:
> The X-Powers AC100 hybrid devices are supported by Linux thanks to its
> device tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Added maximum number of clocks properties
> ---
>  .../devicetree/bindings/mfd/ac100.txt         |  50 --------
>  .../bindings/mfd/x-powers,ac100.yaml          | 116 ++++++++++++++++++
>  2 files changed, 116 insertions(+), 50 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/ac100.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
