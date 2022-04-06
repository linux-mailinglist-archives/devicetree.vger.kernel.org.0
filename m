Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 931784F685A
	for <lists+devicetree@lfdr.de>; Wed,  6 Apr 2022 19:59:06 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239258AbiDFRxD (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Apr 2022 13:53:03 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46366 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240045AbiDFRwt (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Apr 2022 13:52:49 -0400
Received: from mail-oa1-f46.google.com (mail-oa1-f46.google.com [209.85.160.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3E2B3462B2E
        for <devicetree@vger.kernel.org>; Wed,  6 Apr 2022 09:02:52 -0700 (PDT)
Received: by mail-oa1-f46.google.com with SMTP id 586e51a60fabf-d6e29fb3d7so3380508fac.7
        for <devicetree@vger.kernel.org>; Wed, 06 Apr 2022 09:02:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=mxoRmZVgAu15wqUmb3NNtTtAka5lOyQGS3TJMEHUewA=;
        b=KtOzsZArKVDLragceETMqRaYNcTd7qs1hxEvJPh1yrDsLxRUbbUQ6uqRNIAVh2+tRA
         BxsIsuPKpEGl21mphNZk9AT4uPQ2O73ikdMbVf5U38BHXHmhHVmpVLb6kIU2KV5qK8Th
         7GNiaxImS0EeEKkKa9Oe+aGhSY/J/eVe+WhA0pZo0c35uOCOgVKywuuUcbr5xmMzf464
         eZ6+62u4hPLdSEzFbrn8D0QqAYgPKYsOCKVF/RSjwKdXZShEPXSodomA4ErVAE2ekNyO
         xrFRkt7s5B3uqvpvdIT05y4+iz5+vDcQ5PksxdJoUYvFJMF38emkslBxyh4lbT13Q4lM
         +3NA==
X-Gm-Message-State: AOAM532XGn1RVKkXVYKIEPNOOaHR7IQoW36POUaCppzVRFMEtxkLbTV6
        KOh6oin7s+CUQesPL6ufQw==
X-Google-Smtp-Source: ABdhPJzQLjWqi9wiGQLf2dz4ZluB2zlSvl+lpVnzbmiDwGq9Naaj4ypNgszmw4ePpHrX3G/ztU8r5Q==
X-Received: by 2002:a05:6870:a189:b0:da:b3f:2b83 with SMTP id a9-20020a056870a18900b000da0b3f2b83mr4311373oaf.290.1649260971296;
        Wed, 06 Apr 2022 09:02:51 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id 190-20020a4a0dc7000000b003244ae0bbd5sm6198313oob.7.2022.04.06.09.02.50
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 06 Apr 2022 09:02:50 -0700 (PDT)
Received: (nullmailer pid 2328022 invoked by uid 1000);
        Wed, 06 Apr 2022 16:02:50 -0000
Date:   Wed, 6 Apr 2022 11:02:50 -0500
From:   Rob Herring <robh@kernel.org>
To:     Rui Miguel Silva <rui.silva@linaro.org>
Cc:     Liviu Dudau <liviu.dudau@arm.com>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
        devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzk+dt@kernel.org>,
        Sudeep Holla <sudeep.holla@arm.com>
Subject: Re: [PATCH v4 1/3] dt-bindings: net: smsc,lan91c111 convert to schema
Message-ID: <Yk25qkU+mhCCXbOU@robh.at.kernel.org>
References: <20220331154536.1544220-1-rui.silva@linaro.org>
 <20220331154536.1544220-2-rui.silva@linaro.org>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220331154536.1544220-2-rui.silva@linaro.org>
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

On Thu, 31 Mar 2022 16:45:34 +0100, Rui Miguel Silva wrote:
> Convert the smsc lan91c9x and lan91c1xx controller device tree
> bindings documentation to json-schema.
> 
> Signed-off-by: Rui Miguel Silva <rui.silva@linaro.org>
> ---
>  .../bindings/net/smsc,lan91c111.yaml          | 61 +++++++++++++++++++
>  .../bindings/net/smsc-lan91c111.txt           | 17 ------
>  2 files changed, 61 insertions(+), 17 deletions(-)
>  create mode 100644 Documentation/devicetree/bindings/net/smsc,lan91c111.yaml
>  delete mode 100644 Documentation/devicetree/bindings/net/smsc-lan91c111.txt
> 

Applied, thanks!
