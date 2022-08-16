Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id ECC53595531
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 10:27:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232944AbiHPI1d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 04:27:33 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39440 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232155AbiHPI03 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 04:26:29 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 51149796A1
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 22:56:11 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id s9so9626302ljs.6
        for <devicetree@vger.kernel.org>; Mon, 15 Aug 2022 22:56:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=ewdZKfv/k3MeM8JzCH80kgE1h4iTcEJrio6FMcJmb9k=;
        b=WBrkgiMdwjX7hJ23ARjRhoNxW3EIPrf+S8Q4l1Qq+VTfCRAyNyUjymSF39Rj/aqQrE
         Zhi6jpLveIb95WF+4+PBHD02D2Rk/O+VMGeu1bO7IULdHvxtjCTYDzDZ5yUZqCgQXY+Q
         6wKqCINj/T1C/t7yOrJ2gdyf7Rsl8nd/cxGW0srofkitLsLqkB4maOHGoztTjZGXH8CY
         wVmZXruiDnjbmHUlyLhE4YAn4ZsQXBh5eRSCf77kT8FjHt6yxOqnIcwtGDfozxq/hgUY
         dTpPIuhzmiepbT4Zy+m3SU3EhxZoCaijq1m0o16id427I5i1maqyomXEUkLsy8gdNxrT
         wUtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=ewdZKfv/k3MeM8JzCH80kgE1h4iTcEJrio6FMcJmb9k=;
        b=MsM0nqViIplYwVyq3jT/OEmXqfElkODn/vSeDoxjyq2B4U6wGVuJm22zmgGRpNLd3D
         ENf5w3TWDgCIDCuuuaOUt/sB/QPETj855m8TiB9eNGB7ZhBqxDnzaa4xdZX7bSbdP8GN
         Go3p297mOEN45wKZtYOwkV/s/7C8eR85hjQuB65+IcJYI2lQaBdEQ8Oph8CmwRJWstgR
         r8+O2S1o25okq70Ttpqj1sIsLZssus7nhfvLWLjLaKjP5Am3jgOuRK3MUCRi+kdWG9VW
         ZPzDg2OUqYV64GX9gT96uGzLo9R73dU6E9tGHnxrvQi56Uf9rwEfB4fN+leGnbUOEABU
         UR9w==
X-Gm-Message-State: ACgBeo3kdQJ6gJJef1DLg2S31oHlLYwUN2/8b8rs4mF46/xmxCyLs2PM
        WIHwd34t4f6VwpJepR2o9p5Xwg==
X-Google-Smtp-Source: AA6agR6XCwtnoMgA4vzbT1oLkaY6/h16gMro6NR3NmkdaD4OzPnHXHgNikQwwfOoKclcXnpLIP0KCA==
X-Received: by 2002:a2e:b0ce:0:b0:25e:66d6:1a54 with SMTP id g14-20020a2eb0ce000000b0025e66d61a54mr5983129ljl.470.1660629369666;
        Mon, 15 Aug 2022 22:56:09 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id s12-20020a05651c048c00b0025e4ed638dcsm1669622ljc.59.2022.08.15.22.56.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 15 Aug 2022 22:56:09 -0700 (PDT)
Message-ID: <f51ac8cd-7ffb-0eb0-4c3b-b62d2a6674e8@linaro.org>
Date:   Tue, 16 Aug 2022 08:56:07 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/1] ARM: dts: imx6q-mccmon6: Add
 fsl,err006687-workaround-present property
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>,
        Lukasz Majewski <lukma@denx.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20220720064712.1414438-1-alexander.stein@ew.tq-group.com>
 <13231899.uLZWGnKmhe@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <13231899.uLZWGnKmhe@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/08/2022 14:31, Alexander Stein wrote:
> Hello Rob & Krzysztof,
> 
> ping.
> 

Why? These are not DT bindings.

Best regards,
Krzysztof
