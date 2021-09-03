Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 83B1E4005E5
	for <lists+devicetree@lfdr.de>; Fri,  3 Sep 2021 21:36:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1348120AbhICThN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 3 Sep 2021 15:37:13 -0400
Received: from mail-ot1-f45.google.com ([209.85.210.45]:41730 "EHLO
        mail-ot1-f45.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231599AbhICThN (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 3 Sep 2021 15:37:13 -0400
Received: by mail-ot1-f45.google.com with SMTP id o16-20020a9d2210000000b0051b1e56c98fso318492ota.8
        for <devicetree@vger.kernel.org>; Fri, 03 Sep 2021 12:36:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OUup1w/wBcRMNh0s/K298HO/Zym1F/UHB17LzFzrSic=;
        b=mY1wrMk1s6Pe9eZcqkflPHKy13kyaIz8XI1bw5n6huBwMez5AUHGhZJfoPTJZFBoph
         Upf7ngEXYSIjgi3GsqNGCAfU8AhHQbqY84PIY6V8mgc8n9pt29BZhXMNIoLO4SKBtQsF
         FaxRfypCtf7DpNpU+UlbOMWKNqfoHwpd0Sjudf3WRZXe3jrIP21XPmMensFFbBKbusXF
         vnnePKi/tF8KJtUsGjQaaFyKWOw4nu7UobJC1csa2mjHLVBoz0pIGbQeirs3o1bq2rhi
         0HJVAI3ibKkUefwoiTw3kTAbUMSCfxTpQCUfsKDn6rVHUHpWhxWxJzSZHptPtA+GTaYc
         RG3w==
X-Gm-Message-State: AOAM532JVclQxmuZYmLj7tVtnHPlCCyohQO3Ab6yGvKbuAg22QcgcBx6
        brG/iQrfLkU6I5ZBMGPpfQ==
X-Google-Smtp-Source: ABdhPJyT+QMDkErsExM7TPuoTdt8g52ee2aWHaHQrgP67KyloiFYbwicBhIzn9yqc4gQwYkp2he7vA==
X-Received: by 2002:a9d:718a:: with SMTP id o10mr568975otj.376.1630697772939;
        Fri, 03 Sep 2021 12:36:12 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n19sm56019otl.63.2021.09.03.12.36.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 03 Sep 2021 12:36:11 -0700 (PDT)
Received: (nullmailer pid 3327247 invoked by uid 1000);
        Fri, 03 Sep 2021 19:36:10 -0000
Date:   Fri, 3 Sep 2021 14:36:10 -0500
From:   Rob Herring <robh@kernel.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-arm-kernel@lists.infradead.org,
        Frank Rowand <frowand.list@gmail.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        linux-sunxi@googlegroups.com,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>
Subject: Re: [PATCH v2 26/52] dt-bindings: media: ti,cal: Fix example
Message-ID: <YTJ5Kjyw9c4CElYn@robh.at.kernel.org>
References: <20210901091852.479202-1-maxime@cerno.tech>
 <20210901091852.479202-27-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210901091852.479202-27-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Wed, 01 Sep 2021 11:18:26 +0200, Maxime Ripard wrote:
> The OV5640 sensor used in the example doesn't follow the binding and
> omits the regulators. Add some to make the example valid.
> 
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> ---
>  Documentation/devicetree/bindings/media/ti,cal.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Applied, thanks!
