Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1024164CCE2
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 16:14:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229719AbiLNPOW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 10:14:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:36578 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229550AbiLNPOV (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 10:14:21 -0500
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 288C4F18
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 07:14:21 -0800 (PST)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-144bd860fdbso17028607fac.0
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 07:14:21 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to;
        bh=t21iSIxDUnY3X8/n5fnlS44N9qXEhe9wHEQTHbXnEZo=;
        b=z7J/JziapzpBNM4YGHb9ETcdsTGS2Egd5/zZ+0B5iOro1KbCjJjxhZNoTAaMgSGA0A
         ONrzpjhwmoC0CVc7mdwuiFBPrvlZ2E7PifUiDIP1fqxtp0beuMZqwA5WZahCjH/yulOL
         aFmUbxPKc5owHQl5b9u8fUhZusLOXD9g9p0FlvzG0H3gCHuhjgRMZdcy+ZtI6/sU0Dde
         biMsz+TsZvqPLtfHRjTD847GO0N8ZMz+pl7DvCJmENBjPG3bRutFgeczJTYORPH6ttqb
         Pn1JC/l0FuJeYy3o472djUHqDM5E7elN/uBdXmwQ/gRozXdZRH1nzupS3GkfvnZFYiFI
         1maA==
X-Gm-Message-State: ANoB5pnnHWjBCsMCGHJipaSOZc9MxKo9js6Q/+Lpv/DecDrBzBo2Mvcl
        oD2hYqvOh6IgfWQZ0D+MyQ==
X-Google-Smtp-Source: AA0mqf4Z9nTQXwqQdZvvUHvZRO9q5cLhr0VLw2J5+iFTLe8aKy1sL7I23Mz7tZ8Tp/p3iQYgIxRMDw==
X-Received: by 2002:a05:6870:670f:b0:144:ceef:e5d4 with SMTP id gb15-20020a056870670f00b00144ceefe5d4mr13209126oab.57.1671030860346;
        Wed, 14 Dec 2022 07:14:20 -0800 (PST)
Received: from robh_at_kernel.org (rrcs-98-6-157-194.sw.biz.rr.com. [98.6.157.194])
        by smtp.gmail.com with ESMTPSA id j19-20020a056870021300b001446d5702b5sm2760462oad.56.2022.12.14.07.14.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 14 Dec 2022 07:14:20 -0800 (PST)
Received: (nullmailer pid 1071928 invoked by uid 1000);
        Wed, 14 Dec 2022 15:14:19 -0000
Date:   Wed, 14 Dec 2022 09:14:19 -0600
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     NXP Linux Team <linux-imx@nxp.com>, Liu Ying <victor.liu@nxp.com>,
        Fabio Estevam <festevam@gmail.com>,
        Lucas Stach <l.stach@pengutronix.de>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
Subject: Re: [PATCH v5] dt-bindings: mxsfb: Document i.MX8M/i.MX6SX/i.MX6SL
 power-domains property
Message-ID: <167103085394.1071765.15198690064585923327.robh@kernel.org>
References: <20221213132006.6446-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20221213132006.6446-1-marex@denx.de>
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Tue, 13 Dec 2022 14:20:06 +0100, Marek Vasut wrote:
> The power-domains property is mandatory on i.MX8M Mini, Nano, Plus
> and i.MX6SX, i.MX6SL. Document the property and mark it as required
> on the aforementioned variants of the IP, present in those SoCs.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> ---
> Cc: Fabio Estevam <festevam@gmail.com>
> Cc: Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
> Cc: Liu Ying <victor.liu@nxp.com>
> Cc: Lucas Stach <l.stach@pengutronix.de>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: linux-arm-kernel@lists.infradead.org
> To: devicetree@vger.kernel.org
> ---
> V2: - Add AB from Krzysztof
>     - Add mx6sx power domain into the list
> V3: - Update commit message
>     - Add i.MX6SL
>     - Update example
> V4: - Drop ack from Krzysztof
>     - Rebase on next 20221213 instead of previous 20221208, which now
>       contains power-domains: part of this patch
> V5: - Drop power-domains from MX8MP/MX6SX entry
> ---
>  .../devicetree/bindings/display/fsl,lcdif.yaml    | 15 ++++++++++++++-
>  1 file changed, 14 insertions(+), 1 deletion(-)
> 

Applied, thanks!
