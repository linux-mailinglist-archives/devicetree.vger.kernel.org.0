Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 399476D02EE
	for <lists+devicetree@lfdr.de>; Thu, 30 Mar 2023 13:18:58 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231658AbjC3LS5 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 30 Mar 2023 07:18:57 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:56216 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231665AbjC3LSb (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 30 Mar 2023 07:18:31 -0400
Received: from mail-lf1-x131.google.com (mail-lf1-x131.google.com [IPv6:2a00:1450:4864:20::131])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id CC8BF93F7
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:17:31 -0700 (PDT)
Received: by mail-lf1-x131.google.com with SMTP id q16so24021154lfe.10
        for <devicetree@vger.kernel.org>; Thu, 30 Mar 2023 04:17:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680175050;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=cAEmoOmHDUyz32tedMlQ2r4Q5K5jN7ua9iB3PWYwB6U=;
        b=KDp703UabDwigYmNle2sIZ7CIQJJH9DpN8rGG+9cuS40rdVWKemJRTr2yBqXk/ouMG
         e1S7gBjZubBMQ2HBY19fogoNkPqVbBw89kEsWr6eaeuGKGwx0qpJFNxRSEMMotR9UkTJ
         xhsQMSTffJMJICmAkUIVTJTtgmEh/T88yxrQpL17X3/ABUq1CQ7ZxhYzgjQsYjQUWTsz
         zGsDSzDMvvk6RU8/y0gj5ZEVH3tsv+ZZlj9dhcvOFbDKtBwWrkrqQz15yWF8m2NuvDgJ
         ARKyd7UIPt3QvBXY9Gvm12mGiUYvCIcKeAh+vTYPh/SaVYTC94AaChFIixGci2H1EFAM
         MeuQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680175050;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=cAEmoOmHDUyz32tedMlQ2r4Q5K5jN7ua9iB3PWYwB6U=;
        b=i6Q49XUGYl7MMgMGWnjRkxJFMpeRj9MM0EQ/iW+QIVXo3spVZcxgxwRUe8fiBMnu9A
         Mb64fQsLynWYZjScOR47Bndr5bmRHRdSMQ1lOvDjTSiok5n3QcoUsrvi1Y3ujutoNOVx
         /+RO3fI6sR1TrEuMTrXto0cqXJxtjBuLqtvKOAjGu52S6x741g3AjszRfH5LcjBAY8WA
         nKYdc79gToSKJN89zOI9+pUUyFREtj4uISfHeN61xUt2TUb4n+yOjiFJm2uewzeZjZzJ
         1oBk6fiPo2uUDF6Y4YEcdas/sYmQlZDs7CT3yq/aJwscvgqCEFKN9yeugFc9kxI7uACP
         ojlg==
X-Gm-Message-State: AAQBX9dj1EwRuuIXrtl8p4huCRPa9hFA8T/u+fHBE2EoggJlbv/bVVav
        IpTPpkxlajJg6mBb6WUNNs80xg==
X-Google-Smtp-Source: AKy350bebCbdkam+eHltMXBgO/M8ORUisIwArR+3AdFeJUSSdQJ27xoIAnaKb8Ocn9Ozpe/MYmsv7g==
X-Received: by 2002:a19:4f51:0:b0:4dc:790c:9100 with SMTP id a17-20020a194f51000000b004dc790c9100mr1705122lfk.12.1680175050041;
        Thu, 30 Mar 2023 04:17:30 -0700 (PDT)
Received: from [192.168.1.101] (abxj225.neoplus.adsl.tpnet.pl. [83.9.3.225])
        by smtp.gmail.com with ESMTPSA id x3-20020ac259c3000000b004db2c5c895bsm5789641lfn.234.2023.03.30.04.17.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 30 Mar 2023 04:17:29 -0700 (PDT)
Message-ID: <2fbb605a-8ec4-3cd0-3200-5997149bf478@linaro.org>
Date:   Thu, 30 Mar 2023 13:17:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH 2/2] irqchip: irq-qcom-mpm: Support passing a slice of
 SRAM as reg space
Content-Language: en-US
To:     Shawn Guo <shawn.guo@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Bjorn Andersson <andersson@kernel.org>,
        Thomas Gleixner <tglx@linutronix.de>,
        Marc Zyngier <maz@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Marijn Suijten <marijn.suijten@somainline.org>,
        linux-arm-msm@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20230328-topic-msgram_mpm-v1-0-1b788a5f5a33@linaro.org>
 <20230328-topic-msgram_mpm-v1-2-1b788a5f5a33@linaro.org>
 <20230329034958.GC3554086@dragon>
 <c42b8c24-2159-64ae-d36c-92c69274f24f@linaro.org>
 <20230329132819.GA3590215@dragon>
 <14350eba-edb6-0243-5451-2e2b7d1bd3fd@linaro.org>
 <20230330015012.GC3590215@dragon>
From:   Konrad Dybcio <konrad.dybcio@linaro.org>
In-Reply-To: <20230330015012.GC3590215@dragon>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org



On 30.03.2023 03:50, Shawn Guo wrote:
> On Wed, Mar 29, 2023 at 03:30:12PM +0200, Konrad Dybcio wrote:
>>> Otherwise, I do not understand why devm_ioremap_resource() cannot be
>>> used.
>> drivers/rpmsg/qcom_glink_rpm.c calls devm_ioremap on the entire
>> RPM MSG RAM.
> 
> qcom_glink_rpm driver remaps the entire RPM MSG RAM, but it doesn't seem
> to request any region.  So MPM can still call devm_ioremap_resource() on
> its slice, no?
FWIW, I did get a 'can't request resource error'.

Konrad
> 
> Shawn
