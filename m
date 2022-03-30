Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A06964ECABB
	for <lists+devicetree@lfdr.de>; Wed, 30 Mar 2022 19:34:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S1349322AbiC3Rfe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 30 Mar 2022 13:35:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:33014 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S1349318AbiC3Rfd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 30 Mar 2022 13:35:33 -0400
Received: from mail-ej1-x62c.google.com (mail-ej1-x62c.google.com [IPv6:2a00:1450:4864:20::62c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id C668819288
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 10:33:46 -0700 (PDT)
Received: by mail-ej1-x62c.google.com with SMTP id o10so43006317ejd.1
        for <devicetree@vger.kernel.org>; Wed, 30 Mar 2022 10:33:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=v0ypuDOZ9iczYgFgx1CgxJv5DcfIjupX67FG6Uawm28=;
        b=Dm4NkdgRizF5UQHrmqClnq9Isje3UUn/6mfSP4EzRO9H4lnnvVVEQ6DnQATUMmZ1Fa
         8tLkTSxaqIdLUv20E/Gu7Q/D+Bf2phajGvNvFRcAngMSJKL6GvlLqrF3BVOqwVYo7dv2
         O5eUq/V1HRa3gacQHhwgilqItG9HfX7McmwvquTGOF29bJRWfX+E49xK+IuBEfn30fo2
         HEKTJ3Ktt2hOU9Q5TFLhrMKTBW6WGIdyda3iv6ewbq/rX9fCGI27hnE2eDFYjQT7L1pz
         dzYq71C8W/guTKY5YxX+v4lUmxUR0ypPvaLjgttweJWRW5YIBMAkQ3JecwKv8cPbpASG
         UI+g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=v0ypuDOZ9iczYgFgx1CgxJv5DcfIjupX67FG6Uawm28=;
        b=uE2PGGPP5qKUXVNBkn++gvUSk87HZI/+Jf1kevoyBwiLV+yHlouE566Dac8elhd3d4
         Gge+l4KeAuduqNYKkf0lhPEnpoV/HnG2/j7EIgmgDKKonVQXfw8cOVY3u/Xgv1AH1ZBk
         ygpxseD9ams7NhUBCBS0mlp1OEjLNQAWKERtcUCC7DyWkRCooX7EyoMzwM5HG5aH/tui
         But7ITHM9bMtnLohTMFcd3UBanzK6zx/+UWHak9SGelhJVxDgiWGPfoUmm3fuEeseIcx
         YLvFwgz0f6imKKnPXhfc5bUGQTSAcoKKzxqJNp3SYzNRryVzdpiuvQ8Jif+FtdDtz1O7
         fkNA==
X-Gm-Message-State: AOAM532pwH7e32Hw6HAxu8VhcsdSDnyyjGuTRWF00QZBo+i2hk09eiqW
        S9Bd/Lrq/1jY09danM29VnrIoQ==
X-Google-Smtp-Source: ABdhPJx8VM85FNTNB3nTJF1PZIQmaZo0yaLCn/umk7bKrByJw9kErPb8vzRj3m4+OkxUDwCBIhXXlQ==
X-Received: by 2002:a17:906:7944:b0:6da:b834:2f3e with SMTP id l4-20020a170906794400b006dab8342f3emr681549ejo.353.1648661625373;
        Wed, 30 Mar 2022 10:33:45 -0700 (PDT)
Received: from [192.168.0.164] (xdsl-188-155-201-27.adslplus.ch. [188.155.201.27])
        by smtp.gmail.com with ESMTPSA id b8-20020a170906728800b006e0351df2dcsm8533922ejl.70.2022.03.30.10.33.44
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 30 Mar 2022 10:33:44 -0700 (PDT)
Message-ID: <5ecf5ad4-a0f7-69f6-7d00-2ae4a83e5f29@linaro.org>
Date:   Wed, 30 Mar 2022 19:33:43 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.7.0
Subject: Re: [PATCH v1 3/3] ARM: dts: rockchip: rk322x: use generic node name
 for dma
Content-Language: en-US
To:     Johan Jonker <jbx6244@gmail.com>, heiko@sntech.de,
        zhangqing@rock-chips.com
Cc:     robh+dt@kernel.org, krzk+dt@kernel.org, mturquette@baylibre.com,
        sboyd@kernel.org, linux-clk@vger.kernel.org,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-rockchip@lists.infradead.org, linux-kernel@vger.kernel.org
References: <20220330121923.24240-1-jbx6244@gmail.com>
 <20220330121923.24240-3-jbx6244@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220330121923.24240-3-jbx6244@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=unavailable
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 30/03/2022 14:19, Johan Jonker wrote:
> The node names should be generic, so fix this for the rk3228 dma node
> and rename it to "dma-controller".
> 
> Signed-off-by: Johan Jonker <jbx6244@gmail.com>
> ---
>  arch/arm/boot/dts/rk322x.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 

Squash it with your other change that type and submit one commit per
sub-arch (so for all arm Rockchips).

Best regards,
Krzysztof
