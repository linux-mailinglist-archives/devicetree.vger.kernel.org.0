Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 81903693FD8
	for <lists+devicetree@lfdr.de>; Mon, 13 Feb 2023 09:44:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230064AbjBMIod (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Feb 2023 03:44:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49838 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230036AbjBMIod (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Feb 2023 03:44:33 -0500
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D551010C6
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:44:31 -0800 (PST)
Received: by mail-wr1-x435.google.com with SMTP id a2so11280989wrd.6
        for <devicetree@vger.kernel.org>; Mon, 13 Feb 2023 00:44:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=2YIdYTMgNx2IaCEVJN4jlOnxMUO1xnqAx+6A+uNEAcc=;
        b=YjkXFCRg5TcrOcgL2Fs38nat5ry747T37B6iJUrC6jMA1Z+o0w6Nilc0BCchSy4rN2
         OF3RVtd55sYCgNDu9/l75A+Fj7VAZIwaCBhNWg2dfQm6qzPypxx9OLmcB+dT1SzcZBVA
         XlaFfpmelcHXtUV4OAZXJQvkdHWdsKy33ocb1SW1b4dvXZFxrzfSBdNLH4DqjV9uw7cq
         rY98ChhHgQNg7i8EcT+4Ibe+9F9ro2YqaruhAzSKWov11JxiroCTZn/Q75k4J6DtNzJP
         W17HkjQkVAi/J+Jit4UeI4blF5i2x9EZiZPsjlRJc8ATWjk8hVKV5s4DO+fMUYkII+i0
         2v0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=2YIdYTMgNx2IaCEVJN4jlOnxMUO1xnqAx+6A+uNEAcc=;
        b=K67Rpqk1LRlvx/gd1O3/ibQUwZpwptf/o/11nG3Hbtd+KSpKBFfikpzH/tT/yY/5sL
         L6C2a9QPBNdUVoOe62aEXbuTUUlEMe/ug8L+SJBdCK4o0wvEKVH9ukIt0jUt+J/60zPD
         TlL3xRlvJlsIq1+WA6QS6BLJvRpS6Kj1P/nsXT4JdkkzmvZuVPE9jHLpWHvVf01aWuig
         WDdkE7H90/qMjAnS9QGffytPx2/UqiCoXc9FIFFZgDRXFNqj8A7pprUeRcmgtKsFzyXa
         REQOq1N/MfhXFaIWvk2bAaRBcaGHbN8bdMdTQbh6PXTAypr1Ii2yJEZ4tuzXJl112avT
         k/fg==
X-Gm-Message-State: AO0yUKWi8cQwBQWCk4kUbXDOuSgNVVhStw/RrSiCrNX855e8DYta1IKH
        mWts933+c30SLDLZoL6YkLrHng==
X-Google-Smtp-Source: AK7set8yVwUTFGFiHkPZPEALwlo9zuu100bG//XEmpcVm+58X/ACQl/dWsW+UshyzwW2OQ5yTF00fA==
X-Received: by 2002:a05:6000:1003:b0:2c4:745:13b8 with SMTP id a3-20020a056000100300b002c4074513b8mr12526791wrx.42.1676277870529;
        Mon, 13 Feb 2023 00:44:30 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id o7-20020a056000010700b002c559def236sm1353565wrx.57.2023.02.13.00.44.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Feb 2023 00:44:30 -0800 (PST)
Message-ID: <4eed8885-a149-43b1-f6f6-f9b7fbb2f3b4@linaro.org>
Date:   Mon, 13 Feb 2023 09:44:28 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.7.1
Subject: Re: [PATCH v2 3/3] dts: ast2600: Add reset config for I3C
Content-Language: en-US
To:     Jeremy Kerr <jk@codeconstruct.com.au>,
        linux-aspeed@lists.ozlabs.org, linux-clk@vger.kernel.org
Cc:     devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Rob Herring <robh+dt@kernel.org>,
        Stephen Boyd <sboyd@kernel.org>,
        Dylan Hung <dylan_hung@aspeedtech.com>,
        Joel Stanley <joel@jms.id.au>, Andrew Jeffery <andrew@aj.id.au>
References: <cover.1676267865.git.jk@codeconstruct.com.au>
 <f426c3a22d64d076b007a0fc75dc95a389a9387f.1676267865.git.jk@codeconstruct.com.au>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <f426c3a22d64d076b007a0fc75dc95a389a9387f.1676267865.git.jk@codeconstruct.com.au>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/02/2023 07:02, Jeremy Kerr wrote:
> This change adds the reset line definitions for the AST2600 I3C block's
> reset inputs.

1. Do not use "This commit/patch".
https://elixir.bootlin.com/linux/v5.17.1/source/Documentation/process/submitting-patches.rst#L95

2. This is not DTS. There is nothing from DTS here.
Use subject prefixes matching the subsystem (which you can get for
example with `git log --oneline -- DIRECTORY_OR_FILE` on the directory
your patch is touching).


Best regards,
Krzysztof

