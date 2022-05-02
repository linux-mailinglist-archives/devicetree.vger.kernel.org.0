Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 66BEF5177C4
	for <lists+devicetree@lfdr.de>; Mon,  2 May 2022 22:09:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S242026AbiEBUM1 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 2 May 2022 16:12:27 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44040 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S245100AbiEBUM0 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 2 May 2022 16:12:26 -0400
Received: from mail-oi1-f173.google.com (mail-oi1-f173.google.com [209.85.167.173])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EB18363E8
        for <devicetree@vger.kernel.org>; Mon,  2 May 2022 13:08:56 -0700 (PDT)
Received: by mail-oi1-f173.google.com with SMTP id s131so16308989oie.1
        for <devicetree@vger.kernel.org>; Mon, 02 May 2022 13:08:56 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=Q6m+9/91beeHG9SZ7OzgOc2AsNH+m8OjcQF4LxtTsjU=;
        b=J1C1IZ7EdLfKh50Y6WbKf2d0H/44sMMs2/rV2RdLheDxGSZdEo6hPgTrMz2jwrliMe
         g9y7RD2VNgqjFQD0IroSAKAQrvquy27cEeX+Iao/ftrlIJOzjYMHYD3KaIwefHKZrBEB
         GCOihDTt92AQ8p9at+IbiCzgW+glI1xtWHmLMOy9fTPiSyT1ZEJx6VVhq+hETrmMhrMn
         U7kNwcU3X+jPrlHB77cmInip34t6GfBJUkmKylV5j1vHrTLqZQVp2wirVy9pwlEJ77eC
         Lgz4XrGe8eq/q5JEij4wvSFTf2TiRvcK3e2P1q5CEoenCjwa8+eE29QDYIWlMFImJvtQ
         Y8mA==
X-Gm-Message-State: AOAM530Iz0YruOgJ/oqwwzjCtvWL5dXH12JAEUJgLPiAwVtgzGVMpIm9
        ssvfvuUrOj0tSgB+47qWug==
X-Google-Smtp-Source: ABdhPJzG0LME5KZKJO5is8BmKx1zYiEidh3wOBv1aM57Ca2mCxOBqOnH6plJmeXuuFWTlp/ZXoA6hg==
X-Received: by 2002:aca:378a:0:b0:324:f822:675c with SMTP id e132-20020aca378a000000b00324f822675cmr403181oia.88.1651522136248;
        Mon, 02 May 2022 13:08:56 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id d9-20020a05680813c900b00325cda1ffaesm2761850oiw.45.2022.05.02.13.08.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 02 May 2022 13:08:55 -0700 (PDT)
Received: (nullmailer pid 1653792 invoked by uid 1000);
        Mon, 02 May 2022 20:08:55 -0000
Date:   Mon, 2 May 2022 15:08:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Fabio Estevam <festevam@gmail.com>
Cc:     robh+dt@kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, shawnguo@kernel.org,
        Fabio Estevam <festevam@denx.de>
Subject: Re: [PATCH 2/3] dt-bindings: arm: fsl: Add Storopack i.MX7D SMEGW01
 board
Message-ID: <YnA6V+dALZNO/I0s@robh.at.kernel.org>
References: <20220420131507.1032732-1-festevam@gmail.com>
 <20220420131507.1032732-2-festevam@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220420131507.1032732-2-festevam@gmail.com>
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

On Wed, 20 Apr 2022 10:15:06 -0300, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Add DT compatible string for Storopack i.MX7D SMEGW01 board.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
>  Documentation/devicetree/bindings/arm/fsl.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
