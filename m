Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C7B8D5B1935
	for <lists+devicetree@lfdr.de>; Thu,  8 Sep 2022 11:50:27 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230252AbiIHJu0 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 8 Sep 2022 05:50:26 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:47762 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229663AbiIHJuZ (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 8 Sep 2022 05:50:25 -0400
Received: from mail-lj1-x231.google.com (mail-lj1-x231.google.com [IPv6:2a00:1450:4864:20::231])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 340008C020
        for <devicetree@vger.kernel.org>; Thu,  8 Sep 2022 02:50:24 -0700 (PDT)
Received: by mail-lj1-x231.google.com with SMTP id z23so19251984ljk.1
        for <devicetree@vger.kernel.org>; Thu, 08 Sep 2022 02:50:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=Y3v7pRi+tVBRZvaTvwH90ofh1xBG5z4deIwZ+rYQsnc=;
        b=SAjdlf1QGGT1MPR+i7hOFkD/3puz4ATrV6uXSZDMlyh1uKI8GInTdJruOC0eBEzE9u
         +xYzQKfHOPgnuUsZUG3ACaticqDa1wVVHTeh9hgZ7RavFvcageWi/MmzfVdUqqsfkBGF
         AYRDvQlzY51pA1Owxlbmx/8p7Yu18S6WkerAgkm8lmRtImeHD6DJGEOSL97SVAkbrexf
         hNFJ2P89tzGk+Bd+X70p0y8swln0FOxUe9wX241RQNj8PQgabRfglfeah9ONuWTvS+p9
         GKyA96o+lSIcXHws9Sdn1RtnTax2G0/IM2i0axV8H6wxXuDyDh07KwFvoKQF/c3AvYq5
         BERg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=Y3v7pRi+tVBRZvaTvwH90ofh1xBG5z4deIwZ+rYQsnc=;
        b=ZGxzA8nGXHtHMUYs8iBY+3iNOvvXKF8wb8CBxI5RffrRmNSaFuz7+s/GSPpvblKrDD
         PdYzcxUn7ne8cyvdp3TCiLS3+qgkM9bcvW2xvaj5rP6VjOMemXRsT055upQ2H/IWdJDX
         r99sm+z3FZYsUIuxaPm/R6CL0U87XkytmvMSaEh6FLcv7pVao6MUb/DrOS2UPs90JkKb
         HIFxh/+gL3sfljbwmD0toNVhJxWeINcdv1elGw3UVDUJiRhhwXPfcHcCdPddcTUQmZBC
         r4yhwI6Zn7IXZi0ppPuBlYvQn+m2MW6t7EcpDFWnm+uxMYqUKPmjytN/ev+MexgY1s2h
         vAyQ==
X-Gm-Message-State: ACgBeo2E/O/CUZZVzQ9c6PQaXdlUX6twlcI7J38f0i1p6Lqri+tewNgM
        IUmgwT/vdKRe+eF3ofDuycOnyg==
X-Google-Smtp-Source: AA6agR4dj8k23Z+vBjoPtkMhpmKM+blYFxKZMvWEK6P0qe0LdQE2MXVGm5aD4eenyTQPoysPE9Jqzg==
X-Received: by 2002:a05:651c:4ca:b0:268:10c2:87bc with SMTP id e10-20020a05651c04ca00b0026810c287bcmr2380707lji.241.1662630622608;
        Thu, 08 Sep 2022 02:50:22 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id p41-20020a05651213a900b00494781160f5sm603554lfa.292.2022.09.08.02.50.21
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 08 Sep 2022 02:50:22 -0700 (PDT)
Message-ID: <1658f6d7-b014-5e38-cfed-60befd7b0dd4@linaro.org>
Date:   Thu, 8 Sep 2022 11:50:20 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v3 6/7] dt-bindings: remoteproc: qcom,msm8916-mss-pil: Add
 MSM8953
Content-Language: en-US
To:     Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Bjorn Andersson <andersson@kernel.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Mathieu Poirier <mathieu.poirier@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sireesh Kodali <sireeshkodali1@gmail.com>,
        Luca Weiss <luca@z3ntu.xyz>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, linux-remoteproc@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220831134626.2803117-1-stephan.gerhold@kernkonzept.com>
 <20220831134626.2803117-7-stephan.gerhold@kernkonzept.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220831134626.2803117-7-stephan.gerhold@kernkonzept.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 31/08/2022 15:46, Stephan Gerhold wrote:
> Add the compatible for MSS as found on the MSM8953 platform.
> 
> The situation is similar to the existing bindings for MSM8974: there is
> an additional "mss" power domain that must be voted for while starting
> up the remote processor. The difference is that on MSM8974 the power
> domain is represented as a regulator (firmware expects specific voltage)
> while on MSM8953 it is represented as power domain (firmware expects
> performance state instead of voltage).
> 
> Handle this difference by adding the "mss" power domain as optional
> third item, and then restrict it (and make it required) only when using
> the MSM8953 compatible.
> 
> Co-developed-by: Sireesh Kodali <sireeshkodali1@gmail.com>
> Signed-off-by: Sireesh Kodali <sireeshkodali1@gmail.com>
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
