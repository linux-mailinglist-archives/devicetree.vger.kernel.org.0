Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id B68D7413B2A
	for <lists+devicetree@lfdr.de>; Tue, 21 Sep 2021 22:19:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233942AbhIUUUq (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 21 Sep 2021 16:20:46 -0400
Received: from mail-oi1-f179.google.com ([209.85.167.179]:41949 "EHLO
        mail-oi1-f179.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232644AbhIUUUp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 21 Sep 2021 16:20:45 -0400
Received: by mail-oi1-f179.google.com with SMTP id 6so915915oiy.8
        for <devicetree@vger.kernel.org>; Tue, 21 Sep 2021 13:19:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=A2M18lMSXY3ZYn0Bmywro4iufNTnNUMjVOQ+H1KM0+U=;
        b=aYtFRg1AiylbCHzDsxrTxzQRxbS+NKSgfGjVI5X1272TrrHZUUCJbOY8InLzYpbo6+
         Uw2S3FwHKL8wrgF2VmNSZTQc2cVP/4jm01Je8lEST/Srp1x0/vxYub2Od8QV7QZZXyDT
         fxZ4cCvGNObp9N40RlWpgdN472JaOpmaBKpxb2VhQD1eFrqvIU/QT0chLRG08qy35qcZ
         GHQdPvMeaBEQWVTQXODzzb4i8u76l/ipY+yfjpIfvjdcuNfYKXtxVkgu0rKIIWkwi6V4
         KRck76NEJrPaK9TxoOOLPkPRjE+pqk4h1HULlI9uq7gYOEUDLz0xObe1kBUfZRJqDBUE
         Bddg==
X-Gm-Message-State: AOAM530EmHuBE8NNKdXa8n7Zx94v+H1DAI6fEBNikESjCC2pfa2grc7Z
        SfFkw32Rlm5JzrOZo/apSw==
X-Google-Smtp-Source: ABdhPJwgLGDO0Z/GSWGIAWTR/Dv7Bs44+jxu5THW6PRvDUEXfqmdqNv9rX9jCAG8jGRfu+XD06meuA==
X-Received: by 2002:a05:6808:1693:: with SMTP id bb19mr5279696oib.21.1632255556511;
        Tue, 21 Sep 2021 13:19:16 -0700 (PDT)
Received: from robh.at.kernel.org (rrcs-192-154-179-36.sw.biz.rr.com. [192.154.179.36])
        by smtp.gmail.com with ESMTPSA id n4sm3165otr.59.2021.09.21.13.19.15
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 21 Sep 2021 13:19:15 -0700 (PDT)
Received: (nullmailer pid 3261919 invoked by uid 1000);
        Tue, 21 Sep 2021 20:19:13 -0000
Date:   Tue, 21 Sep 2021 15:19:13 -0500
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Rob Herring <robh+dt@kernel.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, linux-phy@lists.infradead.org,
        Lee Jones <lee.jones@linaro.org>,
        Chunfeng Yun <chunfeng.yun@mediatek.com>
Subject: Re: [PATCH 1/4] dt-bindings: mfd: brcm,cru: add clkset syscon
Message-ID: <YUo+QSTvgYHKDr6D@robh.at.kernel.org>
References: <20210913080024.6951-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210913080024.6951-1-zajec5@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Sep 2021 10:00:21 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> CRU has a shared register that is used e.g. to control USB 2.0 PHY block
> access. It's a single 32 b register. Document it as syscon so it can be
> used with a regmap.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
>  Documentation/devicetree/bindings/mfd/brcm,cru.yaml | 8 ++++++++
>  Documentation/devicetree/bindings/mfd/syscon.yaml   | 1 +
>  2 files changed, 9 insertions(+)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
