Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id B56844F085A
	for <lists+devicetree@lfdr.de>; Sun,  3 Apr 2022 09:54:20 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233540AbiDCHz7 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 3 Apr 2022 03:55:59 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39732 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S241073AbiDCHz5 (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 3 Apr 2022 03:55:57 -0400
Received: from mail-wr1-x433.google.com (mail-wr1-x433.google.com [IPv6:2a00:1450:4864:20::433])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70E3713D36
        for <devicetree@vger.kernel.org>; Sun,  3 Apr 2022 00:54:02 -0700 (PDT)
Received: by mail-wr1-x433.google.com with SMTP id m30so10070587wrb.1
        for <devicetree@vger.kernel.org>; Sun, 03 Apr 2022 00:54:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=Hcg+mFW30TpS9ncd0QGFAXAUah810Bk4ErrwSl9XyqI=;
        b=K880O8XxgSHTelqrRmX8SMOKPgP8wUaymPxJDrjQIfgI6E4bJCemXnyxi4JX+Pkpsx
         Cakyoq/kvNcpGuTnD9zKFpvZ4ze370N0TbiyKkyr/MzNxVNlWcOw2MlWUa2MxEAmAC2o
         mGCVDzM4bSXBn7w3hC9kwzhG+uzKlrbJJv24DTKtky61FLOOJGJcynsPxrNaV+nZOvXD
         2qrGF37Cs+3M1A9FkjU15n3JrNFSh9gyYn75etdlQ+rDKABimXzPurIPjWNwNh9QgGNf
         sgNFhUmUdB2SgkCKq6ySPKMB2NkjBcsy8dbfTaUX52w/v/9TlhO1oc45Rg+rDXsvweY+
         Ux3g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=Hcg+mFW30TpS9ncd0QGFAXAUah810Bk4ErrwSl9XyqI=;
        b=icImFQUxVPcIA4X/z+izolD9qlcp0wMYprg86+3G7pdJHC2yuSHWrYLpBMtliEQrVR
         LCgqS3MRZZ+dBUgXI76ZUDH//aqr6B/kScrUt6dmrzkZkxYYMj6wRcRSkgXH4UNskhEc
         QGENpAHSJvtJnBYbpHulkYNIDRKWWMzoi/53GtIsYL22hC+olCPD+1gmy/Q0EWp0fGQK
         h+npmNnUwCG3H75bps0Kq8XQ8cri3T8Ho1mQvGEb/h65+QAMsnTikcQu4S6feHAHiBj0
         ZKo0CrQNPYf6i9sd58qMu69cwNl+KpbU7rnR4M78MxlOERhdL8hAzfmH9pJFBrYvXqnP
         5F6w==
X-Gm-Message-State: AOAM533BiOE+fyQCD29wtYxmiVsMVBK5XbxyMSlxFU6PaCRW11Am2VPC
        1BF988LA6rH6PSq9euXoDaFMig==
X-Google-Smtp-Source: ABdhPJzzv+kEom3eImDklP+9lgt/iyEES94WNz/z5HnICtbB/q1/k3LL/Mf65ZUrpXs81k3wfQOQiQ==
X-Received: by 2002:adf:f442:0:b0:203:e0ef:32c9 with SMTP id f2-20020adff442000000b00203e0ef32c9mr13484943wrp.53.1648972441113;
        Sun, 03 Apr 2022 00:54:01 -0700 (PDT)
Received: from [192.168.0.171] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id p125-20020a1c2983000000b0038e6c62f527sm2687763wmp.14.2022.04.03.00.54.00
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 03 Apr 2022 00:54:00 -0700 (PDT)
Message-ID: <943dd39c-f92e-0323-c263-65b8a03124fc@linaro.org>
Date:   Sun, 3 Apr 2022 09:53:59 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v2 3/4] ARM: dts: BCM5301X: Fix compatible strings for
 BCM53012 and BCM53016 SoC
Content-Language: en-US
To:     =?UTF-8?B?QXLEsW7DpyDDnE5BTA==?= <arinc.unal@arinc9.com>,
        Florian Fainelli <f.fainelli@gmail.com>,
        =?UTF-8?B?UmFmYcWCIE1pxYJlY2tp?= <rafal@milecki.pl>,
        Hauke Mehrtens <hauke@hauke-m.de>,
        Rob Herring <robh+dt@kernel.org>,
        Scott Branden <scott.branden@broadcom.com>,
        Christian Lamparter <chunkeey@gmail.com>
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        devicetree@vger.kernel.org, bcm-kernel-feedback-list@broadcom.com
References: <20220402204622.3360-1-arinc.unal@arinc9.com>
 <20220402204622.3360-3-arinc.unal@arinc9.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220402204622.3360-3-arinc.unal@arinc9.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 02/04/2022 22:46, Arınç ÜNAL wrote:
> Fix compatible strings for devicetrees using the BCM53012 and BCM53016 SoC.
> 
> Signed-off-by: Arınç ÜNAL <arinc.unal@arinc9.com>
> ---
>  arch/arm/boot/dts/bcm53016-meraki-mr32.dts | 2 +-
>  arch/arm/boot/dts/bcm953012er.dts          | 2 +-
>  arch/arm/boot/dts/bcm953012hr.dts          | 2 +-
>  arch/arm/boot/dts/bcm953012k.dts           | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
