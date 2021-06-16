Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 11FC83AA79D
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:42:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234713AbhFPXoe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:44:34 -0400
Received: from mail-il1-f170.google.com ([209.85.166.170]:38624 "EHLO
        mail-il1-f170.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234597AbhFPXod (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:44:33 -0400
Received: by mail-il1-f170.google.com with SMTP id d1so3820309ils.5
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:42:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Ngl7KITWfOsapEmP7T+P/tcetKaN+SwUugd6A0K5oCk=;
        b=uZHIUfTM5FdrCACJHzldy+kUShzYMalKPFaU8SalpVFpSQCQKisvTGlB58tXDNEWoo
         Q5u8rzKBGZusv6jzED6bfrSASyks2GbVJEkmEPCxUgUisdLHK0yyW6JgtTnCStbzhjv9
         2ubylq2lwvNnwEVUIanjI8uJa+XMw2K9ml8jC3CYrKODS23XxJD25UyVAPWET7tNHEFz
         Tucp2HLT8cfVCCaKVOZWoiXhlOb176pAncvj7QmxK2ddNAtXS1hivQOrWZmMINryyyON
         dUFPlZaKSWp+7yQ0/2nLE+8T8MQEcYVpAyI4FWcBjIFQtjAfBvK75ogrl9VEQ0lV6yI1
         6rjg==
X-Gm-Message-State: AOAM533yeCayzbdkfGZxr+LrEiw7d36JvvgA+UJiKUVpRJxC293ELe+q
        aIfgdcb7z0Fi72uKUpuXMw==
X-Google-Smtp-Source: ABdhPJzPF5cMSn5qaKXnCzsAXTUSTp8HXv23mfoGWJFmZf6qOvPlI52Z3wt9q1pCGoKtL7iitWVVLA==
X-Received: by 2002:a05:6e02:5a3:: with SMTP id k3mr1452681ils.302.1623886946510;
        Wed, 16 Jun 2021 16:42:26 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id l11sm722316ilo.77.2021.06.16.16.42.24
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:42:25 -0700 (PDT)
Received: (nullmailer pid 303489 invoked by uid 1000);
        Wed, 16 Jun 2021 23:42:23 -0000
Date:   Wed, 16 Jun 2021 17:42:23 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, festevam@gmail.com,
        s.hauer@pengutronix.de, linus.walleij@linaro.org,
        aisheng.dong@nxp.com, sboyd@kernel.org, linux-imx@nxp.com,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH 01/11] dt-bindings: gpio: gpio-vf610: Add imx8ulp
 compatible string
Message-ID: <20210616234223.GA303436@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-2-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-2-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 16:39:11 +0800, Jacky Bai wrote:
> Add the compatible string for i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/gpio/gpio-vf610.yaml | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
