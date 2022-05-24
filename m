Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6DBA532078
	for <lists+devicetree@lfdr.de>; Tue, 24 May 2022 03:59:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232572AbiEXB7D (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 23 May 2022 21:59:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55274 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231771AbiEXB7C (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 23 May 2022 21:59:02 -0400
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BBCCF7C14A
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 18:59:01 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-f233f06563so9048519fac.7
        for <devicetree@vger.kernel.org>; Mon, 23 May 2022 18:59:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=fwo6SHwZiotUuA2RCCcdH+24iap7mjASGw76F0jMhW8=;
        b=EvYkeecTrReJcx60QCq3pMg9o8wXopfdGrivqqkum+V2AcP6SYzSEhU/u+jxRVk3ns
         t0yjaDWIEDLgTcdN1TC6UrDA0drTtCCyaThINJp+z32z+1zuJOmpRNgx7gxcC+Uk3bGG
         kwQVnJuGrZb9zl9BUU8Npgibrs7OzjhugjITWFCG1KpblCIv9COnH3FWnUfVBaKs6lIC
         wRKvYDUTNKrpY5xpwEFRcblvpa3lEDx/XhkkKX4/V/rG36tWfn8YAHCbtemjbCmGAeCi
         t60ffyg0n7FThOUrulHLIcdziaQOj6dk3yPFYin8D9Tn4yXzfUTokHppvQOnCN5VlfTO
         UxhQ==
X-Gm-Message-State: AOAM5310XcWayR1b0v9QGU/R0XBLcDndVgIN+9MNkPJVT70gSGcO/7rM
        QYzyFuNk02buPgsMt6kZQ6NYY6nphg==
X-Google-Smtp-Source: ABdhPJz5o8cV3fSUS3Ax4a1Hu6VbRV26d0EPL1KOiPAvwUtzknEUmaDK4N0dD2LTqx4LS/Xi5ZqJRQ==
X-Received: by 2002:a05:6870:308:b0:f1:ddfe:8ac5 with SMTP id m8-20020a056870030800b000f1ddfe8ac5mr1105254oaf.237.1653357541048;
        Mon, 23 May 2022 18:59:01 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id i1-20020a9d6501000000b0060ae002cd3bsm4511489otl.55.2022.05.23.18.58.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 23 May 2022 18:59:00 -0700 (PDT)
Received: (nullmailer pid 2594356 invoked by uid 1000);
        Tue, 24 May 2022 01:58:59 -0000
Date:   Mon, 23 May 2022 20:58:59 -0500
From:   Rob Herring <robh@kernel.org>
To:     Marek Vasut <marex@denx.de>
Cc:     linux-arm-kernel@lists.infradead.org,
        Shawn Guo <shawnguo@kernel.org>,
        Fabio Estevam <festevam@denx.de>,
        NXP Linux Team <linux-imx@nxp.com>,
        Peng Fan <peng.fan@nxp.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 1/2] dt-bindings: arm: Add DH electronics i.MX8M Plus
 DHCOM and PDK2
Message-ID: <20220524015859.GA2594294-robh@kernel.org>
References: <20220521150610.93484-1-marex@denx.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220521150610.93484-1-marex@denx.de>
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

On Sat, 21 May 2022 17:06:09 +0200, Marek Vasut wrote:
> Add DT compatible string for DH electronics i.MX8M Plus DHCOM and PDK2
> into YAML DT binding document. This system is a general purpose SoM and
> evaluation board.
> 
> Signed-off-by: Marek Vasut <marex@denx.de>
> Cc: Fabio Estevam <festevam@denx.de>
> Cc: Peng Fan <peng.fan@nxp.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Shawn Guo <shawnguo@kernel.org>
> Cc: NXP Linux Team <linux-imx@nxp.com>
> Cc: devicetree@vger.kernel.org
> To: linux-arm-kernel@lists.infradead.org
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
