Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id BC09C5AD7B7
	for <lists+devicetree@lfdr.de>; Mon,  5 Sep 2022 18:41:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231810AbiIEQlF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 5 Sep 2022 12:41:05 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231765AbiIEQlE (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 5 Sep 2022 12:41:04 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E9F5F5F238
        for <devicetree@vger.kernel.org>; Mon,  5 Sep 2022 09:41:02 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id w19so9756155ljj.7
        for <devicetree@vger.kernel.org>; Mon, 05 Sep 2022 09:41:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=lUVY9wLQD/KhYbvUWN5fb2ErW+DbSkU8EoAMBzx1S5U=;
        b=WC1h+oYOSZiMWUOdunF0j0EDSmX15JVM2O79DuI38xjocndQ6kMJQ16P39uIzVRh4h
         WqY+C+gkZstzumL2q66wpLvwl7pFGU+fDbfpmLJ7MkD7lZMhBkQ/DUV6lBeEql2N5j4V
         qOoJNBdMoxVeziWPoHYlbxKatnRHcmKCN7nB8G9AB9JEcHlYsdvnWEsPDk+g2fRU89e1
         tyenC9hjxteWi5vOkYPTb6trUJ9NrwKSARrrbiMOMciQ3G71h07GhVO67m8OivtRq7ab
         EjqXohSPn3IcWEB5LHRjeE6j88lN5xh1fAuSY5t6KrCgtbnBAa+BufI849Z0xDmLlNlp
         tyRw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=lUVY9wLQD/KhYbvUWN5fb2ErW+DbSkU8EoAMBzx1S5U=;
        b=piC5ApdvgiDW+WV3UX0GU1BIiRNcJzB0Pul33067zH5f8ruIs7tdCm6vRE4Trny9E6
         xA1dnXpEzi70Nj3hbDlr2w2EJN6C8nkXG0iM8w/3ughS4xNyc6rY54S3XYwZxF6RoypH
         +gPwSalmWlqjdvG6kTIsT9t1Mmg0Fa++JaVXz1Xo65cac2HN/TwwvVfVtLm0Y8qFmvUc
         JbjLsU6spP8Gi6NMOd3KEFXUypfccnnq7hPonvPCVrKVkJPQdSNpu7CRt5lfWw+CwQF6
         Y/9j1pQvSNTjtLhzwqibCQceDxlVNFYyAUszut2jEkvUoRXddpAg8ppY612bU4ETojdD
         /8tA==
X-Gm-Message-State: ACgBeo3Ggpx74MLuxUtP4QsInY4IM4rvgzCyjU1Loi6g5DUYNFOqxrtA
        jolg5y+P7U2JoY1GZP1gkjTMaSh625ejCA==
X-Google-Smtp-Source: AA6agR6HLS4+eFG4fIaVMDGpISoxeLNvbeLnz1eGC4tU9uQhcoLlsR1quf0rWJIWZHNMR7k7Q+FPhA==
X-Received: by 2002:a2e:a913:0:b0:25d:3128:21af with SMTP id j19-20020a2ea913000000b0025d312821afmr14872323ljq.58.1662396061335;
        Mon, 05 Sep 2022 09:41:01 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t18-20020a192d52000000b0048af749c060sm1236556lft.157.2022.09.05.09.40.59
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 05 Sep 2022 09:41:00 -0700 (PDT)
Message-ID: <84095d0e-28a1-885b-8217-f787c4cf338d@linaro.org>
Date:   Mon, 5 Sep 2022 18:40:58 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v5 1/2] dt-bindings: arm: qcom: document sc7280 and evoker
 board
Content-Language: en-US
To:     Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>,
        LKML <linux-kernel@vger.kernel.org>
Cc:     mka@chromium.org, dianders@chromium.org,
        Andy Gross <agross@kernel.org>,
        Bjorn Andersson <bjorn.andersson@linaro.org>,
        Konrad Dybcio <konrad.dybcio@somainline.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        linux-arm-msm@vger.kernel.org
References: <20220902080912.118592-1-sheng-liang.pan@quanta.corp-partner.google.com>
 <20220902160845.v5.1.Ief93544cd0cbfa412092f5de92de10d59a2a5b3a@changeid>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220902160845.v5.1.Ief93544cd0cbfa412092f5de92de10d59a2a5b3a@changeid>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/09/2022 10:09, Sheng-Liang Pan wrote:
> This adds Chromebook Evoker to the yaml.
> 
> Signed-off-by: Sheng-Liang Pan <sheng-liang.pan@quanta.corp-partner.google.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
