Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2A70A60FBEB
	for <lists+devicetree@lfdr.de>; Thu, 27 Oct 2022 17:29:14 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234847AbiJ0P3N (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 27 Oct 2022 11:29:13 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235894AbiJ0P3H (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 27 Oct 2022 11:29:07 -0400
Received: from mail-qv1-xf2c.google.com (mail-qv1-xf2c.google.com [IPv6:2607:f8b0:4864:20::f2c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 0FCD417358B
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:29:06 -0700 (PDT)
Received: by mail-qv1-xf2c.google.com with SMTP id e15so1612223qvo.4
        for <devicetree@vger.kernel.org>; Thu, 27 Oct 2022 08:29:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/ho8I2hjuQ4KRMExwWrVTkbFm0U+uOPFhGOf3LHbmq4=;
        b=ltX4bNgQZpm2bC4zRz5Qt+WBKpQHorbiZzBTpGZiubYBc2OLFF5aCj0ancvrkzK9mb
         jm+MI/8xm2HsNJ7HN0irhH9B64hmAKYuMZODFNBEPz4di86sNR3WYbJGnPA63AhRTciW
         csWEVJKmC0dZGYio27GQgkCIwt9367chXgTOTHBRXzuGWPk/ztcmuTjdDKG9zXHRaqFv
         rxojz2lQIdvr8cl/bwdr/QEtEDMnwH7dVCjUISdARZI9pBNktv28nwq4QlRjRWdqM/dR
         86O5wa5YeQ3rMadMUOxpsXHEG5qiviHrR7+iq/lyeJLQ9nj6IPKmZEQiDcGdswLIYMAb
         spgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/ho8I2hjuQ4KRMExwWrVTkbFm0U+uOPFhGOf3LHbmq4=;
        b=bQfBPdyaGi6qyY0OfL6U/D6KY60T/eOQ/d6kKI2cf6OiwHLnjeYgmE/B+1PT0HF901
         EOjU0Xhz/OtmeB95xoMaBDnZzQqdbDZZQTSIGeoasojaiGce7pTIqvy2v8vGhUBKphIn
         +zikc/ZtiT5HLsAUb9/HDO7ba91tV7S43D9tw8XCaUE/1DWg3OfskiTsz2JBZs+07Gei
         ln/DDo1lumYwslKUFU/w67DAnYf38gXv9bdMloiq4AT2hSwWTXb0on2DndyirMwjetFz
         fLdVpEnXVBStSN2RHCbTXNUliC9Z2Ku894oNH283BecoeoeovhLUTbhDk4DVSk8riP6R
         DdJg==
X-Gm-Message-State: ACrzQf3V5jFG4zj1Xwa+8CpY/M7yaJ5tc1X39buzX2eNSE7LpLnIaE1v
        FpslZ0z/HpjnwD0fgHEf8BE5hA==
X-Google-Smtp-Source: AMsMyM5Hbezm0taYfwbmpsbWodah8acXu2VXqufD1EmJIPotdAddlSVk5gba1BV3mLxLvC+nKWrutg==
X-Received: by 2002:a05:6214:1cce:b0:4ad:72d5:d2e1 with SMTP id g14-20020a0562141cce00b004ad72d5d2e1mr41887469qvd.43.1666884545218;
        Thu, 27 Oct 2022 08:29:05 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id x19-20020ac87a93000000b0039cbe823f3csm1031678qtr.10.2022.10.27.08.29.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 27 Oct 2022 08:29:04 -0700 (PDT)
Message-ID: <a214f513-fe28-2096-c2b0-2107e97f3ce2@linaro.org>
Date:   Thu, 27 Oct 2022 11:29:03 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v3 1/3] dt-bindings: interconnect: Remove required reg
 field
Content-Language: en-US
To:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Georgi Djakov <djakov@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Odelu Kukatla <quic_okukatla@quicinc.com>,
        linux-arm-msm@vger.kernel.org, linux-pm@vger.kernel.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20221026190520.4004264-1-quic_molvera@quicinc.com>
 <20221026190520.4004264-2-quic_molvera@quicinc.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221026190520.4004264-2-quic_molvera@quicinc.com>
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

On 26/10/2022 15:05, Melody Olvera wrote:
> Many of the *-virt compatible devices do not have a reg field
> so remove it as required from the bindings.

and some virt have it... This should be probably separate binding or if
the list is small - allOf:if:then.

Anyway you need to resend everything to Cc all maintainers, not some subset.

Best regards,
Krzysztof

