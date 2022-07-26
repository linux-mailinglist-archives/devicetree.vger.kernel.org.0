Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6E544580FD2
	for <lists+devicetree@lfdr.de>; Tue, 26 Jul 2022 11:25:37 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232548AbiGZJZe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 26 Jul 2022 05:25:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:60500 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232268AbiGZJZc (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 26 Jul 2022 05:25:32 -0400
Received: from mail-lf1-x134.google.com (mail-lf1-x134.google.com [IPv6:2a00:1450:4864:20::134])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C46D82E9DC
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:25:30 -0700 (PDT)
Received: by mail-lf1-x134.google.com with SMTP id p11so16946658lfu.5
        for <devicetree@vger.kernel.org>; Tue, 26 Jul 2022 02:25:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=lsAOxbutmAhPHiXKdzM1CNYF68IKrHfpAd9ExEqqgCo=;
        b=p9vOCPEi6dcCsQvXa6MCvfq6btQ+7B4b4HHhVW1kQ+ugX7L4ao8tb8V+nkF+6+LH40
         yFhqdwteUvLa04L305mxV+PdByvojCgPne4sTXmMnF5WceoMt8XoM4LLL41+v+qE+VYc
         3RqVlVQ3tLKTXqSODhioD43P6CIRCHvuspCSprBqJmIULUae7IfHT6RpGqS74CUbo7NZ
         /6ZqpkgVonuahqVvnhDz7AasAKh6zvhcnBC6RYwvjsd2p1bHADECoTLjdeXPm+F3GvTx
         8FgxqeB7DYXUadvT4fVXLxblVSX3VQFnr20d2ng+6QVIFMt1IQbIqFRmCQZ19miLLV7V
         LrNQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=lsAOxbutmAhPHiXKdzM1CNYF68IKrHfpAd9ExEqqgCo=;
        b=p7H8qiUpH5w2Zvoer19ADM737RKZLK+2MUvBhnJ91qpYls8HZm7B/6kVrNq2qlKcxO
         QbZGJMxyLJ7HQVKvXRFrzcfK5edNwdcsp6azN1S32l8DK4/A42ZH+O+9eHsJQ34hFFwU
         eDU4AC+taH8QXTZj3LgUjPwHNohvy3xlvkUAb+f5whtsRMPgUhBZ7EEQ6OqjaewRb2dV
         OXgIh7vik8k1cv5ZvO3NsLaQct1WuzenfVdjuEDYeH8TaUJEn4EAlV1bI0zOzNP6t5uc
         o7uYaMDRBGxs2f4h58HVUD8K/oeiKWjBWODVqNfCeegDRrDtzoSV0G2Gp5XumpNEQCEF
         uorg==
X-Gm-Message-State: AJIora9u71XiSxm2LqkIP6x4Rd0hYOgG2ZRqvSZ751yDI8miWr055ODS
        j8AXwsNwWtwzOQpKKM+5B/afBA==
X-Google-Smtp-Source: AGRyM1sh7SZksbfUM+uxlEwzz1xX/ugHveTOv2X2r/T4amVH3cqbjVSPSsPFF+AIhv7why1/kuMhvA==
X-Received: by 2002:a05:6512:3e29:b0:48a:7596:b4b5 with SMTP id i41-20020a0565123e2900b0048a7596b4b5mr6113371lfv.486.1658827527657;
        Tue, 26 Jul 2022 02:25:27 -0700 (PDT)
Received: from [192.168.3.197] (78-26-46-173.network.trollfjord.no. [78.26.46.173])
        by smtp.gmail.com with ESMTPSA id t4-20020a192d44000000b0048a751c966dsm2634978lft.224.2022.07.26.02.25.26
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 26 Jul 2022 02:25:27 -0700 (PDT)
Message-ID: <445060b9-a94f-396a-991b-48c64ad7a53b@linaro.org>
Date:   Tue, 26 Jul 2022 11:25:25 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 1/3] dt-bindings: soc: update MT7623A power dt-bindings
Content-Language: en-US
To:     Chukun Pan <amadeus@jmu.edu.cn>,
        Matthias Brugger <matthias.bgg@gmail.com>
Cc:     Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Rob Herring <robh+dt@kernel.org>,
        linux-arm-kernel@lists.infradead.org,
        linux-mediatek@lists.infradead.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
References: <20220726030621.7555-1-amadeus@jmu.edu.cn>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220726030621.7555-1-amadeus@jmu.edu.cn>
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

On 26/07/2022 05:06, Chukun Pan wrote:
> Add new power domains(VDEC/DISP/ISP/BDP)
> for MT7623A from MT7623 side.
> 
> Signed-off-by: Chukun Pan <amadeus@jmu.edu.cn>
> ---
>  include/dt-bindings/power/mt7623a-power.h | 4 ++++
>  1 file changed, 4 insertions(+)


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
