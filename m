Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9AA4877125B
	for <lists+devicetree@lfdr.de>; Sat,  5 Aug 2023 23:28:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229627AbjHEV2P (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 5 Aug 2023 17:28:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229609AbjHEV2O (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 5 Aug 2023 17:28:14 -0400
Received: from mail-ej1-x62f.google.com (mail-ej1-x62f.google.com [IPv6:2a00:1450:4864:20::62f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 67C721735
        for <devicetree@vger.kernel.org>; Sat,  5 Aug 2023 14:28:13 -0700 (PDT)
Received: by mail-ej1-x62f.google.com with SMTP id a640c23a62f3a-997c4107d62so447693866b.0
        for <devicetree@vger.kernel.org>; Sat, 05 Aug 2023 14:28:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1691270892; x=1691875692;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=YtvPFDgNfswzHbL9qZOfB9rynxww/q/6ud2abj7JbK8=;
        b=VBr1Tb2Yiq8ob/mIUdpgau2IXz/a4XSV3JZYXD2ka5lshkTHgYMMnfeu+Wi+wYptdY
         XxHAlNQKRzztww2vdyP1MzdGv91rkagFUdEpuPcFWhjk4vp4SP104X8I4vRrHXbyhzb4
         LAtnnnh1cXMn6XyTHzYk6GCyH+/PMcJKYaDRf+STugC++6g3IjQ7jAs8v8dfO7ETlx2W
         Uqpk94z7925PbcEvvObZjWSehVJoohlwhbvGmv3bowNIrJId0epMQWA1+uYxis68ZMiC
         51IeXwxTZXS6XgpSpzOKP8IdJ/uuA52RHgeJ9lcUHNCxcCXf07AWQMBx4EENjZSUOj3O
         sBiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1691270892; x=1691875692;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=YtvPFDgNfswzHbL9qZOfB9rynxww/q/6ud2abj7JbK8=;
        b=A2sZGUFNgnh378eaZEnzr8OuxXHqzXrQsDxnITRW+SN3xrGY+uMvKWASG9pYfvNQU7
         OP7/MHHnjAwYgCRYDmEN1QgNA555REypMJl8uJbVix1j4fQV94ntZ7z1WxpJm9omtur/
         kRBYT6nEUGKHPaZSqO5F5HE2XA45Kqi1K2+GaZVM+er/z417o5GNJLxz0ZAMqRz9GiMx
         LOiWcxJtq0Q1nr0sJYSNMvlneNDPGDxyC0hOn62m0cn/n79E9O3p2dzPRQ4r9bBIyj/B
         b24nRJPiO8DBanUygJOBXFISDFcfv2hz5+3JFjTVGyLsNan8Pdcwcj/BZW+zwyCCfgk2
         bSWQ==
X-Gm-Message-State: AOJu0YxWJCNyWjG5j02sxW9Bn0oaGx997UtTeR8d1Ma4XQREZTGyqSJe
        8YTdnrnqJkiVb//k/kLcyx31aQ==
X-Google-Smtp-Source: AGHT+IHa0zbQ+TdzVyNT6lxjGsGVE+BO2rJENfvHS6LbnRHDe5htn1ss+4jVmDEzb3LDRH9bKxiPZg==
X-Received: by 2002:a17:907:75f8:b0:98e:2b00:c509 with SMTP id jz24-20020a17090775f800b0098e2b00c509mr3926313ejc.30.1691270891919;
        Sat, 05 Aug 2023 14:28:11 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.222.245])
        by smtp.gmail.com with ESMTPSA id f8-20020a170906560800b00992b7ff3993sm3082361ejq.126.2023.08.05.14.28.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 05 Aug 2023 14:28:11 -0700 (PDT)
Message-ID: <b1972443-926c-bc80-e665-df3827aa1115@linaro.org>
Date:   Sat, 5 Aug 2023 23:28:09 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH v6 1/2] regulator: dt-bindings: rtq2208: Add Richtek
 RTQ2208 SubPMIC
Content-Language: en-US
To:     Alina Yu <alina_yu@richtek.com>, lgirdwood@gmail.com,
        broonie@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, conor+dt@kernel.org
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <1691034645-11595-1-git-send-email-alina_yu@richtek.com>
 <1691034645-11595-2-git-send-email-alina_yu@richtek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <1691034645-11595-2-git-send-email-alina_yu@richtek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/08/2023 05:50, Alina Yu wrote:
> Add bindings for Richtek RTQ2208 IC controlled SubPMIC
> 
> Signed-off-by: Alina Yu <alina_yu@richtek.com>
> ---
> v6
> - Add "additionalProperties: false" to regulator node

With or without ChiYuan Huang comment on regulators subnode:

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

