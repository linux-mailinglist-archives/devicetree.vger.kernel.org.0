Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id C62FD51A256
	for <lists+devicetree@lfdr.de>; Wed,  4 May 2022 16:36:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1351368AbiEDOkI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 4 May 2022 10:40:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53506 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1351375AbiEDOkG (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 4 May 2022 10:40:06 -0400
Received: from mail-ej1-x62d.google.com (mail-ej1-x62d.google.com [IPv6:2a00:1450:4864:20::62d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED78741306
        for <devicetree@vger.kernel.org>; Wed,  4 May 2022 07:36:28 -0700 (PDT)
Received: by mail-ej1-x62d.google.com with SMTP id kq17so3293784ejb.4
        for <devicetree@vger.kernel.org>; Wed, 04 May 2022 07:36:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=r4kTs37qzDv5vVl2H9hpUpYJnsnC2MUKlbtIkN5Yesg=;
        b=jJVdw2tiE0ASvn7JEJlrJBqUsjY0HIacMO3hM/PBIo2S4FGZS/KLlQJxt5q2bm5WoY
         PSRP5ApMeVwLZuSDCq2GF35V4qknJ0pf7tDsdJM3wzmW0qs1KxzRngMK4jM4Y/WU/v0a
         w23ID0GIoj4I3Mld48y8WySbnyG3Ry0nKFxQCvVJKY5NjzmQtM5TPfN3uIiSz2OU/JTx
         Ij2d88msyLkqRkbVp43872ciE8IRkhV34ANJaFdE7qDYWKSiDEOKQuY2XWRyxhbwFhml
         1KQv6JEfDocZSBQojYGeOpR+YVrHibvB2OPnuQU3sJuAead94reLIBG1CJnppJxjGnR+
         /F7w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=r4kTs37qzDv5vVl2H9hpUpYJnsnC2MUKlbtIkN5Yesg=;
        b=EwbRUSeL4Ai6vI/p3+uMor3pyUa1I4Qs8MtQcIxlYbY1KmET8+vCRmacT/5r7WRw83
         +TUXnxn3oh/tXNBTCMw7cwby5kIEhGBwQjO2L0jhrUnNPhq5R4V5+XqhbZX3J9oV41Sf
         +qpMHGByrCL0Gi/88vQzrzEipAyCFU633x7ngi5cpn9AO3jn0P5/37M3k+dAztsMEStq
         rPNr7qn0xgWEkE2AMKMn4G2Acl+wiwp57DpRK6EBWS/MNaOBRQWSNpNq5aRCNA9yqE/v
         RsrwX/ZpyhBtFH8gt0WTPw5x4twwf57o5xzdfnwpROqPJSutqDmC5Lvd07e5ugm5H8mL
         6L2A==
X-Gm-Message-State: AOAM530o++jeezy8SThMRDIGzZ4ShEWFsrNT6bmlBs55aXFdcyOLZBFW
        d64g0zguLJ1nwOZWHPBe83EoZg==
X-Google-Smtp-Source: ABdhPJzoPAn+s2lg6saQY/gm3ODR4SztB5D5DPs1ZOnGzuvjjMzKYaKOKSID27nZIDLVmW+9kqJKdw==
X-Received: by 2002:a17:907:70c4:b0:6f3:d23f:d711 with SMTP id yk4-20020a17090770c400b006f3d23fd711mr20047023ejb.205.1651674987486;
        Wed, 04 May 2022 07:36:27 -0700 (PDT)
Received: from [192.168.0.215] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id zp1-20020a17090684e100b006f3ef214defsm5727577ejb.85.2022.05.04.07.36.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 04 May 2022 07:36:27 -0700 (PDT)
Message-ID: <811c2d85-b615-0f7a-6a35-832d091d62c2@linaro.org>
Date:   Wed, 4 May 2022 16:36:26 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH v3 03/12] clk: samsung: add top clock support for Exynos
 Auto v9 SoC
Content-Language: en-US
To:     Chanho Park <chanho61.park@samsung.com>,
        Sylwester Nawrocki <s.nawrocki@samsung.com>,
        Tomasz Figa <tomasz.figa@gmail.com>,
        Chanwoo Choi <cw00.choi@samsung.com>,
        Alim Akhtar <alim.akhtar@samsung.com>,
        Michael Turquette <mturquette@baylibre.com>,
        Stephen Boyd <sboyd@kernel.org>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
Cc:     Sam Protsenko <semen.protsenko@linaro.org>,
        linux-clk@vger.kernel.org, devicetree@vger.kernel.org,
        linux-samsung-soc@vger.kernel.org
References: <20220504075154.58819-1-chanho61.park@samsung.com>
 <CGME20220504075003epcas2p1247f3e4d42e48f9459f80ad7d3e357ca@epcas2p1.samsung.com>
 <20220504075154.58819-4-chanho61.park@samsung.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220504075154.58819-4-chanho61.park@samsung.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/05/2022 09:51, Chanho Park wrote:
> This adds support for CMU_TOP which generates clocks for all the
> function blocks such as CORE, FSYS0/1/2, PERIC0/1 and so on. For
> CMU_TOP, PLL_SHARED0,1,2,3 and 4 will be the sources of this block
> and they will generate bus clocks.
> 
> Signed-off-by: Chanho Park <chanho61.park@samsung.com>
Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
