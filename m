Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 90E3761ECEE
	for <lists+devicetree@lfdr.de>; Mon,  7 Nov 2022 09:31:38 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230263AbiKGIbg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 7 Nov 2022 03:31:36 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:42016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231169AbiKGIbf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 7 Nov 2022 03:31:35 -0500
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6D2114002
        for <devicetree@vger.kernel.org>; Mon,  7 Nov 2022 00:31:34 -0800 (PST)
Received: by mail-lj1-x22a.google.com with SMTP id u11so15062251ljk.6
        for <devicetree@vger.kernel.org>; Mon, 07 Nov 2022 00:31:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=N6++KhEH08h5tGqHFN7m8AIR1s7DqI99SPKeuAMG/qw=;
        b=I4OtHlZgU3jR+mSoxyqU7ZOr8Va6DgAn9MoVm1t83epXY5vn9jM2SeY9x+rdis6ML2
         i3F7nSoXT2wNzF0OKupyBZgLcc/FXRKXjTSkdYpjNFfoHOikIu5maTms/OnZkcNH9rAo
         PVv18pY9AJIrmSz1Yyu8KLM+0bJdJcpF/EZp+5xNd0pSMuNwtiOJj9IaZYbugstmVRUb
         Ky0myOZ8+0dqte+g0tmJrWg+jBfpnzuzHWnzK2O4wRois1Q/Lnz8chlFGJQN+z6YOHAq
         DKVHUnJyy07jv67pmNbLZjWso64xccoz8e+hcjax8pot6x7UmfaTQYl3Fofj2U/t1SiE
         0xAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=N6++KhEH08h5tGqHFN7m8AIR1s7DqI99SPKeuAMG/qw=;
        b=Nob4IYxySc9tFJQl9OlzWHgSCVJggoZzOJTZ2RpiRCWUGWgDkE7I2n/Z7dm3fToa03
         WAE0xRnBocspWoYRfyzwm5iJSw6YgTpY+71isoOG+ql57Dwo3K/4y03dzdnRukKOS9/G
         K58Tjgh1Bj7jbE8ILDFw9AxYNfJfjziMqSajFxq4ZKjgggamschCkNnSJD3F1UkJ1pHC
         OXie4cCoFk0caS3FsMJ06T6YIyFzKmd0+0jI7AuCGFpiWX+OoAttLsGL4IZVtX2ihaWW
         TkNW8RFRnIfDKzqUdx23NdTSg9aQ9Q/8sm20L/Fh2fjyCx2OZ1we8KBu8AQIpP86tgXd
         gFnw==
X-Gm-Message-State: ACrzQf06L6jE19DTFENrVzLAK1w53P8T2SMg7VG8LCo3VnFmeHHSRun4
        juyB57GXg/gsnZxVI53XbEwtQg==
X-Google-Smtp-Source: AMsMyM6W40VKTiLHbmbV97W7UEJFfdf+GUF0fv3q4wFLTRZJufS7Bb0C4txsbJZUg9x6PI/w3rnX1g==
X-Received: by 2002:a2e:888a:0:b0:26d:d603:8df2 with SMTP id k10-20020a2e888a000000b0026dd6038df2mr4720379lji.189.1667809893285;
        Mon, 07 Nov 2022 00:31:33 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id g14-20020a2eb0ce000000b0026c3ecf9a39sm1100903ljl.38.2022.11.07.00.31.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 07 Nov 2022 00:31:32 -0800 (PST)
Message-ID: <a464ae19-3b18-3a34-9706-151b1512057b@linaro.org>
Date:   Mon, 7 Nov 2022 09:31:32 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH 2/2] dt-bindings: iio: imu: st_lsm6dsx: add lsm6dsv16x
 device bindings
Content-Language: en-US
To:     Lorenzo Bianconi <lorenzo@kernel.org>, jic23@kernel.org
Cc:     linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        lorenzo.bianconi@redhat.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org
References: <cover.1667745215.git.lorenzo@kernel.org>
 <8d10a63ec6abd22863ab25addd8c2f578dbc9cd9.1667745215.git.lorenzo@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <8d10a63ec6abd22863ab25addd8c2f578dbc9cd9.1667745215.git.lorenzo@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/11/2022 15:36, Lorenzo Bianconi wrote:
> Add device bindings for lsm6dsv16x IMU sensor.

Drop redundant, second "device bindings" in subject.  So the subject
should be (also with different prefix):

dt-bindings: iio: imu:: st,lsm6dsx.yaml: add lsm6dsv16x

With subject fixes:

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

