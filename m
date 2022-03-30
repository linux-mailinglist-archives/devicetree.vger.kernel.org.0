Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id CA20C4EBBF8
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 09:43:05 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234211AbiC3Hon (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 03:44:43 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42812 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243402AbiC3Hnw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 03:43:52 -0400
Received: from mail-ej1-x62b.google.com (mail-ej1-x62b.google.com [IPv6:2a00:1450:4864:20::62b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 8BB81527DD
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:42:06 -0700 (PDT)
Received: by mail-ej1-x62b.google.com with SMTP id dr20so39698722ejc.6
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 00:42:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=CAYinFU48pRYzH9ypQ83dA4qoMQIqXMxR9XiHLU1ytE=;
        b=Yxl53MkHQTDvxeth2Pj3so7IZxw6NfvkbzQAs7uD6BuTynOacGF86d/KwlId5wkDuw
         oaAI4wUkjpUO+oxJwbwIMGzndDe3Asrhrn7iWpT5Kmpd8YwJqKANq38tv5rGKoyk8dW+
         aywHgBQza72kAMy32n9tPiwLAPly3/zevxSEVnlrVUOHlfueKR6rNikwh39XXP5qiD6r
         sbRN3fG9sOAwq5zxv3S7aLEU5/KlQQO0PzGxxJ1tDOC3mg8P5xlB5sLfbP0p6OI25Qeg
         wdW36drIC+2c6ew2c9ElOaaRHo3Q0tZCit52qlhF75ijQsA1i51Sv/H2E9exJzd0xwG1
         BXtQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=CAYinFU48pRYzH9ypQ83dA4qoMQIqXMxR9XiHLU1ytE=;
        b=ZIwRYIW41ZxIB5f2jGek1Hr3QMc3Lxtdrby+b/wesHIQu2IG4+9H09YX/usCaq0dJd
         Rp+trAV1wMnsMMa/DUSYnwbBw36RIw3cvJ6QL3+Ld7Sbo5KzWOha2onFCQp/hiwDIjUb
         B0qXRziDSoPGFJ3bzyb7OjTqqT/u41OheJRpXeQkH9dIsg+FWx6VrF6BagJsqK0CVL25
         MRvKp3VUB1hRE2LuLI7jBNJDmW8MGY6AmQvMNt+35wAw49Dp0Xuz7BpSNIPVrtqlgrtr
         0256gr/ln72Lg2oekNpPKnfttbwHUgeS85Oa8nlQlPlT9mF4aqcK3IKVYDDd4KwKSRb2
         TtLA==
X-Gm-Message-State: AOAM533dJ0RPAYMk+LvwVtndybGNtEoeumb0ALoHy/EN75lVosndPcJD
        CK7tkEiBe8rH5KH+NZpBpXvAyA==
X-Google-Smtp-Source: ABdhPJyOPRhQxvUhK4fvpnSNakz63gvVXneotEDoygnpiKAsbjmeSUZhHtrQTYAFMBHAv1KsiA9lGQ==
X-Received: by 2002:a17:906:53c3:b0:6cf:742d:84de with SMTP id p3-20020a17090653c300b006cf742d84demr37677933ejo.576.1648626124935;
        Wed, 30 Mar 2022 00:42:04 -0700 (PDT)
Received: from [192.168.0.162] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id w14-20020a170906d20e00b006cee22553f7sm8002911ejz.213.2022.03.30.00.42.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 00:42:04 -0700 (PDT)
Message-ID: <a79e9ec2-d522-cd08-3947-60a29a702547@linaro.org>
Date:   Wed, 30 Mar 2022 09:42:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v3 1/2] dt-bindings: Convert Dongwoon dw9807-vcm bindings
 to json-schema
Content-Language: en-US
To:     Sakari Ailus <sakari.ailus@linux.intel.com>,
        linux-media@vger.kernel.org
Cc:     devicetree@vger.kernel.org, robh@kernel.org
References: <20220330073341.588550-1-sakari.ailus@linux.intel.com>
 <20220330073341.588550-2-sakari.ailus@linux.intel.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330073341.588550-2-sakari.ailus@linux.intel.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 09:33, Sakari Ailus wrote:
> Convert the old text based dw9807-vcm chip DT bindings to json-schema.
> 
> Signed-off-by: Sakari Ailus <sakari.ailus@linux.intel.com>
> ---
>  .../media/i2c/dongwoon,dw9807-vcm.txt         |  9 ----
>  .../media/i2c/dongwoon,dw9807-vcm.yaml        | 41 +++++++++++++++++++
>  2 files changed, 41 insertions(+), 9 deletions(-)
>  delete mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9807-vcm.txt
>  create mode 100644 Documentation/devicetree/bindings/media/i2c/dongwoon,dw9807-vcm.yaml
> 


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
