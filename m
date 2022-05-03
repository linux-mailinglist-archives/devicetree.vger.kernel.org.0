Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1F28A5180D5
	for <lists+devicetree@lfdr.de>; Tue,  3 May 2022 11:17:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233344AbiECJVU (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 3 May 2022 05:21:20 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54322 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233317AbiECJVT (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 3 May 2022 05:21:19 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id A18AB1FCD5
        for <devicetree@vger.kernel.org>; Tue,  3 May 2022 02:17:47 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id g6so32301342ejw.1
        for <devicetree@vger.kernel.org>; Tue, 03 May 2022 02:17:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=iR72bbWvs9heDvh62xMCV9iFDgybIOyf+rVEB/GIUpQ=;
        b=ROwKzvPYEOarkoqa9kRjs1uVrWKgVFaRoKUprIzBUyM2hblSPezuhoC07IoPjKG1D7
         23e32psmRKgF3CqymtQpngjV/SVmpnpwNJBdxpdQu9exqGsh11rWPqtmRX5elqdN5gzF
         f14lBYs49n55OgR8+un++3PVLiOja+ciVdq3uLryVpB7xiMPivfQILIKFYxpv610uzRb
         e0rlGKb07EEpcKhHsw02aC6XsbCcL0e6C68pknVIs7bJA2Xv0mDHqxGeoQeHpcgIG/su
         OIm9G9vfthmTrYBVV6x1yh0my3Q1eQivrUqvSKOsJ9xzuG5XjZfEIQYYb182D5PWSV2E
         hC0w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=iR72bbWvs9heDvh62xMCV9iFDgybIOyf+rVEB/GIUpQ=;
        b=YP4UAnh7hicpNIuo9asGeNSj+ozmZQIXRqjo6fbsuFzAC3yHi/ektWpKlHveFhi9Vp
         wjFVu5SHnGoRlxBCYIgNkS6ZI9Yq61fjFEVqLo0I+ixj0Ms/kmUlirA5fgU9bi78WACa
         Yhl/RU+BCC7xItz3LdIwDAjRjDm462oCNcKe1QQAKdGcMQbiQLTg8jvf6/URUOr6yXSP
         u1YCc+YBLWPs70ROJ9Sas5uHA2PyzR56GEgF9nFKD2krJQPIWPiCIdyIV+kGCvhZzvGp
         HTw4t1caROTS+LvpJ+2OWsBhiaqa8agW0n5A19QFlu56O0L54SuTPot+rAfg9D/C/Tuz
         YPtg==
X-Gm-Message-State: AOAM531P0noPbx9A9nOPJaxvoM3vzbT6r+lN4c2Qjt1YiqkJH0GFGFlS
        nzD8J7B+UtpbjxrWeYFGUq2pjA==
X-Google-Smtp-Source: ABdhPJwzOtlBNhXhfOLMHBbN/di8NCBaswGBqyVJhPNWFM3lWkDTAWSV631mD6ikfNAUcZU8cYnv/w==
X-Received: by 2002:a17:906:478f:b0:6f3:d0b7:b254 with SMTP id cw15-20020a170906478f00b006f3d0b7b254mr14538388ejc.562.1651569466200;
        Tue, 03 May 2022 02:17:46 -0700 (PDT)
Received: from [192.168.0.201] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id g7-20020aa7d1c7000000b0042617ba63b1sm7658747edp.59.2022.05.03.02.17.45
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 03 May 2022 02:17:45 -0700 (PDT)
Message-ID: <2b7d03fa-e0cf-e46b-787a-8e9b932f9970@linaro.org>
Date:   Tue, 3 May 2022 11:17:44 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH 09/12] clk: samsung: exynosautov9: add cmu_peric1 clock
 support
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20220502090230.12853-1-chanho61.park@samsung.com>
 <CGME20220502090101epcas2p38a695a825488201724663ba7f5302b2d@epcas2p3.samsung.com>
 <20220502090230.12853-10-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220502090230.12853-10-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/05/2022 11:02, Chanho Park wrote:
> Like CMU_PERIC0, this provides clocks for USI06 ~ USI11 and USI_I2C.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof
