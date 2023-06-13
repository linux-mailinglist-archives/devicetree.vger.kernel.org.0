Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7949672EB8E
	for <lists+devicetree@lfdr.de>; Tue, 13 Jun 2023 21:06:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240565AbjFMTGR (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 13 Jun 2023 15:06:17 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:51354 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S240521AbjFMTGP (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 13 Jun 2023 15:06:15 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 65AF410F8
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 12:06:11 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id a640c23a62f3a-97881a996a0so1030601866b.0
        for <devicetree@vger.kernel.org>; Tue, 13 Jun 2023 12:06:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1686683170; x=1689275170;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=XYmlSD7WyepQOyhNhp54Niq78xUJpaKGxkmO8h9s5oU=;
        b=iO+NWqn6ohw4WxJtD0cZS+hlUuNoWD110+yALzuqFYNfAy/E6mK1roLnYQsZG47ZJi
         feJg1JZsVF9sSTV8M1Rl6lFZwxBESmfZGYpTbEDBQIPlgetDQoPtFeFeErIp236RWjM+
         aXwNtDom0Ka9z0BaDyE67CV08CuXkUFgj9dHt+oSi+csHowbwhFq6AIvNIwbTIcH8T9m
         MIEyUDqq5R7UxG97B1BiTde9/HS/5zu0axcfPfiO8E0pBKMZtKCMbY0qfFNhtrbgt4ZA
         GYB0yDQM8fXX1B23llANAkpgKnhv5jA4+hSX5pqu73BaAXm7+chGs9y9DRbvJ51TkNX/
         oj3A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1686683170; x=1689275170;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=XYmlSD7WyepQOyhNhp54Niq78xUJpaKGxkmO8h9s5oU=;
        b=LGyomQ5uxe8zhJ0kbOCZ2knAAjtRXkM3yC2eZvOXZhIaJ2c2lTfzfl3V1zHYPISBD7
         uDCAdcZAWvM7lNxKc+vwbOUld61/feP3bgty164bMb+5KwCIfvvZVSYarC7G5P0qVEGp
         gbLb+4gT/pzepGq7OGJ13WcIIrxbdqXh/wrCGmOs9NYX/6pTX+9DsL4Bac5rO+oRN+ud
         nM1r7aBkSnDpZc6s6XV4UdiSOdljjgjYPenrlcg/7wJShIkRytYZ2/3XIRfCVnuGzjYn
         21JBS17SvW8ahMeA3mV27/Sow8MHbTgrksZRVEnoLxD1fSg0LQlHJRkIsxaCe7XmXOom
         eRhQ==
X-Gm-Message-State: AC+VfDxguBCg2VCH+ScCkO32c2Nm95FTPRnbqVFbPpDptV3OjZSWFB/j
        GIdveoDV/u54pSZnRFRg25yQ1g==
X-Google-Smtp-Source: ACHHUZ6cDi498virvgK6oIK6KtOo5PUvyXc98NjYzoLwakxMbu3jszplDt3xGHX3UTx2o0kfu3dnYg==
X-Received: by 2002:a17:907:3607:b0:8b1:7de3:cfaa with SMTP id bk7-20020a170907360700b008b17de3cfaamr12843258ejc.3.1686683169903;
        Tue, 13 Jun 2023 12:06:09 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.219.26])
        by smtp.gmail.com with ESMTPSA id q2-20020a170906360200b0096a27dbb5b2sm6892537ejb.209.2023.06.13.12.06.08
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 13 Jun 2023 12:06:09 -0700 (PDT)
Message-ID: <e78d3ea1-9acb-1d4f-1b9a-0bab75613189@linaro.org>
Date:   Tue, 13 Jun 2023 21:06:07 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.12.0
Subject: Re: [PATCH v2 0/8] rtc: isl12022: battery backup voltage and clock
 support
Content-Language: en-US
To:     Rasmus Villemoes <linux@rasmusvillemoes.dk>,
        Alessandro Zummo <a.zummo@towertech.it>,
        Alexandre Belloni <alexandre.belloni@bootlin.com>
Cc:     Andy Shevchenko <andriy.shevchenko@linux.intel.com>,
        devicetree@vger.kernel.org, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>, linux-rtc@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230612113059.247275-1-linux@rasmusvillemoes.dk>
 <20230613130011.305589-1-linux@rasmusvillemoes.dk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230613130011.305589-1-linux@rasmusvillemoes.dk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 13/06/2023 15:00, Rasmus Villemoes wrote:
> The current handling of the low-battery bits in the status register is
> wrong. The first six patches fix that and implement proper support for
> RTC_VL_READ.
> 
> The last two patches allow describing the isl12022 as a clock
> provider, for now just as a fixed 32kHz clock. They are also
> tangentially related to the backup battery, in that when the isl12022
> is not used as a clock source, one can save some power consumption in
> battery mode by setting the FOx bits to 0.
> 
> v2 changes:

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

Best regards,
Krzysztof

