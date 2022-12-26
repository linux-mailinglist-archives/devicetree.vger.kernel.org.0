Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 15E6D656258
	for <lists+devicetree@lfdr.de>; Mon, 26 Dec 2022 13:02:34 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229686AbiLZMCc (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Dec 2022 07:02:32 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:38120 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229657AbiLZMC2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Dec 2022 07:02:28 -0500
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 79F61C7
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 04:02:27 -0800 (PST)
Received: by mail-lf1-x134.google.com with SMTP id f34so15689161lfv.10
        for <devicetree@vger.kernel.org>; Mon, 26 Dec 2022 04:02:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Ky47CR2vSz1vfw/Fd+KACPCSbOnSz+PBCoJneMByCFA=;
        b=TqO0M+Io6gVUL8rASBtU1w1NK+7Yo3n1OKNp2qWajmheLYXkqSdG08qGYfXlvkJrrN
         37dfsyYTvIAQvcnls+6p2obGxBXrZ4ZgRaKR/435cyGjGb/b7K5gnsOvdzJspmzZ2F6n
         CIg6NOze9VNvy/F1u849qG+nAxTVBM8VlhzZW95fJaM9ZeDeCnifJa6/vgVNd1ZOpSV2
         PA04/XvASUawEuNPD5RKOEt0V+zO7wAP035cOqnx+L015YN78vpZadu3jYqMeYj7nLrf
         pvPnMZoAMstn0SF1Kxi7WZOG0XWxsPWwdG+51pWxgVzGc/MT3WVuOSRG6wQ9hi8WX6QS
         nCeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:content-language
         :references:cc:to:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=Ky47CR2vSz1vfw/Fd+KACPCSbOnSz+PBCoJneMByCFA=;
        b=gUak51V5LARGLSIA8Zhbdpr8CL7JBdHCKQT17brp08dZ8JBvo/OAHDyqBJjRY46HGv
         9EGzPqTy1Qg1sn8wIKMbzYclJsUZZeaWYpnhvirOwMY2k99575Iy3SVSEy0C2lzUi6e3
         WHRPifDZJg590e1bQtJ4jP9KUHu8njYm0FBIg2iw+6VlvcWl+m6zcOB94YIxtVg6ejV5
         GRPE7sv2WzdLn84qSnGmgZtL7H3OXH8c1X6kj+iBZic9NxZsCnUuYBPdXT4k/ZHmLo1V
         hv7KDDoR3+VyAkBAhQU45XLngdFcCUYf9H2xrMZRFVx22Ffb7K5RmmAVAsmZxpsP50bC
         r+/A==
X-Gm-Message-State: AFqh2kpXVsrko1izJJWTWLDI/71/4/PXZiuljn5kK9BejX7E5zZSvTM+
        O/NY7+QEGdTlPFCJulKKf+KS3g==
X-Google-Smtp-Source: AMrXdXvitQnBsZTMmCSSfNkH2lLM5U5Dpc0tWEyEOVD+WXESowntkbdaA3TARWLjfXAYLhKBlTux3g==
X-Received: by 2002:a05:6512:261a:b0:4ca:f432:3e45 with SMTP id bt26-20020a056512261a00b004caf4323e45mr4078604lfb.33.1672056145778;
        Mon, 26 Dec 2022 04:02:25 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id a25-20020ac25e79000000b004a0589786ddsm1787228lfr.69.2022.12.26.04.02.24
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Dec 2022 04:02:25 -0800 (PST)
Message-ID: <ad3fd4e8-1f79-bced-f9c6-adae38df7935@linaro.org>
Date:   Mon, 26 Dec 2022 13:02:23 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.6.1
Subject: Re: [PATCH v4 1/3] dt-bindings: reset: syscon-reboot: Add priority
 property
To:     =?UTF-8?Q?Pali_Roh=c3=a1r?= <pali@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Sebastian Reichel <sre@kernel.org>
Cc:     linux-pm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20220820102925.29476-1-pali@kernel.org>
 <20221226114513.4569-1-pali@kernel.org>
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221226114513.4569-1-pali@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/12/2022 12:45, Pali Rohár wrote:
> This new optional priority property allows to specify custom priority level
> of reset device. Prior this change priority level was hardcoded to 192 and
> not possible to specify or change. Specifying other value is needed for
> some boards. Default level when not specified stays at 192 as before.
> 
> Signed-off-by: Pali Rohár <pali@kernel.org>
> 
> ---
> Changes in v4:
> * Use restart-handler.yaml

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

