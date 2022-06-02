Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3587353B3BD
	for <lists+devicetree@lfdr.de>; Thu,  2 Jun 2022 08:42:18 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229841AbiFBGkG (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 2 Jun 2022 02:40:06 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57868 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231348AbiFBGjy (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 2 Jun 2022 02:39:54 -0400
Received: from mail-ej1-x62a.google.com (mail-ej1-x62a.google.com [IPv6:2a00:1450:4864:20::62a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 152AE2A3069
        for <devicetree@vger.kernel.org>; Wed,  1 Jun 2022 23:39:52 -0700 (PDT)
Received: by mail-ej1-x62a.google.com with SMTP id rq11so8068067ejc.4
        for <devicetree@vger.kernel.org>; Wed, 01 Jun 2022 23:39:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=U8bY1VsTwSvJLtTCVpYS8zjnyhHWXCpb6DcsheBwwuU=;
        b=aFsFTJkzXTh8mdS1vzPOzd4HVSbWgDQCiIEcbUCBYDdU64ksferzdLYR+a7iYQnvAM
         vV7xw+pQ8Rk4FH8R1DPyR0B98gXnzxacpNXiguYr2ZMM2eis8EOiEHT4aIaFds8XVwbn
         XhCG5DB/W88+dedWZmL+nF1J5j0mRaGey6l1ulJkPNQqB2mokRn2A2F/E8LAcQsj0v/O
         J/RNZSRfJBOrl2TdQTvSAqG8i9nKE/RWBsg1tWvPl4aH+DKkB4wdXdbemST2f/Erlq3w
         pr4kn4K8XmYdTsp4kvzzXYGAPX5FlmPm5Tf4MOmd3SZW6GdQSlCMvYTHYxQqdD/uEB9N
         PNew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=U8bY1VsTwSvJLtTCVpYS8zjnyhHWXCpb6DcsheBwwuU=;
        b=oSGTaBLNR9EV5Pz4a9/V7nbHf3SRhf3M/+gpPEwTodumyP65Vgr13o34QYf9osZDvx
         atUMyIzZjiWqOHp4Ms7bl5K/sShr1y6WwlOv92w4WeTHT0KcSPL0Y+sb8Tz5v7koDB7N
         /kOv7MWwiFbNrmmZe4Ojv91IDfLwpgng00Xoys0LuUkBrL6i2PWRvaWbI3u4SYIh2Mom
         nQTNmNXDiLB8SA60qD3rLj6zrv6AqzGENNyxyV+4gPSAP+p95tu23+5Iy2DknwKIhLHU
         cS/TOTBEsroY4ejzlzdAZJZKWYlnWYLbqTeXVIFIhbk5Hf+YQDwbjC/DM7NjD2rWRTdc
         P4Lw==
X-Gm-Message-State: AOAM531sIlLEdxIXs6hi1bheeTKaMzeyz/pO+MrP8cO2kAHvx0UW/IW1
        BvSB9smkLeJug5AtT6cQdfMZUA==
X-Google-Smtp-Source: ABdhPJya2ipZqZVcNatkJIMO5YNBK1s99TBjluK9v6qBTZq6ehBFSCW6Nro/f9f3XMT87AzNmhygLQ==
X-Received: by 2002:a17:906:dc8a:b0:6f9:13e9:4c87 with SMTP id cs10-20020a170906dc8a00b006f913e94c87mr2713777ejc.729.1654151991533;
        Wed, 01 Jun 2022 23:39:51 -0700 (PDT)
Received: from [192.168.0.181] (xdsl-188-155-176-92.adslplus.ch. [188.155.176.92])
        by smtp.gmail.com with ESMTPSA id dc15-20020a170906c7cf00b006ff045d7c9bsm1428746ejb.173.2022.06.01.23.39.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 01 Jun 2022 23:39:51 -0700 (PDT)
Message-ID: <5b0666fb-cd98-7128-95df-bd8b779aab14@linaro.org>
Date:   Thu, 2 Jun 2022 08:39:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.9.1
Subject: Re: [PATCH v2 2/5] ARM: dts: socfpga: Move sdmmc-ecc node to Arria 10
 dts
Content-Language: en-US
To:     =?UTF-8?Q?Pawe=c5=82_Anikiel?= <pan@semihalf.com>, soc@kernel.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     arnd@arndb.de, olof@lixom.net, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, dinguyen@kernel.org,
        amstan@chromium.org, upstream@semihalf.com
References: <20220601154647.80071-1-pan@semihalf.com>
 <20220601154647.80071-3-pan@semihalf.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220601154647.80071-3-pan@semihalf.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 01/06/2022 17:46, Paweł Anikiel wrote:
> The ecc manager is a part of the Arria 10 SoC, move it to the correct
> dts.
> 
> Signed-off-by: Paweł Anikiel <pan@semihalf.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
