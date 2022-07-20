Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 830DF57B0DF
	for <lists+devicetree@lfdr.de>; Wed, 20 Jul 2022 08:16:07 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230057AbiGTGQA (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 20 Jul 2022 02:16:00 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:52232 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230237AbiGTGP7 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 20 Jul 2022 02:15:59 -0400
Received: from mail-lj1-x234.google.com (mail-lj1-x234.google.com [IPv6:2a00:1450:4864:20::234])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D7CB360CF
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 23:15:57 -0700 (PDT)
Received: by mail-lj1-x234.google.com with SMTP id by8so16341455ljb.13
        for <devicetree@vger.kernel.org>; Tue, 19 Jul 2022 23:15:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OII/ZMXQYRhSnRZ7xevuDpwyV3yoiR0qjBhGmHs/dKE=;
        b=yMKZ7ItChMBdHLMjfBRuxV/AGScn03nfaaxcknWwvqIe4WY709VmCXbMyEnJ78kPLQ
         ieieno11v5bQIGKB3Nzi0hWJCJ8VVvhKjg7UkyPFKbqt2xHjyGg51ULZ2UggxOqUaZBm
         1ptFA3+JYa6WX/FumnizkowRBDKE30c5hcSirEqnt2RPopj+lMg5RzdU2PxGIYDo4W+p
         JCr2e5obo74ANhZo4nKKWL5SJaXWpy46FbRBQ/HQE7g9AMlQy7XY0PNidpUG2BwoRQqb
         Gea0e+XMCDbBDm18klr8sO10qEHyDbH02FWR3RS0XimrmP/+kATzAEtbty5PMHluhVPQ
         LRlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OII/ZMXQYRhSnRZ7xevuDpwyV3yoiR0qjBhGmHs/dKE=;
        b=Fhgsd+e+OJp8mT3bTm5r/s6yc1zZv0SnaG3aVQm4NmCsTjGS2f+LV4kpHuiPat+f2m
         N45sunJ0Y5VNEJD11fbOTj6hO/+2q0nYlbsVmzpX/GcIzCiIx6PLHx0Me9ztuUv/+otM
         aUMmkjZ0RiMNudfixN0Nt2gbYwifezwoeUI47XKrYAsf1ekK1ujEvAoWppFgnXt/WJeu
         GRrqqckaLwWx8up6n4X1ISQskHb0olasaWzTFo1VrCSsBVtPjK0DlKONf+vmVqd4xADc
         PyBbvHmLj7/bmbPGFc8qKzx1/wsBf2wA7j+rLXs8d2Vn9T+grxK/gehoDGYPz2vaJSRa
         y4uQ==
X-Gm-Message-State: AJIora/BwU9xgLqT7ENZkHfMcpOmfmJFNGfgf2q+FllC5Ad0gMHaQd+w
        k3unwDIIJ0/dq5669O1ewrssEQiCx+8tQDe5
X-Google-Smtp-Source: AGRyM1s2lFzMWvhRRUe9XV42SiotKNRSzspZThlV2UQ8Y/uQT+LCKj+ihrywgxCU4qk4dcI71EbNNw==
X-Received: by 2002:a2e:a788:0:b0:25d:93bb:d006 with SMTP id c8-20020a2ea788000000b0025d93bbd006mr14762256ljf.447.1658297757437;
        Tue, 19 Jul 2022 23:15:57 -0700 (PDT)
Received: from [192.168.115.193] (89-162-31-138.fiber.signal.no. [89.162.31.138])
        by smtp.gmail.com with ESMTPSA id o20-20020ac24bd4000000b00482ba723195sm3593080lfq.253.2022.07.19.23.15.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 19 Jul 2022 23:15:56 -0700 (PDT)
Message-ID: <77e8433f-6cb8-eb32-63d5-414a92d3b874@linaro.org>
Date:   Wed, 20 Jul 2022 08:15:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: [PATCH v2 3/4] dt-bindings: misc: tmr-inject: Add device-tree
 binding for TMR Inject
Content-Language: en-US
To:     Appana Durga Kedareswara rao 
        <appana.durga.kedareswara.rao@amd.com>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, michal.simek@xilinx.com,
        derek.kiernan@xilinx.com, dragan.cvetic@xilinx.com, arnd@arndb.de,
        gregkh@linuxfoundation.org
Cc:     appanad@amd.com, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        git@amd.com, git@xilinx.com,
        Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
References: <20220720060016.1646317-1-appana.durga.kedareswara.rao@amd.com>
 <20220720060016.1646317-4-appana.durga.kedareswara.rao@amd.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220720060016.1646317-4-appana.durga.kedareswara.rao@amd.com>
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

On 20/07/2022 08:00, Appana Durga Kedareswara rao wrote:
> From: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>
> 
> The Triple Modular Redundancy(TMR) Inject core provides functional fault
> injection by changing selected MicroBlaze instructions, which provides the
> possibility to verify that the TMR subsystem error detection and fault
> recovery logic is working properly.
> 
> Signed-off-by: Appana Durga Kedareswara rao <appana.durga.kedareswara.rao@amd.com>
> Signed-off-by: Appana Durga Kedareswara rao <appana.durga.rao@xilinx.com>

Keep only one SoB.

> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
