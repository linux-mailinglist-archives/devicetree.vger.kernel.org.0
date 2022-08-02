Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D154C5878B2
	for <lists+devicetree@lfdr.de>; Tue,  2 Aug 2022 10:06:42 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S236309AbiHBIGl (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 2 Aug 2022 04:06:41 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46068 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232855AbiHBIGk (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 2 Aug 2022 04:06:40 -0400
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com [IPv6:2a00:1450:4864:20::136])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6211317E21
        for <devicetree@vger.kernel.org>; Tue,  2 Aug 2022 01:06:39 -0700 (PDT)
Received: by mail-lf1-x136.google.com with SMTP id f20so13615234lfc.10
        for <devicetree@vger.kernel.org>; Tue, 02 Aug 2022 01:06:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=ziFYm8rk88alkwyI6DGKeiYYXv8dOfZWiNNEBAzbbUs=;
        b=Q8FM7seRKFOLqDs9pbGjh7O9ypmYDNdS02O44fr0uDaD+Ekvix2C28Eu0YTnz4un9E
         zjZb0kmjzXhhxF2hA2MeGBEhZUMa2/QJ7merfkAYx+/6MBHNZg1vx8bdYF97YjDHoVTq
         LgeRNFA3ZxvbVMGhNzLcWi3AowWv9gQfOIN9VEPdRqbavEwLcWYz2pkHXeG3wsK20CUp
         tpChIa1AGzm/UKVSMhOsfVWVx+62gtQHTdGyf6F4anBWut49KD7kwKERKPGjulXz/zwU
         Zcu1mgRS0QCNWOsHRL3PcYpZM4sPoC0AwrgM3PyBQNCoCpSrp8xPLrt98yJI5L5agObH
         Tsnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ziFYm8rk88alkwyI6DGKeiYYXv8dOfZWiNNEBAzbbUs=;
        b=aWLhNEyj/T+vmMFil7BrlvzGvL09jFCKnFT8Uxve7b+bG/tFHDfN84FqbqwPlVHc/q
         bemorcTw55jTedntrpdmzu0NHF6M0Qcu+4hXqxhz/9gslL98AO1O9Cz0vQrYwJU3ZhDP
         nlHrPGncaBZXZcSTunjRS/G3E/v36wWw1hLOxnuhx7jWBpHqr1f+rciCeK1xM8EeMAGa
         8NQcwKORBiqkJgPwSJP2e0g5SMVLCUF1BoyEnplC94cbfc+g9bOu8Hn0J3yP5ec56Dnb
         DyURdSmO5bdMYnbd0Np/XvS30/TAXQBxMkUoVy7GXnKUbLV0CNHLEoAW+Mt4I6My3K4i
         GhrQ==
X-Gm-Message-State: ACgBeo0wJNwyUlShLsdVWG+KPTmAAI5S6UFCJILWreIHFiRwlFZcaPye
        BBmucQyCXr1LSQXvpOionMOrlQ==
X-Google-Smtp-Source: AA6agR6XdqW2PkasC+a1MlQwwoq1vcDKjruY6HOg87UsjC6E5gXtnZmjIUf2X1MMpMjvcyj6YFh0jw==
X-Received: by 2002:ac2:4e07:0:b0:48a:f6f2:8555 with SMTP id e7-20020ac24e07000000b0048af6f28555mr3101742lfr.200.1659427597773;
        Tue, 02 Aug 2022 01:06:37 -0700 (PDT)
Received: from [192.168.1.6] ([213.161.169.44])
        by smtp.gmail.com with ESMTPSA id o3-20020a2e9b43000000b0025e2cb58c6esm1842316ljj.37.2022.08.02.01.06.36
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 02 Aug 2022 01:06:37 -0700 (PDT)
Message-ID: <341b4627-d729-0941-2c35-08c16ac68f3c@linaro.org>
Date:   Tue, 2 Aug 2022 10:06:35 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/2] dt-bindings: mailbox: add definition for mt8188
Content-Language: en-US
To:     Elvis Wang <Elvis.Wang@mediatek.com>,
        Jassi Brar <jassisinghbrar@gmail.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Matthias Brugger <matthias.bgg@gmail.com>,
        CK Hu <ck.hu@mediatek.com>
Cc:     linux-kernel@vger.kernel.org, devicetree@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org,
        Project_Global_Chrome_Upstream_Group@mediatek.com
References: <20220729084319.6880-1-Elvis.Wang@mediatek.com>
 <20220729084319.6880-2-Elvis.Wang@mediatek.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220729084319.6880-2-Elvis.Wang@mediatek.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 29/07/2022 10:43, Elvis Wang wrote:
> Add dt-binding header for mt8188.
> 

Use subject prefix matching the device.


Best regards,
Krzysztof
