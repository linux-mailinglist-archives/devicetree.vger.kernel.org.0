Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E6CFF5AD7AC
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 18:37:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231855AbiIEQgG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 12:36:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236379AbiIEQgD (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 12:36:03 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 80BBD2ED42
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 09:36:00 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id z25so13842900lfr.2
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 09:36:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=TPo9G+SnanyNcgpNjrB5OO4mwJTTV7C5eyU8y1QEoJg=;
        b=P6igY7tbzHdrAJ38BP6uwRFIpo2Ie5y0/NP8tv/wHqmgOM9fe6BvkaA4siuihSqdYX
         cykfgDSZlhlFY4c1wxsWuuMhY3ZwG+0slnNZL9YkixtNnomkMBuMQOUt4121SGEY55k/
         3k3+0Aqa7eEVyKHtdga0kac1LS7JGcZO7d/0QMDj6PC2CpkWPJn781A0Ik0yTMmvNoUf
         KPXxAcA/EvWfbrkpoQIp5KtTfqTEEBLxAciTMJDh4J5jYJPaFiMUcUCavNQsuqgQS61h
         7hLYTvVRahRj9iiq5tqHVqklWOiRj22jeYW3CiE8W3PSmH34uJtbjd3HGUP+NSqPVv/H
         tYSw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=TPo9G+SnanyNcgpNjrB5OO4mwJTTV7C5eyU8y1QEoJg=;
        b=fhPXY44YVNdlZWb8Axrgj2qKkQkKFxgHJqFcb9Z3GzbwCz/mVVO3gcMvgWFDrFwxp9
         Hk4+VwgHUspjQehV6F3hnBKHMRWom7AN2TFHT10QOD+l+Du2OG3Fl/jYzYsRmJC7xPz1
         ywvDj+VhRVAH/tIQSbGAOUGYLYP6N1G5oIoXe/3f0jWpIp9/nJHELApt7Qi8RRE+H7z8
         WP7OGp3+2GLItWpTYAInGzVoCd0+hLU3XFhuzkns3TaV4MLD4Y2XgHL3VoZlOHEz9aIb
         wuQE+cB5MfQ7BZ5ZiMFb+Ic2wEuaVwzNJX0L+sLTw+5EzpE5Tx3pNllMI+94PAkigSvk
         E7mw==
X-Gm-Message-State: ACgBeo0YCw7Y/4dSdltGK2y+Gb55r0dvE94OQjD3M1YEvD+Yntgdx6e2
        e41lVe+NR4GUiDK8EmZRxLZN0g==
X-Google-Smtp-Source: AA6agR4lT/iK3r8v8hV8OmgJEN7PH81JHyvfe08ukmPJhW4VIosK4fvPU1zd3mhmxQnDNum/t/CKqQ==
X-Received: by 2002:a19:4f55:0:b0:494:6f40:5694 with SMTP id a21-20020a194f55000000b004946f405694mr12350320lfk.326.1662395758899;
        Mon, 05 Sep 2022 09:35:58 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id q6-20020a056512210600b0048b0696d0b1sm1239659lfr.90.2022.09.05.09.35.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:35:58 -0700 (PDT)
Message-ID: <c0894d21-922e-9251-64af-f519d2ed970a@linaro.org>
Date:   Mon, 5 Sep 2022 18:35:57 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH 4/6] dt-bindings: mfd: syscon: Add rk3588 QoS register
 compatible
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-rockchip@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        kernel@collabora.com
References: <20220831182629.79255-1-sebastian.reichel@collabora.com>
 <20220831182629.79255-5-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831182629.79255-5-sebastian.reichel@collabora.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 20:26, Sebastian Reichel wrote:
> Document rk3588 compatible for QoS registers.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
