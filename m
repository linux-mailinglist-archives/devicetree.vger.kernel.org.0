Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BF445568CB4
	for <lists+devicetree@lfdr.de>; Wed,  6 Jul 2022 17:26:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233111AbiGFP0j (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 6 Jul 2022 11:26:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40426 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232789AbiGFP0i (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 6 Jul 2022 11:26:38 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C0DDA1EEE6
        for <devicetree@vger.kernel.org>; Wed,  6 Jul 2022 08:26:37 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id c15so18947794ljr.0
        for <devicetree@vger.kernel.org>; Wed, 06 Jul 2022 08:26:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Xkg95pf2VgwRCEJJEItSiXpYFy7ka5sRDOHSa/kP1po=;
        b=mgrR+AEEAcw5j44BbEiLZ5yHDnNtDmv5N6qWIh4n5Mbxgr+3tcKJ3VoEsK00oycHEw
         DnzgC5MSJQsdW/kJ06vYz3JSSkfjmi7NLedB8PG7MXoe6fZRiequJYnaOZRI8C/Sywz0
         zttq9pBZqa393fcFB1SXhCqB8QXOXd4RaalZ9pj/jRow6w8gPmkA2//SMlmaQWZWYEAZ
         x2TWZPJzGm24uxKTvmWCR/TiWPcKG+R1DhQybNvCvZ5U13IxqAoMQDtH2PUQb2rI2PnL
         Jt3HcEIeBu/ujBsRnQOLuspaaRidDGWm77OmiF/JiwgHUpKDBLfsoveeGtSL8MQVQeyh
         8l4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Xkg95pf2VgwRCEJJEItSiXpYFy7ka5sRDOHSa/kP1po=;
        b=r/9EA7sTIEqYnRUKKH6z8oqqTBAND1b7p6EBPJYaoi+pYN13Uuf7bBQoe8KgfhVpDd
         5vp/ErtjtkrER+RA2Hs3Vmdc1WrQ1z7UXbM3W5pv2NKtfZyBCnyHTSTHO1QCTQFYr9a0
         MkSwI0jA2U184qGoow4oRA+HdNpZMzk/T1XLsFfK6Y2a8HxNUnCLAcQn5Na3HAX+0YN6
         6TnrXtJmmbwIExV9pw3nsbbh0yKcyCuLupGxXuxiMkPmh/1wQD7bv0tugq1eqA3TSrMX
         KZofUv7Ec5Abd7sbetg3v9PPbGtOp+GvJzJauceGyRrYeCtUrop0PRVf9GgmcWCBCcVc
         hbFw==
X-Gm-Message-State: AJIora/2ODC6CINayyBxJfdPr5m111Wjemb3pSwxLQOCzUlHbeAw8Odg
        wGBUD1zbF0/aS2k+vubdFEdbxg==
X-Google-Smtp-Source: AGRyM1vEohigYJQajv6ZrgS0HOTAQ6UvdgByviYEQIksiR7xKJKaCrbXgkJuVmHMZ4cb05SlvkF+Bg==
X-Received: by 2002:a05:651c:19ac:b0:25b:db26:55c3 with SMTP id bx44-20020a05651c19ac00b0025bdb2655c3mr24348102ljb.457.1657121196196;
        Wed, 06 Jul 2022 08:26:36 -0700 (PDT)
Received: from [192.168.1.52] ([84.20.121.239])
        by smtp.gmail.com with ESMTPSA id m16-20020ac24250000000b00478fe690207sm6318651lfl.286.2022.07.06.08.26.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 06 Jul 2022 08:26:35 -0700 (PDT)
Message-ID: <54e97d07-eee1-a775-5c7a-c3ba270dbfa2@linaro.org>
Date:   Wed, 6 Jul 2022 17:26:34 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 1/6] dt-bindings: clock: Add schema for MSM8909 GCC
Content-Language: en-US
To:     Stephan Gerhold <stephan.gerhold@kernkonzept.com>,
        Bjorn Andersson <bjorn.andersson@linaro.org>
Cc:     Andy Gross <agross@kernel.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Philipp Zabel <p.zabel@pengutronix.de>,
        Stephan Gerhold <stephan@gerhold.net>,
        linux-arm-msm@vger.kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org,
        Dominik Kobinski <dominikkobinski314@gmail.com>
References: <20220706134132.3623415-1-stephan.gerhold@kernkonzept.com>
 <20220706134132.3623415-2-stephan.gerhold@kernkonzept.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220706134132.3623415-2-stephan.gerhold@kernkonzept.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/07/2022 15:41, Stephan Gerhold wrote:
> The Global Clock Controller (GCC) in the MSM8909 SoC provides clocks,
> resets and power domains for the various hardware blocks in the SoC.
> Add a DT schema to describe it, similar to other Qualcomm SoCs.
> 
> Signed-off-by: Stephan Gerhold <stephan.gerhold@kernkonzept.com>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
