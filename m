Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 808F379AFFB
	for <lists+devicetree@lfdr.de>; Tue, 12 Sep 2023 01:48:39 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234363AbjIKUsO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 11 Sep 2023 16:48:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46696 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S242508AbjIKPou (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 11 Sep 2023 11:44:50 -0400
Received: from mail-ed1-x52a.google.com (mail-ed1-x52a.google.com [IPv6:2a00:1450:4864:20::52a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B3576FB
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:44:44 -0700 (PDT)
Received: by mail-ed1-x52a.google.com with SMTP id 4fb4d7f45d1cf-52f3ba561d9so3869724a12.1
        for <devicetree@vger.kernel.org>; Mon, 11 Sep 2023 08:44:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1694447083; x=1695051883; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TA4/ccJoUBB9iJLQdiE7ZX3ASYPT5SxdNbsdfGhbqfo=;
        b=uZLnBv4ZZzkayVV5C2SHCLW5j5bXMDZo2QNpNR7+a6aPkYC3EC7HfTvHkJe+/VQVeh
         VDW9HhBL4i/grVXUtkpRkbn5GyN2G5r7MtTCRle5OVgLFuNJqYaNjZEhhBIxRAwOt49v
         W/orI4GND/RK4jzOHqlzYDdhj0LNoEYW7OdKZOkGLUD7ZpbOzW0gWXs86Za68+MF2iGM
         vTjguOCcB7Kk4ICCLqsZFmRCl3pxoXmAxPOUn+hEv5Jl2ibEZ7hbBiUDn2V5LOlEF0bu
         mXBmnbnArcWIbTriom8gawWZ5mbztel37SWgCm2nXImhnL+fhVIfqjalKvR7uSJNm9YP
         TG4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1694447083; x=1695051883;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TA4/ccJoUBB9iJLQdiE7ZX3ASYPT5SxdNbsdfGhbqfo=;
        b=ohI1vLqPImPJ2vfVdsyadW8snU9D6Ob6xeMHW3C/bKu8EZUbkjBhfw8He07C26ysNu
         l7lPfE8mQVfg70DYy9vVvyNPYFzeSjZFRhpJIihGqzew1bmVcvJzMujjxFaKQNQDWGFP
         qyjNjbA5kLHclYf6uJ2UWtQWyQNj5PZAwxmMHWGxXP4pnpFvGNxyrWeS3gfIsIzCPuSr
         aQJzcbA9VpSizgRDZupCWUIrFNgiFVa5gO60qD/fwMhsY1lBA0hwzz6K7mSj5jr+coeO
         SgXu8+LoLMlrdaGq+hF7yCyLRokPA8F7hFCrNGV7dx7QvzUE17U6arcNXUR09qlB1jyi
         GzvQ==
X-Gm-Message-State: AOJu0YwtRqVn5HCigCssBzDAGnXgltSzZylzffqaJHUJGiMDkyOXPZSR
        4rUUiMIGSWcA0MjxCdHjHlbJ5g==
X-Google-Smtp-Source: AGHT+IELtAIvZFhMZyXjFu7sZGPd+ADjgt4yhc8nbalVMsH5mb9j/n2nxPSciapAl3YnEyQClwqhew==
X-Received: by 2002:a05:6402:221c:b0:528:9284:61c6 with SMTP id cq28-20020a056402221c00b00528928461c6mr95673edb.0.1694447083182;
        Mon, 11 Sep 2023 08:44:43 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.214.188])
        by smtp.gmail.com with ESMTPSA id a5-20020aa7cf05000000b0052576969ef8sm4750276edy.14.2023.09.11.08.44.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Sep 2023 08:44:42 -0700 (PDT)
Message-ID: <04bd6d52-7e81-0622-2806-71b3322152f7@linaro.org>
Date:   Mon, 11 Sep 2023 17:44:40 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH v2 1/2] dt-bindings: mfd: syscon: Add
 ti,am654-dss-oldi-io-ctrl compatible
Content-Language: en-US
To:     Andrew Davis <afd@ti.com>, Lee Jones <lee@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, Nishanth Menon <nm@ti.com>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tero Kristo <kristo@kernel.org>,
        Aradhya Bhatia <a-bhatia1@ti.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20230911142556.64108-1-afd@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230911142556.64108-1-afd@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/09/2023 16:25, Andrew Davis wrote:
> Add TI DSS OLDI-IO control registers compatible. This is a region of 5
> 32bit registers found in the TI AM65 CTRL_MMR0 register space[0]. They
> are used to control the characteristics of the OLDI DATA/CLK IO as needed
> by the DSS display controller node.
> 
> [0] https://www.ti.com/lit/pdf/spruid7
> 
> Signed-off-by: Andrew Davis <afd@ti.com>
> ---
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

