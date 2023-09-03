Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id EB62B790D42
	for <lists+devicetree@lfdr.de>; Sun,  3 Sep 2023 19:29:32 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1345762AbjICR3e (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Sep 2023 13:29:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60150 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1345750AbjICR3e (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Sep 2023 13:29:34 -0400
Received: from mail-ed1-x52c.google.com (mail-ed1-x52c.google.com [IPv6:2a00:1450:4864:20::52c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D505F9
        for <devicetree@vger.kernel.org>; Sun,  3 Sep 2023 10:29:31 -0700 (PDT)
Received: by mail-ed1-x52c.google.com with SMTP id 4fb4d7f45d1cf-51a52a7d859so3428806a12.0
        for <devicetree@vger.kernel.org>; Sun, 03 Sep 2023 10:29:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1693762169; x=1694366969; darn=vger.kernel.org;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NPHJUBMqgjrbaCmQyeTzEyQhvq2Pyskk2J6fzgNfO/w=;
        b=k/lDe646vu57BtR2Gj24rrOcGylnCcsht2WC6i5VfN33za/Kr6++Q2OwISG/cxKbch
         88dQ7wEfhRCKrPbq2hdp01b1o5pCmzBRGbmDP/Yv4aO88ctAt6MzR2lTZlV9VF+1q46/
         LLBbQUgGoL8kPquLTFSZZvmB9MntIJGML0yT5Lq9dsI1YJMkbYI5b6/O6eRhXXMbS6/c
         CfeXyPyO/MCv87v/QIFXaKd9pjQpSqdv+yKZiZ4lvx3XNbobTcU13+EV+cbiV5RKSlRf
         9a4bgtNy1hvMI6K4DOFOgN+Pd8bnD+o+eP1yilavUUA0P0rsWqoXjYSCUYQwk279Q7U4
         JuDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1693762169; x=1694366969;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NPHJUBMqgjrbaCmQyeTzEyQhvq2Pyskk2J6fzgNfO/w=;
        b=iT92T0wz3df62apYQPXfW5cJD8mJckvG8NZzWyi34Etmqx8emL9J29eLTlhx5dPRJv
         VN2H7HEnhwrlRmZDx7hz67KHHWRtI61fe+2nO8McP8w0W8qyuQ+G0J5/XkKMIJM1QK6n
         mOFhBJlOEaNi3Y1AVcuabAL2v10CPCvTQXpOkekaUfty3AALhlWIXymtK4Y9AzhSWa66
         hKdJ6XteuVNeBo4gWIvhNwkHpAXgJZczxGa5/KPgKEvhuonUA1NV02Dg1Cc/uH1oSzxJ
         anRx92+UuDA8l/hcCmFkbpDoFduU4tHL1ZO7a/axWVVvYg2sS4lHj1RwKLIIOOTja6Pb
         6ehg==
X-Gm-Message-State: AOJu0YzjQIs5L+g62SAXmm1VqkCnww1HLZeeQtK1NiTcr/yUiuNQkzZe
        SrILjk81tKqTsvnvln36c1+tJw==
X-Google-Smtp-Source: AGHT+IEhCNWtl7YQ5p/jh+vxHI1d+ZEaGgMP7BekHl3orE2v19RJpwz8akAmdj1GoO5WSQhhqN5H0g==
X-Received: by 2002:a17:907:1def:b0:9a5:d2f5:c76 with SMTP id og47-20020a1709071def00b009a5d2f50c76mr8833461ejc.5.1693762169524;
        Sun, 03 Sep 2023 10:29:29 -0700 (PDT)
Received: from [192.168.0.22] (77-252-46-238.static.ip.netia.com.pl. [77.252.46.238])
        by smtp.gmail.com with ESMTPSA id c25-20020a170906529900b0099b42c90830sm5001164ejm.36.2023.09.03.10.29.28
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Sep 2023 10:29:29 -0700 (PDT)
Message-ID: <96620b14-6bc6-ed55-1cff-4eb1eef2a9fc@linaro.org>
Date:   Sun, 3 Sep 2023 19:29:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.15.0
Subject: Re: [PATCH] dt-bindings: rtc: ds3231: Remove text binding
Content-Language: en-US
To:     Fabio Estevam <festevam@gmail.com>, alexandre.belloni@bootlin.com
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        conor+dt@kernel.org, linux-rtc@vger.kernel.org,
        devicetree@vger.kernel.org, Fabio Estevam <festevam@denx.de>
References: <20230902134407.2589099-1-festevam@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230902134407.2589099-1-festevam@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2023 15:44, Fabio Estevam wrote:
> From: Fabio Estevam <festevam@denx.de>
> 
> The "maxim,ds3231" compatible is described in the rtc-ds1307.yaml, so
> there is no need to keep the text bindings version.
> 
> Remove the maxim,ds3231.txt file in favor of the rtc-ds1307.yaml binding.
> 
> Signed-off-by: Fabio Estevam <festevam@denx.de>

Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

