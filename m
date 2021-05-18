Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A7135386EB4
	for <lists+devicetree@lfdr.de>; Tue, 18 May 2021 03:07:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239982AbhERBIm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 17 May 2021 21:08:42 -0400
Received: from mail-ot1-f52.google.com ([209.85.210.52]:46642 "EHLO
        mail-ot1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239795AbhERBIm (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 17 May 2021 21:08:42 -0400
Received: by mail-ot1-f52.google.com with SMTP id d3-20020a9d29030000b029027e8019067fso7191623otb.13
        for <devicetree@vger.kernel.org>; Mon, 17 May 2021 18:07:25 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=RSWBFgh4U3fXaI0FPGkNU81cGV7B7UdUHy8FTnRJEgc=;
        b=lz/lUnpJSbP0ElqnZk5qynk8c2bxL6JI8N40U3kz39tJy18X0Ya6oR8B7IBhEo2Y+W
         wVi9+17lPHIyne0QNbkMcgelP7rt/7pOHMyJIUJrCVallev1o9lEjNqzMs//RllHRJRQ
         0vkpluii6s35Z3GzewLOYNnpq3Lat0Ci1339V1xSGJrpE+pv5ctE2W2E6Fm09uQMt0Im
         df6RhV8rWWWB5olgSn8h0thaHEABKwKENGKruENfVSB//7iQi7+cFLVA2sXJUaFlQSrc
         iruB0GpG+ZXeaAf3s47qazDiExGxxc2sOHg+3UImtCyKDx1oq+vec+1pv++lIz9ZNv0I
         zrDA==
X-Gm-Message-State: AOAM533EgZPAHXJZEqvq6VynnKcQOl9xdFuqu3CfZhH7q63PZF6WEZf7
        /NshWUU89SR5rfBgHejeoqtYDzfwIQ==
X-Google-Smtp-Source: ABdhPJwO+xckwuD8LWIwNzuBekxk2H6l0hAMeJR5B8q5WM1RQ3tznp9OjEdrNVb7txFADpm++jo7wg==
X-Received: by 2002:a05:6830:4014:: with SMTP id h20mr2056453ots.62.1621300045034;
        Mon, 17 May 2021 18:07:25 -0700 (PDT)
Received: from robh.at.kernel.org (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id q2sm3397487ool.3.2021.05.17.18.07.23
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 17 May 2021 18:07:24 -0700 (PDT)
Received: (nullmailer pid 3567313 invoked by uid 1000);
        Tue, 18 May 2021 01:07:23 -0000
Date:   Mon, 17 May 2021 20:07:23 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        devicetree@vger.kernel.org, alsa-devel@alsa-project.org,
        Rob Herring <robh+dt@kernel.org>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>
Subject: Re: [PATCH] dt-bindings: sound: wm8750: convert to the json-schema
Message-ID: <20210518010723.GA3567261@robh.at.kernel.org>
References: <20210512205926.780-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210512205926.780-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 12 May 2021 22:59:26 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> This helps validating DTS files.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  .../devicetree/bindings/sound/wm8750.txt      | 18 --------
>  .../devicetree/bindings/sound/wm8750.yaml     | 42 +++++++++++++++++++
>  2 files changed, 42 insertions(+), 18 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8750.txt
>  create mode 100644 Documentation/devicetree/bindings/sound/wm8750.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
