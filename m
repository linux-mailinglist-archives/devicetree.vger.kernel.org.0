Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 063633AA7A1
	for <lists+devicetree@lfdr.de>; Thu, 17 Jun 2021 01:43:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231744AbhFPXpX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 16 Jun 2021 19:45:23 -0400
Received: from mail-io1-f50.google.com ([209.85.166.50]:44626 "EHLO
        mail-io1-f50.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231389AbhFPXpX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 16 Jun 2021 19:45:23 -0400
Received: by mail-io1-f50.google.com with SMTP id q3so1052563iop.11
        for <devicetree@vger.kernel.org>; Wed, 16 Jun 2021 16:43:15 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=z8Ob3s1XIGmg/qqxw4WbA4vrlxzTvSBkAzTog3eusQs=;
        b=nKqBDjXlXwI+iXGCwFxtFohGqOf8yJFKIk4PwYR8ALEgEKzFsR4/JiGcZJq4AUlnPR
         cwIRw7puokOA+93AYlDGHXzC/3uuMK5BcojKsFvKC6N+Rc4lzi4tYoN/RGPyCe4Tmkjh
         HGTXhsVc2TLQQwootj0m9a6aHHI5XAEEDAnZdgqslnJvKZHfnDifC/BUmv6AOAo6QAZ4
         fyC9TZLaBSmPPgjhh7ljcu/A+FeCVdnjXd0q7GdFg5YwocWBqPNX/Zd+X/6oyD+IuAFI
         oxnJDGLjKBsjZjwRUspG7GM0H7E9wX8sndbwvGeX8Z59P2qqRgBZJM3/kU/BpNA/tjqB
         lPDw==
X-Gm-Message-State: AOAM530Ays+c394zBTCiEyVbwmtJVlUk0v3Hpp3BoQBKQeXjMGjVStzF
        fAzub9MiOdpwudEQ1jbEcQ==
X-Google-Smtp-Source: ABdhPJwBFH1RdO25UzHFU5Iq3E5ye8GWvHxdHZeQLUc7l79fmZw9LC7P8vllbKEtIlhDaYgkZT623A==
X-Received: by 2002:a5d:8254:: with SMTP id n20mr1437285ioo.85.1623886995323;
        Wed, 16 Jun 2021 16:43:15 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id n12sm1832443ile.0.2021.06.16.16.43.11
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 16 Jun 2021 16:43:14 -0700 (PDT)
Received: (nullmailer pid 304659 invoked by uid 1000);
        Wed, 16 Jun 2021 23:43:10 -0000
Date:   Wed, 16 Jun 2021 17:43:10 -0600
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     linus.walleij@linaro.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, kernel@pengutronix.de,
        shawnguo@kernel.org, festevam@gmail.com, linux-imx@nxp.com,
        s.hauer@pengutronix.de, aisheng.dong@nxp.com, robh+dt@kernel.org,
        sboyd@kernel.org
Subject: Re: [PATCH 02/11] dt-bindings: i2c: imx-lpi2c: Add imx8ulp
 compatible string
Message-ID: <20210616234310.GA304608@robh.at.kernel.org>
References: <20210607083921.2668568-1-ping.bai@nxp.com>
 <20210607083921.2668568-3-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210607083921.2668568-3-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Jun 2021 16:39:12 +0800, Jacky Bai wrote:
> Add the compatible for i.MX8ULP.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/i2c/i2c-imx-lpi2c.yaml | 4 +++-
>  1 file changed, 3 insertions(+), 1 deletion(-)
> 

Acked-by: Rob Herring <robh@kernel.org>
