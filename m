Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C12105AC604
	for <lists+devicetree@lfdr.de>; Sun,  4 Sep 2022 21:15:48 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234352AbiIDTPr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 4 Sep 2022 15:15:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51082 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229938AbiIDTPq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 4 Sep 2022 15:15:46 -0400
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BF5762AC4C
        for <devicetree@vger.kernel.org>; Sun,  4 Sep 2022 12:15:44 -0700 (PDT)
Received: by mail-lf1-x132.google.com with SMTP id w8so10359012lft.12
        for <devicetree@vger.kernel.org>; Sun, 04 Sep 2022 12:15:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=yxLVewTHSv4Xq6/5Z/Fr5zJXfSu3q0A9v6Ujj4sysNo=;
        b=gY7oQffKOe8RLllBIFsceNq0mOknLJBf/z9s8U52PVRc5LJse3DXKRBtSfkYwEEM6A
         mEzXk63I3xm0C8ZZcbbqdwrlhFY4DcmejpdHugVGE4n8DETSxa56NC8xN0rhKknCZ6Cz
         Hh6ucgNB5VnEAJjLLLlCvWPFYRT9X0gHd/TnYsAx1L7mEPnpUDJHvEy58coAla2yGZsO
         c2mAkNQywRzRx0WMBX7xNWE+kdU9j9kk1vl6j3+Rs/qNLb1EuLfjMv0ZQPWfpCm743RZ
         jj0rFNSHMCSWeljZbTxf4qGS9cf9xMWIeFkVmGTlr6nlB6hstfFtcO6Ja2XbPe3Ijy2D
         gLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=yxLVewTHSv4Xq6/5Z/Fr5zJXfSu3q0A9v6Ujj4sysNo=;
        b=HJcRmAYjdEg6i1AwYOODSfKGpDw9NXICZByvEX62N8VxmEU49h4Z1KpdG2Epq/0HES
         xFCkbJ27gML93paRQTtBFcOZjkkuKWbkXi/bzvNhKiEl5NgdXZju1/u6aYEG5bvmBmbJ
         qMladG+W/xHhgOhdnNeB3MJ82pB6JZgH7J0S0H6qVmrvZz5nN/6+v6uACG3iZh5ZVOe1
         tWATqHsxFS9+qPiTmmCyoWRdUinLSxk/LFbONGxCzz4H6NUHqeQNO9RUIdDAbyL/oBFa
         LTcjTMigOhH5nIy5q42OEr0lhptFpRMxNTZoePSP61YGuSUVFZ/JOUSbjqAsQB1HWfMp
         Iygg==
X-Gm-Message-State: ACgBeo2CzEBxAOpSuxf0hNBwBVc0lqSmcqAzYmw6LbMNyCTSxFZMxQzL
        9wtSHSPAPSHl7U9LO4zjqKqGKw==
X-Google-Smtp-Source: AA6agR76U4ZjwwGZKGOS/A6eRNqmnQgw14s80bPnLr3eF672TCAKb8bB7e9alAhcpm059HJ4F7/IIQ==
X-Received: by 2002:a05:6512:1315:b0:492:cbc8:e10d with SMTP id x21-20020a056512131500b00492cbc8e10dmr14598407lfu.41.1662318943152;
        Sun, 04 Sep 2022 12:15:43 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id a27-20020a05651c031b00b00263630ab29dsm1093876ljp.118.2022.09.04.12.15.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 04 Sep 2022 12:15:42 -0700 (PDT)
Message-ID: <8c845d02-c63f-9b1c-25af-10fe705717a2@linaro.org>
Date:   Sun, 4 Sep 2022 22:15:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v2 3/9] dt-bindings: nvmem: Add SoC compatible for sm6115
Content-Language: en-US
To:     Iskren Chernev <iskren.chernev@gmail.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Rob Herring <robh+dt@kernel.org>
Cc:     phone-devel@vger.kernel.org, ~postmarketos/upstreaming@lists.sr.ht,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Srinivas Kandagatla <srinivas.kandagatla@linaro.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-kernel@vger.kernel.org
References: <20220903174150.3566935-1-iskren.chernev@gmail.com>
 <20220903174150.3566935-4-iskren.chernev@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220903174150.3566935-4-iskren.chernev@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 03/09/2022 20:41, Iskren Chernev wrote:
> Document SoC compatible for sm6115.
> 
> Signed-off-by: Iskren Chernev <iskren.chernev@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
