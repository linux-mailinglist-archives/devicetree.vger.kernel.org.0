Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 19EDD56CF82
	for <lists+devicetree@lfdr.de>; Sun, 10 Jul 2022 16:50:04 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229508AbiGJOuC (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 10 Jul 2022 10:50:02 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52606 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229450AbiGJOuB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 10 Jul 2022 10:50:01 -0400
Received: from mail-lj1-x233.google.com (mail-lj1-x233.google.com [IPv6:2a00:1450:4864:20::233])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 5916AE0D2
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 07:50:00 -0700 (PDT)
Received: by mail-lj1-x233.google.com with SMTP id r9so3572050ljp.9
        for <devicetree@vger.kernel.org>; Sun, 10 Jul 2022 07:50:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=NMAfcM1gX7YiSJ3enV+dwGTwAWUSd+ilkuNszoR7SL4=;
        b=fvVUybs0iW+ZMZZfS9j6vR+hsqU/CCWb9ftbXppRIjzihX+kkOKcEcZZHOcj96ygTc
         /OYkvrNmjRxLAGksi0+jYFYs1uZTkmHF1gBr70ySkh7y3QOEXtHOKkBxnxx0OSRKYwEr
         PDSDEXATHDOobf582NsqTFozpyv9J8bVRbdqIgIhpJuJ98f+BNbboKD4Ses29g0GbZN9
         P8RdfgJcVb67VO4ctTu6DXI1HCPYIN6kjHbphe8afuVVBsfomFOaH40CWKltYzBFu19o
         JWRCYU6ubwFhC2YeUnf0+mRnAi27iimsBBv7GDpC2SurGU3/CWDxuF/pcLW0oVgYelqT
         O8yg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=NMAfcM1gX7YiSJ3enV+dwGTwAWUSd+ilkuNszoR7SL4=;
        b=y5nd4OUUG1F9LEuJZXzjUVG77B3CPUvaHbGb2RKbVToIJnLl5n1fR/4MDnYEgumiXx
         dUuFy2zZyFfpEL0d/dBWvO/+ZcF5n+lSOOfeYjeyBxPM/SqMp03BV5+T+CCeQ7yuPANO
         YeNz2D8Y5vob4DIuZWPMe2f8DXD2567hetlyDgqjJiY5SoemySOcGs65ekk0Un9qPWlV
         qL2h5kbEeiEBHo1jJ7oBK3m4vGG7iJLMGOK03LOVKZVO5h1DaSst7DOAotyLsx2roc1k
         yNuoctwwC8aQ3M8mz7zdjiP0OGxC+VoFWXbFbawJZtZjIUugYheIUdbO+6nD0QWNODSX
         z3ww==
X-Gm-Message-State: AJIora/SwXreJBbu0f8+Aryj8nYlPl5SpMoWjUBTT4UEZgDPjjVHJIgq
        eeIzi/L5gkCR+AxKx5rs3fSvqQ==
X-Google-Smtp-Source: AGRyM1u/BuRLNXN7RP+94POtu9v8eagdThkz3BovPgek7GViREFgrLJo2MkjaMg7wo4A0WsVoqKJog==
X-Received: by 2002:a2e:bf18:0:b0:25d:6852:c949 with SMTP id c24-20020a2ebf18000000b0025d6852c949mr1662848ljr.85.1657464598770;
        Sun, 10 Jul 2022 07:49:58 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cac-200.bb.online.no. [88.92.172.200])
        by smtp.gmail.com with ESMTPSA id v8-20020ac258e8000000b004888c459954sm952132lfo.256.2022.07.10.07.49.57
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 10 Jul 2022 07:49:58 -0700 (PDT)
Message-ID: <420f9ff1-da37-3d1d-d913-29888ade21bb@linaro.org>
Date:   Sun, 10 Jul 2022 16:49:56 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 0/3] TQMa8MPxL + MBa8MPxL support
Content-Language: en-US
To:     Alexander Stein <alexander.stein@ew.tq-group.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Shawn Guo <shawnguo@kernel.org>,
        Sascha Hauer <s.hauer@pengutronix.de>,
        Fabio Estevam <festevam@gmail.com>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        Markus Niebel <Markus.Niebel@tq-group.com>
References: <20220622114949.889274-1-alexander.stein@ew.tq-group.com>
 <15466736.O9o76ZdvQC@steina-w>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <15466736.O9o76ZdvQC@steina-w>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 08/07/2022 16:39, Alexander Stein wrote:
> Ping,
> 
> I would like to get patch 1 & 2 into v5.20.

Sure, happy to help but whom are you exactly pinging? What do you need
from me or Rob?

Best regards,
Krzysztof
