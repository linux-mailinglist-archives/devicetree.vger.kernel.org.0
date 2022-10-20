Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 544216067B1
	for <lists+devicetree@lfdr.de>; Thu, 20 Oct 2022 20:02:33 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229968AbiJTSCb (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 20 Oct 2022 14:02:31 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:59172 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230230AbiJTSB2 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 20 Oct 2022 14:01:28 -0400
Received: from mail-qt1-x833.google.com (mail-qt1-x833.google.com [IPv6:2607:f8b0:4864:20::833])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 77F1D13A7DC
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 11:00:12 -0700 (PDT)
Received: by mail-qt1-x833.google.com with SMTP id bb5so85261qtb.11
        for <devicetree@vger.kernel.org>; Thu, 20 Oct 2022 11:00:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vcud6GmRc8M3n3Ve2sBGM7sjO9ABnr1C3YQxqchZffg=;
        b=P0Zijn/1TMBrCusrq+G/g6b6XmgHGRA3whhBeRlmvKZhbGrvlb9vETOqZMK52I8+XV
         If2lhmTWkB1M1sDQ++kZmYlaNbtQD6OX8jkk1BTjj+DVoRZRxCibSuF3MFg6EqGkxl1L
         l5/f67hr/SLYPpETvDiMKBzPhvydg1+8BAk6EZ6d7udBhFWGKOko5bAAgDEMdm+CgcY9
         Mq3WdXLU28Rbr22uvq37i//fXwMkGbUqQkMVX9kXc5Ay7pzN9sRvCrXm9GpKoS/Jb1D6
         d1aAK+VwPrECbec5Gl/vh2vxKSdQZIhESJcgf0FqrzPWwJCHnvI0dldNK2h3GAa2pfDd
         r95Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vcud6GmRc8M3n3Ve2sBGM7sjO9ABnr1C3YQxqchZffg=;
        b=nXYqpyO6zsznOoliM92td1Egc2QeuIm9ilNgjVVG0q5B22W4Jtmt6aIgpMaYQl0LXx
         ysAkBfunIMEdcqANAfNUIcaeJa+nUN7kgtzFJ/JlIB1P9SDCtG8ZrSibKufQq4g8m4/D
         J196bnqCjHGz8HUfLOXi8h3Q/Fqk6jPSqasUcSt1GR7Nj6N5wbfnIzhTsXm8TOjh6tZ0
         kfb1VcnBmcY0KUwT2TEZcKn3crcioYq2P8GjY5MA3V1ilmJIfPfcowMGwtHmgjQBFesN
         eBbNz+4oaMC4gENcrtmcVrUDy1V2qMYt8BCwieFMrSgPEy0SGddWf0IuGzJU0d4+m/l4
         TB3w==
X-Gm-Message-State: ACrzQf1A3KIQlJ81Ewa3xhd4iyfb99G8+Ia/2YDkNdZT459W+qfzzgnT
        Z9ABh4vgmuZk8caR41+estxVWA==
X-Google-Smtp-Source: AMsMyM4MBubWhUDi8+agVCCSkJpuGsQj88x2lbtGZw6UCumfjxwipV8nZNyThVVCHJprwhWe2ofODg==
X-Received: by 2002:a05:622a:1793:b0:39c:f3cd:e725 with SMTP id s19-20020a05622a179300b0039cf3cde725mr12710023qtk.333.1666288782969;
        Thu, 20 Oct 2022 10:59:42 -0700 (PDT)
Received: from [192.168.10.124] (pool-72-83-177-149.washdc.east.verizon.net. [72.83.177.149])
        by smtp.gmail.com with ESMTPSA id cj24-20020a05622a259800b00399fe4aac3esm6540268qtb.50.2022.10.20.10.59.41
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 20 Oct 2022 10:59:42 -0700 (PDT)
Message-ID: <835d3432-daf2-e824-5c84-7d47604f586f@linaro.org>
Date:   Thu, 20 Oct 2022 13:59:40 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH v2 2/3] arm64: dts: qcom: Add base QDU1000/QRU1000 DTSIs
Content-Language: en-US
To:     Stephan Gerhold <stephan@gerhold.net>
Cc:     Melody Olvera <quic_molvera@quicinc.com>,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        linux-arm-msm@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20221014221138.7552-1-quic_molvera@quicinc.com>
 <20221014221138.7552-3-quic_molvera@quicinc.com>
 <56af2a04-1b21-000d-e3f9-86b6ac74aaf2@linaro.org>
 <a0032338-482f-0de7-5952-c3c8b8423df6@quicinc.com>
 <50372a15-56ce-6ad6-f622-00624b909db8@linaro.org>
 <Y1FTJgloEi5ag2/j@gerhold.net>
 <9fbe1bf5-a84d-c56b-1c0e-6848ee3d30fe@linaro.org>
 <Y1GCs6uCz5o9az+v@gerhold.net>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <Y1GCs6uCz5o9az+v@gerhold.net>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 20/10/2022 13:18, Stephan Gerhold wrote:
>> No, it puts attention to the board designer that he needs to provide the
>> clock in his design.
>>
>> We had such talks about other platforms, although I do not have any
>> recent bookmarks. Something older:
>>
>> https://lore.kernel.org/all/3382034.5ADO0F7naY@wuerfel/
>>
>> https://lore.kernel.org/linux-samsung-soc/53DAB0A6.9030700@gmail.com/
>>
> 
> If I understand you correctly your argument for having the clock in the
> board DTS instead of the SoC DTSI is:
> 
> The SoC DTSI describes the components of the SoC, while the board DTS
> describes the components of the board (built around the SoC). The clock
> is part of the board (and not the SoC) and therefore belongs into the
> board DTS and not the SoC DTSI. Having the SoC/board components clearly
> separated ensures people writing new board DTS pay attention to
> everything board-specific.
> 
> Correct? This sounds reasonable to me.

Yes.

> 
> However, the main question of my previous mail was: Why do you
> alternatively recommend to keep the clock defined in the SoC DTSI and to
> just put the clock-frequency into the board DTS? This sounds like a
> contradiction of the above to me: the clock is still (partially)
> described as part of the SoC, even though it belongs to the board.

The proposal is a trade-off, compromise between code duplication and
above recommendation of splitting SoC <-> board.

As you said, all boards will provide this clock, so it is reasonable to
put some pieces of it in the SoC DTSI to avoid duplication. But the
final piece - what clock is there exactly (model, frequency etc) should
be put in board DTS to clarify that this comes with board.

> Someone writing a board DTS should not just put attention to the
> clock-frequency, but also if they have a single fixed-clock or
> maybe some kind of clock-fixed-factor setup, as I wrote.

True. If such setup is probably, then my recommendation would be to put
entire clock to the board.

Just note, that even in proposed frequency->board DTS, it is still
possible to use the clock-fixed-factor.

Best regards,
Krzysztof

