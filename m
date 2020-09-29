Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id A102827BE62
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 09:50:28 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1725710AbgI2Hu1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 03:50:27 -0400
Received: from mail-ed1-f68.google.com ([209.85.208.68]:43863 "EHLO
        mail-ed1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1725554AbgI2Hu1 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 03:50:27 -0400
Received: by mail-ed1-f68.google.com with SMTP id n13so5264721edo.10
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 00:50:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=BvORWp0VrSiWBo/SYJcoYCYDR9xoQ+b/J1lu1gLuCs8=;
        b=dnNvi50pQmd8P5Q6krn1g0mG++nzrZD+zSz5jAVh8D3PgYitq+fmwE8vJvsw6fxRkM
         U5NnW1EcE5ZsNODTTQpbHkpldbllMGARxEIq49m+8DIgh5ybCMNLZXotNPJ8Ea8qDlnm
         xRcTXHPRlhQJVJNqeZe5j2XvkUCI4+ho+Vr1KCVsXztCjlYjk1gxCfA3U+lQMs0XFsDg
         zBMvd2y1e9bR/PNLPikhU1HmR9iiuUMujjyd6ibLFthXMvn6oJVj8SJhFNBLvzmtxas7
         wWibo0VbB0bYU48anesFNP3VsRNRsE6oOsJDZLU6OAEMIinC5Mlp76N1k4DR+Q2QBb9J
         EbGA==
X-Gm-Message-State: AOAM533vykkaozZWRmitb6MoVAsdWgScLlmfbZoo9Xuj8w9b1ocUFPte
        abvf/GpHqA8G00UB4iwaBnY=
X-Google-Smtp-Source: ABdhPJx4QGoFu5hCTppFKMx1zQ5AU1I0rTdskdUc2ccQRURNE8Bbp9mNIev2ZwOlAbXTbYf5Fd5RnQ==
X-Received: by 2002:aa7:d58e:: with SMTP id r14mr1977810edq.52.1601365825530;
        Tue, 29 Sep 2020 00:50:25 -0700 (PDT)
Received: from kozik-lap ([194.230.155.194])
        by smtp.googlemail.com with ESMTPSA id r13sm5032139edo.48.2020.09.29.00.50.24
        (version=TLS1_2 cipher=ECDHE-ECDSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 29 Sep 2020 00:50:24 -0700 (PDT)
Date:   Tue, 29 Sep 2020 09:50:22 +0200
From:   Krzysztof Kozlowski <krzk@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, s.hauer@pengutronix.de,
        festevam@gmail.com, linux-imx@nxp.com, devicetree@vger.kernel.org
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add imx8mn ddr3l evk board
Message-ID: <20200929075022.GA7139@kozik-lap>
References: <20200927094124.2714390-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
In-Reply-To: <20200927094124.2714390-1-ping.bai@nxp.com>
User-Agent: Mutt/1.9.4 (2018-02-28)
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, Sep 27, 2020 at 05:41:23PM +0800, Jacky Bai wrote:
> Add entry for i.MX8MN DDR3L EVK board.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Reviewed-by: Krzysztof Kozlowski <krzk@kernel.org>

Best regards,
Krzysztof
