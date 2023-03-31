Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 912366D1ACE
	for <lists+devicetree@lfdr.de>; Fri, 31 Mar 2023 10:51:15 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231634AbjCaIvN (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 31 Mar 2023 04:51:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56902 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231661AbjCaIvE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 31 Mar 2023 04:51:04 -0400
Received: from mail-lf1-x130.google.com (mail-lf1-x130.google.com [IPv6:2a00:1450:4864:20::130])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9658D1D879
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:50:48 -0700 (PDT)
Received: by mail-lf1-x130.google.com with SMTP id x17so27996621lfu.5
        for <devicetree@vger.kernel.org>; Fri, 31 Mar 2023 01:50:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680252647;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Fdp8vdGW+YLTG1BB3JW7Fr8RajkHODRqHKvUiYYfQUQ=;
        b=We753QmPXYE3q0LjNpkAdBaBVojKlF1ElQi/OkqGnh6F2L+avM/A72EzOkW8BMuX+3
         R1H04uXJsdlz7jr3JiKjs+mAZPwlXXBcUOKtVXuoYy15LmMrmMPzHhy/peO59j5VzORb
         SRp2L8oItUiYPsj3rHOu7inYRmGsYOxhQLAJvAMJzVlkFyzn4CongHxA76KgCSoxX6J2
         ISQaS8jHDNYEurFladp43q/r3hs3aYlCmDiCBYbqeGwM7xJGSil0ppuMvIP6bTuIrszx
         cEk5MtRP0bzvHA+C39nltJfEJwhlAG+n3oOX7EYEff3qnOYOmxOXgDu9ZTQr38FEVK2t
         2sZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680252647;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Fdp8vdGW+YLTG1BB3JW7Fr8RajkHODRqHKvUiYYfQUQ=;
        b=QFvqEgpcTra8eecXn1Iz/BvGdj9g1X1HSY+Jc3ld/+OfRh2ITsWkqXA1jtl2Ie+Q3h
         025uEveiK+BvxL+oBUgCZbF5VfudDQ6c/Ge1bRX0CTT3/BzlhSNW++SitPZUVXgjfd93
         ELLEE5Pgbj6ooWDvvi9yJR0OP0fwNyWU1F77lQ83RUCsGMqWpvF0nlZlLeqNLk7NsbZv
         7voSg84d3i+v5JyDqo+WmQ+C+6UG8Ey6gG6idnxo0SgvEetI1n2ZgHnwjpt/oKqd86K2
         sfUk1pG1hDj/Jo8H7kfTjLhG7iv/fTelJTBcG8jgQTIdT0fQS2ozRGVG44glz/DJEBlc
         YRPA==
X-Gm-Message-State: AAQBX9catxM2vOxXF0vWf7iqznLjg7vnGZRteUQEt02VMNcyFfKaY0vg
        BYDi1Qvhh8STXHeuhPr459GtnA==
X-Google-Smtp-Source: AKy350bDYXT2GC7+PqbQLv5V6PQTZCxRn9SZBcOrgl2QdPWUKJa+3waLxJKJA5G6HKBEgSHL0aBpzQ==
X-Received: by 2002:ac2:5159:0:b0:4e0:ee54:fa23 with SMTP id q25-20020ac25159000000b004e0ee54fa23mr7797113lfd.8.1680252646848;
        Fri, 31 Mar 2023 01:50:46 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id u5-20020ac243c5000000b004cc82b70809sm290259lfl.150.2023.03.31.01.50.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 31 Mar 2023 01:50:46 -0700 (PDT)
Message-ID: <1716b085-7471-16c3-7753-992db83348f1@linaro.org>
Date:   Fri, 31 Mar 2023 10:50:45 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 1/2] dt-bindings: display: bridge: ldb: Add i.MX6SX
 support
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     marex@denx.de, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dri-devel@lists.freedesktop.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230330104233.785097-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230330104233.785097-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2023 12:42, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> i.MX6SX has a single LVDS port and share a similar LDB_CTRL register
> layout with i.MX8MP and i.MX93.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>
> ---
> Changes since v1:
> - Do not duplicate the entire if. (Krzysztof)

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

