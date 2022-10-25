Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 0A1BB60D4E8
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 21:48:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232334AbiJYTsl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 25 Oct 2022 15:48:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232324AbiJYTsk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 25 Oct 2022 15:48:40 -0400
Received: from mail-qk1-x731.google.com (mail-qk1-x731.google.com [IPv6:2607:f8b0:4864:20::731])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65DC4F07FB
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 12:48:39 -0700 (PDT)
Received: by mail-qk1-x731.google.com with SMTP id s17so8900645qkj.12
        for <devicetree@vger.kernel.org>; Tue, 25 Oct 2022 12:48:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nsy/E/McG6wphxcYFdjdUMTRPfbaeJ0Z5p5LSzNi/vo=;
        b=RdjgjIJid3w2NovUK1hSPAckw+AekRfr7Gt2LGMF6fw7aTtpYrGBc6556Xfz8BtVK/
         x8jJevoDOug7BDK+/EnIVxGOg4VKRv73vLTrDrXNio3XcQnVD1vBh9z3wZcbdLr2/34M
         xqR8XEfTHRaVz9QDTqC6pLb+tnlGfMVaWPPlOPRe6jGGsMwYugutKD4KfzWY9yS0289S
         RDcVpSSJI0TF+n0WAjBdLnIdat6To60QJ/fiGURxkOOlIRiLpuqhLNfzCHPIBV8SQpzN
         gSgXV6JSQ5Kb0WF3He8HLNhj1UngD3XRxD9TZAOiEEnYIFW0J7X8gzv2dvKJhxRd3Lpy
         GnUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=nsy/E/McG6wphxcYFdjdUMTRPfbaeJ0Z5p5LSzNi/vo=;
        b=efynu2phpK81FnqxJfSy/M6l6FxViETA5e17tUmN04M53HHy7yQffg3PKsnv92XDjG
         gYKN+ChDomTjXYbPsAB3yAPEhpw0CLgPbrWqwPA5JUOHaLbae2Vznrf/gTSV8wNLgcOe
         q9OLX0MfylOQEilJ/9qUknU5/b/DUh0L9oClY9vlu7VuBZ4EWpaRCdtCm/4boC9vcg+k
         oyBaM6l0++hqYQzdr5MtBuSQ/JLDPot98qipHRPKloLtjRBtDDnqyyiNmvNAGKZrKOMs
         XrPLpej3aYabeQp3it7i7Dm6Nfre93BqwRKnK7U4A5PaQ7ZN03L53exrfsMhmD8SjvcQ
         CAfA==
X-Gm-Message-State: ACrzQf0Y0h1gSdz0NXcKffC13RKpne5QNcI1+Scffc+SqivHkgYhpyGQ
        jLfORj6KG3OQE580aHgwl1w9kA==
X-Google-Smtp-Source: AMsMyM55rJIV7dZ7ouZTeJWWZDxaDM/Si4uJAf9nILmG79CPEQ3hsU6mnX5fDPVAYwYI+dbMCE1aMg==
X-Received: by 2002:a05:620a:2618:b0:6ea:908:120e with SMTP id z24-20020a05620a261800b006ea0908120emr27840879qko.645.1666727318586;
        Tue, 25 Oct 2022 12:48:38 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id t30-20020a37ea1e000000b006ec771d8f89sm2515328qkj.112.2022.10.25.12.48.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 25 Oct 2022 12:48:37 -0700 (PDT)
Message-ID: <8a4048d4-2675-96ed-89f1-db77084d18ba@linaro.org>
Date:   Tue, 25 Oct 2022 15:48:35 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v1 2/5] dt-bindings: soc: hpe: Add hpe,gxp-plreg
Content-Language: en-US
To:     "Verdun, Jean-Marie" <verdun@hpe.com>,
        "Hawkins, Nick" <nick.hawkins@hpe.com>
Cc:     "krzysztof.kozlowski+dt@linaro.org" 
        <krzysztof.kozlowski+dt@linaro.org>,
        "linux@armlinux.org.uk" <linux@armlinux.org.uk>,
        "devicetree@vger.kernel.org" <devicetree@vger.kernel.org>,
        "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
        "linux-arm-kernel@lists.infradead.org" 
        <linux-arm-kernel@lists.infradead.org>,
        Rob Herring <robh+dt@kernel.org>
References: <20221011185525.94210-1-nick.hawkins@hpe.com>
 <20221011185525.94210-3-nick.hawkins@hpe.com>
 <CAL_Jsq+xb2Ltfne4mQMXQAde-eHS7TsO73YZ-vhE7nK1Z_M0gw@mail.gmail.com>
 <DM4PR84MB192795B45639710259E9B19D88229@DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM>
 <820095a2-3722-5c3a-77fb-5a6b6b44e1c3@linaro.org>
 <DM4PR84MB19275A47D7006BD5664E1AF488319@DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM>
 <d51b7f8d-3681-e19d-3ebb-7e021fc50403@linaro.org>
 <DM4PR84MB19275D8DB8B27CE0D1A05AA588319@DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM>
 <7c9e943a-4806-6339-cee1-9156e7792111@linaro.org>
 <DM4PR84MB192759035B110DE54EA9B63688319@DM4PR84MB1927.NAMPRD84.PROD.OUTLOOK.COM>
 <0b6dd763-365d-6f35-59cb-18c599b73d3a@linaro.org>
 <DM4PR84MB197662C12018090C312AF72DD6319@DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <DM4PR84MB197662C12018090C312AF72DD6319@DM4PR84MB1976.NAMPRD84.PROD.OUTLOOK.COM>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/10/2022 15:39, Verdun, Jean-Marie wrote:
> Hi Krzysztof,
> 

Use mailing list style of replying. I can bear the lack of wrapping (one
huge sentence), but top-post is a no.

> I think what we try to do is to introduce an abstraction layer between the interfaces and the drivers, as our CPLD interfaces are platform dependents. I mean the Power On control could be at address 0x09 on one platform or 0x119 on another one. We would like to find a way to avoid to have to change the driver code, but just feeding the driver with relevant datas, which could be into a platform dependent include file or through the proposed solution that Nick is promoting.

I think this was already said. Repeating it, with very similar words
will not help us...

Let me be then clear: I care little about your goal of abstracting some
driver code. I care about proper Devicetree bindings and proper
representation of hardware in Devicetree sources.

Looks like you want to hack around Devicetree to match your needs. This
does not work. I gave you the proposed solution based on my feeling and
limited understanding of what you have there. If this does not work for
you, then life - you need to find other solution.

> 
> If the CPLD memory address space was consistent between platform and generation that would be great but unfortunately that is not the case that is why we try to break down the dependency into the driver code and retrieve the data from another place.

I don't see how this argument is relevant to my questions. I did not
propose anything which would require some "memory address space
consistency".

Best regards,
Krzysztof

