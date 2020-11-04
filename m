Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 159412A7082
	for <lists+devicetree@lfdr.de>; Wed,  4 Nov 2020 23:30:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1730691AbgKDWao (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 Nov 2020 17:30:44 -0500
Received: from mail-oo1-f68.google.com ([209.85.161.68]:43072 "EHLO
        mail-oo1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727711AbgKDWao (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 Nov 2020 17:30:44 -0500
Received: by mail-oo1-f68.google.com with SMTP id z14so26142oom.10
        for <devicetree@vger.kernel.org>; Wed, 04 Nov 2020 14:30:43 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=wQjWhDvaMTJfou20Vf7AfWs7QnF8sAKxHEJNNsSNo9w=;
        b=P9yigxVVT6k56obN6XXRRVLTvLm8E9u5zxYky/gpMfdV9i117l3TyzCx3UV7jYbtFu
         BNesRJRerDdT6v8+7958xzybmHTkvHQxE2Jc0HH03kt4F4ksHbN8zUqSSFfdbw1Sznvv
         JLMmJCpR9b7zwpRIgrmB48lhPhF18lxu45eraWag033OHuPc0Su2lOeaci42yEJSOOSb
         b2BeADl5lReoQJz9HgF+il++CF7C9lKqveM+OK9S+Yd0HYFlIkc8d5+MYqdW/1IqHTcn
         2AG0VjHcT2HEZPwyD8Q9gmIfFBahHmmlosP1fWD4IZeYJTnL/Fl7FpE0ddbNtYmcc2QN
         6OlQ==
X-Gm-Message-State: AOAM533OBfPfuQM3wTV7T2vOZ+zOcB6W4RU8m1Lbj12/foSt+9vTGgSy
        UpcJkPM3szd5LQP3YI2oFQ==
X-Google-Smtp-Source: ABdhPJxoSaiTqY8ZwkOoi85uoZLZdAqS35LRLrzQWuMe7HsRiXIEV9lxY53ATct93LI4USmqtoMBsw==
X-Received: by 2002:a4a:bb94:: with SMTP id h20mr229963oop.73.1604529043410;
        Wed, 04 Nov 2020 14:30:43 -0800 (PST)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id a23sm839597oot.33.2020.11.04.14.30.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 04 Nov 2020 14:30:42 -0800 (PST)
Received: (nullmailer pid 43077 invoked by uid 1000);
        Wed, 04 Nov 2020 22:30:42 -0000
Date:   Wed, 4 Nov 2020 16:30:42 -0600
From:   Rob Herring <robh@kernel.org>
To:     Sergio Paracuellos <sergio.paracuellos@gmail.com>
Cc:     vkoul@kernel.org, devel@driverdev.osuosl.org, neil@brown.name,
        kishon@ti.com, devicetree@vger.kernel.org, robh+dt@kernel.org,
        gregkh@linuxfoundation.org
Subject: Re: [PATCH v4 1/4] dt-bindings: phy: Add binding for Mediatek MT7621
 PCIe PHY
Message-ID: <20201104223042.GA43042@bogus>
References: <20201031122246.16497-1-sergio.paracuellos@gmail.com>
 <20201031122246.16497-2-sergio.paracuellos@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201031122246.16497-2-sergio.paracuellos@gmail.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sat, 31 Oct 2020 13:22:43 +0100, Sergio Paracuellos wrote:
> Add bindings to describe Mediatek MT7621 PCIe PHY.
> 
> Signed-off-by: Sergio Paracuellos <sergio.paracuellos@gmail.com>
> ---
>  .../bindings/phy/mediatek,mt7621-pci-phy.yaml | 36 +++++++++++++++++++
>  1 file changed, 36 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/phy/mediatek,mt7621-pci-phy.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
