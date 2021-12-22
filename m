Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EDBDE47D5D6
	for <lists+devicetree@lfdr.de>; Wed, 22 Dec 2021 18:29:25 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230272AbhLVR3Y (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 22 Dec 2021 12:29:24 -0500
Received: from mail-qt1-f173.google.com ([209.85.160.173]:43559 "EHLO
        mail-qt1-f173.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229743AbhLVR3Y (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 22 Dec 2021 12:29:24 -0500
Received: by mail-qt1-f173.google.com with SMTP id q14so2553573qtx.10
        for <devicetree@vger.kernel.org>; Wed, 22 Dec 2021 09:29:24 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=WCZrpqSM5SCvmPll0P0YIuGHTPFnHK+hqTuTr7HRoYI=;
        b=oK8Hf67MG5FQkrzrKO/hRxweG69L5TxobtzXFfBTuTi54zRQCoGu4fD/N+b3ApmfLj
         wwg9rgggUv/nKMdlNzv4O8IH3zFyD4jLzdu91lVUgoHv3phXCXjnHlNyePGv1kGE/z/p
         9JwB+WIKy+yFTYNhroiUdAq3Wt+oakSSJnfJDbaWnWiNtsrJs55/jyYVpXZXfsKK5nyX
         PWvwdlqcgXuknjmE1fZpccarbQDhKJJ+77lDI4ISx8TJnP9ZKSmwUmJIGAD1yAUNSSCS
         k6kGkgTXRxhe9W+SIu1adgOImI/qItBl4N+bxsxE8lZF0F9DWdd8t+rYt1ymdqTPykQZ
         fqLw==
X-Gm-Message-State: AOAM5303p57t5sy4Npm8m51HClp6+qfLTccOOPRGRCejUGzamkGRHclj
        EZzwXsSS+lEIIDoRLnS4ow==
X-Google-Smtp-Source: ABdhPJz5vWlu4Ez3yu4D3GXgn/A8sW3CqU3o0VadCVwTPfx0kZq7HUhjvJFuPHpSgFBhwWv8rjGqrw==
X-Received: by 2002:ac8:570b:: with SMTP id 11mr3068330qtw.128.1640194163685;
        Wed, 22 Dec 2021 09:29:23 -0800 (PST)
Received: from robh.at.kernel.org ([24.55.105.145])
        by smtp.gmail.com with ESMTPSA id w2sm2264733qta.11.2021.12.22.09.29.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 22 Dec 2021 09:29:23 -0800 (PST)
Received: (nullmailer pid 2366089 invoked by uid 1000);
        Wed, 22 Dec 2021 17:29:21 -0000
Date:   Wed, 22 Dec 2021 13:29:21 -0400
From:   Rob Herring <robh@kernel.org>
To:     Alexander Stein <alexander.stein@mailbox.org>
Cc:     Kevin Hilman <khilman@baylibre.com>,
        Neil Armstrong <narmstrong@baylibre.com>,
        linux-amlogic@lists.infradead.org,
        Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Daniel Vetter <daniel@ffwll.ch>,
        Jerome Brunet <jbrunet@baylibre.com>,
        David Airlie <airlied@linux.ie>
Subject: Re: [PATCH v2 1/1] dt-bindings: display: meson-vpu: Add missing
 amlogic,canvas property
Message-ID: <YcNgceABXb03J9gN@robh.at.kernel.org>
References: <20211219094155.177206-1-alexander.stein@mailbox.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211219094155.177206-1-alexander.stein@mailbox.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 19 Dec 2021 10:41:55 +0100, Alexander Stein wrote:
> This property was already mentioned in the old textual bindings
> amlogic,meson-vpu.txt, but got dropped during conversion.
> Adding it back similar to amlogic,gx-vdec.yaml.
> 
> Fixes: 6b9ebf1e0e67 ("dt-bindings: display: amlogic, meson-vpu: convert to yaml")
> Signed-off-by: Alexander Stein <alexander.stein@mailbox.org>
> ---
> Changes in v2:
> * Do not linebreak Fixes tag
> * Make amlogic,canvas mandatory as it was in textual binding already
> * Add amlogic,canvas to example
> 
>  .../devicetree/bindings/display/amlogic,meson-vpu.yaml      | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
