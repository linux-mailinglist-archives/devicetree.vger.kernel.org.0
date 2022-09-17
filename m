Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5FCA75BB97A
	for <lists+devicetree@lfdr.de>; Sat, 17 Sep 2022 18:42:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229655AbiIQQmN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 17 Sep 2022 12:42:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41974 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229685AbiIQQmM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 17 Sep 2022 12:42:12 -0400
Received: from mail-lf1-x12e.google.com (mail-lf1-x12e.google.com [IPv6:2a00:1450:4864:20::12e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6A7DA2CDF7
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 09:42:11 -0700 (PDT)
Received: by mail-lf1-x12e.google.com with SMTP id f9so39586074lfr.3
        for <devicetree@vger.kernel.org>; Sat, 17 Sep 2022 09:42:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=oTecJiLB56B6E9ueALCW3lfKOsCEvfZ+jsa5kvZovMM=;
        b=OfumhtGlzFA4y8Q9G67Hfdcte5V7N5pc6g8ryVjpiAk8VSrJRWZotC3hAEaCRXR2/g
         umfsS5lgLFkBsUZG4lH+X+kwcKhDQCUmFv8DFIOcQD2lTB/2yU5PxNN7M8gqpRMkJJfQ
         vEiqBynWuAbVCAYtGbcV4i10TqQ/mHY+/gWDMshTjnER6b1YG2Jf8yOBpSi2Tg0Qy4Iq
         apV5DEcPU2C8zQclLQbqUZpZkLI4ZcgBRCWvvCr/nKh2KWJpeP91p/c8hj3PGOi2Qw4p
         KdIXL5XLvbVaPsnsg4DcfGvcuhwNPPCufjjbTE2zcowQ8MwECswf0tLMl5RqJMZOc402
         ZjIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=oTecJiLB56B6E9ueALCW3lfKOsCEvfZ+jsa5kvZovMM=;
        b=sRXjVNyQ4znjOT60NmvkJP9To6MBBcd/uCIqYX8pxLrFisYQOdWkzr2Pl/fkdyD7SD
         TUt34pgRy9wZPQdBmy7BllEgygfpfK7ViF23Y8yLojbgZDvJIPNEa8wRZfwZJy6Mj4ja
         YZ+a0S6Iw2Ej999Xcyjduv0lhS7YOR64TuLmYJPnm0Q01JCUaVaD9CyPusNgnx0WcpNX
         nNJMaQzEigsWnvKtgtyKbDIEJUxb68H8d3cZvXOu4UpyOhx1CvKq4/7qGaearexHRqju
         qo5sNvbFurUBjI7CmWgvXAFaIs0AVN0DnaLCVOnaidU4DtZZmCUVYi1KCPpA8ws5RXh9
         UnrA==
X-Gm-Message-State: ACrzQf33tn6VDdUhapcS0J+uae0ASlh7EtQnzY5ISS6prhLHdry05Elg
        TrH6F4EtL99ens2wOpiy7UIM+wdZaBiCyTVA
X-Google-Smtp-Source: AMsMyM6T5ywBAi9Qf0Y6xvBC/bUxH0JRti0oRAQ5O9WWhvRnnNyxBqzCKyUIyW5AuTia7pJhgCerWg==
X-Received: by 2002:a05:6512:3b1e:b0:49b:49d9:cb9e with SMTP id f30-20020a0565123b1e00b0049b49d9cb9emr3193543lfv.201.1663432929785;
        Sat, 17 Sep 2022 09:42:09 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id b22-20020a056512071600b0049f87fb416dsm31955lfs.12.2022.09.17.09.42.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 17 Sep 2022 09:42:09 -0700 (PDT)
Message-ID: <19f7cad7-1a18-0f0d-3f2b-e29f88600b0f@linaro.org>
Date:   Sat, 17 Sep 2022 17:42:08 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 1/2] dt-bindings: rockchip: k3566-quartz64-a: fix names
 entries, refactor
Content-Language: en-US
To:     Alessandro Carminati <alessandro.carminati@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Heiko Stuebner <heiko@sntech.de>, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <YyRxp7pDCyikNLGc@lab.hqhome163.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 16/09/2022 13:52, Alessandro Carminati wrote:
> Fix esisting "No underscores in node names" general rule, and prepare for

typo - existing

> new board versions.
> 
> Signed-off-by: Alessandro Carminati <alessandro.carminati@gmail.com>

Use subject prefixes matching the subsystem (git log --oneline -- ...).

Best regards,
Krzysztof
