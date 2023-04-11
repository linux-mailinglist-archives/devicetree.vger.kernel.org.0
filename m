Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 401A26DD1E0
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 07:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229694AbjDKFjw (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 01:39:52 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229990AbjDKFjs (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 01:39:48 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 32D2A2D49
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 22:39:47 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id kt17so5219377ejb.11
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 22:39:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681191585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=CoUp8773GFsWX8uWiArPvI14C/ql8uh0ic9aHuPd7Zk=;
        b=SQ0HcQxaYhVaPHJU7/Fddz5xSruENq8SIZdWF2hDnv6HCXdQGfcgCsgrZJa2z0hZEc
         wfKaOclUEBMXsWyQY7M+C73Olwkv/Vqn6sr+Hp6bMEZMwl0S5ipnPHtKdp11/iUAmol9
         JXubvATbAYG5toZNgHNu7fUYa3bllf+T3tIu9K486PiVzxAdhy/wo2IulinkybjPPrXd
         wtB9laoY8xPAlIL4vtcYc9WLnGj0gsvTXPZq0IbF66AxDbj2Df9Hbrkk7r5l1Ex7wYPe
         foGOcjvqwCLXUbkzNDLeogyIPOaN76VuAKp++SP7+nppcX1fz3RM3D2qMlk/WP8c0IpV
         2WFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681191585;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=CoUp8773GFsWX8uWiArPvI14C/ql8uh0ic9aHuPd7Zk=;
        b=RhCdkhU6vOBelKLTzHuCSH4NKeyTQA2YwoSEhu75MJslsAF5VxCCDWZzAHdWMOe6aa
         Ntny6iQZuBFGPeItgQPPhiwLALSdNjMBWkGTZ2L4aGKqMLO5av/yuNps7gbXAc0SMP5b
         J7ZH2RGqWCLCUhFbRUJGFcPI555dAU3J1LbgUsyNZMF2j16UL82TuFXBQ5A/2YXp/aFY
         gJ3v12xq35x/9oXOukmuLZ3wTidBGeHc8DefmQqib/aFm5g3dtn9wpDKHpfiN0vXGtQZ
         BLAOT6qEDhVKwnxf5BsMt8RaEJV1BIi8NVzlUL7EMiVzy9ZANBatkOP00fl9v7VbiFyc
         8nxg==
X-Gm-Message-State: AAQBX9eluyLl3mz7HUmEwT0mIg099/7PW5nd1uukfEeDdWB7MN3uyLsq
        ttp0dUFdCmWeMSornTuNdRF+xQ==
X-Google-Smtp-Source: AKy350blMDeEpPqsWV8AahVbXa/XkySm179RRsqGLVKVGNELXAp3iuvjbp3/OoHwZHpcCTy2iLaaJw==
X-Received: by 2002:a17:907:2ced:b0:8ee:babc:d40b with SMTP id hz13-20020a1709072ced00b008eebabcd40bmr8342951ejc.58.1681191585694;
        Mon, 10 Apr 2023 22:39:45 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:dad2:72b7:3626:af61? ([2a02:810d:15c0:828:dad2:72b7:3626:af61])
        by smtp.gmail.com with ESMTPSA id tg12-20020a1709078dcc00b0094a473988b9sm2943049ejc.27.2023.04.10.22.39.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 22:39:45 -0700 (PDT)
Message-ID: <a6f78d8a-829a-a40e-0fc4-83eb9887b406@linaro.org>
Date:   Tue, 11 Apr 2023 07:39:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v2 1/2] dt-bindings: sound: ep93xx: Add I2S description
Content-Language: en-US
To:     Alexander Sverdlin <alexander.sverdlin@gmail.com>,
        devicetree@vger.kernel.org
Cc:     Hartley Sweeten <hsweeten@visionengravers.com>,
        Liam Girdwood <lgirdwood@gmail.com>,
        Mark Brown <broonie@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        alsa-devel@alsa-project.org, linux-kernel@vger.kernel.org,
        Nikita Shubin <nikita.shubin@maquefel.me>
References: <20230410222958.2321398-1-alexander.sverdlin@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230410222958.2321398-1-alexander.sverdlin@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/04/2023 00:29, Alexander Sverdlin wrote:
> Add device tree bindings for Cirrus Logic EP93xx internal SoCs' I2S
> controller.
> 
> Signed-off-by: Alexander Sverdlin <alexander.sverdlin@gmail.com>
> ---
> Changelog:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

