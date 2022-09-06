Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 31EF85AE91C
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 15:09:54 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233420AbiIFNJr (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 09:09:47 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43112 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232941AbiIFNJq (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 09:09:46 -0400
Received: from mail-lj1-x22d.google.com (mail-lj1-x22d.google.com [IPv6:2a00:1450:4864:20::22d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 2D9A412614
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 06:09:44 -0700 (PDT)
Received: by mail-lj1-x22d.google.com with SMTP id z20so12258427ljq.3
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 06:09:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=a6Lagh5/ck4cwH6T2DH+NFbKHsSQbRYpXLBzc0OL1+o=;
        b=dXsgDRObXwmGfSxxtZAYV9lqtiKMLGuqtb+++sbfJxeuKjAE2UmnPDRJAqKVvdky2Z
         SZQyVTNXHCf7c29DryUkS3HOC0FtZZ1sFNc8woHt+7hjnAmq93gdUlGFXNjYHDpHkap3
         SWio2FZ4dfAqRduaWkpJe2VDQRiv6kRbRdcPr5zIxHJYmEBTR4GpfsGJSwaBRg19q3sj
         BuRnnv3205Zv7OcbWk12OL8U9nmD18hDyZ6iCO6W0scKnmfrhsMDuEMREvhW68mmwzxG
         SqI3jFLRwaaa7xvRgEKG4baFTHrprRYAN+2ns0LF0/CF+lE/8soEXsZyehLZR2OTncTP
         YPRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=a6Lagh5/ck4cwH6T2DH+NFbKHsSQbRYpXLBzc0OL1+o=;
        b=1pneLbLTn2+DI9KjPvvhJnS7fT6jz4s5XehG1d3DrwgC26kP0UuC5MLf/13qGqkbpy
         8U9MfqIgaOabJT0pWREmRjxizIBMww1yljKnOPlyE3BrJEghLbPyMX3p9oRQIjXjaZOQ
         DtBZYAxtQXEI1S514vTW6Suwra5k7fE+j8pG88EIraBJlmIq1escalRVYDKaoQMm5n1E
         smDZRwXvvMHGBc9dcxQYhWDvnkXLPV4edcy2KZZnD1aFIMOuVVsqfLYE06o/tvLhB7ew
         1OlLZ/lkYKrPNHUlbOT30NVKrL+/TKCDRqI62fo76p4aofYlqaQAAVYTQFsjOB3INU+L
         mLwQ==
X-Gm-Message-State: ACgBeo2fnkC0HlaejXEmolqFo33V+L7nOn3aoGmEcXS9AIXTHgoEjont
        ObArx7Qrr9Atkv4BK8w8Avsaew==
X-Google-Smtp-Source: AA6agR5Jh2R93COOW4SLpzHSWJJOsAVNO4xiFjGMdgMEx0WOkyc6+38G776VsL/J2g791+P67sRs/g==
X-Received: by 2002:a2e:978f:0:b0:26a:a62e:8f2c with SMTP id y15-20020a2e978f000000b0026aa62e8f2cmr995499lji.153.1662469782575;
        Tue, 06 Sep 2022 06:09:42 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id t8-20020a056512208800b0048ad4c718f3sm534997lfr.30.2022.09.06.06.09.38
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 06:09:40 -0700 (PDT)
Message-ID: <6b47114b-187d-0fc1-3acb-3f1567128b8a@linaro.org>
Date:   Tue, 6 Sep 2022 15:09:37 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 1/3] dt-bindings: vendor-prefixes: Add entry for Aldec
Content-Language: en-US
To:     Conor Dooley <conor.dooley@microchip.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Paul Walmsley <paul.walmsley@sifive.com>,
        Palmer Dabbelt <palmer@dabbelt.com>,
        Albert Ou <aou@eecs.berkeley.edu>,
        Daire McNamara <daire.mcnamara@microchip.com>
Cc:     devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
        linux-kernel@vger.kernel.org
References: <20220906121525.3212705-1-conor.dooley@microchip.com>
 <20220906121525.3212705-2-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906121525.3212705-2-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 14:15, Conor Dooley wrote:
> Per their website:
> Aldec, Inc. is an industry-leading Electronic Design Automation (EDA)
> company delivering innovative design creation, simulation and
> verification solutions to assist in the development of complex FPGA,
> ASIC, SoC and embedded system designs.
> 
> Link: https://www.aldec.com/
> Signed-off-by: Conor Dooley <conor.dooley@microchip.com>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
