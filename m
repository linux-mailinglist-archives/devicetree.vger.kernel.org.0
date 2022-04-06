Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 10C8E4F6816
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:58:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239708AbiDFRzN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:55:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38198 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S239741AbiDFRzH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:55:07 -0400
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 10C9941FB2
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:04:21 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-e1dcc0a327so3422959fac.1
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:04:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=JOzPcudNwKoxx7vpOzTa3ys/wkq0DsdDrQm4+Z0U+lU=;
        b=pi3chsMmR79HjMIg48GZcGKmHKpheEGYeVoL7HE07oXDKIUDUpB1M/yFlY6CuO1hRx
         17OGL3C/cIzAI2DjqqWSdKt//DMx8qVUvzQlFOdkK1NuNKKPCf/K12crARPN3CEmpqMc
         6L3ykol3m+UZ1iK7F2WASiIgyUPqz1MC2fic2Pt0AU2mew0chIvh4JrRNKcZvjhbFuZL
         g2Wcl6F0JSkalPAMCcFUaLQk/yZhRXzkULhWDHRY/gVRMNh9WYCEuGCGzC4PKDhsKGEv
         oElOPA13eGKjFxmSsM5zKHzVAWl6Hkh/8nLoAs8AHxUmJz0eij5lDljbv9CgGxDbhm7e
         yUCA==
X-Gm-Message-State: AOAM531UYOy+PGXPQk/5wHjjHrzvehc6xaaQJuEIHvPaF4FomLZIyyY2
        r8PK4O6ygF/KmGixiEhKFQ==
X-Google-Smtp-Source: ABdhPJzCWG0GCbbgx/kWvqZyxyde7VoN25kP3Cvxo1vnRi2q6vO0XA3FDs1y/l9GrzupXV4dbUZuDQ==
X-Received: by 2002:a05:6870:d14d:b0:e1:e253:99e8 with SMTP id f13-20020a056870d14d00b000e1e25399e8mr4076392oac.23.1649261060021;
        Wed, 06 Apr 2022 09:04:20 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id c3-20020a056808138300b002f76b9a9ef6sm6773012oiw.10.2022.04.06.09.04.19
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 09:04:19 -0700 (PDT)
Received: (nullmailer pid 2330320 invoked by uid 1000);
        Wed, 06 Apr 2022 16:04:18 -0000
Date:   Wed, 6 Apr 2022 11:04:18 -0500
From:   Rob Herring <robh@kernel.org>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        linux-arm-kernel@lists.infradead.org,
        Sudeep Holla <sudeep.holla@arm.com>,
        Liviu Dudau <liviu.dudau@arm.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>
Subject: Re: [PATCH v4 2/3] dt-bindings: arm: add corstone1000 platform
Message-ID: <Yk26Ajzjd/AfqGiG@robh.at.kernel.org>
References: <20220331154536.1544220-1-rui.silva@linaro.org>
 <20220331154536.1544220-3-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331154536.1544220-3-rui.silva@linaro.org>
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

On Thu, 31 Mar 2022 16:45:35 +0100, Rui Miguel Silva wrote:
> Add bindings to describe the FPGA in a prototyping board
> (MPS3) implementation and the Fixed Virtual Platform
> implementation of the ARM Corstone1000 platform.
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  .../bindings/arm/arm,corstone1000.yaml        | 45 +++++++++++++++++++
>  1 file changed, 45 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/arm,corstone1000.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
