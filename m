Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 4A6E960E3B7
	for <lists+devicetree@lfdr.de>; Wed, 26 Oct 2022 16:49:16 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233709AbiJZOtP (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Oct 2022 10:49:15 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:58108 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233445AbiJZOtM (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Oct 2022 10:49:12 -0400
Received: from mail-qv1-xf2f.google.com (mail-qv1-xf2f.google.com [IPv6:2607:f8b0:4864:20::f2f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id BDE7411A95A
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:49:11 -0700 (PDT)
Received: by mail-qv1-xf2f.google.com with SMTP id c8so10913829qvn.10
        for <devicetree@vger.kernel.org>; Wed, 26 Oct 2022 07:49:11 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=OT9ZLmXoZ99vU44cK6SujU9Uw1YJY8It/YwsTq0QrL0=;
        b=lVT0kkx4mZSsg2VVG2oYXrm9gCw8CBTuGRs5e4XtOyGVmEiJwVg/hI18DY+u2khbUY
         rc3HxQ9YSRnQvUwQeuyMm0BC/0JNLyL/b54P16DTTYYO3I8vhdmx3lGCPyJV7gNke7HZ
         AQjJzT5BcQ17SIW7Lm3rZuhIku90kp23exA3d2VP185IPRigoYTiqmRAjt3yTwklju4J
         kh6bak8a7bBQQOdf5oQPktWoGBqrDicfXv4kTeqAvgzmLUk/0fFyNx1La9Vizd7eusTQ
         rxz0M2vs2LEYJ+lEHfYnfZolHdya/ee1ncBI6M+dAqNhgePfAWkbOzTG8/hmFgJ4sFkC
         uf7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=OT9ZLmXoZ99vU44cK6SujU9Uw1YJY8It/YwsTq0QrL0=;
        b=ADPG1xB86JUwCmSBMF75l/Rw2rXKZdcIDW6yNf+1Af3Y9YfbJXpmTxZv0axu9zPGk/
         B6ko6LOgIggUeBKk9LhN33WkNy6bEhojOerE/1bT+SOc7GG45y/bs7ybdI/Vuw440mvs
         B8r39J4yP73o2mnnTC94bq5FCvqkWSw4KvsTdRQjO2K8WrECgkqQeHzEoNFfofIhZ/Kl
         F86xSvyi/Z5PTzxslxJYVAX+r6IguYSldU7yeKAjltU5x+FXivoaM1KMKU5OxqodNPPG
         isG7gKyBNo/T8z4c7kduCTx3AHi12L7PXJFG7CsBu+JKmSIKBY2yqc/kATaTw+GBvdWc
         y/5A==
X-Gm-Message-State: ACrzQf1wg7Oo/TokZwc+Tz++7if8C+qSagzDbD5qv+f0puhR1Lg1LFWp
        GGFhjYVHVDgQeK6U/9V+6wbl0l1e/VG+qw==
X-Google-Smtp-Source: AMsMyM5dOcW27XttAY7Segfh0Cho50KvpOqF9JFQaROEGXh2Sfa3nIwtkUcUV7PK6FffCEUe02ylUg==
X-Received: by 2002:ad4:5ba1:0:b0:4af:8920:f9c5 with SMTP id 1-20020ad45ba1000000b004af8920f9c5mr17491735qvq.59.1666795750947;
        Wed, 26 Oct 2022 07:49:10 -0700 (PDT)
Received: from [192.168.1.11] ([64.57.193.93])
        by smtp.gmail.com with ESMTPSA id o19-20020a05620a2a1300b006ee9d734479sm4183742qkp.33.2022.10.26.07.49.09
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Oct 2022 07:49:10 -0700 (PDT)
Message-ID: <64a01388-aa53-d88a-b6fe-4a935a299358@linaro.org>
Date:   Wed, 26 Oct 2022 10:49:09 -0400
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.4.0
Subject: Re: [PATCH RESEND v2 2/2] arm64: dts: k3-j72*: correct compatible for
 syscon entries
Content-Language: en-US
To:     Matt Ranostay <mranostay@ti.com>, nm@ti.com, vigneshr@ti.com,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        lee@kernel.org
Cc:     linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20221024035405.366208-1-mranostay@ti.com>
 <20221024035405.366208-3-mranostay@ti.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221024035405.366208-3-mranostay@ti.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,URIBL_BLOCKED autolearn=ham autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/10/2022 23:54, Matt Ranostay wrote:
> Add missing ti,j7*-system-controller compatible to bus defines in mcu/wakeup
> domains to avoid the following similar warnings from dt-schema checks:
> 
> arch/arm64/boot/dts/ti/k3-j721s2-common-proc-board.dtb: syscon@40f00000: compatible: ['syscon', 'simple-mfd'] is too short'
> 

This is a friendly reminder during the review process.

It looks like you received a tag and forgot to add it.

If you do not know the process, here is a short explanation:
Please add Acked-by/Reviewed-by/Tested-by tags when posting new
versions. However, there's no need to repost patches *only* to add the
tags. The upstream maintainer will do that for acks received on the
version they apply.

https://elixir.bootlin.com/linux/v5.17/source/Documentation/process/submitting-patches.rst#L540

If a tag was not added on purpose, please state why and what changed.




Best regards,
Krzysztof

