Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 8278172DA3F
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 08:56:12 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240050AbjFMG4K (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 02:56:10 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46952 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229630AbjFMG4J (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 02:56:09 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BE94A10C2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 23:56:08 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id 4fb4d7f45d1cf-51873e43986so529878a12.2
        for <devicetree@vger.kernel.org>; Mon, 12 Jun 2023 23:56:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686639367; x=1689231367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=WmDb0FqExseWIwOM+eDbd4Y0lzi/vx10EOXmxwOWe4M=;
        b=o0kkKmW2vSbCVd0ghUZmQJ5Tp5ku/bqKN/w9kbxWX6OwWUAKdaBZWKGPtp62VFTaQM
         vE68/3HXtlb7Ipiaz7LoGRMD4JusW0hVgsM9EGct+SpGJcOMHvc+S7r4SzpKkRHeVNOk
         KEaw10ZFBcKCUQScWVdlzv7ApNKm1ZgyVjMogr1nZJqvjtW+20NWX7wkTuqL+sxhRX3/
         IrwZhuz6dKj9XLK1dNNZoKoIluZAqFhSwdbFqAzE1bsX+PSxTY/sFfjQyNM8sqMvsISv
         hAJUrcAdeMVgFS+ZYMTK0CmFP2UnHfTzh6Hl/6XrM0cdboobGbzjXQH/gjseyfpR3z7E
         4TLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686639367; x=1689231367;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=WmDb0FqExseWIwOM+eDbd4Y0lzi/vx10EOXmxwOWe4M=;
        b=h8A4esvotMZR0722mRqWW117sBSU7zHXfLbuXW73nR+0+hC9tg7H9YXBXWDLQiY721
         jU++ULH5u2IgowwtO+8rM99rukN30F5eVdGiAbzrd9zRi0fD9FqRc4Wa+XOtHvfDQUOB
         Vnel2yCkJFyBxWmwIlVbiEZJKNO4i8jGAAnb4j+MHN48FykMcUQVqYCz03TuH4GcRMz2
         N5moZble9EFG6QT2197GcM6JmVhTLa7j+O+QLTFHTMKeaTORhF9QxiEkodlfZOB0sg5w
         Nda2aIMwIjoLs0QNmUfgD17L/2UwCi3YH/HINgupAKa1EYQlZUVxEX91mNbvCiFAZnl0
         bNfQ==
X-Gm-Message-State: AC+VfDxeuaxI9Qw/x4z/3DTKAi4TEKtf2tIp3Z/SaNvJ7vGnuhVUKNhH
        Zr7C9x67H1yG8egbY9eDSCd3/w==
X-Google-Smtp-Source: ACHHUZ7KDHVjq84hd7jnAxZuW1GtZX7g9vEo3lmLlL3Z28G3faXdjwa6gLk/uRj3hbQBYDNJ/LiuiA==
X-Received: by 2002:a05:6402:1012:b0:518:72f1:8211 with SMTP id c18-20020a056402101200b0051872f18211mr856371edu.28.1686639367370;
        Mon, 12 Jun 2023 23:56:07 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id u13-20020a50eacd000000b005149b6ec1bdsm5945038edp.29.2023.06.12.23.56.05
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 12 Jun 2023 23:56:06 -0700 (PDT)
Message-ID: <b72569a2-c101-e686-ad7f-3eefd41951ef@linaro.org>
Date:   Tue, 13 Jun 2023 08:56:04 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.11.2
Subject: Re: [PATCH v4 2/5] dt-bindings: ata: dwc-ahci: add Rockchip RK3588
Content-Language: en-US
To:     Sebastian Reichel <sebastian.reichel@collabora.com>,
        Heiko Stuebner <heiko@sntech.de>
Cc:     Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Damien Le Moal <damien.lemoal@opensource.wdc.com>,
        Serge Semin <fancer.lancer@gmail.com>,
        Vinod Koul <vkoul@kernel.org>,
        Kishon Vijay Abraham I <kishon@kernel.org>,
        linux-ide@vger.kernel.org, linux-phy@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, kernel@collabora.com
References: <20230612171337.74576-1-sebastian.reichel@collabora.com>
 <20230612171337.74576-3-sebastian.reichel@collabora.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230612171337.74576-3-sebastian.reichel@collabora.com>
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

On 12/06/2023 19:13, Sebastian Reichel wrote:
> This adds Rockchip RK3588 AHCI binding. In order to narrow down the
> allowed clocks without bloating the generic binding, the description
> of Rockchip's AHCI controllers has been moved to its own file.
> 
> Signed-off-by: Sebastian Reichel <sebastian.reichel@collabora.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

