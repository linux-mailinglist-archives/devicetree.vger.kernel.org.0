Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5EA74005CF
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:27:31 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235422AbhICT2b (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:28:31 -0400
Received: from mail-ot1-f53.google.com ([209.85.210.53]:46848 "EHLO
        mail-ot1-f53.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234472AbhICT2a (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:28:30 -0400
Received: by mail-ot1-f53.google.com with SMTP id v33-20020a0568300921b0290517cd06302dso267686ott.13
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:27:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=I0g3Z8iC/Xs0zd2dpbEsv6VLGxFdXuUlBLKnqV5zS6g=;
        b=TgY50vv1s7yf083ueYTlcV3NsKHcykR1JWxOxAO4kjqFxS2GoooiVGPMM2EEnlPthq
         ISdPXsFBc7fED8aIy0xvNLZUrsWsxvSOzM/3noWW0urYNlTT5kf90az6ZvQcxa5aOlse
         2dlQbtLc9lEOh+DbqxFEoPTbo979wCZAAujwldNZ+GmSM5Zn6Ii0WQOno4OB80Kh9LTz
         AksAygvwNPFG2VNGNhW9Y6YtiBy49gl2z2ERIXeWEyhPntZ9XsjZGjMlCOBGq09HAUpT
         B5/BU1WJE7u8DYddo6g5MMTW5y3U/AyMBzRDTl+6Orn+/whMVDZpe3+Dx49W1hFPqCpm
         Vsrg==
X-Gm-Message-State: AOAM530mQ48IICvwDFb7AEoI8Ipa9YB3+rO2PISFKdG6jWI18uGZLf4D
        aGKQ4kH7TrTFXiD8nz6eJA==
X-Google-Smtp-Source: ABdhPJwGBgDHid8bwTNPuEvUKJ2bDvYno/StMk3r6Tyy0k4H7qRdbkcMDR6WXReGXUFDW2Yt9/TpRw==
X-Received: by 2002:a05:6830:911:: with SMTP id v17mr554531ott.133.1630697250272;
        Fri, 03 Sep 2021 12:27:30 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id 4sm22295ooa.11.2021.09.03.12.27.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 12:27:29 -0700 (PDT)
Received: (nullmailer pid 3315484 invoked by uid 1000);
        Fri, 03 Sep 2021 19:27:28 -0000
Date:   Fri, 3 Sep 2021 14:27:28 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        devicetree@vger.kernel.org, Johan Hovold <johan@kernel.org>,
        Rob Herring <robh+dt@kernel.org>, linux-sunxi@googlegroups.com,
        Frank Rowand <frowand.list@gmail.com>
Subject: Re: [PATCH v2 21/52] dt-bindings: gnss: Convert UBlox Neo-6M binding
 to a schema
Message-ID: <YTJ3IEIz0OCH8chS@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-22-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-22-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:21 +0200, Maxime Ripard wrote:
> The UBlox Neo 6M is supported by Linux thanks to its device tree
> binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Johan Hovold <johan@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Fixed a typo
>   - Fixed the example node name
> ---
>  .../bindings/gnss/u-blox,neo-6m.yaml          | 62 +++++++++++++++++++
>  .../devicetree/bindings/gnss/u-blox.txt       | 45 --------------
>  2 files changed, 62 insertions(+), 45 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/gnss/u-blox,neo-6m.yaml
>  delete mode 100644 Documentation/devicetree/bindings/gnss/u-blox.txt
> 

Applied, thanks!
