Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id EADBD403126
	for <lists+devicetree@lfdr.de>; Wed,  8 Sep 2021 00:39:46 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232840AbhIGWkw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 7 Sep 2021 18:40:52 -0400
Received: from mail-ot1-f54.google.com ([209.85.210.54]:39673 "EHLO
        mail-ot1-f54.google.com" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241226AbhIGWkw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 7 Sep 2021 18:40:52 -0400
Received: by mail-ot1-f54.google.com with SMTP id m7-20020a9d4c87000000b0051875f56b95so334512otf.6
        for <devicetree@vger.kernel.org>; Tue, 07 Sep 2021 15:39:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=4wkCFIT3SlNF5Cbm4QBSLEGhQxdIzIBSRij4eklDOHQ=;
        b=QYKhX8gKrbP8a2myL2KNz5vLLbv+7ckKT2JUgPqmvXICFwVEApYWnFnJJZbdCY84O6
         g178ZZzdFOXu6RetydmIKmuO78egEWfuwrPuBXkN4U7Fn5Q09x2V9yBg7tVCFgSHDwdI
         SoYEALFiSsgZ0rDhFM/JQYO53Qc7tTzwbczzPfiTdR1QDMBO3C5ID8fyrR3S64Pozxsw
         dqzS4bKoAK7QrEL5wUp+PNJ60dbA3sWkLXlOM6JFoPbgMmWEjkrFjmXcSHo1F/SWkW6w
         Z/lOyTtiz2SqTXCFl4G7eabLn+kHMeC9cQFRmEQggoUPCnlVzw2deJ6s4EVj6pcTuKUO
         OhCg==
X-Gm-Message-State: AOAM532fTT1TDBw5d1EWnWJ3rXTjii5ABhDwrrOeFIpMC0RVZuGMZlQV
        FCDx/VdelVTRm/rWPkTc1w==
X-Google-Smtp-Source: ABdhPJy2lW6IrRoj7MYwE2I4GQU8N0WEstukF0wn4QFdf9jGFHdiGcUQfHGIPdO22Fa5cm6tliCavw==
X-Received: by 2002:a9d:615e:: with SMTP id c30mr617229otk.134.1631054385180;
        Tue, 07 Sep 2021 15:39:45 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-148-213.dyn.grandenetworks.net. [66.90.148.213])
        by smtp.gmail.com with ESMTPSA id x1sm61084otu.8.2021.09.07.15.39.44
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 07 Sep 2021 15:39:44 -0700 (PDT)
Received: (nullmailer pid 492596 invoked by uid 1000);
        Tue, 07 Sep 2021 22:39:43 -0000
Date:   Tue, 7 Sep 2021 17:39:43 -0500
From:   Rob Herring <robh@kernel.org>
To:     Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
Cc:     bgoswami@codeaurora.org, lgirdwood@gmail.com, broonie@kernel.org,
        devicetree@vger.kernel.org, bjorn.andersson@linaro.org,
        perex@perex.cz, tiwai@suse.de, plai@codeaurora.org,
        alsa-devel@alsa-project.org
Subject: Re: [PATCH v5 02/21] soc: dt-bindings: qcom: apr: deprecate
 qcom,apr-domain property
Message-ID: <YTfqLyXQxto7raAz@robh.at.kernel.org>
References: <20210903112032.25834-1-srinivas.kandagatla@linaro.org>
 <20210903112032.25834-3-srinivas.kandagatla@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210903112032.25834-3-srinivas.kandagatla@linaro.org>
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Fri, 03 Sep 2021 12:20:13 +0100, Srinivas Kandagatla wrote:
> replace usage of qcom,apr-domain property with qcom,domain property so
> that bindings and driver can be reused.
> 
> Signed-off-by: Srinivas Kandagatla <srinivas.kandagatla@linaro.org>
> ---
>  .../devicetree/bindings/soc/qcom/qcom,apr.yaml | 18 ++++++++++++++++--
>  1 file changed, 16 insertions(+), 2 deletions(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>
