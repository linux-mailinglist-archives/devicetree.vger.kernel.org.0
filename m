Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 673795E9CA1
	for <lists+devicetree@lfdr.de>; Mon, 26 Sep 2022 10:57:03 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233830AbiIZI5B (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 26 Sep 2022 04:57:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:49726 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233756AbiIZI5A (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 26 Sep 2022 04:57:00 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ABA9399E6
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:56:59 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id k10so9761763lfm.4
        for <devicetree@vger.kernel.org>; Mon, 26 Sep 2022 01:56:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date;
        bh=FfRXbycGxNZly9cwE+LM7FubtNN0XTW4t5Mi6CAwVS0=;
        b=KkeBwEik4EGGkaT4cBdiznevl7Yfm0Q2xYSsysMn4fWh7aAZG9K7Y/hhwUrMhmnwru
         VuH9iTvmNHUXFRtMRjZUNM++72+8zVrL6PP4pGjC8OnbwFaElP7gbLrvmNNFAZdopVMY
         ZBpmTM8g+YgV6ReSWO6oHZT2tZ1lL8YZfdijHu8IJ8A2p50OefY11vWrckPeF4h9GNS3
         xdE/SR1YXLEJrPec8g019gH0k9CKwMk2crlRZ8bCdqq1c4heILf02AYQ00zTEU6LYMPl
         Pj7qAEkttYWAU0HCW/SPZYJ2SpspeQ6e/wChIrvfW5mOIz3wf+mCCyMycPkV3iOzw5se
         yOyQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date;
        bh=FfRXbycGxNZly9cwE+LM7FubtNN0XTW4t5Mi6CAwVS0=;
        b=pXtcQA4Lt1yJ+IDfw8f6BC4wNT+538GyLi/NHG05kxXOpHaggOf7eBZML0jKahHFB0
         gb8G5raGvP8Z7yTUn9lITFaC646msoeBzNSZy9TBHdZxAyDvkUnrS+GpdIRmcXBV/z3d
         Dl2ZdvkVgZVZWZUWsJBJHR6bDzILzKcSex6rj0vRCnnjzgnqigE76IiJQja8/cXBoFX5
         kyiAcXwn1PeQd3WkkLAmJ0pjmtES7IZOQuJn6z8Y4LpokbkRc0AXWeZuX4yBfQ7QEMf1
         rQjKtdwz2v+cjG/u/gj8lac5qt2hK47G0NVe3/xfc4nfwiOm80ekiKzRLL5mKuTpx+hP
         ErZA==
X-Gm-Message-State: ACrzQf1UHIMMAW/j4ui7HkahwmPRlUmctMfvZw9rDT2kfha+klLZDjoF
        BF4CLYduk4WfxO4W2cJWWji5gQ==
X-Google-Smtp-Source: AMsMyM7Pkh9gGS89n4kETCtIDk55eEmyCItCa3/dL6QTkEfr82yejjqfug0DWtsC8l/nOi1S3TNiVw==
X-Received: by 2002:a05:6512:a93:b0:49f:d52f:5d14 with SMTP id m19-20020a0565120a9300b0049fd52f5d14mr9229502lfu.359.1664182617762;
        Mon, 26 Sep 2022 01:56:57 -0700 (PDT)
Received: from [192.168.0.21] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id s12-20020ac25c4c000000b00498f23c249dsm2480175lfp.74.2022.09.26.01.56.56
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 26 Sep 2022 01:56:57 -0700 (PDT)
Message-ID: <a2e13e6b-7636-e97d-780c-2c7302400fdf@linaro.org>
Date:   Mon, 26 Sep 2022 10:56:55 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.3.0
Subject: Re: [PATCH 1/2] ARM: dts: bcm283x: Fix underscores in node names
Content-Language: en-US
To:     Stefan Wahren <stefan.wahren@i2se.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Florian Fainelli <f.fainelli@gmail.com>,
        Ray Jui <rjui@broadcom.com>,
        Scott Branden <sbranden@broadcom.com>,
        Maxime Ripard <maxime@cerno.tech>
Cc:     Ariel D'Alessandro <ariel.dalessandro@collabora.com>,
        linux-rpi-kernel@lists.infradead.org,
        linux-arm-kernel@lists.infradead.org, devicetree@vger.kernel.org
References: <20220925164021.3600-1-stefan.wahren@i2se.com>
 <20220925164021.3600-2-stefan.wahren@i2se.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220925164021.3600-2-stefan.wahren@i2se.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 25/09/2022 18:40, Stefan Wahren wrote:
> A lot pinctrl node names, regulators and local_intc do not follow the
> node name convention to avoid underscore. So fix this by using hyphen
> or a proper node name.
> 
> Signed-off-by: Stefan Wahren <stefan.wahren@i2se.com>


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

