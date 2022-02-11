Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5ABC24B2A46
	for <lists+devicetree@lfdr.de>; Fri, 11 Feb 2022 17:28:17 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236894AbiBKQ1x (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Feb 2022 11:27:53 -0500
Received: from mxb-00190b01.gslb.pphosted.com ([23.128.96.19]:56224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240156AbiBKQ1x (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Feb 2022 11:27:53 -0500
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CCB9E181
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:27:48 -0800 (PST)
Received: by mail-oi1-f173.google.com with SMTP id u3so10039401oiv.12
        for <devicetree@vger.kernel.org>; Fri, 11 Feb 2022 08:27:48 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=ohJiaEU1khZay5bs8pJ+paG40LI/yMvEzMUpZcxA80w=;
        b=kgzu9qL9U5tmW1pLysxtyZ+Nlr9gZW1KJ1582PxPuScdvSZ7B1FOnd8HvXZLCoC2S+
         EOo+ORvQVMGLAcJv+fzGXTvitvhUlye8zr/ZNszhG+QJrT2vDFXQtFnL0lRp/nnY8kIy
         8V1aGxukFOjFax8nRY/zkETAEgF9XL0VRItwsorJ80h0D/6N9GTWgC+sKM/Y6YpSThSL
         6cqGwQguLnl/hSVHzpiMRsDHYq9tuYRiEyOfXhIMC2os6UaJKBrUm5/68tyXiGqK09Wr
         KfyjB2f6r/Ne1iLBO3snVD417sic/8ICOmbU+fkLCpydi6AnQMIxL+Qp5H2SfiLAx9CG
         tStg==
X-Gm-Message-State: AOAM533BfWWavy1GMAbw+MCRaGlXtMRsBTFB0UVylHSFnn1TawHlaGcj
        7z9nrp0f2j4iplJNtWkryA==
X-Google-Smtp-Source: ABdhPJxX9AGyqzbABp3LxcIteSTA0IeyILlvezl6zRnRko+fAIHkK/a7epyACP2ObZDCph7DPtVXWQ==
X-Received: by 2002:aca:1313:: with SMTP id e19mr530846oii.145.1644596868207;
        Fri, 11 Feb 2022 08:27:48 -0800 (PST)
Received: from robh.at.kernel.org ([2607:fb90:5fee:dfce:b6df:c3e1:b1e5:d6d8])
        by smtp.gmail.com with ESMTPSA id be19sm10334617oib.31.2022.02.11.08.27.46
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Feb 2022 08:27:47 -0800 (PST)
Received: (nullmailer pid 470209 invoked by uid 1000);
        Fri, 11 Feb 2022 16:27:45 -0000
Date:   Fri, 11 Feb 2022 10:27:45 -0600
From:   Rob Herring <robh@kernel.org>
To:     Lucas Stach <l.stach@pengutronix.de>
Cc:     Shawn Guo <shawnguo@kernel.org>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        Fabio Estevam <festevam@gmail.com>,
        linux-arm-kernel@lists.infradead.org, patchwork-lst@pengutronix.de,
        NXP Linux Team <linux-imx@nxp.com>,
        Pengutronix Kernel Team <kernel@pengutronix.de>
Subject: Re: [PATCH v2 2/9] dt-bindings: power: add defines for i.MX8MP power
 domain
Message-ID: <YgaOgU/c68v/cHba@robh.at.kernel.org>
References: <20220207192547.1997549-1-l.stach@pengutronix.de>
 <20220207192547.1997549-2-l.stach@pengutronix.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220207192547.1997549-2-l.stach@pengutronix.de>
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_00,
        FREEMAIL_ENVFROM_END_DIGIT,FREEMAIL_FORGED_FROMDOMAIN,FREEMAIL_FROM,
        HEADER_FROM_DIFFERENT_DOMAINS,RCVD_IN_DNSWL_NONE,RCVD_IN_MSPIKE_H2,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=no
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On Mon, 07 Feb 2022 20:25:40 +0100, Lucas Stach wrote:
> This adds the DT defines for the GPC power domains found on the
> i.MX8MP SoC.
> 
> Signed-off-by: Lucas Stach <l.stach@pengutronix.de>
> ---
>  .../bindings/power/fsl,imx-gpcv2.yaml         |  2 ++
>  include/dt-bindings/power/imx8mp-power.h      | 29 +++++++++++++++++++
>  2 files changed, 31 insertions(+)
>  create mode 100644 include/dt-bindings/power/imx8mp-power.h
> 

Acked-by: Rob Herring <robh@kernel.org>
