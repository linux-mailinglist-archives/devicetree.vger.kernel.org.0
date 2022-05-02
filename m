Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id DCAF85177C5
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 22:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1344963AbiEBUMT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 16:12:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43910 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242026AbiEBUMS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 16:12:18 -0400
Received: from mail-oa1-f53.google.com (mail-oa1-f53.google.com [209.85.160.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 490B163E6
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 13:08:49 -0700 (PDT)
Received: by mail-oa1-f53.google.com with SMTP id 586e51a60fabf-e2fa360f6dso15353695fac.2
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 13:08:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iyTTuHNVLonyLG1mM28YgIpXqdtr7Flemx+fcgAjCkE=;
        b=GLz8t7YtdIMC1O/cN056D5ep8miB4uKzG3wwOp2XUF9+w8Yl3pEMXNbavt3q+jeUJJ
         4+TpkVP1HSYhE8L2U8/m6j8NZFAfjCd/IOaXXjLrlM4V4kKviRwZX5LsXN3QlGBrbq2/
         zCxVRX1Y6tdBB6Hr27vDk71Cv1cVFKHW/j0QdxGsjQEiMqFi5ZPLGG2q9G0kBnbtiwBM
         7HT2obc5MbXqMdl+ENgqT6mkbxLtwfDd7jBV3yowKmqA5a4Vi3Uqs0SRBZGTiwO509PP
         ECDrFvscyg4H1dSh/WcXtaToWHDuJEgkYBDPy+9daZGeOMGY2lNOJcsytQrjuZNtLj9G
         x64g==
X-Gm-Message-State: AOAM530DzDeJu3fwCO8MAiLav9qpofrBFPLllH1lW3TnRLNXzqOBteK3
        2rPaS+mMmLoO243YQdEVig==
X-Google-Smtp-Source: ABdhPJzCWCrHZDuNcxxvXwgzZyitr57jD5iz0nc0hJCQGwsmN6dX1QNNSNQd+a5hzDynKXzExoZ3Dw==
X-Received: by 2002:a05:6870:f292:b0:de:d5d2:573e with SMTP id u18-20020a056870f29200b000ded5d2573emr378411oap.73.1651522128562;
        Mon, 02 May 2022 13:08:48 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o26-20020a4ad49a000000b0033a3450cc20sm4230405oos.0.2022.05.02.13.08.47
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 13:08:48 -0700 (PDT)
Received: (nullmailer pid 1653463 invoked by uid 1000);
        Mon, 02 May 2022 20:08:47 -0000
Date:   Mon, 2 May 2022 15:08:47 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     Fabio Estevam <festevam@denx.de>,
        linux-arm-kernel@lists.infradead.org, shawnguo@kernel.org,
        devicetree@vger.kernel.org, robh+dt@kernel.org
Subject: Re: [PATCH 1/3] dt-bindings: vendor-prefixes: Add prefix for
 Storopack
Message-ID: <YnA6T0HNTQmO/eZ1@robh.at.kernel.org>
References: <20220420131507.1032732-1-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420131507.1032732-1-festevam@gmail.com>
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

On Wed, 20 Apr 2022 10:15:05 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add a vendor prefix entry for Storopack (https://www.storopack.com).
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/vendor-prefixes.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
