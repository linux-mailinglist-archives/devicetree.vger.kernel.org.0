Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 83937546C61
	for <lists+devicetree@lfdr.de>; Fri, 10 Jun 2022 20:32:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232547AbiFJScQ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 10 Jun 2022 14:32:16 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60096 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233646AbiFJScP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 10 Jun 2022 14:32:15 -0400
Received: from mail-io1-f47.google.com (mail-io1-f47.google.com [209.85.166.47])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AC1C638790
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 11:32:11 -0700 (PDT)
Received: by mail-io1-f47.google.com with SMTP id e80so4670798iof.3
        for <devicetree@vger.kernel.org>; Fri, 10 Jun 2022 11:32:11 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=OVMxoy3v8YN9vjfenOL8+Mzp5/ikdw6ycfv3Coyc0HQ=;
        b=jP2lwMcSpdlZc3mo+dhlE+aVp/3V7hMy1yl57VBGBAOyCDYDwHle2z12JXrjO7HtDA
         eY27BANX6FS/O6KtST2HNK9hqgFdmU2mGq8BZuBniGCBHCttYayCYTtsVlApa/1kmsso
         PQoeAB7iJ3MEkYJLF+fROHc/k2r7JUPtcI5vdZa6/UYpCyUlP9iDZHjh47H5QGakRtQS
         R/op3RO0VhbyEvyB6oy7HxrOXWAlbcHIA1ESIp/1W45Iq/hqvgGZzxVR1b50gyr5dHr2
         DQTTG/lRRWK/2ywq77MMfzVDjSMYfKXqyyXe4k6jrTMrGN3BoBpG2IXWq2WN15rRADtP
         KNNQ==
X-Gm-Message-State: AOAM531WLo1n/w48he/R38Lbc5Sb32TA8bifXqj1Wq2WsJ0eml6oIX+V
        kWCeufQm+ar+dAOn+soRLg==
X-Google-Smtp-Source: ABdhPJzrk+TFZQ8ye0z+1Q6GVMf6xVa4Vaq1QD2t1xc6NjS6VEHT9PgXPmwREY6KXZs17bPRjqebmg==
X-Received: by 2002:a6b:c801:0:b0:669:c93c:5a69 with SMTP id y1-20020a6bc801000000b00669c93c5a69mr147764iof.167.1654885930991;
        Fri, 10 Jun 2022 11:32:10 -0700 (PDT)
Received: from robh.at.kernel.org ([64.188.179.251])
        by smtp.gmail.com with ESMTPSA id l9-20020a023909000000b0033207c2cebesm2142424jaa.48.2022.06.10.11.32.09
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 10 Jun 2022 11:32:10 -0700 (PDT)
Received: (nullmailer pid 1952880 invoked by uid 1000);
        Fri, 10 Jun 2022 18:32:08 -0000
Date:   Fri, 10 Jun 2022 12:32:08 -0600
From:   Rob Herring <robh@kernel.org>
To:     Andre Przywara <andre.przywara@arm.com>
Cc:     Liviu Dudau <Liviu.Dudau@arm.com>, devicetree@vger.kernel.org,
        Rob Herring <robh+dt@kernel.org>,
        dri-devel@lists.freedesktop.org, David Airlie <airlied@linux.ie>,
        Daniel Vetter <daniel@ffwll.ch>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-kernel@lists.infradead.org
Subject: Re: [PATCH] dt-bindings: display: arm,malidp: remove bogus RQOS
 property
Message-ID: <20220610183208.GA1952788-robh@kernel.org>
References: <20220609162729.1441760-1-andre.przywara@arm.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20220609162729.1441760-1-andre.przywara@arm.com>
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

On Thu, 09 Jun 2022 17:27:29 +0100, Andre Przywara wrote:
> As Liviu pointed out, the arm,malidp-arqos-high-level property
> mentioned in the original .txt binding was a mistake, and
> arm,malidp-arqos-value needs to take its place.
> 
> The binding commit ce6eb0253cba ("dt/bindings: display: Add optional
> property node define for Mali DP500") mentions the right name in the
> commit message, but has the wrong name in the diff.
> Commit d298e6a27a81 ("drm/arm/mali-dp: Add display QoS interface
> configuration for Mali DP500") uses the property in the driver, but uses
> the shorter name.
> 
> Remove the wrong property from the binding, and use the proper name in
> the example. The actual property was already documented properly.
> 
> Fixes: 2c8b082a3ab1 ("dt-bindings: display: convert Arm Mali-DP to DT schema")
> Link: https://lore.kernel.org/linux-arm-kernel/YnumGEilUblhBx8E@e110455-lin.cambridge.arm.com/
> Signed-off-by: Andre Przywara <andre.przywara@arm.com>
> Reported-by: Liviu Dudau <liviu.dudau@arm.com>
> ---
>  Documentation/devicetree/bindings/display/arm,malidp.yaml | 7 +------
>  1 file changed, 1 insertion(+), 6 deletions(-)
> 

Applied, thanks!
