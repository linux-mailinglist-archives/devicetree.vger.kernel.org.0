Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C6C3C590EDB
	for <lists+devicetree@lfdr.de>; Fri, 12 Aug 2022 12:12:19 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S237540AbiHLKMS (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 12 Aug 2022 06:12:18 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33556 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S236601AbiHLKLx (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 12 Aug 2022 06:11:53 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id AB036AB421
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:11:47 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id z6so699666lfu.9
        for <devicetree@vger.kernel.org>; Fri, 12 Aug 2022 03:11:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=p06/CUFAIxnHOLktofJsRrc1ieWehSwl4Ru1R3ZtoQ8=;
        b=w/gg0HUEK+BcfCmjE8wk0QG+KXj13i0L0vh4h1/5Wi/tBSPmwpxckBkAQL4YrNhgAn
         QInkHQWDABPgLXLECJCDAkLLxzf9C+NXuDewfvEp2Znc+W7df05vdFHTvPO9CqchgQ1U
         E1UB7xd9TrcltQJLpgBCqN/VHnKoPebkmr59ITAweKMkuqWZtDn0LFa8LrxNo9JIZbar
         mPLT9Q+JE0fM+AFTuSGehXUxwldMPTxHoejtwLaPs+ORmcfS7lAgC5YXObO/Tb2lTw6l
         KXdakh83/0BeEcqeq2QA4QM/6g+wjldRWXJymgnahluTZeTpcZ7xqexfk5K1Mdysck4j
         k1PQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=p06/CUFAIxnHOLktofJsRrc1ieWehSwl4Ru1R3ZtoQ8=;
        b=PicRTYVU29LPUBG3bh8EJLUTAHanOisxY4P6pLYC6cYHPJNr2pysILXnZATxnA0Zpo
         GX839ncJkuZLRSOb1DSMd5zAXFkc0j9jdzaAH18OuuLHVc4rnmcgS17TEZ9SC++gDv6P
         2tYwkbAqkaoY0AYBtkZLtR9/ncuXw/ZkpAJ9glqRa1ICaFsRlg1TiL2tTN1doPE7eb3/
         aaIMj6myI31pFm/e3gKwhFe0dlQcOHO/jgfs9L6DZ83VkdKaEKmSW2Zn09G4O6Lt1jjD
         BAqoxHfMq/aCp6PCb+E0ONC0yETtEsEKPiKBnkeUpDljYUw57to0KSB3jUjdDIUZZii4
         v0RQ==
X-Gm-Message-State: ACgBeo0+OaaXwmkMquQAJdtgdm5Cr13bHfv5hHzGFCaGy/Ru6NXCYf5b
        ZGX77CrA5GVPT9eSdUgEr7/qlg==
X-Google-Smtp-Source: AA6agR687wf0BTv2irs4r1/qRjnlBaTO0cgA0hhe+/M/e1KfSzhFJrZ77CPuzXviP+IXauDjhk57EQ==
X-Received: by 2002:a05:6512:3b9d:b0:48b:6d3:d257 with SMTP id g29-20020a0565123b9d00b0048b06d3d257mr1053414lfv.496.1660299106046;
        Fri, 12 Aug 2022 03:11:46 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id 3-20020ac25f03000000b00489f0c8bddesm159241lfq.207.2022.08.12.03.11.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 12 Aug 2022 03:11:45 -0700 (PDT)
Message-ID: <d0d3bf29-e230-eb67-0b23-a74bca0daa28@linaro.org>
Date:   Fri, 12 Aug 2022 13:11:40 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/6] dt-bindings: i2c: i2c-imx-lpi2c: add dmas property
Content-Language: en-US
To:     "Peng Fan (OSS)" <peng.fan@oss.nxp.com>, aisheng.dong@nxp.com,
        robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        shawnguo@kernel.org, s.hauer@pengutronix.de
Cc:     kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        linux-i2c@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        xiaoning.wang@nxp.com, Peng Fan <peng.fan@nxp.com>
References: <20220812043424.4078034-1-peng.fan@oss.nxp.com>
 <20220812043424.4078034-3-peng.fan@oss.nxp.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220812043424.4078034-3-peng.fan@oss.nxp.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/08/2022 07:34, Peng Fan (OSS) wrote:
> From: Peng Fan <peng.fan@nxp.com>
> 
> i.MX LPI2C has dma capability, so add dmas property
> 
> Signed-off-by: Peng Fan <peng.fan@nxp.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
