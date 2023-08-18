Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 72AB5780B45
	for <lists+devicetree@lfdr.de>; Fri, 18 Aug 2023 13:39:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1358975AbjHRLjV (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 18 Aug 2023 07:39:21 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:48534 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1359839AbjHRLjL (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 18 Aug 2023 07:39:11 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2299410DF
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 04:39:10 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id a640c23a62f3a-99bf3f59905so100780666b.3
        for <devicetree@vger.kernel.org>; Fri, 18 Aug 2023 04:39:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1692358748; x=1692963548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/laOi+SP39lU/EyzDid33UcDK7VZttaqaW2+wkc3grc=;
        b=sx1DuoXPleOKMSoqg1WukzaDhD4H7pnPoxNtObNJnk0y8WRenGdqq+J+sRajt8uZAZ
         my0XLGY8ola4pYI7Q1vF4IzyGiwai8WLImCqKVO41EuMu2crbOF7SowTSELDziFbk2Co
         rCde2wcixV2Di31ShvrfkcVTariICnk/FIWwgZjenmDLNTerqTOBYD8dnBSaw99+KkU1
         JWVdaj6waNCDQhvGmBZTxlfCzRMBEeVtv9ZFurEcWPdmhWGGmbcv2xBYzv3NRK1w0Jrj
         YiJFidJuq6rv8WC7FR3f74uQf5QFQw+tGlSUeeArf+OcSQLniimn0QfA0ZcN9osfde5F
         5qHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1692358748; x=1692963548;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/laOi+SP39lU/EyzDid33UcDK7VZttaqaW2+wkc3grc=;
        b=Pgi3ofaOAqTHhfOT9DtPFfZTBzVcM5oBDf3qfy/PJRL1LLY1e5T2wfVt/mjgank7XG
         02uBws9FH/8xHtesRepkk1MfI/aGvFQPzm8o++X1Uuqj73321dxauUhFOSWfA3jXafVN
         t7r4lLr/Gy5GAHAXe42asd5kMkg2qLwY+3cO12mMdDx1vqkdtiAA5DNCBXCYN0yRPZng
         C3XeAoF7yWE1BCFSTwwR7e9eiIpZanVtyhHMK0EO7o9bR8JZnSMUZtvFh9PM/kfibu0c
         62hLC2b3OoS32KVume2dwukTh2K7AL9sRbxN11pjQM631FElbrf5mv/+rc5ZboGpZCDd
         jmzA==
X-Gm-Message-State: AOJu0Yx204M8L2AOEo03kVZETEOANlPTz7LVMnnfm1FL3+i0yhmax0C2
        IkrBqNCMxrTROjgrx5Jcl+xYzg==
X-Google-Smtp-Source: AGHT+IFG3vBSNIG2iPZx1gRXxtVo8FXEzSM5gRfMpib/TbrGAHmM0cxXFWf3pY0SVNFRQXFmv/EUaw==
X-Received: by 2002:a17:906:3005:b0:99e:12ab:f197 with SMTP id 5-20020a170906300500b0099e12abf197mr1919493ejz.42.1692358748528;
        Fri, 18 Aug 2023 04:39:08 -0700 (PDT)
Received: from [192.168.0.22] ([77.252.47.198])
        by smtp.gmail.com with ESMTPSA id f15-20020a170906084f00b0099cf9bf4c98sm1080822ejd.8.2023.08.18.04.39.06
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 18 Aug 2023 04:39:07 -0700 (PDT)
Message-ID: <4aea792a-098a-c89a-5b87-f6d27ac1dec0@linaro.org>
Date:   Fri, 18 Aug 2023 13:39:05 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.14.0
Subject: Re: [PATCH 1/3] dt-bindings: thermal: sun8i: Add binding for H616 THS
 controller
To:     Martin Botka <martin.botka@somainline.org>,
        Vasily Khoruzhick <anarsoul@gmail.com>,
        Yangtao Li <tiny.windzz@gmail.com>,
        "Rafael J. Wysocki" <rafael@kernel.org>,
        Daniel Lezcano <daniel.lezcano@linaro.org>,
        Amit Kucheria <amitk@kernel.org>,
        Zhang Rui <rui.zhang@intel.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Chen-Yu Tsai <wens@csie.org>,
        Jernej Skrabec <jernej.skrabec@gmail.com>,
        Samuel Holland <samuel@sholland.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-sunxi@lists.linux.dev,
        linux-kernel@vger.kernel.org,
        Andre Przywara <andre.przywara@arm.com>,
        Alan Ma <tech@biqu3d.com>,
        Luke Harrison <bttuniversity@biqu3d.com>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        AngeloGioacchino Del Regno 
        <angelogioacchino.delregno@somainline.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Martin Botka <martin@biqu3d.com>
References: <20230818-ths-h616-v1-0-0e1e058b9c7a@somainline.org>
 <20230818-ths-h616-v1-1-0e1e058b9c7a@somainline.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230818-ths-h616-v1-1-0e1e058b9c7a@somainline.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/08/2023 10:43, Martin Botka wrote:
> Add binding for H616 THS controller.
> 
> Signed-off-by: Martin Botka <martin.botka@somainline.org>
> ---

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

