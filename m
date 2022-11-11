Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AB91E62552C
	for <lists+devicetree@lfdr.de>; Fri, 11 Nov 2022 09:26:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232540AbiKKI0K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 11 Nov 2022 03:26:10 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50246 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231778AbiKKI0J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 11 Nov 2022 03:26:09 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C214AF58
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:26:08 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id k19so3738437lji.2
        for <devicetree@vger.kernel.org>; Fri, 11 Nov 2022 00:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=kUHoLnVuberQNZ4w03ayKoSTheEu76ftgtJi7L4SomA=;
        b=kSAm0g06yTtpEELeBirbzehpTDuXCKBCZ6U9b0odXiyvNTaea+UoVungIJDNPgaJ/n
         b31jck24DeqQEc37ZrB/r6J6a5Y83d2+WzSGjQjRTuOiQcFjqemFQIswQvGYUzZXrUJ2
         AC+zDRQuIFMKpfrdw7jSFY0/QG5mIsuAzkqd/Ocq+hQbNzJ9n4SpSt4FG0y4lzwFYAfq
         FILkm4KnfGanqpQEjiQNhV4vHzQd8yjSSMfvyUCRcXrV5ZlydeGhQAUv5aiSoCnXHYzO
         c62uuKKQ00JnQXDtnu6CMTllxwxMTju5z+6Ja8qw0lTwMT5KUIMlyZVsbd4f3aKRJFZS
         N/Yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=kUHoLnVuberQNZ4w03ayKoSTheEu76ftgtJi7L4SomA=;
        b=3rLuFKR/xwEH3toOAIkrpEt6rTDR1ZyDjTVC/Aum66RZ9NqSUFG04hDi6aRiXfOoOf
         dYqdDizeXIBpyaehPo+vUY4RGok9QcC+jeYGLrFfCLl3NN6hb+CWN5excV3oWdbaC4A/
         7K6V/PwzgEIsTT2EqlrAgnv8Qd+JivUvWvk17WkLWdxNFvu2WSFF/PSpb9jMN8Dr6SlR
         kZmf+uVbmQ4ZmAzMYU7SEI2kERtUCTTfbohgTLoINdOs6TwcrWyvFeo8nZBeTrTT4pIQ
         Vq2Spw2Un2cu2Cl68LtV8ak9Z9XmFx9HUIF308zrwLIuGcXpEmjpzNDJl1fs8uH6PzrT
         o+XA==
X-Gm-Message-State: ANoB5pmaCuY2JQp3k0/4kBrJFz284G2Ga2kJnS2dZfNtmYVP7hatI49O
        6dOT7uQZRzrG8sVDng0cgPmZEQ==
X-Google-Smtp-Source: AA0mqf5LWxhOH0nHdL7MHPc6ZR3hYH9MKC6VDlHgpC52RBpDBlhKAez5qZ/Kz90OTufFLzIPSf5pPQ==
X-Received: by 2002:a2e:9397:0:b0:277:eba:937 with SMTP id g23-20020a2e9397000000b002770eba0937mr323773ljh.207.1668155167116;
        Fri, 11 Nov 2022 00:26:07 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id d19-20020a194f13000000b004a044928923sm207347lfb.293.2022.11.11.00.26.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Nov 2022 00:26:06 -0800 (PST)
Message-ID: <69c02b2c-1870-43dd-87f4-0fda8cb1eef7@linaro.org>
Date:   Fri, 11 Nov 2022 09:26:05 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH] dt-bindings: arm: sunxi: add Pine64 SoPine Clusterboard
Content-Language: en-US
To:     Renze Nicolai <renze@rnplus.nl>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>,
        Maxime Ripard <maxime@cerno.tech>,
        Andre Przywara <andre.przywara@arm.com>,
        Conley Lee <conleylee@foxmail.com>,
        Andrew Lunn <andrew@lunn.ch>
Cc:     devicetree@vger.kernel.org
References: <2335500.ElGaqSPkdT@werkpc>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2335500.ElGaqSPkdT@werkpc>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/11/2022 21:57, Renze Nicolai wrote:
> Add device tree bindings for the Pine64 SoPine Clusterboard.
> 

Where is the DTS? Are you documenting existing compatible from linux-next?

Best regards,
Krzysztof

