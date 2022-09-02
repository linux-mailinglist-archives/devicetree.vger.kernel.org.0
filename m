Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 186DD5AB9B7
	for <lists+devicetree@lfdr.de>; Fri,  2 Sep 2022 22:59:10 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229909AbiIBU6H (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 2 Sep 2022 16:58:07 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56100 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230403AbiIBU6F (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 2 Sep 2022 16:58:05 -0400
Received: from mail-oa1-f54.google.com (mail-oa1-f54.google.com [209.85.160.54])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7FF1D105B69
        for <devicetree@vger.kernel.org>; Fri,  2 Sep 2022 13:58:01 -0700 (PDT)
Received: by mail-oa1-f54.google.com with SMTP id 586e51a60fabf-11f34610d4aso7670185fac.9
        for <devicetree@vger.kernel.org>; Fri, 02 Sep 2022 13:58:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:x-gm-message-state:from:to:cc:subject:date;
        bh=NMFkilh6xzQlpE/21KWS17CHLjbAGy9AZDPzdQ6r4NA=;
        b=6W4BE7YqdVicShHHDMGvFerkMCZ7KVcqLpiHmo3YulMZoGP2Kv2Shndk+a4GOYD4Hn
         1P+/kXFbNghxFn9gnmb7lqIUozcPRJo0QRQkfkM9Bi/YLiepcnyBg+7XtMyNOAvSAG/8
         YZBdO9MFGRByZGChuKPB6kZEHJoIGECMBHOsqqD6Ff4gswheh0rzNUJXcrg83jhfMjkL
         u5D+5Z0bUuj/juoEhoopDFUgnc1JycxxOxNVAiQm5eKMgmInntAQoqjMoRH4jcgRxSj/
         A2BfP85jEksPsXYrP8mXMIAT9+yQO7G5Le6gI437DS8mpcdrq+2eOHuAkFGj8D2lookN
         Qg7w==
X-Gm-Message-State: ACgBeo0E1H3i5VirPBxUmVhlgkBcKOsiqwFwddL0eUywzUSkc5Twd/4i
        O80By1097ik1ZfPszufTnjVgKlZa8Q==
X-Google-Smtp-Source: AA6agR4RmyPOO9I+ALVKX9Yvshkht0l1mRDatfpNK0sQjNpXRyD4k3p2t/G6sGqOtPeXPIOZwrIARg==
X-Received: by 2002:a05:6808:23ca:b0:344:be60:144d with SMTP id bq10-20020a05680823ca00b00344be60144dmr2697674oib.38.1662152280593;
        Fri, 02 Sep 2022 13:58:00 -0700 (PDT)
Received: from robh.at.kernel.org (66-90-144-107.dyn.grandenetworks.net. [66.90.144.107])
        by smtp.gmail.com with ESMTPSA id o2-20020a544782000000b0034290c4ed01sm1363455oic.41.2022.09.02.13.58.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 02 Sep 2022 13:58:00 -0700 (PDT)
Received: (nullmailer pid 403129 invoked by uid 1000);
        Fri, 02 Sep 2022 20:57:59 -0000
Date:   Fri, 2 Sep 2022 15:57:59 -0500
From:   Rob Herring <robh@kernel.org>
To:     Sebastian Reichel <sebastian.reichel@collabora.com>
Cc:     Rob Herring <robh+dt@kernel.org>, kernel@collabora.com,
        Heiko Stuebner <heiko@sntech.de>,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-rockchip@lists.infradead.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Subject: Re: [PATCH 1/6] dt-bindings: arm: rockchip: add rk5388 compatible
 string to pmu.yaml
Message-ID: <20220902205759.GA403061-robh@kernel.org>
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-2-sebastian.reichel@collabora.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220831182629.79255-2-sebastian.reichel@collabora.com>
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

On Wed, 31 Aug 2022 20:26:24 +0200, Sebastian Reichel wrote:
> Add the compatible for the pmu mfd on rk3588.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>
> ---
>  Documentation/devicetree/bindings/arm/rockchip/pmu.yaml | 2 ++
>  1 file changed, 2 insertions(+)
> 

Acked-by: Rob Herring <robh@kernel.org>
