Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 102AF59E5BA
	for <lists+devicetree@lfdr.de>; Tue, 23 Aug 2022 17:11:55 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S239197AbiHWPKk (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 23 Aug 2022 11:10:40 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:35892 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S243306AbiHWPKK (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 23 Aug 2022 11:10:10 -0400
Received: from mail-lj1-x229.google.com (mail-lj1-x229.google.com [IPv6:2a00:1450:4864:20::229])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id E6D12116ED5
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:47:58 -0700 (PDT)
Received: by mail-lj1-x229.google.com with SMTP id bn9so5850000ljb.6
        for <devicetree@vger.kernel.org>; Tue, 23 Aug 2022 05:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=k3I3mg52mggKe/hSvn4ordZmLrz7JJK9kCrstZLptaA=;
        b=KPtsBiKSPVohtQtTxYHmVdGYpCwQ8SMPMvl2S2FB16ZpmJGA61SGoSLLN1UFqTkEfu
         H/HfgYJBXsUF/3l8CIbRz7bQQr+utUMQQ+QSxa383p+OnrKmHLynm3CwFFx2G0l4y6g1
         cxNb1I1tKKrM7g7MTSe2ZCgyI90qWi3EBGROJJUfF+jwKCC832RRKovieEA8ypFF+Qdh
         UjWDtXRDfSm1fXKUKFSzobob/g5S7RcvKlo91MnOaI8FRE/9Ha9NhfQjIietuh8rY7aa
         kPdWZfEyiNXgZtiiBQaDYVnARU2jEqTzudpSRcJY/u+YvzmhbYUoiGFIXPENjcGTiDid
         ohig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=k3I3mg52mggKe/hSvn4ordZmLrz7JJK9kCrstZLptaA=;
        b=6gN0nPJ3PMlAcMt8XbkVEcF1xUtr/Gk2mO/XEUCcIw3YgH74Dxu+FSavepfRI0dErg
         YyT3vBYCM1pngFi3CfXg6MY+sCJuEIEEP7KqFGl6GKQiGr8beRr6AmCv52cGEn5X9kde
         b47WAeqGfzKevrSveKG00ooQHLS83VShfHxR4NzbNVaHPtJXXSPrTby2pPzuiVTU+v2v
         gIfchczbHBuKNcKvB3hxqtrvxS8s4ItglbPvp1PkHi7Vvo+jav8yamtw4nAx97hiTnaf
         qDaBDoRjoRdzAYOnjmzCJdV/SYY0qpYJC6DMxN3pWHUPwpuzmpnguw0XXDTSWEwaLWGS
         +n5A==
X-Gm-Message-State: ACgBeo2Xuw6RuByE7vNPoqJEI4vLF3EZP8/O7fT/tpiCn675CEH4srKj
        1MQ5i8IODZ1hLPFez91Pfr/S1Hsf0L0iNDzJ
X-Google-Smtp-Source: AA6agR60jBf+Ooo//TiRtUoyHdd53GZ5BtJ9eXK8W7Fk3xPjAxeHiZBud0RS0E7gkwX1TLX8MWWluA==
X-Received: by 2002:a2e:a28c:0:b0:261:a49a:6367 with SMTP id k12-20020a2ea28c000000b00261a49a6367mr7139217lja.201.1661258877241;
        Tue, 23 Aug 2022 05:47:57 -0700 (PDT)
Received: from [192.168.0.11] (89-27-92-210.bb.dnainternet.fi. [89.27.92.210])
        by smtp.gmail.com with ESMTPSA id b4-20020a2eb904000000b0025e4e7c016dsm2178160ljb.16.2022.08.23.05.47.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 23 Aug 2022 05:47:56 -0700 (PDT)
Message-ID: <83d8e0ae-8a5a-6a1d-af35-579592dbf161@linaro.org>
Date:   Tue, 23 Aug 2022 15:47:55 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] arm64: dts: imx8mm: Fix typo in lisense text for Engicam
 boards
Content-Language: en-US
To:     Jagan Teki <jagan@amarulasolutions.com>,
        Shawn Guo <shawnguo@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-amarula@amarulasolutions.com
References: <20220822103150.266266-1-jagan@amarulasolutions.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220822103150.266266-1-jagan@amarulasolutions.com>
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

On 22/08/2022 13:31, Jagan Teki wrote:
> Fix the Amarula Solutions typo mistake in lisense text for Engicam

typo: s/lisense/license/
(everywhere)

Best regards,
Krzysztof
