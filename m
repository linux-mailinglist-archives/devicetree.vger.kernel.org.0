Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4DE5C590EFB
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 12:15:17 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238253AbiHLKPO (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 06:15:14 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35078 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238247AbiHLKPB (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 06:15:01 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BC6B5ACA22
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:14:16 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id u6so489162ljk.8
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=YECTb53HoAndkqalMbx34St39877VlDrPNwS4SEDszE=;
        b=NTCmuPg9QBXs4OUITXOwFvC8p3cx4CDvPjB2vSwJXYKNEVXu1EKVcG/se9FTnIZkLb
         3AUqiq75S6ACbH2HIGCRLGBR5bTS2bkXV5Af9aG3inlxaZMFKDXXlrnfhYY7vZWwTY+w
         XlDTCHfsfsLaGCfxYhCAxsncqC5OKRis2l/hat7uXslLWTMso11XQDm1CYU9kCndmATO
         zCfXvwNtFFtniU+E81uPbhNoIgi0iu4nfhSozZp6ioZ7977Xn/UYACbJTO1Nert6mIdJ
         fhHVVQn+m+frZR16vq2hTLuciKeVTFeJIdTmjGh39y+sN6uddiW6xjUOfKwPSxltKVdQ
         Qgfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=YECTb53HoAndkqalMbx34St39877VlDrPNwS4SEDszE=;
        b=E+7DnzVpJqhRAWkUeuT3U/Vm9XLnU/f6imuWfNvCPs90sGEnWWQC67RKscj3VNninH
         ll4b5fDSTcfn/cqeoQXGKdD5pQ2GfeGUgLSxM3sAHxwxtWHi464vtteBhQJ1X6T6sIg9
         ZJXQKUCE3VRbFNJUwxA60IIQUrnkiUa12Efkq3Z2x35sk77P8BFvBD9DWGr3tUJTH2E5
         jVw1ZaFbt5x5pw0wipZf9vBmwSHi7KpWcMTQPIsQNGXvnw36ceu+g1CzxvlR+ted7mcW
         FryrrWuEYRx96c0V+kPy346yJpna/vqLjml02o8IIxuvPgUCJ5ozCzDtXpUvvQS9QX9S
         jnqQ==
X-Gm-Message-State: ACgBeo3etIZh2+e5EdUV1vMQ0s98CpjJLV6CMPJI6OPxEg3w0ju8lyV0
        SOXTwvcP+eUkKvugH1znv92dPA==
X-Google-Smtp-Source: AA6agR5D1bNCHC+hBXhXpTaGgi4e/aTbcE+ZqG+Q6dhV4Z92pG5tLSg+X3pPpBZGuykQMTfFqvxI+g==
X-Received: by 2002:a2e:9b42:0:b0:25e:59a7:6734 with SMTP id o2-20020a2e9b42000000b0025e59a76734mr903621ljj.346.1660299255073;
        Fri, 12 Aug 2022 03:14:15 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id x25-20020a056512131900b0048a0e948c34sm160957lfu.195.2022.08.12.03.14.10
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 03:14:14 -0700 (PDT)
Message-ID: <f1add9c7-fc2e-a600-49a6-a6579f17db1b@linaro.org>
Date:   Fri, 12 Aug 2022 13:14:08 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 0/6] i2c-imx-lpi2c: add IPG clock
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, aisheng.dong@nxp.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        xiaoning.wang@nxp.com, Peng Fan <peng.fan@nxp.com>
References: <20220812043424.4078034-1-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812043424.4078034-1-peng.fan@oss.nxp.com>
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

On 12/08/2022 07:34, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> The i.MX LPI2C needs PER and IPG clock, not just PER or IPG clock.
> This patch is to enable both PER and IPG clock for imx-i2c-lpi2c.

This patchset breaks the ABI and is not bisectable. The justification is
very limited (one sentence), so not really enough.

Best regards,
Krzysztof
