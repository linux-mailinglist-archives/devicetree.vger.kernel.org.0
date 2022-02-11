Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B35904B2A64
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 17:31:43 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235352AbiBKQ3q (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 11:29:46 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:33894 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351521AbiBKQ3p (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 11:29:45 -0500
Received: from mail-ot1-f49.google.com (mail-ot1-f49.google.com [209.85.210.49])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A8993CC9
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:29:44 -0800 (PST)
Received: by mail-ot1-f49.google.com with SMTP id v6-20020a05683024a600b005ac1754342fso2808284ots.5
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:29:44 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=2UzSRrcYL/M2wIcpPIGXiD1z9ymLFOyXYq9nAoHB4wo=;
        b=hr85lo196Bfn2x7zBl5kT13Bh748Gx4OlI1Y2VaWa1zrJLEu2j+8z1xcqBYKaWdOib
         BeG8wyoO5F1uB727gzIXo73j2FH7ZQG4hM+4FvYKBklpJPEYtkvqEQ2o6idXpUUGgN1p
         DM43bmSdnswSnldaPr3jtzKRWAy56kvFXc+pwC1OSiAxdwcZiTezCMZR+ExkNJVBg/fQ
         GJWjcJiXs7iDzylCWJdFtSzQkEYwBNHCqiLny/givKznBu6XygU5aMyTP61noe6P9qP2
         GoTd1FE2QdNJtR1vvnyMVny7FF4KAbYxG5L77DziArcdwh3/K8de7wYVzhYzfO5w6lVg
         IoAA==
X-Gm-Message-State: AOAM532NduE2JiPUsPNeOnxzd/qxYJ+W9jnckLW/mudZdr93WYKi5h5U
        ux/Ruu/yhsWkYTj8GLP3GGk0S3hnVQ==
X-Google-Smtp-Source: ABdhPJzKN2uqTp/5OvtI1BatUv36SpHB1Lf/Ofl6RcMO5Fgy1Ng5+eQsONSG2dOpz1oCUdK3oHbijw==
X-Received: by 2002:a05:6830:1b62:: with SMTP id d2mr872338ote.66.1644596983992;
        Fri, 11 Feb 2022 08:29:43 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:5fee:dfce:b6df:c3e1:b1e5:d6d8])
        by smtp.gmail.com with ESMTPSA id x17sm9380458oop.1.2022.02.11.08.29.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 08:29:43 -0800 (PST)
Received: (nullmailer pid 473223 invoked by uid 1000);
        Fri, 11 Feb 2022 16:29:41 -0000
Date:   Fri, 11 Feb 2022 10:29:41 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     patchwork-lst@pengutronix.de, NXP Linux Team <linux-imx@nxp.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Pengutronix Kernel Team <kernel@pengutronix.de>,
        linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@gmail.com>
Subject: Re: [PATCH v2 5/9] dt-bindings: soc: add binding for i.MX8MP HSIO
 blk-ctrl
Message-ID: <YgaO9dctq6zVkg5p@robh.at.kernel.org>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-5-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-5-l.stach@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H3,
        RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=no autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Feb 2022 20:25:43 +0100, Lucas Stach wrote:
> This adds the binding for the HSIO blk-ctrl on the i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml     | 78 +++++++++++++++++++
>  1 file changed, 78 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/soc/imx/fsl,imx8mp-hsio-blk-ctrl.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
