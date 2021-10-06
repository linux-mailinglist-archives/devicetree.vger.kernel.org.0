Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id 1056D42398B
	for <lists+devicetree@lfdr.de>; Wed,  6 Oct 2021 10:15:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237631AbhJFIRX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Oct 2021 04:17:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35302 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237638AbhJFIRX (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Oct 2021 04:17:23 -0400
Received: from mail-wr1-x42c.google.com (mail-wr1-x42c.google.com [IPv6:2a00:1450:4864:20::42c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 19A5FC061749
        for <devicetree@vger.kernel.org>; Wed,  6 Oct 2021 01:15:31 -0700 (PDT)
Received: by mail-wr1-x42c.google.com with SMTP id e12so6189715wra.4
        for <devicetree@vger.kernel.org>; Wed, 06 Oct 2021 01:15:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to;
        bh=jfm9ShDiB9N4r3cuaL8GBzZd3yED8UVYHEEjo4UlHS0=;
        b=G3QMJusuuqaDFK5vNWiA4owhMnSRwlHgEnPDSeAEvoThWGcSPuCQLMTPVTl4y/gdgi
         aNnMJmUS5OTwXM9xwJDrm87IC66sXMTG5P8xjMp5B9bFFDWnGRGV0Y10LlXG/eNZ/GCt
         a89H516gVXpB/Q15lLk0SIdAClOrlG6aFLBD4Lco161YomCIIRMmeTcrCeDCc6w1Ckns
         mEnMFlVazMzsAWqYgcmKmEoDny2uUHLfPl83EV563fWg/lqsGBl02vQimBlLIay15sF2
         pziHjaM8E9X3hrrtnZ0Z0oLnq7+DXsWtj57c00W3O0mtjOTJkfbO/l6exTYeycc/WA3s
         fnJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to;
        bh=jfm9ShDiB9N4r3cuaL8GBzZd3yED8UVYHEEjo4UlHS0=;
        b=QIOchPBSirqDTIKhJ2BlDs9G+apU5MQHf8aW6/ll91NWviH6lCpbqqtxn1JxCT1UNQ
         fPL/5E2lhfxhs5qgyK1slAG7ZvhDP9tstG4hqP476FpMCs/COS/jLIXWAeJCHRtd54ca
         dzXuPv0lVpBj1P/jQJ0Fys8BHjgrVa7KBN5ypNhe2+qqhlKMqpnixB/w41KWYqR1kU0A
         CnYkznLnRlI8T6vEEOwkXf7A2umng9VSEJpGUW89R2sPGrP9AVJ+z0jb8uJp2QV1qrO5
         cEkhDiWwzrBSTkCl8cszW+VSskW0XAsquZzeHgD4c8RstR8gInsNy9GJfUIDYnLSIIgi
         854Q==
X-Gm-Message-State: AOAM532M2B2BFnJrRNs+6NVqiXKeq1L0ZvS8en737rtQqh1iNQbhDtXm
        fbrFr4FKWoRBxBtEUA9cZm1mlw==
X-Google-Smtp-Source: ABdhPJxRcLmkuVSwL83yuZMqDYSTl84Y1o5zs683tbpKMp4JZnkZ4LBVk0P0K8AD2ir1Ljr24TwLMA==
X-Received: by 2002:adf:a550:: with SMTP id j16mr19630863wrb.384.1633508129701;
        Wed, 06 Oct 2021 01:15:29 -0700 (PDT)
Received: from google.com ([95.148.6.175])
        by smtp.gmail.com with ESMTPSA id q10sm4251973wmq.12.2021.10.06.01.15.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Oct 2021 01:15:29 -0700 (PDT)
Date:   Wed, 6 Oct 2021 09:15:27 +0100
From:   Lee Jones <lee.jones@linaro.org>
To:     Maxime Ripard <maxime@cerno.tech>
Cc:     Chen-Yu Tsai <wens@csie.org>,
        Jernej =?utf-8?Q?=C5=A0krabec?= <jernej.skrabec@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Frank Rowand <frowand.list@gmail.com>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-sunxi@lists.linux.dev, Rob Herring <robh@kernel.org>
Subject: Re: [RESEND v2 3/3] dt-bindings: mfd: Convert X-Powers AC100 binding
 to a schema
Message-ID: <YV1bH7XIRi0Wp+b+@google.com>
References: <20210924071614.868307-1-maxime@cerno.tech>
 <20210924071614.868307-3-maxime@cerno.tech>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20210924071614.868307-3-maxime@cerno.tech>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 24 Sep 2021, Maxime Ripard wrote:

> The X-Powers AC100 hybrid devices are supported by Linux thanks to its
> device tree binding.
> 
> Now that we have the DT validation in place, let's convert the device
> tree bindings for that driver over to a YAML schema.
> 
> Cc: Lee Jones <lee.jones@linaro.org>
> Acked-by: Chen-Yu Tsai <wens@csie.org>
> Reviewed-by: Rob Herring <robh@kernel.org>
> Signed-off-by: Maxime Ripard <maxime@cerno.tech>
> 
> ---
> 
> Changes from v1:
>   - Added maximum number of clocks properties
> ---
>  .../devicetree/bindings/mfd/ac100.txt         |  50 --------
>  .../bindings/mfd/x-powers,ac100.yaml          | 116 ++++++++++++++++++
>  2 files changed, 116 insertions(+), 50 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/mfd/ac100.txt
>  create mode 100644 Documentation/devicetree/bindings/mfd/x-powers,ac100.yaml

Applied, thanks.

-- 
Lee Jones [李琼斯]
Senior Technical Lead - Developer Services
Linaro.org │ Open source software for Arm SoCs
Follow Linaro: Facebook | Twitter | Blog
