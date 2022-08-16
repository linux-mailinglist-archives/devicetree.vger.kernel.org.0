Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 5A6F2595A74
	for <lists+devicetree@lfdr.de>; Tue, 16 Aug 2022 13:43:51 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234843AbiHPLnu (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 16 Aug 2022 07:43:50 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41054 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234559AbiHPLnY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 16 Aug 2022 07:43:24 -0400
Received: from mail-lj1-x236.google.com (mail-lj1-x236.google.com [IPv6:2a00:1450:4864:20::236])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4D5FD71BD5
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 04:14:29 -0700 (PDT)
Received: by mail-lj1-x236.google.com with SMTP id z20so10191339ljq.3
        for <devicetree@vger.kernel.org>; Tue, 16 Aug 2022 04:14:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=O9pHGZVHujpeMWnCK1/1xLcvHuFaohpfkrM32FhJHXo=;
        b=TCvxuXP6wxXxvKskvU4lwECVskKqSVbmLZj+VRFBnzwAZptLkiXudfC9COh7H9QEaK
         NfRVyGKSr78aEVZUPzez8NffkbfjPxIPhXaT6/kEJ842fYqoujAgXM3OOfGl9NtiJVPz
         6Nvgb4L9xGlH9eTNXR3FvAdRbHXw8J74bJXM2vLONCBWrR+wHmhVR9URCv7nAxuj/MfJ
         6QC0buCoiEO1igxslD/mYR9QUB3XQlxH/h2oCf3BPdJ0T4nwjw12CAaGSlar3MJyNew8
         Era9eKwETliMu8NzPD0mRSa4NbP7BGCEhD2lB9OZPKsKIkLfnC/aibJvZaWUSptty3/J
         ut3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=O9pHGZVHujpeMWnCK1/1xLcvHuFaohpfkrM32FhJHXo=;
        b=PHBJ5ZGewyB2XDiCff9nVePwYzKDKvewG5DC+b1HzAIxYLBDt2VG4PsP5JVbmm1rMf
         XJqoMkDrSeMs0e+885iaFtlhgTshO8mGW6hp/Fpv7w94T+NArrkM2aUKHO45uKHx+Qqm
         CbtsxnF5/51sxGl9HLS0uYsHNUxT1NMXjurE3tN+fcwKekc1j4V62uHMwBjOaj+DxeGx
         P7LnSZ6uHP5qOubUCZM8U/NYRGHDCnNDQTkmd4k9usdtHl+i1ADJAB0TqfZywZ4VmJBQ
         y9pz7+BVnGLMBpJrornN6k+tD2xjNDxGCQqeJ767KWzyxolo7rgX8upcVODkkC4URta8
         JfrQ==
X-Gm-Message-State: ACgBeo0iDOY0tjUDj1AwutmV1ACIic08nx55We1vhpGgmstVaBS7gbp/
        WWy2uzd4YHLs7VTpop34XFbhTw==
X-Google-Smtp-Source: AA6agR5fEzLvfeC+9F1Cr3Vuvyt8NnGGjn4fd1dcxYay0Ut+t9+UZTzqORBuYkZ6HhaCCrimKdpP9A==
X-Received: by 2002:a2e:9953:0:b0:261:8021:35b with SMTP id r19-20020a2e9953000000b002618021035bmr4000582ljj.345.1660648467694;
        Tue, 16 Aug 2022 04:14:27 -0700 (PDT)
Received: from ?IPV6:2001:14bb:ae:539c:1782:dd68:b0c1:c1a4? (d15l54g8c71znbtrbzt-4.rev.dnainternet.fi. [2001:14bb:ae:539c:1782:dd68:b0c1:c1a4])
        by smtp.gmail.com with ESMTPSA id w7-20020a05651204c700b0048af47aefecsm1345787lfq.290.2022.08.16.04.14.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 16 Aug 2022 04:14:27 -0700 (PDT)
Message-ID: <96685b52-efcf-2635-04de-b9e08095fa49@linaro.org>
Date:   Tue, 16 Aug 2022 14:14:25 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] bindings: iio: accel: extend adxl313 documentation
 file
Content-Language: en-US
To:     George Mois <george.mois@analog.com>, jic23@kernel.org,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        linux-iio@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     lucas.p.stankus@gmail.com
References: <20220816102828.182345-1-george.mois@analog.com>
 <20220816102828.182345-2-george.mois@analog.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220816102828.182345-2-george.mois@analog.com>
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

On 16/08/2022 13:28, George Mois wrote:
> Extend the adi,adxl313.yaml file with information regrding the
> ADXL312 and ADXL314 devices.
> 
> Signed-off-by: George Mois <george.mois@analog.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
