Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DBD3763D889
	for <lists+devicetree@lfdr.de>; Wed, 30 Nov 2022 15:53:19 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229519AbiK3OxS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Nov 2022 09:53:18 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49642 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229532AbiK3OxR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Nov 2022 09:53:17 -0500
Received: from mail-oo1-f47.google.com (mail-oo1-f47.google.com [209.85.161.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 051E12E6BD
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 06:53:16 -0800 (PST)
Received: by mail-oo1-f47.google.com with SMTP id e11-20020a4ab14b000000b0049be568062bso2647468ooo.4
        for <devicetree@vger.kernel.org>; Wed, 30 Nov 2022 06:53:15 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=REIiF+IHKEdfg19HkfHRcF1uyzuS1Xm7d1N/QWRQLpo=;
        b=TAVWUXeSJ1wK1zZ1SijMePUTmd+Wnh2xCKZXg4Zg7TLPuPbJMsEmkXqQqXbRN3K0Oz
         O/sUiZ2NPNGY2ceGSkQZcIbXbRAzf5pqFhoIvw+4TB6jXHn9MMUZ/VWHqwhvyZvaouoy
         hMCS1pRclBMHLBeBh1TFB4Wj6Gdt/h/RybQdDtLRL+M4GA+THgd+AxZNN0f7P7TBZwGh
         bi0Ft0cV1IB9k2rD4r1NP1ysaQJhpr+VnMsVWrmzsHPI3P+VYQPleoz6fPX3RvLraeTJ
         yGMeNqWJMRenE/LOVh50OjUL/0x7yy4kKiD/FLlLLe0tXzCsKm/fFflA4gWybrjFtGcB
         Fjdw==
X-Gm-Message-State: ANoB5pkhyK3qVNRVXm/LAacD+0teJz0RcFrJaBDQ9UDp5VVAepLdNeL8
        0XLmOYnISw45kphMb0gy2Q==
X-Google-Smtp-Source: AA0mqf4A3UKt5YjqsiMHmLTVVhMRJco14AAte09ey1sJuWNn1ZlD5n7GKJ9dP52ZCNcCttoEfxEJUg==
X-Received: by 2002:a4a:52c3:0:b0:480:8a5d:5962 with SMTP id d186-20020a4a52c3000000b004808a5d5962mr26343923oob.29.1669819995163;
        Wed, 30 Nov 2022 06:53:15 -0800 (PST)
Received: from robh_at_kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i9-20020a9d6249000000b00668953207b2sm961986otk.80.2022.11.30.06.53.14
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 30 Nov 2022 06:53:14 -0800 (PST)
Received: (nullmailer pid 2148056 invoked by uid 1000);
        Wed, 30 Nov 2022 14:53:13 -0000
Date:   Wed, 30 Nov 2022 08:53:13 -0600
From:   Rob Herring <robh@kernel.org>
To:     Uwe =?iso-8859-1?Q?Kleine-K=F6nig?= 
        <u.kleine-koenig@pengutronix.de>
Cc:     Philipp Zabel <p.zabel@pengutronix.de>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Fabio Estevam <festevam@gmail.com>,
        NXP Linux Team <linux-imx@nxp.com>,
        dri-devel@lists.freedesktop.org, Shawn Guo <shawnguo@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v2] dt-bindings: display: Convert fsl,imx-fb.txt to
 dt-schema
Message-ID: <166981984923.2144677.14979016393841570972.robh@kernel.org>
References: <20221129180414.2729091-1-u.kleine-koenig@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20221129180414.2729091-1-u.kleine-koenig@pengutronix.de>
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


On Tue, 29 Nov 2022 19:04:14 +0100, Uwe Kleine-König wrote:
> Compared to the txt description this adds clocks and clock-names to
> match reality.
> 
> Note that fsl,imx-lcdc was picked as the new name as this is the actual
> hardware's name. There will be a new binding implementing the saner drm
> concept that is supposed to supersede this legacy fb binding
> 
> Signed-off-by: Uwe Kleine-König <u.kleine-koenig@pengutronix.de>
> ---
> Changes since v1, sent with Message-Id:
>  - mention clock stuff being added (Philipp)
>  - dropped some quotes (Rob)
>  - fix specification of compatible
>    (I kept claiming though that imx21 isn't compatible to imx1. While
>    that might be true, I don't have an i.MX1 to check the details and
>    currently the imx*.dtsi don't claim that compatibility.)
> 
> I tried to implement the suggestion by Rob to formalize the display
> binding. But I learned that this doesn't change how the display property
> is formalized in the fsl,imx-lcdc.yaml (which is just a phandle without
> means to specify that it should point to a node which fulfills a certain
> binding.)
> 
> Best regards
> Uwe
> 
>  .../bindings/display/imx/fsl,imx-fb.txt       |  57 ----------
>  .../bindings/display/imx/fsl,imx-lcdc.yaml    | 102 ++++++++++++++++++
>  2 files changed, 102 insertions(+), 57 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx-fb.txt
>  create mode 100644 Documentation/devicetree/bindings/display/imx/fsl,imx-lcdc.yaml
> 

Applied, thanks!
