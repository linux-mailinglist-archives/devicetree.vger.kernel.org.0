Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 772ED5FC5B7
	for <lists+devicetree@lfdr.de>; Wed, 12 Oct 2022 14:58:25 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229799AbiJLM6X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Oct 2022 08:58:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51502 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229745AbiJLM6V (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Oct 2022 08:58:21 -0400
Received: from mail-qv1-xf31.google.com (mail-qv1-xf31.google.com [IPv6:2607:f8b0:4864:20::f31])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id B20429B85E
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 05:58:20 -0700 (PDT)
Received: by mail-qv1-xf31.google.com with SMTP id de14so10818410qvb.5
        for <devicetree@vger.kernel.org>; Wed, 12 Oct 2022 05:58:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TnfLH1uWZM93WnOCm/j3uIYB90yqvfJmq8bZxGsy+kc=;
        b=bH9us0saWKJQhA1kWT+vjoJW/+MSU1ic6wzQjV9QVFsbI3TcBrQuuJZh3xjEm4f81/
         eAGrKd/w5yeMAeReTuqMd7v/KkHwN3FV3fyfR9uJejV6DwvTrW4RGK0cvn2ibR3CQ6fQ
         IaB66scH892vFJSAK1xZ+4vFs5J46bMJI5pcjdfZbJAXmLF4+DOkDBvjJ5hA/PUlDu2a
         oDIEyD6mdc33E5LDd5iZ951AzEkN3m7lXBv8fC00ap3yF2/Cm3KDoKqnSEoIPk0RSIpz
         ABQMK3GOtNd5cluoYOYpu4Odo+f3xbPGHhLFKaX0lKXldZF33B4bSGAF9VfMEOmEBDR0
         XwtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TnfLH1uWZM93WnOCm/j3uIYB90yqvfJmq8bZxGsy+kc=;
        b=0d6kB1XsGmBOdf+TXwB2pG+fjxlH8v0VoHLdutBPI1B0UayjH+KWQblyAbXeF4ATRx
         DY0H5NzuQPZJ8a/ct5bDXuGGPZb0gPg55M36KJz4E1e5hN7JbBXo2wm33DmSAgV+IZ+5
         biezMqcVuzI4R/3cYezT4oGc8kBHEqq7MppVBoq9QSmqXFj3UiNkyyQLN1J/WKKUzTkX
         5YvVitVGOoTVypkL4CtafEjG7TRx4vQ1KS/89J36+pbPzTphCT5iKbC1qwsP6iz+2mfL
         gHKGJYaSkFE6dOGcAXiB3dKhSrxSuBRytXtZz+taYpQKh/xRA4tXq49Rlpc09FeOq/qL
         YQlA==
X-Gm-Message-State: ACrzQf3FDhEguZ4/Ce1fFfVpJFGBrcFa31bzzPvjUDlYRD9MSBI21kwd
        FLo4cfoDyDZeEgWCjBWPulrAAQ==
X-Google-Smtp-Source: AMsMyM4g/HhyeEiE7hqMEnGkibS/RP//a3WhquctLtW5wccxFEO5/bzMLDqE97UGNpAEEYvXTcrcQg==
X-Received: by 2002:a0c:e04e:0:b0:4b1:cae6:4b0a with SMTP id y14-20020a0ce04e000000b004b1cae64b0amr22874277qvk.121.1665579499909;
        Wed, 12 Oct 2022 05:58:19 -0700 (PDT)
Received: from [192.168.1.57] (cpe-72-225-192-120.nyc.res.rr.com. [72.225.192.120])
        by smtp.gmail.com with ESMTPSA id u10-20020a05620a430a00b006e702033b15sm15449244qko.66.2022.10.12.05.58.18
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Oct 2022 05:58:19 -0700 (PDT)
Message-ID: <be6586ab-8a4e-91cd-cc30-81d49e6d4616@linaro.org>
Date:   Wed, 12 Oct 2022 08:58:17 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.2
Subject: Re: [Patch v3 02/15] dt-bindings: media: s5p-mfc: Add mfcv12 variant
Content-Language: en-US
To:     aakarsh jain <aakarsh.jain@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-media@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
Cc:     m.szyprowski@samsung.com, andrzej.hajda@intel.com,
        mchehab@kernel.org, hverkuil-cisco@xs4all.nl,
        ezequiel@vanguardiasur.com.ar, jernej.skrabec@gmail.com,
        benjamin.gaignard@collabora.com, stanimir.varbanov@linaro.org,
        dillon.minfei@gmail.com, david.plowman@raspberrypi.com,
        mark.rutland@arm.com, robh+dt@kernel.org, krzk+dt@kernel.org,
        andi@etezian.org, alim.akhtar@samsung.com,
        aswani.reddy@samsung.com, pankaj.dubey@samsung.com,
        linux-fsd@tesla.com, smitha.t@samsung.com
References: <20221011122516.32135-1-aakarsh.jain@samsung.com>
 <CGME20221011125145epcas5p4f9d2656c8b91d7bb6a51989afa49120d@epcas5p4.samsung.com>
 <20221011122516.32135-3-aakarsh.jain@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221011122516.32135-3-aakarsh.jain@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/10/2022 08:25, aakarsh jain wrote:
> From: Smitha T Murthy <smitha.t@samsung.com>
> 
> Add Tesla FSD MFC(MFC v12) compatible.


Please use scripts/get_maintainers.pl to get a list of necessary people
and lists to CC.  It might happen, that command when run on an older
kernel, gives you outdated entries.  Therefore please be sure you base
your patches on recent Linux kernel.

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

