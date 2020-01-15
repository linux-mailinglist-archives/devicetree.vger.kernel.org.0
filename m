Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id B444813C87D
	for <lists+devicetree@lfdr.de>; Wed, 15 Jan 2020 16:55:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728896AbgAOPzZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Jan 2020 10:55:25 -0500
Received: from mail-ot1-f65.google.com ([209.85.210.65]:37645 "EHLO
        mail-ot1-f65.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1726501AbgAOPzZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Jan 2020 10:55:25 -0500
Received: by mail-ot1-f65.google.com with SMTP id k14so16536029otn.4
        for <devicetree@vger.kernel.org>; Wed, 15 Jan 2020 07:55:25 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=h8tviBIGxzG0M2SWVlzB/ZX7WYO/ibSFmw3TBS+98tw=;
        b=qs2HJOgk8QuXdRQUXSZ2tXd8PnTr3in/5ZZCyPRaICNk28QO/89qxencw4/PTO/NZT
         KKHXi1zXXjz3/6pfCAl0SP3kMmN3ObVtcjlxInyamAXa5rnuYNBhwi79LwW0PRy9w+Hs
         hmmtwfRxlqAj8mSP2429tWOSok8LTK2ROTGgpxJV13I2zZqM0510FwFc/zvBP5NmZqX1
         Y16d350L4fR364AIdfpZmD7MVvRCsRUwlz+zk8+k72D+T7wiMpvbtOKLhUKEQxov4ztI
         1ENcY/EpVQtWj42S0/F+EodNcWs2JA9S79Imxas16BRFLPCsxryZTZ6yztKcVYpJECZN
         aaXA==
X-Gm-Message-State: APjAAAWihfwpJWoC+WIKlCcSyrsQ+zTtklqp+5/Nw9FifmkFcDRSoSff
        6VoyeqJjBf0DwDEmTOFSvTgvD2U=
X-Google-Smtp-Source: APXvYqzG6iAZEwiJaMz3VlyUmrQJiWZ7ejK5B0lUZUwY79qr7uw0lWfSAa3H6/XARN4nLhhAPPmhyA==
X-Received: by 2002:a9d:74d8:: with SMTP id a24mr3328628otl.100.1579103724732;
        Wed, 15 Jan 2020 07:55:24 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 67sm5790954oid.30.2020.01.15.07.55.24
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Jan 2020 07:55:24 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 220379
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Wed, 15 Jan 2020 09:40:22 -0600
Date:   Wed, 15 Jan 2020 09:40:22 -0600
From:   Rob Herring <robh@kernel.org>
To:     Anson Huang <Anson.Huang@nxp.com>
Cc:     robh+dt@kernel.org, mark.rutland@arm.com, vkoul@kernel.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de, kernel@pengutronix.de,
        festevam@gmail.com, ulf.hansson@linaro.org,
        srinivas.kandagatla@linaro.org, broonie@kernel.org,
        manivannan.sadhasivam@linaro.org, andrew.smirnov@gmail.com,
        rjones@gateworks.com, marcel.ziswiler@toradex.com,
        sebastien.szymanski@armadeus.com, aisheng.dong@nxp.com,
        richard.hu@technexion.com, angus@akkea.ca, cosmin.stoica@nxp.com,
        l.stach@pengutronix.de, rabeeh@solid-run.com,
        leonard.crestez@nxp.com, daniel.baluta@nxp.com, jun.li@nxp.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        dmaengine@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-mmc@vger.kernel.org, linux-spi@vger.kernel.org,
        Linux-imx@nxp.com
Subject: Re: [PATCH V2 1/7] dt-bindings: fsl-imx-sdma: Add
 i.MX8MM/i.MX8MN/i.MX8MP compatible string
Message-ID: <20200115154022.GA10946@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Jan 2020 13:33:16 +0800, Anson Huang wrote:
> Add imx8mm/imx8mn/imx8mp sdma support.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> New patch
> ---
>  Documentation/devicetree/bindings/dma/fsl-imx-sdma.txt | 3 +++
>  1 file changed, 3 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
