Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E3703621B80
	for <lists+devicetree@lfdr.de>; Tue,  8 Nov 2022 19:11:11 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234800AbiKHSLJ (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 8 Nov 2022 13:11:09 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59676 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S234617AbiKHSLE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 8 Nov 2022 13:11:04 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 334DB5E3D9
        for <devicetree@vger.kernel.org>; Tue,  8 Nov 2022 10:10:58 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id l12so11214939lfp.6
        for <devicetree@vger.kernel.org>; Tue, 08 Nov 2022 10:10:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=GN4ncCbN5RXq4bC+MjIVUQcmL6JMKzPTfDQ6haXvn40=;
        b=TvkxlNCJYlXgbwKJ9uhCOG1ZdtKYxRdjqIoE23FwVJwjBRO452fLQA194b0cxvY4bX
         PqMgG7HVAu8bRxc9KkQNpQK/BF7AgQJMCc097kvMqV6lR1cW0qbEE/hPYNEpXyn2SmWX
         QmoED+FTYkD3gxElk8y0uZ7hkEA83qlUpMnzPAFISDC4VWG2HJha1EAnOq+QPkK1ObFo
         uRU2hkN6tW/mC4f1EKwb/xoNmHJme3mvQ48XjAT5DUyirJA6jwabHyT4DwwDPqVA5iB8
         1Du8LV/QYG4Lt9kMLecUhSihQdiXrZ+ZjP7mxzfiyBUjGKl+kjttu+lFDZZJ1wvpd73x
         2Isg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=GN4ncCbN5RXq4bC+MjIVUQcmL6JMKzPTfDQ6haXvn40=;
        b=TXqxsuYE9V4OYEE+HbppdYpiibKMq6e6DRS3S3MQK0q02leo1w2yy72TduJ5Nt9z4X
         jBzAtO4UXsbwXqtYkhnje6vN930Dvs5WvF+kiZrAvPLdA5Qyzgn8Z+PtlucIbpKjFbkp
         LmW5gtYhSJcXcDY8h+8axVRvfr1v/Ih+ntPi6pOObuV2Zy8mdeUz1GgraPdhVKdgEtLz
         o5/Sh7tmGM9pdbuIWCzV8GfWmG/j3zQ3IG0BbmUUGdrvy6WIyd1wdW4DAq4smyHU5zal
         WenwlJ2AcgNj3OainrXO1gQnVNW8iMcq6FIospArsz2se5M1g6k8nNwYZHsmcabhPqjP
         Kw6w==
X-Gm-Message-State: ACrzQf2J+I/iFOGLZ8CwLiyOlJjEDC39FZhzf2uDgJ1XvjnfTR0kBLN9
        XetdsclK4M9NDRcDPdMqyLwbhA==
X-Google-Smtp-Source: AMsMyM52maW3sfRovKLSKGvPEi5QOxDIojC6VtVzehizWEqqHR11l1zKljI5liw/ss4HdcCpLn/rhg==
X-Received: by 2002:ac2:447c:0:b0:4a2:4fc6:4cbb with SMTP id y28-20020ac2447c000000b004a24fc64cbbmr19141894lfl.99.1667931057375;
        Tue, 08 Nov 2022 10:10:57 -0800 (PST)
Received: from [192.168.0.20] (088156142199.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.199])
        by smtp.gmail.com with ESMTPSA id k19-20020a192d13000000b00492b0d23d24sm1867848lfj.247.2022.11.08.10.10.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 08 Nov 2022 10:10:56 -0800 (PST)
Message-ID: <e77cf459-b4f3-199a-0c59-85a166a286a7@linaro.org>
Date:   Tue, 8 Nov 2022 19:10:56 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.2
Subject: Re: [PATCH v7 04/10] dt-bindings: timer: rk-timer: Add rktimer for
 rv1126
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Heiko Stuebner <heiko@sntech.de>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, devicetree@vger.kernel.org,
        Johan Jonker <jbx6244@gmail.com>, linux-kernel@vger.kernel.org,
        Daniel Lezcano <daniel.lezcano@linaro.org>
References: <20221108041400.157052-1-jagan@edgeble.ai>
 <20221108041400.157052-5-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221108041400.157052-5-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/11/2022 05:13, Jagan Teki wrote:
> Add rockchip timer compatible string for rockchip rv1126.
> 
> Cc: linux-kernel@vger.kernel.org

There is really no point to store it in the kernel log.

> Cc: Daniel Lezcano <daniel.lezcano@linaro.org>

I would argue this also does not make any sense to keep in kernel log.
It's maintainer, not a person who is somehow interested in this commit
and should be cced.

Keep both below --- in all patches.

> Signed-off-by: Jagan Teki <jagan@edgeble.ai>



Best regards,
Krzysztof

