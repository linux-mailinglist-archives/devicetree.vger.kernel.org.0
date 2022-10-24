Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 608AE60BDA6
	for <lists+devicetree@lfdr.de>; Tue, 25 Oct 2022 00:42:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231307AbiJXWmj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 24 Oct 2022 18:42:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49614 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231503AbiJXWmR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 24 Oct 2022 18:42:17 -0400
Received: from mail-pj1-f46.google.com (mail-pj1-f46.google.com [209.85.216.46])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 572BB2570B0
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 14:05:05 -0700 (PDT)
Received: by mail-pj1-f46.google.com with SMTP id f5-20020a17090a4a8500b002131bb59d61so132349pjh.1
        for <devicetree@vger.kernel.org>; Mon, 24 Oct 2022 14:05:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=LtcqmdNpdxVti+PLFBkqhLTVTZXFkee13e2fHeU9k5s=;
        b=QVbx7NHfVSfl6nirglkzBeA+hCnIBJDHm0p8W/g0USrA/MgF1jPHl6aOnzrczIcvOe
         F5M+Lz+wDfJGatAx0HTUNbXnhgZLIslnLl/o5CdD4g1n7BvzZHnEviYkK2zgZywWxAvS
         Kr0y646UcPQr5037GQbAgLncSJaJ2EY9Ei2Vd4zYdAX/WgAl9h6FgQ8+3yrxKKsFZjrg
         brNPvf6QSWrfrHZfUj42Yr7FPCE4VIcTGVL4BDFGdNiGs0ZwvHkZpBHPXd7QG6fLovVw
         OTb/J+ScLqhCGfzQx41boeHgfp2N+ymrdtpzQf52fB2jq/r1gqWtUocl6OZIGf1D+ri7
         0Qfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=LtcqmdNpdxVti+PLFBkqhLTVTZXFkee13e2fHeU9k5s=;
        b=MF9k49tq7uxL3qduuKQd79IAcJhlSNGkCpUhb8d4bWyBmPhy0vggPE4Nhxox/s2wmZ
         6wWciKZA3Kgy1mGZ6JXbohgyyWdeTLgKU4H8t2yVAgCfqUKaHXCrMcu6OM0bhd9Ie2uJ
         YccLbfpLwU0Hm3uPlaCHy9GxoKySkOMUYpFUefroFGoFb0fRBLaF2easTMpqIYlpy/jH
         iBbkDQoz/Fy9QOe8nOdxOTEVX55Lfviu/wnHxWBEzMWI0Yg0+c8iv/To9OjWI0WM10E1
         FFcu6zQhkqa+UFCyfMACp3NZSHWEwiZ98/gbuDmlb34UEY6EkUQKAEE2PUPT1Yl2bmTr
         4kLg==
X-Gm-Message-State: ACrzQf2j+PdjoQeEih8YV2zavFrhZEcc8x+RwPUwuYQ58gGHbkD8uYJ4
        EwKOlgsjnESwAVsgdAmAg5C7dDJ1ikcupA==
X-Google-Smtp-Source: AMsMyM4LxUqzwBifLSHZve8Ei2kV0KF1ARMRAM9wAVOYV/6KmScdc+UPtZC4HMwMtaA2GQkBj9Beng==
X-Received: by 2002:a05:6214:230b:b0:4b8:aa39:f3a6 with SMTP id gc11-20020a056214230b00b004b8aa39f3a6mr20402645qvb.30.1666643479627;
        Mon, 24 Oct 2022 13:31:19 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id z4-20020ac86b84000000b0035d432f5ba3sm504667qts.17.2022.10.24.13.31.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 24 Oct 2022 13:31:19 -0700 (PDT)
Message-ID: <a4faa952-c5b6-fd6c-aa50-08c982fb3cdd@linaro.org>
Date:   Mon, 24 Oct 2022 16:31:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCHv3] arm: dts: socfpga: align mmc node names with dtschema
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, robh+dt@kernel.org
Cc:     krzysztof.kozlowski+dt@linaro.org, devicetree@vger.kernel.org
References: <20221024171309.203821-1-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024171309.203821-1-dinguyen@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        RCVD_IN_MSPIKE_H3,RCVD_IN_MSPIKE_WL,SPF_HELO_NONE,SPF_PASS
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 24/10/2022 13:13, Dinh Nguyen wrote:
> dwmmc0@ff704000: $nodename:0: 'dwmmc0@ff704000' does not match '^mmc(@.*)?$'
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>
> ---
> v3: remove unneccesary rename mmc0 to mmc


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

