Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7E02574B995
	for <lists+devicetree@lfdr.de>; Sat,  8 Jul 2023 00:36:26 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230134AbjGGWgZ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 7 Jul 2023 18:36:25 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55190 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229458AbjGGWgZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 7 Jul 2023 18:36:25 -0400
Received: from mail-il1-f177.google.com (mail-il1-f177.google.com [209.85.166.177])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3B58F211F
        for <devicetree@vger.kernel.org>; Fri,  7 Jul 2023 15:36:24 -0700 (PDT)
Received: by mail-il1-f177.google.com with SMTP id e9e14a558f8ab-3460e9f2376so9713255ab.1
        for <devicetree@vger.kernel.org>; Fri, 07 Jul 2023 15:36:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1688769383; x=1691361383;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=oRbpgwjHni1yVo7tNLwUVsUrfDg/Rbh5maKEnkp3CGE=;
        b=DsP3TqeG7etBfyEf0TuDsqKeNGP1aINoI578HehZciHIetlpXPCoo4TuWdlF+cA6YC
         eLbtJTOkMs3+8Sld9a08M1t9QHsoDBpNoGryG/nsM460ji+Lqljqwv+5960he4AzQSa4
         hffgKfUnVqPqc4iCz8grghhH/02Q3NMuPnMmy6bza0bPoHobiQfOYDpDLIHYd+KcI3/r
         fm5K8Pnb71kORLXULRc0ZTFACdEA9DVjc3Xz6YMX+4faewZnV5TY4zD2eW3kDTz6K1xe
         PIXAbj51MTt3Q+1Tf9cV0qhF8aceE3K6mFc769sXyapSWnZ/IDoh9KrddoSbsTwDUuxb
         Q9jw==
X-Gm-Message-State: ABy/qLZvEoJUAA803SwVOBLLcLeVKFdfiWrFNKeQUk8ZBKZKFD5kR7m5
        uWg/P9ho//7U+7eRHYVtkg==
X-Google-Smtp-Source: APBJJlFmhSb76lpb1J2RVKOanEIgS+8GuN7loU9NLOPNEJpZipSxadrG9D4PuduVVNtNzgs4ZqZviA==
X-Received: by 2002:a92:d385:0:b0:345:ed70:9a7e with SMTP id o5-20020a92d385000000b00345ed709a7emr6851292ilo.13.1688769383458;
        Fri, 07 Jul 2023 15:36:23 -0700 (PDT)
Received: from robh_at_kernel.org ([64.188.179.250])
        by smtp.gmail.com with ESMTPSA id h14-20020a92d08e000000b003460b456030sm1621897ilh.60.2023.07.07.15.36.22
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 07 Jul 2023 15:36:22 -0700 (PDT)
Received: (nullmailer pid 1092967 invoked by uid 1000);
        Fri, 07 Jul 2023 22:36:21 -0000
Date:   Fri, 7 Jul 2023 16:36:21 -0600
From:   Rob Herring <robh@kernel.org>
To:     =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <zajec5@gmail.com>
Cc:     Florian Fainelli <f.fainelli@gmail.com>,
        devicetree@vger.kernel.org, Conor Dooley <conor+dt@kernel.org>,
        bcm-kernel-feedback-list@broadcom.com,
        linux-arm-kernel@lists.infradead.org,
        =?utf-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzk@kernel.org>
Subject: Re: [PATCH V2] dt-bindings: arm: bcm: add BCM53573 SoCs family
 binding
Message-ID: <168876938093.1092911.14869051011601765335.robh@kernel.org>
References: <20230707132850.12670-1-zajec5@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20230707132850.12670-1-zajec5@gmail.com>
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


On Fri, 07 Jul 2023 15:28:50 +0200, Rafał Miłecki wrote:
> From: Rafał Miłecki <rafal@milecki.pl>
> 
> BCM53573 is a family derived from Northstar with some important
> differences:
> 1. Cortex-A9 replaced by Cortex-A7
> 2. XHCI controller dropped
> 3. Two Ethernet interfaces removed
> 4. Two 802.11ac cores embedded
> 
> Linux already contains DTS files for some on those devices so add a
> proper binding for it.
> 
> Signed-off-by: Rafał Miłecki <rafal@milecki.pl>
> ---
> V2: Add -v1 prefixes to Tenda AC6/W15E. There are more versions.
> ---
>  .../bindings/arm/bcm/brcm,bcm53573.yaml       | 39 +++++++++++++++++++
>  1 file changed, 39 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/arm/bcm/brcm,bcm53573.yaml
> 

Reviewed-by: Rob Herring <robh@kernel.org>

