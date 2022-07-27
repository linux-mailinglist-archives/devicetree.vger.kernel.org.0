Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A942D582A1F
	for <lists+devicetree@lfdr.de>; Wed, 27 Jul 2022 18:00:47 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234459AbiG0QAh (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 27 Jul 2022 12:00:37 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234458AbiG0QAc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 27 Jul 2022 12:00:32 -0400
Received: from mail-il1-f181.google.com (mail-il1-f181.google.com [209.85.166.181])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D71FE4A82A
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:00:31 -0700 (PDT)
Received: by mail-il1-f181.google.com with SMTP id w16so9081904ilh.0
        for <devicetree@vger.kernel.org>; Wed, 27 Jul 2022 09:00:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=FRSNLTfPtgQsTAyqvkIfBoG5rTqyIQfyEklsL90/Qfg=;
        b=kf4K/MT3vSZoUOWgDom0TGMUKB5o5CJUF/Rrzhk8eecuxutKmZTFty58HPsdgi7XPZ
         6YnwXRqp5S3KsU3RhQJHYaYUUC1+SVka5gGtPj6XuTxjtMlF452nRhZK2bmRqiokSKMM
         J3683edQ3hls84jUKodBExM6BI1qRhGgdSoQR/SAXL9ahjhe4zQt6inzmxAZ73eR5zow
         n27bM2DCs/5G5BRhUun3ECf/9WKA+BC+cdyfxGl4yp+gBqh+I/zJDSfNavuhu+jMyd1T
         LYAYb6cwc3VbsN4GuUAzS/eBU8efIksp7Vl4ZWkGaxr1h1kEQlPRGx4vDl8W61tDHMm/
         37wQ==
X-Gm-Message-State: AJIora8zkwFavruXI4jPDNL8u60x1esdh8cL4ofqCndl1KxiYV7tv85Q
        aae2vXcTQMchmba3B77cpQ==
X-Google-Smtp-Source: AGRyM1sbEFm57NF6tU87XRWPv3wUXJEcRoeb3DqnYxpYCDyf3w0TmjigAM7W7Iqj2VGziSDu4VCX/Q==
X-Received: by 2002:a92:c884:0:b0:2dc:bd44:84bf with SMTP id w4-20020a92c884000000b002dcbd4484bfmr8680798ilo.86.1658937631017;
        Wed, 27 Jul 2022 09:00:31 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.248])
        by smtp.gmail.com with ESMTPSA id c7-20020a6bfd07000000b0067c31b61f43sm8903436ioi.4.2022.07.27.09.00.29
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 27 Jul 2022 09:00:30 -0700 (PDT)
Received: (nullmailer pid 2754147 invoked by uid 1000);
        Wed, 27 Jul 2022 16:00:29 -0000
Date:   Wed, 27 Jul 2022 10:00:29 -0600
From:   Rob Herring <robh@kernel.org>
To:     Shenwei Wang <shenwei.wang@nxp.com>
Cc:     Sascha Hauer <s.hauer@pengutronix.de>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>, Peng Fan <peng.fan@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        NXP Linux Team <linux-imx@nxp.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: firmware: add missing resource IDs
 for imx8dxl
Message-ID: <20220727160029.GA2754084-robh@kernel.org>
References: <20220726204111.733647-1-shenwei.wang@nxp.com>
 <20220726204111.733647-2-shenwei.wang@nxp.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220726204111.733647-2-shenwei.wang@nxp.com>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Tue, 26 Jul 2022 15:41:09 -0500, Shenwei Wang wrote:
> Add the missing resource IDs for imx8dxl.
> 
> Signed-off-by: Shenwei Wang <shenwei.wang@nxp.com>
> ---
>  include/dt-bindings/firmware/imx/rsrc.h | 7 +++++++
>  1 file changed, 7 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
