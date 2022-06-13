Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 2010D548445
	for <lists+devicetree@lfdr.de>; Mon, 13 Jun 2022 12:16:01 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231219AbiFMJsE (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 13 Jun 2022 05:48:04 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43522 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241053AbiFMJr4 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 13 Jun 2022 05:47:56 -0400
Received: from mail-wr1-x435.google.com (mail-wr1-x435.google.com [IPv6:2a00:1450:4864:20::435])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C63AE19C20
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:47:54 -0700 (PDT)
Received: by mail-wr1-x435.google.com with SMTP id m24so6366558wrb.10
        for <devicetree@vger.kernel.org>; Mon, 13 Jun 2022 02:47:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ZVDWXyhPhCXrdQGEcNHxhh8HhuL/NBNEFLkEQfvm5p0=;
        b=gdhbV6lSda6rqgbGzWHdOWH4WWs0+gOK9aMOW6u6jwTJI0VZuPJK8+rKHyFSpSp4Ng
         pqleDKgIiuMXXLztRhxkj7YHkUE9QWoSUJiTVB9V8CoBwACGNIrHjxMVqSNwgOIEzmLw
         B7Gl2n/0EPVdoiqx7tOIjg2b6hVEBtGeTTu8qcvG3Vj4+4eYKyMLOSiNb3Hur8dw/WTb
         w7+BS5uLm3hgaeFGrlEkvYwynALa5WKh95u9DwOgDmSoe4qEpEHa4Wf8RO1LAt3j2P1U
         EllID+OOw81g3b9t2s3zqupDh47S7pUwDQj5hm6/LcUJlX+3pkOaE35DpYvEhWHomcXM
         AVOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZVDWXyhPhCXrdQGEcNHxhh8HhuL/NBNEFLkEQfvm5p0=;
        b=i3VnLttVuqeWXU4NSbHczy3fvdr4iArsvaQ4kD1CBKctcKba9XmZoz7sM3U5Cbe6jG
         Gi+2+qYONIxIY2OmOPb4cre7TfoV6jZ74w2y04EnPEcDq6PAI7Q6cE0/qe0kex0P8xSy
         3MTUf8CC1ksUD3DFkGgDRHFmzhseb00yndnPsxF4lqMypWYl8jw3A0qz6VoxPaNLolvj
         8kYgjglDxnOOxx5y2vfaIOw8TmPiDlBV9qdJeKspyo5xPhBgVQcZrj/2KDZwdpqNorqJ
         ltsS1U1SHVQrYt0FDTZYXo5kqYnDLKwLEEtBr9zUBtHd/1N1ijFNEMR6CdRRmHuW0Qk8
         Sp2Q==
X-Gm-Message-State: AOAM531FA6h1bZ6wrIYYFFRM25qoHJURvthAGVmqfKdYp6PdEaL9DfCT
        Zx2OTk7YZrNLJzHNCSm/lANlwA==
X-Google-Smtp-Source: ABdhPJwPDCW6nEnGMnnReym2Ekgk+1u7LttLdpWDuxseqRriQQtptnJyoMYlHioW/xfucYl3IyywEA==
X-Received: by 2002:adf:e7cf:0:b0:215:8dea:d67 with SMTP id e15-20020adfe7cf000000b002158dea0d67mr47764360wrn.532.1655113673258;
        Mon, 13 Jun 2022 02:47:53 -0700 (PDT)
Received: from [10.227.148.193] (80-254-69-65.dynamic.monzoon.net. [80.254.69.65])
        by smtp.gmail.com with ESMTPSA id b2-20020a056000054200b0020c5253d8dcsm8005192wrf.40.2022.06.13.02.47.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 13 Jun 2022 02:47:52 -0700 (PDT)
Message-ID: <d2a334d4-8454-5b0a-222d-6820b9c30aa3@linaro.org>
Date:   Mon, 13 Jun 2022 11:47:51 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.10.0
Subject: Re: [PATCH v4 5/6] ufs: host: ufs-exynos: add mphy apb clock mask
Content-Language: en-US
To:     Alim Akhtar <alim.akhtar@samsung.com>,
        linux-arm-kernel@lists.infradead.org, linux-kernel@vger.kernel.org,
        linux-scsi@vger.kernel.org, linux-phy@lists.infradead.org
Cc:     devicetree@vger.kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, vkoul@kernel.org,
        avri.altman@wdc.com, bvanassche@acm.org,
        martin.petersen@oracle.com, chanho61.park@samsung.com,
        pankaj.dubey@samsung.com
References: <20220610104119.66401-1-alim.akhtar@samsung.com>
 <CGME20220610104356epcas5p4343acd45f6677723a1b44534fcc4e289@epcas5p4.samsung.com>
 <20220610104119.66401-6-alim.akhtar@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220610104119.66401-6-alim.akhtar@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/06/2022 12:41, Alim Akhtar wrote:
> Bit[3] of HCI_CLKSTOP_CTRL register is for enabling/disabling MPHY APB
> clock. Lets add it to CLK_STOP_MASK, so that the same can be controlled
> during clock masking/unmasking.
> 
> Signed-off-by: Alim Akhtar <alim.akhtar@samsung.com>
> Reviewed-by: Chanho Park <chanho61.park@samsung.com>
> Tested-by: Chanho Park <chanho61.park@samsung.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
