Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id CB28E4629F8
	for <lists+devicetree@lfdr.de>; Tue, 30 Nov 2021 02:46:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236904AbhK3Btv (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 29 Nov 2021 20:49:51 -0500
Received: from mail-ot1-f49.google.com ([209.85.210.49]:36556 "EHLO
        mail-ot1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229827AbhK3Btv (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 29 Nov 2021 20:49:51 -0500
Received: by mail-ot1-f49.google.com with SMTP id w6-20020a9d77c6000000b0055e804fa524so28093927otl.3
        for <devicetree@vger.kernel.org>; Mon, 29 Nov 2021 17:46:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=0Y0Ve3+w1/v8OIasi6sMLAYERw+SuVuH131zI0dfnUM=;
        b=ipSoECAYFyeGTV9P7baF4VuJw1aGH6Ti1n73dfv9t4QIrTdJ+mHU8l9gkKF0xrkpEg
         vBXZDRZAnxm3aBK4IghB6WlUymarj8TM7ZddtGfo+cWSQ4/xNnhzhiBDifpBM3u/RFKs
         Vk7fBbDCVfPPCLK13rqSolRQfPszreyYqIM32cknimerMEmGuROfhZwI49DaqLGkySe1
         UosjPNXm/GhkRTYTWiPDfE1jKdPyWAQR/3JYJzxq2Yriuif69w+rx3R+i1Y2Yiql2zTq
         g9soEtDBxLjMn5rsq9MQHveaXewr8UZlhHpIQSaKwYaKe3lNQn9hB4MxN/E2NTGpL4In
         UNdA==
X-Gm-Message-State: AOAM532vkgtSRJAMB7H7WJWg1/jgc0aBqYaTwkes/AlkKDBupmYyoM0I
        9VWgg3HJlVPgJ3EenTvfxQ==
X-Google-Smtp-Source: ABdhPJzFTSwrVuFQ1f7Iti++9Y2Q1+dDskMru9IhMwUujaRP6S2Gl4M4uXaKnzq4V0tjd+YozDUnxA==
X-Received: by 2002:a05:6830:442a:: with SMTP id q42mr48952359otv.385.1638236792392;
        Mon, 29 Nov 2021 17:46:32 -0800 (PST)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id n22sm2542990oop.29.2021.11.29.17.46.31
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 29 Nov 2021 17:46:31 -0800 (PST)
Received: (nullmailer pid 1000370 invoked by uid 1000);
        Tue, 30 Nov 2021 01:46:31 -0000
Date:   Mon, 29 Nov 2021 19:46:31 -0600
From:   Rob Herring <robh@kernel.org>
To:     Evgeny Boger <boger@wirenboard.com>
Cc:     Chen-Yu Tsai <wens@csie.org>, linux-sunxi@lists.linux.dev,
        linux-arm-kernel@lists.infradead.org,
        Maxime Ripard <mripard@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Lee Jones <lee.jones@linaro.org>
Subject: Re: [PATCH 2/3] dt-bindings: iio: adc: new compatible for Allwinner
 R40 RTP controller
Message-ID: <YaWCdyOLRIvu9T+F@robh.at.kernel.org>
References: <20211119191456.510435-1-boger@wirenboard.com>
 <20211119191456.510435-3-boger@wirenboard.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211119191456.510435-3-boger@wirenboard.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 19 Nov 2021 22:14:55 +0300, Evgeny Boger wrote:
> R40 SoC has touchscreen controller also serving as general-purpose ADC.
> The hardware is very similar to A31, except that R40 has separate
> calibrated thermal sensor IP, so temperature sensing channel in RTP is
> not documented and is not to be used.
> 
> Signed-off-by: Evgeny Boger <boger@wirenboard.com>
> ---
>  .../devicetree/bindings/mfd/allwinner,sun4i-a10-ts.yaml          | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
