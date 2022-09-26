Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E0CA85EACA8
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 18:36:38 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229591AbiIZQgg (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 12:36:36 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50862 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229599AbiIZQgR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 12:36:17 -0400
Received: from mail-lf1-x133.google.com (mail-lf1-x133.google.com [IPv6:2a00:1450:4864:20::133])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6FBE8895CE
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 08:24:17 -0700 (PDT)
Received: by mail-lf1-x133.google.com with SMTP id bu25so9519025lfb.3
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 08:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=wEeVxC+Jj0fO1a6xVAekL2QQ4Xd1P/VWGsEdgl2CBdQ=;
        b=sT8KxkzW2UDi2WXZTEyY2J5g3JflTMOdIbOGrbrbhuuOQGFG/iJVVQhd36nc67SlTB
         0J/ZzB/2lVb8svWZXzfadHzUb/qzTwNi1l1+zT9SLqy54Tmb/Db8Vr+bP4ABz3nDqetp
         XDM9Rc/1sxQ32nK/w10QT+KYi25D50qEgMFBZQ2bhlxfxTETfdGmzfvn8kAHNBfC1uat
         /pY1HxrlRGuQLnlkBe89hYa/4khBneAoPUBDKWU9QSQtfW+BhrIWKKZQcxijQ6dYtaGr
         8T1mlh0co4QDyz1tkfh9CnLDhz4vdVgPk3E8X/6tSsmozf+pjmv5+vksF/djEGlLoY/P
         Ht0A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=wEeVxC+Jj0fO1a6xVAekL2QQ4Xd1P/VWGsEdgl2CBdQ=;
        b=8J8cu6MZ4q7Sq5irSwxomt3tU7p32NtIEV3hnXEBUhPJob2FC1LAlw+Z6wSZGqm1Mh
         362IM5BfSPdtlj3ZyXdMlegeqsC7wSHQyhuKwy+fVA8Hd3PenOjDMfAYBD0mePNyFZ2q
         TV3Be/d53Yjnoj1exibnsEXxRqQnqm3o0W7SBylMpedAltO8n2PNWO8UjBowbxIWN0kw
         IN5n0fKsmozzvbkT3j3GZ4trp9xPG1N5ffqukPBb8U8U+HemWG2ezbWR/3R5uEDJNAOF
         WfNLFEbt0vE/JPwZwDcI1ObDXIeh/o9U8VqxnnKtSXdnVi74ws5nQ5+6gutIfs56nmb7
         EeMQ==
X-Gm-Message-State: ACrzQf0XX4+htLzmgf2W2URwlecX348dqrUAcueYa1Flle8I+bomtl00
        1N2igQY6rwm4ZbNQ3Q+muju8Iw==
X-Google-Smtp-Source: AMsMyM4WNXvwoISkZVoHx5nmnUm0mE6iDaqETAECxbKFeL+Mxzl9IiW2l7q25sX/kIiiPL/cL73ECw==
X-Received: by 2002:a05:6512:1393:b0:48d:6f0:64c7 with SMTP id p19-20020a056512139300b0048d06f064c7mr8792725lfa.20.1664205799082;
        Mon, 26 Sep 2022 08:23:19 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id w11-20020a05651c118b00b00261e7e7b698sm2385955ljo.123.2022.09.26.08.23.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 08:23:08 -0700 (PDT)
Message-ID: <38a1959d-df60-df44-57ba-3f9012b78360@linaro.org>
Date:   Mon, 26 Sep 2022 17:22:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 2/2] arm64: dts: qcom: msm8916: Align dsi phy-names with
 schema
Content-Language: en-US
To:     Luca Weiss <luca@z3ntu.xyz>, linux-arm-msm@vger.kernel.org
Cc:     ~postmarketos/upstreaming@lists.sr.ht, phone-devel@vger.kernel.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220925172443.92900-1-luca@z3ntu.xyz>
 <20220925172443.92900-2-luca@z3ntu.xyz>
 <205a80be-de12-b610-eef2-e9e42179cf02@linaro.org> <2253302.ElGaqSPkdT@g550jk>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <2253302.ElGaqSPkdT@g550jk>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/09/2022 17:02, Luca Weiss wrote:
> Hi Krzysztof,
> 
> On Montag, 26. September 2022 10:53:03 CEST Krzysztof Kozlowski wrote:
>> On 25/09/2022 19:24, Luca Weiss wrote:
>>> Use dsi instead of dsi-phy as required by the binding.
>>>
>>> Signed-off-by: Luca Weiss <luca@z3ntu.xyz>
>>> ---
>>
>> Already sent:
>>
>> https://lore.kernel.org/all/20220924090108.166934-4-dmitry.baryshkov@linaro.
>> org/
> 
> This patch is phy-names property while the other patch is for node name, 
> unless I'm missing something.

Ah, right. -ETOOMANYPHYs...

> 
> But as Dmitry pointed out, there's a patchset to completely remove the 
> property which is also totally fine by me.
Best regards,
Krzysztof

