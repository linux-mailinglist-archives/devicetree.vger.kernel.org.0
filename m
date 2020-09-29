Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id C30F027D6C7
	for <lists+devicetree@lfdr.de>; Tue, 29 Sep 2020 21:21:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1727886AbgI2TVf (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 29 Sep 2020 15:21:35 -0400
Received: from mail-oi1-f193.google.com ([209.85.167.193]:43596 "EHLO
        mail-oi1-f193.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727360AbgI2TVf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 29 Sep 2020 15:21:35 -0400
Received: by mail-oi1-f193.google.com with SMTP id i17so6700615oig.10
        for <devicetree@vger.kernel.org>; Tue, 29 Sep 2020 12:21:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=uGaM8mQAMG0AT3OKfsCWZ7R9W8GA4v7yXLqvZacYTUE=;
        b=oIdZKM456F+4xFZq9Fcqbi2NF4H+KlkD14jC7ePWT9S0gr1I9lNi1pghAL9x9mmxUc
         1mUmF36xIBsGJdvJTn8aQ1ctD3yswKaYhkaQDwp/O69yZJWhAeRyyOgmhGmVRvjGI3We
         2/HLT6to4UQqHPK8NG/iata8ZempnVbPM1PTtRX8R4RinODj2+nCF37ShP+iN6OXgZ1o
         msXUmRid5Bvqx+LbWqoHPmMAPGqWVkPY3D4lcajcdMTsfLeexIhbH/3RJyfbhEJ0kkeS
         kX30NfwSIhfYdNtHtT5IkqTVDTQXQ21rh0FddDPlvl8HojAwn78PU/90iGQ3+mG86Dda
         uY5w==
X-Gm-Message-State: AOAM533vgo2NHf31xx2rZTZku21WPNd2eXqtfzzale4ETV5rv20gvl6l
        m8TazBdzAcQFZZh1z2TyjwnJ48S6GdZ/Grc=
X-Google-Smtp-Source: ABdhPJxX1PayCae/yKnxbasNCV5bSsdDsvTIwDgd+VwC8fkyEZ3Lec5lL5OEQOGSPY+EWYr95HqR2w==
X-Received: by 2002:aca:1108:: with SMTP id 8mr3615565oir.26.1601407294834;
        Tue, 29 Sep 2020 12:21:34 -0700 (PDT)
Received: from xps15 (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 92sm1202666ota.38.2020.09.29.12.21.33
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 29 Sep 2020 12:21:34 -0700 (PDT)
Received: (nullmailer pid 1003263 invoked by uid 1000);
        Tue, 29 Sep 2020 19:21:33 -0000
Date:   Tue, 29 Sep 2020 14:21:33 -0500
From:   Rob Herring <robh@kernel.org>
To:     Jacky Bai <ping.bai@nxp.com>
Cc:     shawnguo@kernel.org, robh+dt@kernel.org, linux-imx@nxp.com,
        festevam@gmail.com, devicetree@vger.kernel.org,
        s.hauer@pengutronix.de
Subject: Re: [PATCH 1/2] dt-bindings: arm: fsl: Add imx8mn ddr3l evk board
Message-ID: <20200929192133.GA1003233@bogus>
References: <20200927094124.2714390-1-ping.bai@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200927094124.2714390-1-ping.bai@nxp.com>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Sun, 27 Sep 2020 17:41:23 +0800, Jacky Bai wrote:
> Add entry for i.MX8MN DDR3L EVK board.
> 
> Signed-off-by: Jacky Bai <ping.bai@nxp.com>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
