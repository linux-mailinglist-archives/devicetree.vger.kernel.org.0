Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5C23F5EFF70
	for <lists+devicetree@lfdr.de>; Thu, 29 Sep 2022 23:55:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229692AbiI2Vy7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 29 Sep 2022 17:54:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229436AbiI2Vy6 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 29 Sep 2022 17:54:58 -0400
Received: from mail-oo1-f53.google.com (mail-oo1-f53.google.com [209.85.161.53])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0450B4BA53
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:54:58 -0700 (PDT)
Received: by mail-oo1-f53.google.com with SMTP id u19-20020a4a9e93000000b004757198549cso1037453ook.0
        for <devicetree@vger.kernel.org>; Thu, 29 Sep 2022 14:54:57 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=5Kyru7V54n+mm3GNMmsYoggBJulCetHhfXOSWSvF6ds=;
        b=txp+EuSqk+bQA1csaox7un9XI3jhqPIiH7pO/ELmbVsD40qyLqu+twsG1OiuP91vBy
         34d2ACWN61FAeuBI2n7t9WIarx0MeksA5Y2gCF2MCxdNW5c2CXLPdCQPwJxDh/odHNHX
         +iVYFbpJDFFn7rcw0GkYWAS2xx51oALArUs4kyVGEssQgl108SWnuRJ1/7GJysgb99kX
         ap0vkpYmhMOkopThkyuL+ff5/hQPqb1o+aokisD4e+scFv123VPGQ996LzCDo7Xb5gLl
         6xVltS7kS2GHshgfemHRc13o4Nz38cm3Xy56qo8OBN5jAyXl1cAaPsZfWOM9NuHU+juU
         baGA==
X-Gm-Message-State: ACrzQf0k6/2Ui1rWdMOFAde+jykMdTMlMyggmFvgY3nVTalULBkhC9ll
        Ief79jmJ9uTEvea7/VciJw==
X-Google-Smtp-Source: AMsMyM4RsoCX7i8UL7T/BCVT9aXOd7mqR5mKU8ppEaLEDfC5SAPc4o0vtRmxjp5vFNCCdaZGPj8CXw==
X-Received: by 2002:a05:6830:1d3:b0:65a:659:20c1 with SMTP id r19-20020a05683001d300b0065a065920c1mr2272500ota.113.1664488497211;
        Thu, 29 Sep 2022 14:54:57 -0700 (PDT)
Received: from macbook.herring.priv (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id h94-20020a9d2f67000000b0065932853f5esm188787otb.61.2022.09.29.14.54.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 29 Sep 2022 14:54:56 -0700 (PDT)
Received: (nullmailer pid 2772578 invoked by uid 1000);
        Thu, 29 Sep 2022 21:54:55 -0000
Date:   Thu, 29 Sep 2022 16:54:55 -0500
From:   Rob Herring <robh@kernel.org>
To:     Chris Morgan <macroalpha82@gmail.com>
Cc:     devicetree@vger.kernel.org, daniel@ffwll.ch,
        krzysztof.kozlowski+dt@linaro.org,
        Chris Morgan <macromorgan@hotmail.com>, airlied@gmail.com,
        sam@ravnborg.org, maccraft123mc@gmail.com,
        dri-devel@lists.freedesktop.org, robh+dt@kernel.org,
        thierry.reding@gmail.com
Subject: Re: [PATCH V3 2/3] dt-bindings: display: panel: Add NewVision
 NV3051D bindings
Message-ID: <166448849482.2772533.411373228159837365.robh@kernel.org>
References: <20220926191428.4801-1-macroalpha82@gmail.com>
 <20220926191428.4801-3-macroalpha82@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220926191428.4801-3-macroalpha82@gmail.com>
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

On Mon, 26 Sep 2022 14:14:27 -0500, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Add documentation for the NewVision NV3051D panel bindings.
> Note that for the two expected consumers of this panel binding
> the underlying LCD model is unknown. Name "anbernic,rg353p-panel"
> is used because the hardware itself is known as "anbernic,rg353p".
> 
> Signed-off-by: Chris Morgan <macromorgan@hotmail.com>
> ---
>  .../display/panel/newvision,nv3051d.yaml      | 63 +++++++++++++++++++
>  1 file changed, 63 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/display/panel/newvision,nv3051d.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>
