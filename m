Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B0DC16BB803
	for <lists+devicetree@lfdr.de>; Wed, 15 Mar 2023 16:36:56 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232405AbjCOPgy (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 15 Mar 2023 11:36:54 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232034AbjCOPgw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 15 Mar 2023 11:36:52 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 99F635AB46
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 08:36:26 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id y4so47712390edo.2
        for <devicetree@vger.kernel.org>; Wed, 15 Mar 2023 08:36:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1678894584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=f/PfFdLqQlHO8Vn7coAAbRy5YAeqgKAjwX0Cp4mK8Xw=;
        b=wZtr5rdrEmy3kiuMjnNYR1OJ2Zm9F8DBZgGEHbWb9+EL2QBHtrgIPi+wAFOddrXiyR
         coYYZn8BWYK7hwQseGLT4r6mZUtfj1p/ikXppe3VsnUD3Rq/VOLShpBr3bDPuYQiq7/6
         VfTmvJ3tvuEdVS+LkvCIMLU42HqMxziYiVifaWLkMjL6VK9D0EO1LSKpKlPo1BE9Ig7j
         32f9p6Rz1erDH98y1eNOCJ5NYgoVzmEgubqCKRGM6gkCFar7O8lj/2g8rUBWfrN3J/w0
         5Y3ScGoewHvO0k8HzDZ3SdbClOZn07aNG4gTGXrSvEevp5XxWacfsjcSfpLoM5fUyY9h
         Lfog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1678894584;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=f/PfFdLqQlHO8Vn7coAAbRy5YAeqgKAjwX0Cp4mK8Xw=;
        b=uda1K/aOWFe1zIwqsHqo9diqPx5n8d5/mjYnuZ0gmDX1BjEiuMak5E/IVHT6e1ssRT
         oF3rbbDdeMMgvsBtzp9w1yXjER+YQPEhje/FOvhpGbuv9RihZ0GmOAU2v6l2FoSpheKP
         4wRfT4h+HieAfRqhj7tEodS5jC8YGoYh/UnKN9qT7eVzXTWPVdK410oFgopzrz4HMWgh
         LUsJoPqCxxhNI2jx5Olcia1iZXvJI4u8DRf4jsIAgXom0wtUPR+uoJ4tjua5r/9FSjaK
         bsnRhJbUsD3Ph51SsvxyfxaxoGVV9d1dqeJSKGOI7oZMDLMpeoJ/sHlMs15he+42s7d0
         heWg==
X-Gm-Message-State: AO0yUKX6RI5K5aw0Je2xjvusHBdW+JVdbfVm/hHpehRQ3PStKYEsnEZM
        iQyj1n/eeT+AbRxeZiBVqm5phA==
X-Google-Smtp-Source: AK7set8C5AGtQW3m6m+Ulvn+BoDnHFH/Tu0MDOm9ye4cpkeJ70y4GCB+IY2S3kcCdpAzpGHfCH4V+g==
X-Received: by 2002:a05:6402:389:b0:4fc:61a5:b9c8 with SMTP id o9-20020a056402038900b004fc61a5b9c8mr3104557edv.11.1678894584016;
        Wed, 15 Mar 2023 08:36:24 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:940e:8615:37dc:c2bd? ([2a02:810d:15c0:828:940e:8615:37dc:c2bd])
        by smtp.gmail.com with ESMTPSA id v3-20020a50d083000000b004c3e3a6136dsm2619502edd.21.2023.03.15.08.36.23
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 15 Mar 2023 08:36:23 -0700 (PDT)
Message-ID: <01ee4307-cc8d-f327-85f4-585d4ffe4339@linaro.org>
Date:   Wed, 15 Mar 2023 16:36:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [RFC PATCH v2] ASoC: dt-bindings: adi,adau17x1: Convert to DT
 schema
Content-Language: en-US
To:     Vijaya Anand <sunrockers8@gmail.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, alsa-devel@alsa-project.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
Cc:     Daniel Baluta <daniel.baluta@nxp.com>
References: <20230315000914.99083-1-sunrockers8@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230315000914.99083-1-sunrockers8@gmail.com>
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

On 15/03/2023 01:09, Vijaya Anand wrote:
> Convert the binding document for adi,adau17x1 from txt to yaml
> so one could validate dt-entries correctly and any future additions
> can go into yaml format. Add address and size cells to example to
> prevent errors regarding reg format.

Why this is still RFC? RFC means it is not ready for applying, not full
review, just some glance and comments. Some maintainers will not apply
RFC patches at all. What do you question here?

> 
> Signed-off-by: Vijaya Anand <sunrockers8@gmail.com>
> Cc: Daniel Baluta <daniel.baluta@nxp.com>
> ---
> Changes since v1:
> - added 'Codec' in title to clarify type of devices
> - put compatible devices in lexographic order
> - changed description of clocks
> - changed 'unevaluatedProperties' to 'additionalProperties'
> - changed node names to be generic

Best regards,
Krzysztof

