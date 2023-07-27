Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D57357651F3
	for <lists+devicetree@lfdr.de>; Thu, 27 Jul 2023 13:06:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233105AbjG0LGa (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Jul 2023 07:06:30 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46420 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233081AbjG0LG3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Jul 2023 07:06:29 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70DE42D70
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 04:06:28 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id 38308e7fff4ca-2b703a0453fso11859761fa.3
        for <devicetree@vger.kernel.org>; Thu, 27 Jul 2023 04:06:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690455987; x=1691060787;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=3LfFaOViRJZf5i9Fe7Wz6nlPjGUKB5vow6kPdPAg4Rw=;
        b=yr1tbt1DtV02yHirni5M1/S9iakCfovs9IkZG7nxVY9Pw93OY39NtLM+jpSmnEdC+d
         qp5nAZfFVOF9EGMf6mJdtFYOheAK0uS1nwsk5PMwkqT0hnm2NfgvvcFRcpkk9sDUIVna
         ZgP0Xmo39yuC700mpdx+K/52i6bZ7VrF+GbTL8cOr5ThLdzBcsyt9jQ+D7zbtN4QnijO
         GghILFxezQN5k38ir7p7H2ZjCD95nW88QzUiquEuRFVokVbWGwmSD0vKJngsdPQaU9Ts
         Sl+LqLGQcun984DDb0UtfHbdWwjmOAkfUwa1QJZ5UcdxVX0nIFZ56Q5iDSAPAGJZ900m
         Y8cw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690455987; x=1691060787;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=3LfFaOViRJZf5i9Fe7Wz6nlPjGUKB5vow6kPdPAg4Rw=;
        b=G2JSdVCzj4+/QxjfZq+hdnd5lMgxeQ9bbobH1+0UJ1U3xsNyZ4LALoeREgE+3ZwoU3
         3c9WaBrgXlMUYRmR79+HMNmJdcQcyectejPKlvSNMJSxJOv3WE6LYJFmrq3XIzOL2Kpa
         XldxxqFHvvbn8Aa1MLTacpjLCKz23OvWGcO0MJTlM5CJxRn0mJo5y4UhtnICUXMkqqJU
         GMC/37Jl2rxQgn0Qen+YUKjUlNa1SgH6VX6G0n/keS/JYnB5qQ8dWkpe46oenS6mJPMj
         x4ELC1R3JfN89OVAF4t4X6n31HAdVqEPP1mT9d4TGolw2Ha3jpMeoqz+YWLuaH6A/1/C
         5aCA==
X-Gm-Message-State: ABy/qLab5gOVTcWhUolNztRH9wkSKe331dgpzV8qWNsdtNYrn47WsDQG
        GL/dcPFXR4EfWaxm6CIYxQ0VlA==
X-Google-Smtp-Source: APBJJlFPa+iDpxbrjMRS1Crl1NTcm65sKv1NyPum6YVJ1Z4iZEGp94hE+oOm99f8SXam4eCZv910cQ==
X-Received: by 2002:a2e:b24d:0:b0:2b6:e0b5:b76d with SMTP id n13-20020a2eb24d000000b002b6e0b5b76dmr1470287ljm.45.1690455986693;
        Thu, 27 Jul 2023 04:06:26 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id o20-20020a05600c511400b003f7f475c3bcsm15620423wms.1.2023.07.27.04.06.25
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Jul 2023 04:06:26 -0700 (PDT)
Message-ID: <7180da84-7c20-0b60-d400-93a08d5e8703@linaro.org>
Date:   Thu, 27 Jul 2023 13:06:24 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/2] dt-bindings:iio:frequency:admv1013: add vcc regs
Content-Language: en-US
To:     Antoniu Miclaus <antoniu.miclaus@analog.com>, jic23@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-iio@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20230727110121.93546-1-antoniu.miclaus@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230727110121.93546-1-antoniu.miclaus@analog.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 27/07/2023 13:01, Antoniu Miclaus wrote:
> Add bindings for the VCC regulators of the ADMV1013 microware
> upconverter.
> 
> Signed-off-by: Antoniu Miclaus <antoniu.miclaus@analog.com>
> ---
> changes in v2:
>  - make the vcc regulators as required.

No improvements in the subject... Please wait some time before sending
new versions.

Best regards,
Krzysztof

