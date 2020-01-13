Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [209.132.180.67])
	by mail.lfdr.de (Postfix) with ESMTP id 7E37F139BF4
	for <lists+devicetree@lfdr.de>; Mon, 13 Jan 2020 22:55:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1728802AbgAMVzK (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jan 2020 16:55:10 -0500
Received: from mail-ot1-f68.google.com ([209.85.210.68]:33692 "EHLO
        mail-ot1-f68.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1727382AbgAMVzK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jan 2020 16:55:10 -0500
Received: by mail-ot1-f68.google.com with SMTP id b18so10538858otp.0
        for <devicetree@vger.kernel.org>; Mon, 13 Jan 2020 13:55:09 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=pxveT8kmVAy+6NNs/m6VYBrLz6raLXBMbZxaVD7AKwA=;
        b=iEy+VMszRq0w6txLOEsbKrmdmuvrqCPbvVWlxvMgfe+9r+lDfhq0xJr55UePUkjL3i
         swE7tSov65Nrb46K1P8ytdiokgc0ffNABR70x7hE/W6ODsbsCZBZaS1xeKyqK2kFnus9
         JuzTri1MIZi0K9P4sC1Qtab/jChsMZhjh0u70D2vW9D4Qsz9X7iDF+IKWUNgE0bPg4PU
         JTYDee12filOyEwosWbzaDX3bdH//PHD8tU89LgRKjWl44x/B8PYmHbHntLlph503upc
         Epjvb6wwLIFuFU8MUYwsB8vEd0zk0WPLZ262KnFDtbN+2LFKTbwXTlSVegQm6jl384qB
         EfXg==
X-Gm-Message-State: APjAAAWZCioRX4MdE7Q47vqSuX1KJBMvSgKGvcIUltCxECf1GDDVPQKN
        X4pWF/yZbGlsJo7FhAotyXCwVuI=
X-Google-Smtp-Source: APXvYqzqoMvFFEvGV9zHbRCK7gZwSsH6b0U+k75gWVH/MChBGZcsEOjF2SJ8nvVROt3iakiAkML2pA==
X-Received: by 2002:a05:6830:1651:: with SMTP id h17mr13803063otr.167.1578952509298;
        Mon, 13 Jan 2020 13:55:09 -0800 (PST)
Received: from rob-hp-laptop (24-155-109-49.dyn.grandenetworks.net. [24.155.109.49])
        by smtp.gmail.com with ESMTPSA id 101sm4599504otj.55.2020.01.13.13.55.08
        for <devicetree@vger.kernel.org>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 13 Jan 2020 13:55:09 -0800 (PST)
Received: from rob (uid 1000)
        (envelope-from rob@rob-hp-laptop)
        id 22198d
        by rob-hp-laptop (DragonFly Mail Agent v0.11);
        Mon, 13 Jan 2020 15:47:36 -0600
Date:   Mon, 13 Jan 2020 15:47:36 -0600
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
Subject: Re: [PATCH V2 7/7] dt-bindings: arm: imx: Add the i.MX8MP EVK board
Message-ID: <20200113214736.GA12301@bogus>
References: <1578893602-14395-1-git-send-email-Anson.Huang@nxp.com>
 <1578893602-14395-7-git-send-email-Anson.Huang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1578893602-14395-7-git-send-email-Anson.Huang@nxp.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Sender: devicetree-owner@vger.kernel.org
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 13 Jan 2020 13:33:22 +0800, Anson Huang wrote:
> Add board binding for i.MX8MP EVK board.
> 
> Signed-off-by: Anson Huang <Anson.Huang@nxp.com>
> ---
> No change.
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 6 ++++++
>  1 file changed, 6 insertions(+)
> 

Please add Acked-by/Reviewed-by tags when posting new versions. However,
there's no need to repost patches *only* to add the tags. The upstream
maintainer will do that for acks received on the version they apply.

If a tag was not added on purpose, please state why and what changed.
