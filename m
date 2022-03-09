Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E7B024D2C31
	for <lists+devicetree@lfdr.de>; Wed,  9 Mar 2022 10:36:26 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232176AbiCIJgm (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Mar 2022 04:36:42 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232080AbiCIJgl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Mar 2022 04:36:41 -0500
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C4CE216F956
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 01:35:41 -0800 (PST)
Received: from mail-ed1-f70.google.com (mail-ed1-f70.google.com [209.85.208.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 1AA5E40338
        for <devicetree@vger.kernel.org>; Wed,  9 Mar 2022 09:35:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1646818540;
        bh=vZNj5AOQLPTuv9G9otKx/fIrGoW3MMRzM1nMje3Rtek=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=XMUkOq6Ei2nqIz1jj62FpgVvCQFwTiJoMLJib5CjwxlX9DZop4kRezwkqxEBTtfoc
         aFlLEiaazdBInqUc0TpPqgO17OT4ogugOuJH4mXAkUZ4HdKtN3Pw+kXZCcCT4rzomD
         WeVB7vvgjhnuyAKQ75KU/kAv080hCgWPZoawNoJKmeCf1OW5j3M3V7pJ2oR84XQoQj
         vVRsrCc3cv3xPcbFRQZIcqUb7VV2n72fvpYYsyoLbf8tqNGhvvmsOGGlMpzxl+p+jU
         E6IwQM7xYWeyMRdy6EdENyNgw4tF2dM+9bX6MqG/cT62UDeEEH+m6LBvPZaI2+pPyG
         vCX4YustN2ZgA==
Received: by mail-ed1-f70.google.com with SMTP id l14-20020a056402344e00b0041593c729adso965337edc.18
        for <devicetree@vger.kernel.org>; Wed, 09 Mar 2022 01:35:40 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=vZNj5AOQLPTuv9G9otKx/fIrGoW3MMRzM1nMje3Rtek=;
        b=EGgZslzVwFvXXhHRUI3kt3EFQ0tVG41/WWYrLNBuKl4IYH6SZJKGqag3jAwOMInS+i
         tzzrlKKeJKnG1usqrBlfg1b/ZViUVMS3E46r/DYPzm/0BYdfOntLyf48xTkmUR+c0tZc
         bvPqV13A2JgLL6Znjaix1GREcUmk366YobDLRd/HvaJMBMI9FfO9Tbfmx0Fthmy8zUKd
         YYLO34XtXK8faL1QrzG1MtVrImE51y6n60B8n1SOZED4TSwZpuWSjcfj4WuhnVPxGmLl
         Yuzq/W3ao7xLh6EQ1sLjgj2xQDG4yqMF6gP1CpMElwfry4iympGIx46BsNWVh6Z+qnUG
         Jnfw==
X-Gm-Message-State: AOAM533XYozdO15tBRp1Nnv6C+FVnEc9bk93ZTySChdSGseAvkX8KsW6
        09qaqlyNzW6JIjmnanipNjXaBgkYC80DtNa+j+VN0g33swHbZUPbNIbclJh4xDDLv8hpSRBmsJA
        eO4k0uoCGsoe+hAqhzsr18I0SKvlzfGT6tQ3QvjA=
X-Received: by 2002:a05:6402:7cb:b0:415:f059:c817 with SMTP id u11-20020a05640207cb00b00415f059c817mr20177221edy.364.1646818535455;
        Wed, 09 Mar 2022 01:35:35 -0800 (PST)
X-Google-Smtp-Source: ABdhPJwXuptgodm9OL5uPUDYx9cNzg0ceJIG4EMX1apioKtXckPfC/v1b6SG5RCfGXrS472kMiCZlw==
X-Received: by 2002:a05:6402:7cb:b0:415:f059:c817 with SMTP id u11-20020a05640207cb00b00415f059c817mr20177199edy.364.1646818535293;
        Wed, 09 Mar 2022 01:35:35 -0800 (PST)
Received: from [192.168.0.144] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.gmail.com with ESMTPSA id m25-20020a170906161900b006d43be5b95fsm510405ejd.118.2022.03.09.01.35.34
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Mar 2022 01:35:34 -0800 (PST)
Message-ID: <caf415f2-7b85-1653-7db1-623048a23b3e@canonical.com>
Date:   Wed, 9 Mar 2022 10:35:34 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH] dt-bindings: thermal: rzg2l-thermal: Document RZ/V2L
 bindings
Content-Language: en-US
To:     Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>,
        Geert Uytterhoeven <geert+renesas@glider.be>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-pm@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-renesas-soc@vger.kernel.org,
        Prabhakar <prabhakar.csengg@gmail.com>,
        Biju Das <biju.das.jz@bp.renesas.com>
References: <20220308212315.4551-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220308212315.4551-1-prabhakar.mahadev-lad.rj@bp.renesas.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/03/2022 22:23, Lad Prabhakar wrote:
> Document RZ/V2L TSU bindings. The TSU block on RZ/V2L is identical to one
> found on RZ/G2L SoC. No driver changes are required as generic compatible
> string "renesas,rzg2l-tsu" will be used as a fallback.
> 
> Signed-off-by: Lad Prabhakar <prabhakar.mahadev-lad.rj@bp.renesas.com>
> Reviewed-by: Biju Das <biju.das.jz@bp.renesas.com>
> ---
>  Documentation/devicetree/bindings/thermal/rzg2l-thermal.yaml | 1 +
>  1 file changed, 1 insertion(+)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
