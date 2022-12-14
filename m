Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EC61E64C8B8
	for <lists+devicetree@lfdr.de>; Wed, 14 Dec 2022 13:09:30 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238370AbiLNMJ3 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 14 Dec 2022 07:09:29 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44220 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238392AbiLNMJH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 14 Dec 2022 07:09:07 -0500
Received: from mail-lf1-x12c.google.com (mail-lf1-x12c.google.com [IPv6:2a00:1450:4864:20::12c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8B7C727906
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:06:29 -0800 (PST)
Received: by mail-lf1-x12c.google.com with SMTP id x28so10068567lfn.6
        for <devicetree@vger.kernel.org>; Wed, 14 Dec 2022 04:06:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=IdC3x/QLS17x41/z14X1um97qB/hIdUoxG1vgHmdiy8=;
        b=KHtIdAx3+B4enzdar5tGMyffYljD31CTzlu/yuAOZ/2SPIuXAQwnoI+bBm4PQsBJ8/
         V+NcRdiCPAvqyKa8xnJLHABJWcal7NeRjupsZ28yHT2K4h9TzfWnAuZFudjkXIGIMqJ2
         Qa3kOv9iYPgaPhgXqeXXS3ohOFufjqWoHDqaWr4elLa/Yv8T9xzC+Jxs3jApRmhLJgu7
         fWY6QlkPIWUqQE77jX4aYeugJibswTAmKKNuhbY3xgRzfJDK4Y7lDW9Fh1ENlXyas9Ha
         JuReG0LOdkZjLtxUlj7HdPQP/67EIhOCWk8YG68MfG61cn9qyAtdy4rvis4YmTXnt80c
         3hUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=IdC3x/QLS17x41/z14X1um97qB/hIdUoxG1vgHmdiy8=;
        b=0eNXQ0GUYPidvPWCziE32UquVCuOR1x6sjn0iFUCbk0CwEX2uPLwcrMeu3qypYNqzf
         mhGxe1kIpQLh40FvhwC543qaoe7tNVGkuooO3ef2VD6k6vyZ/AV3O6uZ9dWZCKhu4trA
         PWMZdNXxik0H5kBe4QMXFzOm449CgvfUAv51Z7yf1jt5NqbwKv2vhTZTU88/HIKYe7J6
         HWPeLxU0UCtoLJpkY8SUQ3YC4TDHes3XOAkzVPGIXAfhF6meNVUfzxUO1yCdd405qALU
         fJYfLGB59VLD0HuhovT87HCilBoaTQ+T+5xD8Nb44zMe3KuIYQohn++TWMDdM3L+j3IH
         XreQ==
X-Gm-Message-State: ANoB5plKQNBTnrsJU98kc2V0AuHHXe+8J+rYG7d6sRu8DoWCsBwLMzbL
        HbiGe1QolzelugrJfG8TASaIhA==
X-Google-Smtp-Source: AA0mqf5FTC+QzK/83D7JDKvOVaSj3TmUkiERLjPop2eEf0ZxLTaUTvIilaFZ+MW5LeJz/bTha2lgQQ==
X-Received: by 2002:a05:6512:750:b0:4a4:68b7:d649 with SMTP id c16-20020a056512075000b004a468b7d649mr5619937lfs.48.1671019587948;
        Wed, 14 Dec 2022 04:06:27 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id f10-20020ac25cca000000b004b567e1f8e5sm786990lfq.125.2022.12.14.04.06.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 14 Dec 2022 04:06:27 -0800 (PST)
Message-ID: <0fa05aab-9cdd-bc25-9698-1e91b634c679@linaro.org>
Date:   Wed, 14 Dec 2022 13:06:26 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v3 08/17] dt-bindings: nvmem: Fix node descriptions in
 uniphier-efuse example
Content-Language: en-US
To:     Kunihiko Hayashi <hayashi.kunihiko@socionext.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Masami Hiramatsu <mhiramat@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20221213082449.2721-1-hayashi.kunihiko@socionext.com>
 <20221213082449.2721-9-hayashi.kunihiko@socionext.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221213082449.2721-9-hayashi.kunihiko@socionext.com>
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

On 13/12/2022 09:24, Kunihiko Hayashi wrote:
> Prior to adding dt-bindings for SoC-dependent controllers, rename the
> parent node to the generic name in the example.
> 
> And drop a parent node of the nvmem as it is not directly necessary here.
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

