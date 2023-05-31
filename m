Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3EF62718AFD
	for <lists+devicetree@lfdr.de>; Wed, 31 May 2023 22:21:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229830AbjEaUVP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 31 May 2023 16:21:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49668 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229785AbjEaUVO (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 31 May 2023 16:21:14 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1DFDD13D
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:21:08 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-97392066d04so938798866b.3
        for <devicetree@vger.kernel.org>; Wed, 31 May 2023 13:21:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1685564466; x=1688156466;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NxPEf63AFg+DV+ZToXhnUfaFQleSYdZ0i/Sjcxk5aaQ=;
        b=tQkbqnGDTID6cfrY3OHkj5a7efjjb5KZynubNKbMdCmfAbfl7Gy/D4eJHNnpq8yFgf
         8IJAfQu550uDvcer6tKVtRdR0BMpVvoiQLQmxT5pj6EzU/s7YxXlD6DGEQ+xtha++ILD
         IBTSq1U3e5OVEngvuNqiLXrfBjUZ1X8/ubySNzuXWPCUVUzLoT4HY4qab1+myc4xAr0I
         UnuidtV+IEffsXZavfUVOLDf6yQp8hsLbVDKxamMzJgzpUp+gLYEjXqXExJwKgnyISgK
         qP7cQagLvHTgeYpF5gGiI9ZiMHB8YjeyrNIUgdpEtK2Na2J5LDyQc+Bt2CsAXT94zc+Z
         /JFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1685564466; x=1688156466;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NxPEf63AFg+DV+ZToXhnUfaFQleSYdZ0i/Sjcxk5aaQ=;
        b=bd728xLgrnqfSa6orIY4xW0ZbCeUsPdfqVsgLwWv/Yd/Ht7gfXiSsdjUHnilLoTCNf
         zWFlQ6gNbKR50Tp8m61qiTifhaf/ty5kdAO3iFwyAsRj3fVhwpL6Qlf0ie/WCPtmkQ39
         LDzwtB4iIBM8wvjJ7oFd/vRu2dgHpoxGgTRm9AI6Rprk4C2r6yv9lvyes/6WtlKDxS3t
         G4/JSFkd8niBL8mUPNvaYM11WRBAW7uByE5Ndw6f23Ik/IleCXD/w/wqtGRyUnMBLXhR
         3mX+28+2ShiMGIGFvGHCHlJt0mFUo0Aov7TrwQ6EtMtuO4LGBaqMwXbZ1NPEUgWc6wUz
         4GLw==
X-Gm-Message-State: AC+VfDype5RMp2YsfPu3ZAUSp8qzm+p4RUhdG+RXyh1QXTVDEmwxVry5
        P/n3F1YbYVMhXBhk+8wsmkmGrA==
X-Google-Smtp-Source: ACHHUZ4LRIiFiQB5xTphzpjry4kPpP0lkH337e52S1OJ1ep8S/bimhIqQebqnT1AYb4nkyk+VpDYgQ==
X-Received: by 2002:a17:907:9495:b0:967:a127:7e79 with SMTP id dm21-20020a170907949500b00967a1277e79mr5683305ejc.28.1685564466653;
        Wed, 31 May 2023 13:21:06 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.199.204])
        by smtp.gmail.com with ESMTPSA id pg27-20020a170907205b00b009662d0e637esm9345274ejb.155.2023.05.31.13.21.04
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 31 May 2023 13:21:06 -0700 (PDT)
Message-ID: <f4bb0547-9625-f058-1a9f-7239023a28ce@linaro.org>
Date:   Wed, 31 May 2023 22:21:03 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.0
Subject: Re: [PATCH V2 3/5] dt-bindings: vendor-prefixes: add Indiedroid
Content-Language: en-US
To:     Chris Morgan <macroalpha82@gmail.com>,
        linux-rockchip@lists.infradead.org
Cc:     devicetree@vger.kernel.org, lucas.tanure@collabora.com,
        kever.yang@rock-chips.com, yifeng.zhao@rock-chips.com,
        sebastian.reichel@collabora.com, andyshrk@163.com,
        jagan@amarulasolutions.com, heiko@sntech.de, conor+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        broonie@kernel.org, Chris Morgan <macromorgan@hotmail.com>
References: <20230531161220.280744-1-macroalpha82@gmail.com>
 <20230531161220.280744-4-macroalpha82@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230531161220.280744-4-macroalpha82@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/05/2023 18:12, Chris Morgan wrote:
> From: Chris Morgan <macromorgan@hotmail.com>
> 
> Indiedroid is a sub-brand of Ameridroid for their line of single board
> computers.
> https://indiedroid.us/
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

