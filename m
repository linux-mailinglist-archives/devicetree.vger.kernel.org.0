Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 431BC575E8A
	for <lists+devicetree@lfdr.de>; Fri, 15 Jul 2022 11:30:44 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231265AbiGOJ2X (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 15 Jul 2022 05:28:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:45506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232300AbiGOJ2W (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 15 Jul 2022 05:28:22 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E73157BE1A
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:28:20 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id p6so5073832ljc.8
        for <devicetree@vger.kernel.org>; Fri, 15 Jul 2022 02:28:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=7lnwGJuJS3JwMa5PZrDK+YnGfIocMyqjmMuVUsHWnFs=;
        b=PjOdX+ax3j4oTZc9QkB89uw2V8hb/b7Q8lrM23/+vjehQHqBjkIFSn1on+yOfZHEEQ
         EF9DunWzxYuwHKPOFbLyyEbUeLB8oF+JGBvgjqJXJ46RdxQgaMFYVsU3I8Z243ZvpG67
         AOQ4F52TcS/w3Gku5wHpxrXeIssgrxw9xDOo6BX4MGDPkKFTUHVl/48On2CVaimfBWzz
         w/38obZgvZATw8yolZLPRzsuMKqWXw7aSDu4N6+szbCO7E+l0NePOKJ9i16raKJ/0RUR
         NnacdhoT1QwXIo2VOVss6zSma/Q6KX1KbKMvJLeFhfByyHL4i17fcVrYakvC9XI1eDML
         UYsQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=7lnwGJuJS3JwMa5PZrDK+YnGfIocMyqjmMuVUsHWnFs=;
        b=zyzAdQh/1XINEcahUq+Niuj4MZPau2zq0An5BscZU1HENWgeCdzWZpuEXbo74yrB7j
         OMSV5XB66axXqB5l7jtz9rjiD/eaWbg5aSB3oIt8NFPdiEfC23jx7GcrqswxHECGbkha
         L3FjSAcNVhMHqHLAzOw8B4h3CVqy1rANlDXlYFV6UI6ZjJMtgokirEEowZyBsVLtAwbN
         2hjuubwL4PjatpsMRP4TNSXEYFJPXRLpczx1jlVkZ3p8f2mUfdY6znIFzqTujxMoXytq
         BGz2g5O8w2qqh3UoAQ4D+vAb3Gck4pc7gSo7d/9gsSFywf63bhjgyHwykfsbc1PuoKWt
         uidg==
X-Gm-Message-State: AJIora8i/8FdzJm+VbaputPtacw17mz40nuHYCowk8+CjZPBLCKMRhyF
        f3J+YPOVUQ3iSq6seUyeqCiyDg==
X-Google-Smtp-Source: AGRyM1sqMI4ANNf8TILJ6vnguXSpcG4A5XgKPbojcyF2918XJ1JbTMll8Bs3Lrwb0U+PWZeyCNi3Yw==
X-Received: by 2002:a2e:901a:0:b0:25d:7d6d:42a6 with SMTP id h26-20020a2e901a000000b0025d7d6d42a6mr6213267ljg.301.1657877299361;
        Fri, 15 Jul 2022 02:28:19 -0700 (PDT)
Received: from [10.0.0.8] (fwa5da9-171.bb.online.no. [88.93.169.171])
        by smtp.gmail.com with ESMTPSA id y18-20020a0565123f1200b0048a228f1d8esm301080lfa.80.2022.07.15.02.28.16
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 15 Jul 2022 02:28:18 -0700 (PDT)
Message-ID: <b912d273-431f-9c7e-a100-4ee967aa4753@linaro.org>
Date:   Fri, 15 Jul 2022 11:28:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v3 28/30] phy: qcom-qmp-pcie-msm8996: drop pipe clock lane
 suffix
Content-Language: en-US
To:     Johan Hovold <johan+linaro@kernel.org>,
        Vinod Koul <vkoul@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Kishon Vijay Abraham I <kishon@ti.com>,
        Dmitry Baryshkov <dmitry.baryshkov@linaro.org>,
        linux-arm-msm@vger.kernel.org, linux-phy@lists.infradead.org,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220714124333.27643-1-johan+linaro@kernel.org>
 <20220714124333.27643-29-johan+linaro@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220714124333.27643-29-johan+linaro@kernel.org>
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

On 14/07/2022 14:43, Johan Hovold wrote:
> The pipe clock is defined in the "lane" node so there's no need to keep
> adding a redundant lane-number suffix to the clock name.
> 
> Update driver to support the new binding where the pipe clock name has
> been deprecated by instead requesting the clock by index.
> 
> Signed-off-by: Johan Hovold <johan+linaro@kernel.org>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
