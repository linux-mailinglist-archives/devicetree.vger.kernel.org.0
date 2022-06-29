Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 933EC55FCAD
	for <lists+devicetree@lfdr.de>; Wed, 29 Jun 2022 11:59:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233168AbiF2J7A (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 29 Jun 2022 05:59:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:44860 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233120AbiF2J67 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 29 Jun 2022 05:58:59 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 798782D1EA
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 02:58:58 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id fd6so21423543edb.5
        for <devicetree@vger.kernel.org>; Wed, 29 Jun 2022 02:58:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=npsJfvt5JROK1DAuqp2mCbrh0qCujcSxVwng2Wc67FY=;
        b=vVLEJQNFIyUEXkRVoQGgvCjQckZ0lJT4LrCZIG8VdUqmP51bJQCPatlsSsqqG/SrOl
         allkiVGSFe78OScYKlEdUVcTVs3nyo96fqK6J3x1xEWGUlAaAf0GSn4jtXT8NOV6cgjO
         U+HoKSVFvHO+8FQ0jybWQgHYTXjiBFs0w3ppgFkSxhdLYuQnp2U8BMLu6POaXwh4yZ/5
         wS+kKVrZIO9wr6BquF4tvYVp37Z7lpAhjBXEgE8BQJxHm6ChFbUVvSvIWsRagd4ffyX5
         r5pngbPdvcfp4oGTPMvM4/DgIIuRQDTjlgETGuP52Mij3V+BOR/7cc1C8LIJSlBAkg5Z
         A+NA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=npsJfvt5JROK1DAuqp2mCbrh0qCujcSxVwng2Wc67FY=;
        b=7D+oXFcmpwIBYh42hG7G190glNOfRilfgL6bUjSkjR1gM8WyjOHyQy2PHr83nKZouO
         fILt36SHuJlzdayl4dg4Gq8FlGFWwCpRorG3M3Lzd7bVl3aHySUGBdZYQNgas3+cTUbr
         8qa/UED8gTC/HeYuO2hkfYQUHbRBfaqyz0x0xKlxQxObJb8oouIYM3Jv5ySFUDazv9KT
         GV7x0JfIyERbBhZNQhHG6eAEtCzQj5ioEmEKN1Tm1wNELQI/6ZBMEskp9rcIwbTh/OWe
         D5ZWi7DYGzeausqOKYJ8IrLYy5ZJY1Pnf4PZKrGRlmxhWvM4nvCtPdI7Pt7FkZiqyasw
         fVUA==
X-Gm-Message-State: AJIora/HUn6qjummWIgtOqFEd4DHH6JhsD12Ga5FZWLWOWmhtsJJTvKs
        0O+IWanb7iVh7Yb+KZnTXx8ZzA==
X-Google-Smtp-Source: AGRyM1sP4hiqVT88GpNp65u0I4D8GTwFLS3MD+Wa83AmJUu/UWBd60fF5uPlJZ4+dJhAksRa0Ht8iw==
X-Received: by 2002:a05:6402:2929:b0:435:6dfc:c4f2 with SMTP id ee41-20020a056402292900b004356dfcc4f2mr3071060edb.284.1656496737092;
        Wed, 29 Jun 2022 02:58:57 -0700 (PDT)
Received: from [192.168.0.183] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id o12-20020a056402038c00b0043561e0c9adsm10904226edv.52.2022.06.29.02.58.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 29 Jun 2022 02:58:56 -0700 (PDT)
Message-ID: <7f377e7c-28ea-5397-a9ba-da43bf2004c9@linaro.org>
Date:   Wed, 29 Jun 2022 11:58:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH] dt-bindings: tegra-ccplex-cluster: Remove status from
 required properties
Content-Language: en-US
To:     Thierry Reding <thierry.reding@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Jon Hunter <jonathanh@nvidia.com>, Sumit Gupta <sumitg@nvidia.com>,
        devicetree@vger.kernel.org, linux-tegra@vger.kernel.org
References: <20220628123722.3678140-1-thierry.reding@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220628123722.3678140-1-thierry.reding@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 28/06/2022 14:37, Thierry Reding wrote:
> From: Thierry Reding <treding@nvidia.com>
> 
> The "status" property is implied to be "okay" if it isn't present, so do
> not mark it as required.
> 
> Signed-off-by: Thierry Reding <treding@nvidia.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
