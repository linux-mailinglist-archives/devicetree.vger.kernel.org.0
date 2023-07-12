Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7EFBA751018
	for <lists+devicetree@lfdr.de>; Wed, 12 Jul 2023 19:54:43 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232599AbjGLRym (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 12 Jul 2023 13:54:42 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232276AbjGLRy3 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 12 Jul 2023 13:54:29 -0400
Received: from mail-lf1-x12b.google.com (mail-lf1-x12b.google.com [IPv6:2a00:1450:4864:20::12b])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 12482211B
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 10:54:19 -0700 (PDT)
Received: by mail-lf1-x12b.google.com with SMTP id 2adb3069b0e04-4f9fdb0ef35so11999366e87.0
        for <devicetree@vger.kernel.org>; Wed, 12 Jul 2023 10:54:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1689184457; x=1691776457;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=fj8ThFvAfSG2X1fPBkE5ImF7649h6ECVdp5Ee3R5/zM=;
        b=VBKTLpekU/54h5gI2PxhaZp9nQHMLfK/fzU9j8mCLtgUAHLG0J3J+rIa/dT9rit1fu
         qOXCsJN5eFHz+5lRY+ovcTE/ul/byIZjEnJTvZC3A7t3Svs+PPqR8f+iAPhkxWqpqiSt
         CoWqAIpZIPVhfYtVNEfH57EpZ0Ua4W2Iq4uXwomToaDi6y+x6h4L7pKHf9I4b5zW5hRk
         MxbS0x7cLDAGt7hMq8RZ343/vDvm1hLukieVLhJk0dMSXVJNlOcwkoU++HZlMDXl4u2L
         nOXeUFn3MXcAgRzn1jTGkY2MuG8dBd2uAqfjzB5IzlChmSOA/HUENuzIAIlCW0kuRQxO
         atEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1689184457; x=1691776457;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=fj8ThFvAfSG2X1fPBkE5ImF7649h6ECVdp5Ee3R5/zM=;
        b=Sz73MiAxV6NnzeHEFfbOvTqUgYR0vm04GfGVP/yGhk4FwqPjFG/SE2MgR/s3xYm3tb
         KBGTDYJCT01bsJ++COb+dYBO9vXuXRq2Ir8mTphWrjCXB1+eD6P4vw24NZDU8mzLy1Ml
         bx46i4fOQA4NnQafVDlqxEYUES1hPmEFbvIVLjytF4ilm5ybhk/COH6xw6ugZd4YNLcF
         6sCbI3XtX7CL1/8XLOVUA6cB9riS5u/frBH0p9xtKHDUeN3C/x9VwHkLsk04t83bqHQe
         nnS4chkcIQEpbWFTKmvE35Ms8I6UgWpn3Qr2v0i+gFV+XrcsHRaYSoTHUbn0V4IdQo+q
         tvDg==
X-Gm-Message-State: ABy/qLY7Q9NUqCW25+OLKPvk73TZKhT6LP6C1YPO0STaKBIspd8SG9c/
        Q3qOdXbmHJuU+D/fXAiEEGW3WQ==
X-Google-Smtp-Source: APBJJlEkXX+6u0lhKUCduM3ZhmYqLRlCbr/LEBz3MgN3+UblUPaidJLddRGjznw021vyO1vhYVeK0w==
X-Received: by 2002:a05:6512:31cf:b0:4f6:2b25:194e with SMTP id j15-20020a05651231cf00b004f62b25194emr16971157lfe.58.1689184457350;
        Wed, 12 Jul 2023 10:54:17 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id f22-20020a50ee96000000b0051debcb1fa2sm3047961edr.69.2023.07.12.10.54.15
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 12 Jul 2023 10:54:16 -0700 (PDT)
Message-ID: <8085ac44-80a5-e8b9-818b-c187676f71ae@linaro.org>
Date:   Wed, 12 Jul 2023 19:54:15 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2] dt-bindings: mtd: Fix nand-controller.yaml license
Content-Language: en-US
To:     Miquel Raynal <miquel.raynal@bootlin.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        devicetree@vger.kernel.org
Cc:     Richard Weinberger <richard@nod.at>,
        Vignesh Raghavendra <vigneshr@ti.com>,
        Tudor Ambarus <tudor.ambarus@linaro.org>,
        Pratyush Yadav <pratyush@kernel.org>,
        Michael Walle <michael@walle.cc>,
        linux-mtd@lists.infradead.org,
        Thomas Petazzoni <thomas.petazzoni@bootlin.com>,
        Maxime Ripard <mripard@kernel.org>
References: <20230712151042.433593-1-miquel.raynal@bootlin.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230712151042.433593-1-miquel.raynal@bootlin.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_BLOCKED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,
        URIBL_BLOCKED autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 12/07/2023 17:10, Miquel Raynal wrote:
> Binding files should be dual licensed. This file was initially written
> as a .txt file with no specific license, so was implicitely
> GPLv2. Significant part of this file and its conversion into yaml were
> written by Bootlin employees which agree to comply with the rules
> regarding the dual licensing so let's fix the SPDX tag to reflect the
> correct license by changing it from GPL to GPL + BSD-2-Clause.
> 
> Signed-off-by: Miquel Raynal <miquel.raynal@bootlin.com>
> Acked-by: Maxime Ripard <mripard@kernel.org>

Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

