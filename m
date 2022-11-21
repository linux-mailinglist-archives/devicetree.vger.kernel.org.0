Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B8727631DB3
	for <lists+devicetree@lfdr.de>; Mon, 21 Nov 2022 11:07:24 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231266AbiKUKHW (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 21 Nov 2022 05:07:22 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44802 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231368AbiKUKHD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 21 Nov 2022 05:07:03 -0500
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 155CF9E096
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:06:56 -0800 (PST)
Received: by mail-lj1-x233.google.com with SMTP id b9so13945405ljr.5
        for <devicetree@vger.kernel.org>; Mon, 21 Nov 2022 02:06:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=MD0eFnpKJSt9a7kOZXqLmHR3GAtqPJd5OPMTOmPwA30=;
        b=vVoPPdxOFaAVpdRcbXYrk8rOd8x25QQwVV1h134MCb3yS1sJz0i0j68YpDZ2gOkJTQ
         pFvVUO0/uPxV649hWr9ifqSk+PBMygXL3vGHSBvaA00qOGlfd3UhDBm2oVMchcFwgZS2
         kh/O2WXzSie5SsPXd5syvldRJmlq2XSRJuhv8UPfHKKhyXjZ4zbc33B821YNb/U7fe1l
         JDo5w7eJ/1J/P8AbAF72NZFL1AClFTyuHJn5p9ZjWUmQpXuAIJmLiNz2anp3bOdT/l4y
         NKifxgTMQwjnXQSHaMJyL/zvKGDr3S7VKOGr7XxLyH69SBFPDRtCdlqQzMVI/PK7VxkN
         5QAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=MD0eFnpKJSt9a7kOZXqLmHR3GAtqPJd5OPMTOmPwA30=;
        b=I2SLb7Qd5ljKfbpbsxjaZBh2uH+YgGuuSV8tGbE0d4u6snilphtuE9CR+Sn9BFp/Ss
         grZLKJK3uQJHKo5uz+nJNPe67z1lvzSMY36GNGzYrG3eG9As7J8dmuOLSFWCbtIXuxcM
         eVkF2LvvmO+XKGceOLborgohbvymAlAV+b6uJKKs9wFe9Ga1nf0jYb8UVIq2A5sofBul
         dfoPQecJN/DD8sh3+SNfRaSSzCIgvFoB8j0EThVu0XFfmUsle4BkPMSqqtitgBgNwJbF
         ihGQxw6GMawJ3w7aVT95uF7ILb9btwxCP35vGQJ5M4ytD1heLR5xSR7ghk5dEay9FdZ1
         TYTA==
X-Gm-Message-State: ANoB5pm4I9sOZAoqT1azP7Fg63tiN8uESLqS/RHA8eGRH+rCTn5ZkncJ
        mzp2z3QWz7AmumMIAUoN3WFK6g==
X-Google-Smtp-Source: AA0mqf6sGd47yvKd+S/EeIhvTzzhdfEJwaWT6j8/BH9tvSSc9JQ5YGQ58u86ZR+VQv3r1DQtDDOUOA==
X-Received: by 2002:a2e:b891:0:b0:277:8df:88a7 with SMTP id r17-20020a2eb891000000b0027708df88a7mr5887159ljp.139.1669025214393;
        Mon, 21 Nov 2022 02:06:54 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id s10-20020a05651c048a00b002770e6c620bsm1363368ljc.106.2022.11.21.02.06.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 21 Nov 2022 02:06:54 -0800 (PST)
Message-ID: <daefd388-1bb8-448c-f18e-cf253737b3ea@linaro.org>
Date:   Mon, 21 Nov 2022 11:06:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 3/3] dt-bindings: interrupt-controller: sifive,plic: add
 OpenC906 compatible
Content-Language: en-US
To:     Icenowy Zheng <uwu@icenowy.me>, Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Jisheng Zhang <jszhang@kernel.org>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-riscv@lists.infradead.org
References: <20221121041757.418645-1-uwu@icenowy.me>
 <20221121041757.418645-4-uwu@icenowy.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221121041757.418645-4-uwu@icenowy.me>
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

On 21/11/2022 05:17, Icenowy Zheng wrote:
> T-Head OpenC906 is a open-source-licensed fixed-configuration of C906,
> which is now public and able to be integrated.
> 
> Add a compatible for the PLIC shipped as part of OpenC906, which should
> just be ordinary C9xx PLIC.
> 
> Signed-off-by: Icenowy Zheng <uwu@icenowy.me>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

