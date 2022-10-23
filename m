Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 38A256092D2
	for <lists+devicetree@lfdr.de>; Sun, 23 Oct 2022 14:43:08 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230139AbiJWMnG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 23 Oct 2022 08:43:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:54692 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230165AbiJWMnE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 23 Oct 2022 08:43:04 -0400
Received: from mail-qt1-x831.google.com (mail-qt1-x831.google.com [IPv6:2607:f8b0:4864:20::831])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 9DB1A71721
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 05:43:02 -0700 (PDT)
Received: by mail-qt1-x831.google.com with SMTP id s3so4304297qtn.12
        for <devicetree@vger.kernel.org>; Sun, 23 Oct 2022 05:43:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=46zbXlP/ekvHlc+rvAlAXIoiwZK14KNjZ+MO6cDDUDg=;
        b=CrPBfYDHLhFnjyw/m99gjZW2ejknna7AAoRVlnzSRZ8oPMV5V6vCj8h69ZN6S2G4cO
         1SLFj/gNo+kjnJnaN/fyoW3KYBzh6FSLR6z9ODjNEV/5P7pDjt29+0fq3DKJ3TcUJY+W
         TpX53HFYSqjPWauCFUXw/rEpbYjnLlJ6uneDdfQ39IcQ126jX3dqSXStyiNVP6fJrHQ5
         +IZCSY2mmKcLZ1BoPKvuukX3gpBfrn1vPxV7QFfS0tdftmSYwa7JJW1D6DfxiudyisZI
         kJvtYhr0fjwqPd8TnbWaC9vemBmjx2+4SSfnKZwOcb/SudrrWPi0bhj00Rz+kDmdosb7
         zajw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=46zbXlP/ekvHlc+rvAlAXIoiwZK14KNjZ+MO6cDDUDg=;
        b=yIHsegP/mVmNMJsoyGoDBD0v2Zu6ORTXRNQ4/QV3FYNlJ1G4vhSjwpyDy24Gd3anRm
         UD8gWumESIcpFdt1ORr5lSwc9IKV5F2jTF0dEsx3D9F5ZvSz4lTjvrlgG+Yv3Mq1wPKs
         15YQKwfaSYfSxQ8aezwOhg+ywqJBMx7ETexqC0xWnpjFR4T/A2CISatAl93lhQwg4anv
         PlIrwgKgF52mJ3K+to7iSdGFBq2tb4RmLQSINTAH+BaGlHLIWQJ5dbnxjeMllEh3sJqM
         XjAqjEdDwp7hmgPXA2RJxEOFr3YIjTFWdcY3fZpb1rz3EfJ1QBD6BFZJuEHvpANHzWlN
         iXFQ==
X-Gm-Message-State: ACrzQf1hTuF0qJFUvEotyY/fQkLQBaql7T48ptr5lZxraDLSZpUhN+As
        9w3vC5N7dpJflOWgn2zwlCU+8A==
X-Google-Smtp-Source: AMsMyM5sqlLeKbh9d6cm57kQ7B7rzCmNIH0msPBvDSGGCXzax8aq6bRs/Fn8qMo3Lulo3ZV1XlzRcg==
X-Received: by 2002:a05:622a:4ca:b0:397:ccb4:5dc9 with SMTP id q10-20020a05622a04ca00b00397ccb45dc9mr23365287qtx.266.1666528979536;
        Sun, 23 Oct 2022 05:42:59 -0700 (PDT)
Received: from [192.168.1.8] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id h10-20020ac8744a000000b0039953dcc480sm11023225qtr.88.2022.10.23.05.42.58
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 23 Oct 2022 05:42:58 -0700 (PDT)
Message-ID: <732c9c23-e5bd-61f6-3fea-aebb95c9bb91@linaro.org>
Date:   Sun, 23 Oct 2022 08:42:57 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 2/3] dt-bindings: clock: Add Ingenic JZ4755 CGU header
Content-Language: en-US
To:     Siarhei Volkau <lis8215@gmail.com>
Cc:     Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Cercueil <paul@crapouillou.net>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-mips@vger.kernel.org
References: <20221023123944.4103876-1-lis8215@gmail.com>
 <20221023123944.4103876-3-lis8215@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221023123944.4103876-3-lis8215@gmail.com>
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

On 23/10/2022 08:39, Siarhei Volkau wrote:
> This will be used from the devicetree bindings to specify the clocks
> that should be obtained from the jz4755-cgu driver.
> 
> Signed-off-by: Siarhei Volkau <lis8215@gmail.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

