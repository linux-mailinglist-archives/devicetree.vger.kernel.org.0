Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 199CD5AE921
	for <lists+devicetree@lfdr.de>; Tue,  6 Sep 2022 15:10:45 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233984AbiIFNJ4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 6 Sep 2022 09:09:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43596 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233732AbiIFNJz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 6 Sep 2022 09:09:55 -0400
Received: from mail-lj1-x235.google.com (mail-lj1-x235.google.com [IPv6:2a00:1450:4864:20::235])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C39C729CAF
        for <devicetree@vger.kernel.org>; Tue,  6 Sep 2022 06:09:51 -0700 (PDT)
Received: by mail-lj1-x235.google.com with SMTP id b26so12196020ljk.12
        for <devicetree@vger.kernel.org>; Tue, 06 Sep 2022 06:09:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=fvyT04/Nvz6zIBROEx0pz0Zydf7Sgv0iL5DNAFgL4FU=;
        b=Eb8korZ58eeMIMkzxU6/1wJdDv22JYU4eF2jFdj31Lh/ZwoSw3bL1z3nrSmkpE3Qwi
         DMv9xYjP38OZHvsfkcBUxHyIOnBKOWzO7Ji3g/lh9XT9jXbx6yrSUj+3fbbqgWswuYuF
         V1MBR1RSIW6kYFt7kFRTukEkysOo4vbGLpxju4wBxPKwA6pTGqisuU+OoUcwh1g8sHnQ
         rY1ZB+hJL3YCtDMMQXrkxYnU/ClJOkvmCqMHc/Qd0kwZ56YRcTkRArs+kDxYuY9Uz4xH
         ov/gw5uou4V5nItHtiC8XBCyJkGJ89rl5uKvbQsW9Rz7CWMFO0go3HtxW/RWNI3Z3GHb
         eyIg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=fvyT04/Nvz6zIBROEx0pz0Zydf7Sgv0iL5DNAFgL4FU=;
        b=Xlo7fmiY9mzwW3JxB3Vn82xztYwkTJb1oFj5bysxQq0ylpNnJu1sTZ+FrKJF8VO9kv
         hCVyUgsZmfRxvbOscFxakSa42Uj9+LbFjCYIA7SVjo1+0asHlzSxmDhvZ3/4uC03Y+TW
         8CBN/ITBCn8dCp4uQnBgi0u7ZBs2ru6+Ny56epbiaec5dClfgfc/UJCnnnAzJwuE+uIb
         re+qj/d8KYWfedQHfZkbKeg2jkPnj7ZlpH63UG/KPh7E+pzFRIiKpXfbNh3gAlm07H6P
         4UaV9IUObHxKxydGY13QTW9eW9mOMVeiOxf3ISyXsFooBKX3iXHq2SCZHtybr2LZlqRO
         U6lA==
X-Gm-Message-State: ACgBeo0P6bUfvGG5VeLr4qxr4C47FJS7K2zoPyy/BGZ95br7fsQLLs8u
        K3dJbhVGMhd00S/7W3nWplFlZQ==
X-Google-Smtp-Source: AA6agR7TPR/1qR1gU1UY2pYSeskuowrn9cvcmJrC+PYB3PBzsn9GjzfaEpEe2lc+gpGAh82YoIE12Q==
X-Received: by 2002:a2e:b819:0:b0:26a:a531:da36 with SMTP id u25-20020a2eb819000000b0026aa531da36mr950357ljo.141.1662469789411;
        Tue, 06 Sep 2022 06:09:49 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id v27-20020ac258fb000000b0048b13d0b896sm1731567lfo.141.2022.09.06.06.09.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 06 Sep 2022 06:09:48 -0700 (PDT)
Message-ID: <45b6f444-b8d1-740a-81a2-b464f71f2a15@linaro.org>
Date:   Tue, 6 Sep 2022 15:09:47 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.13.0
Subject: Re: [PATCH v1 2/3] dt-bindings: riscv: microchip: document the Aldec
 TySoM
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
 <20220906121525.3212705-3-conor.dooley@microchip.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220906121525.3212705-3-conor.dooley@microchip.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/09/2022 14:15, Conor Dooley wrote:
> The TySOM-M-MPFS250 is a compact SoC prototyping board featuring
> a Microchip PolarFire SoC MPFS250T-FCG1152.
> 
> Link: https://www.aldec.com/en/products/emulation/tysom_boards/polarfire_microchip/tysom_m_mpfs250


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
