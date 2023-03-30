Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 9FD5D6CFCCB
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 09:31:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231235AbjC3Hbj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 03:31:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59874 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231182AbjC3HbY (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 03:31:24 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id EE47549C7
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:31:21 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id bx10so319069ljb.8
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 00:31:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680161480;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=VHL5ko9/VwXTcT2Zsf55zIWSDsPldEV1a3bS1y8GpSY=;
        b=OwqeseOtwKXRW1SixaPHbovNygVE/jNCrLgZuc9+5KPoypyNOVCY+eYOqsDPDtEAn8
         Mc6jriM0bHRXmQyqzOED79vTsum2oXUWpk9QXOYuQuxVLL+0sUM/bZMGG3KmZP6X3RGu
         H6o7NcRRJUnlhS2xer1ncMUkl9aOSY4+H6tKi3KKpobWhDWlp46j3b8EhhVfJX9BAzz+
         gSjpc3fH/v/v+zCJ20V+6RKbQZQLYS4pBq8uflKcKvYvdQzgq+hH9ncMWE2Aqe+Fhbvz
         p9b+uSUbnUKTMAM/dV8GftzPrZX5jheDehaRr8e0LWXyMpcijO1plqJQPJ4oznRfhcR7
         8fgA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680161480;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=VHL5ko9/VwXTcT2Zsf55zIWSDsPldEV1a3bS1y8GpSY=;
        b=eJT4NVpEJ5gZBMQm8/PfqLQzjUKRos7nXGDYoLCbk0S5e3WXbJU0hjBGyWtIi9xF9U
         8S8RjIM5I7fkyLQ1fOCvp1iVdOCbTq7sdTZNdKyCQDdBy71BpzdXrSHsIGXmAobzFVZO
         VK2jhzxdGPfwSJxxhr7ZVLV7lD9DHJYXDrgCCA32MGjLaz87+gsoi2bc3wWZBuFoD+Ns
         sTwteJdbOjPGmzXvKp2JMCTV1fK62Zw1l3xFReyaZhDD7X+PyRbmED3uEQp5GRGCDlyg
         Si8qsggKHTbT2aflQ/btsb12Snub+Q1XRh5rkQKl7iz83AZFWx4u+WMll2fNiBH8+ZqN
         bzWQ==
X-Gm-Message-State: AAQBX9eCbAJz+myrKzEFc2UFSBNVKzfjcHMnzXCLblYplLu76VGc4NV5
        WX9O1Q9WIjL1052057xUDKvEPg==
X-Google-Smtp-Source: AKy350Yjtu4A370ptMDZizNAxeGXtnHwZUOvMmf7DRxQBDfiwAkWLKS6X2CMwWxjRcSCko+5mZzH6Q==
X-Received: by 2002:a05:651c:227:b0:293:1565:4353 with SMTP id z7-20020a05651c022700b0029315654353mr6736375ljn.10.1680161480218;
        Thu, 30 Mar 2023 00:31:20 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id y1-20020a2eb001000000b002986854f27dsm5780478ljk.23.2023.03.30.00.31.19
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 00:31:19 -0700 (PDT)
Message-ID: <4dade510-21c8-4c2c-176f-205aadb719e0@linaro.org>
Date:   Thu, 30 Mar 2023 09:31:18 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2] dt-bindings: display: seiko,43wvf1g: Change the
 maintainer's contact
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, neil.armstrong@linaro.org
Cc:     krzysztof.kozlowski+dt@linaro.org, marcofrk@gmail.com,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        Fabio Estevam <festevam@denx.de>
References: <20230329201150.741106-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230329201150.741106-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/03/2023 22:11, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> Marco's NXP email is no longer valid.
> 
> Marco told me offline that he has no interest to be listed as the
> maintainer contact for this binding, so add my contact.
> 

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

