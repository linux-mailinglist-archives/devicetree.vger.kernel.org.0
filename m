Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 87EC469833B
	for <lists+devicetree@lfdr.de>; Wed, 15 Feb 2023 19:24:33 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230138AbjBOSYb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Feb 2023 13:24:31 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46314 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229520AbjBOSYb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Feb 2023 13:24:31 -0500
Received: from mail-ot1-f52.google.com (mail-ot1-f52.google.com [209.85.210.52])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8E4837A91
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 10:24:30 -0800 (PST)
Received: by mail-ot1-f52.google.com with SMTP id v24-20020a05683011d800b0068bdd29b160so5937052otq.13
        for <devicetree@vger.kernel.org>; Wed, 15 Feb 2023 10:24:30 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=croNtBtFGFvFdMAY84BMyPQyb+LWlr8w5m6GQUs4i5I=;
        b=bZo8rA5UjG6v05sA+DJTEI4IgE4bEqKeC2WKF+YDHic807asuli6nBnCm8Rbvx3Pxh
         AGi0k2NmHpNaG88RvYBdaBknDRh6xD32xQkBWEj9yyz93U36ecCssApGhWpTqlhtXiZC
         XQaNYwHzO2OlQtLgCVHvYwCMDH7Ae9U4vExmt6j5Vh/7IT+EzCVu5o0aSA25UevpfU+F
         WQo+Rn7iA8+/aWcWaRZXyvtW0b4Igt3iHP9l9XvHL2sAJpbhTSq1Ml9PZt89bYI6/ULI
         Z1Jj/TxEVtPoSpltG00TEFcz3SKjCdjimKRJZO2lPKbVY2eZb9y8duF4a/lYYoR90Qo7
         AO7Q==
X-Gm-Message-State: AO0yUKWrtfS4bjYeQ8PYc8QV2zGukKXFkSq6W68ujS4WqJAp08iBPxTf
        QoE0ebbjgz6mfYTrCw67aw==
X-Google-Smtp-Source: AK7set8zlWRgo6R3dEb7rgRht7PM6KhWOHnrSq+VzjIm07U2/4liXTsawcI1ipRrKnjsL5m4ut8lcQ==
X-Received: by 2002:a9d:7312:0:b0:690:b1b5:8d76 with SMTP id e18-20020a9d7312000000b00690b1b58d76mr1212853otk.15.1676485469744;
        Wed, 15 Feb 2023 10:24:29 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id di14-20020a0568303a0e00b0068bd922a244sm7838254otb.20.2023.02.15.10.24.28
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 15 Feb 2023 10:24:29 -0800 (PST)
Received: (nullmailer pid 367716 invoked by uid 1000);
        Wed, 15 Feb 2023 18:24:28 -0000
Date:   Wed, 15 Feb 2023 12:24:28 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        dri-devel@lists.freedesktop.org, Shawn Guo <shawnguo@kernel.org>,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Daniel Vetter <daniel@ffwll.ch>,
        David Airlie <airlied@gmail.com>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v5 1/2] dt-bindings: display: imx: Describe drm binding
 for fsl,imx-lcdc
Message-ID: <167648546792.367649.2888565409489725256.robh@kernel.org>
References: <20230210180014.173379-1-u.kleine-koenig@pengutronix.de>
 <20230210180014.173379-2-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230210180014.173379-2-u.kleine-koenig@pengutronix.de>
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org


On Fri, 10 Feb 2023 19:00:13 +0100, Uwe Kleine-König wrote:
> Modify the existing (fb-like) binding to support the drm-like binding in
> parallel.
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
>  .../bindings/display/imx/fsl,imx-lcdc.yaml    | 46 ++++++++++++++++++-
>  1 file changed, 45 insertions(+), 1 deletion(-)
> 

Reviewed-by: Rob Herring <robh@kernel.org>

