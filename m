Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 07EED43D2D7
	for <lists+devicetree@lfdr.de>; Wed, 27 Oct 2021 22:32:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235753AbhJ0Uej (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Oct 2021 16:34:39 -0400
Received: from mail-oo1-f52.google.com ([209.85.161.52]:33686 "EHLO
        mail-oo1-f52.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230494AbhJ0Uej (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Oct 2021 16:34:39 -0400
Received: by mail-oo1-f52.google.com with SMTP id q39-20020a4a962a000000b002b8bb100791so1378279ooi.0
        for <devicetree@vger.kernel.org>; Wed, 27 Oct 2021 13:32:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=dCyobkqZQkzSalEez4Iq0YBADjfjqmPa1gmyY2RxB7Y=;
        b=Ij5/GhUOmm2Tih/G/W3R0WxXmaZpQGvFXeblS6UvClqiPAALQS8FsdWhy4ZmTrYtmz
         KYyGbtsSfiJ8otg04L9fL1BtUrSjDaFeu4+wff+jbacHVaO/Wlv9hxti/reQL/QxomZT
         iDj/pp8yHINfC1Q9pMHHQwG63cVu/8r8vj3dXpqrA9Vc5e676ipgt6fSA9AY2iyXh53K
         XktPinlAqUb4K5nmndFZbjOmN/+2kt1pKPmPUApO9v8fMOiuI58zphgg5O8SE0PvqvIh
         MRhn3axPPSw4G1JkABwcrN/G0mAq8+N3ND+fOVZjz9HXOJF1uIELREaQNUPsazn3Pobr
         GqQw==
X-Gm-Message-State: AOAM531MW5INx4ybhlyFk8KJorSAoeMlJIWjRAC9GMCqXNjfQSvR0xGb
        2d+JbfL4CVmS9CWsg6B4Ug==
X-Google-Smtp-Source: ABdhPJzr5mepQbrAdQc0r1ApS1sM4eCK0NSKmmtkdNXQ+AzNpWS64gF5Sod6uTlShQOc1t94rJ5iyQ==
X-Received: by 2002:a4a:de10:: with SMTP id y16mr23677617oot.4.1635366733450;
        Wed, 27 Oct 2021 13:32:13 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id d18sm364711ook.14.2021.10.27.13.32.12
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Oct 2021 13:32:12 -0700 (PDT)
Received: (nullmailer pid 2102331 invoked by uid 1000);
        Wed, 27 Oct 2021 20:32:11 -0000
Date:   Wed, 27 Oct 2021 15:32:11 -0500
From:   Rob Herring <robh@kernel.org>
To:     Markus Schneider-Pargmann <msp@baylibre.com>
Cc:     Sam Ravnborg <sam@ravnborg.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        linux-phy@lists.infradead.org, Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Vinod Koul <vkoul@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Chun-Kuang Hu <chunkuang.hu@kernel.org>,
        linux-mediatek@lists.infradead.org
Subject: Re: [PATCH v5 1/7] dt-bindings: mediatek,dpi: Add DP_INTF compatible
Message-ID: <YXm3S4u8KAWjJfXy@robh.at.kernel.org>
References: <20211021092707.3562523-1-msp@baylibre.com>
 <20211021092707.3562523-2-msp@baylibre.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211021092707.3562523-2-msp@baylibre.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Thu, 21 Oct 2021 11:27:01 +0200, Markus Schneider-Pargmann wrote:
> DP_INTF is similar to DPI but does not have the exact same feature set
> or register layouts.
> 
> DP_INTF is the sink of the display pipeline that is connected to the
> DisplayPort controller and encoder unit. It takes the same clocks as
> DPI.
> 
> Signed-off-by: Markus Schneider-Pargmann <msp@baylibre.com>
> ---
> 
> Notes:
>     Changes v4 -> v5:
>     - Newly created patch after realizing that the specific clocks for dpintf were
>       the same as engine and pixel clocks.
> 
>  .../bindings/display/mediatek/mediatek,dpi.yaml       | 11 ++++++-----
>  1 file changed, 6 insertions(+), 5 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
