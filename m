Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id D04613AA7A8
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:45:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231731AbhFPXrm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:47:42 -0400
Received: from mail-io1-f49.google.com ([209.85.166.49]:38435 "EHLO
        mail-io1-f49.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbhFPXrl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:47:41 -0400
Received: by mail-io1-f49.google.com with SMTP id h5so1086825iok.5
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:45:34 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wnAbMiLHFlBXVxUhlT03e0lQTSd9dX91Vf3UDkTkR3g=;
        b=Kycgw8Bx0u55zfhgYyDMhVAtKVbYjTnf/fNRqII5CaZozdyC3VLJXWoj+jg02epFy5
         DqkLvCeM45VhRwcIAXHWbl6A1rK9AIWGodK8nC1NeqcCbxSpbmiVYE8WDjVEBr56nkED
         ErU7/Udo4gdpnbxrS5YYBuBuLh2/5SlPGcylxSSJumgJrW0goa5zSK5TWsnTyPB0lp7z
         KAX4HqoKTUGfPCNCWhuvDAez5EjU3TTbFCHFYRNlwlYUSFyY5xXUKBQkiSMj4uXykfAD
         t748QWy9h7hX5QqnAyyM/zdacpoUxnAhuJY3ZFmtgIRtD1qCt1avWuW2WDQzvI3MpKnA
         /a1g==
X-Gm-Message-State: AOAM532YlXJGq8X1KrJ5ybPheRl3+XhLO7W5n/B1QlK1caHGvVklK+5b
        e/ilo198vnv4o/VNVt19yg==
X-Google-Smtp-Source: ABdhPJy8dWuOek9P23qGivpiTX5Far/H08f0PJtxWIv+M+kRuWnbGG8779/PxyIUHAZiW9sjs6Qozg==
X-Received: by 2002:a02:a587:: with SMTP id b7mr1639807jam.13.1623887134001;
        Wed, 16 Jun 2021 16:45:34 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id a18sm1894593ilc.31.2021.06.16.16.45.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:45:33 -0700 (PDT)
Received: (nullmailer pid 308115 invoked by uid 1000);
        Wed, 16 Jun 2021 23:45:31 -0000
Date:   Wed, 16 Jun 2021 17:45:31 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, s.hauer@pengutronix.de, linux-imx@nxp.com,
        devicetree@vger.kernel.org, robh+dt@kernel.org, sboyd@kernel.org,
        linux-arm-kernel@lists.infradead.org, festevam@gmail.com,
        linus.walleij@linaro.org, aisheng.dong@nxp.com,
        kernel@pengutronix.de
Subject: Re: [PATCH 06/11] dt-bindings: timer: tpm-timer: Add imx8ulp
 compatible string
Message-ID: <20210616234531.GA308059@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-7-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-7-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 16:39:16 +0800, Jacky Bai wrote:
> For i.MX8ULP, it use two compatible strings, so update the
> compatible strings for it.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/timer/nxp,tpm-timer.yaml | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
