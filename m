Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7DFEA58ED07
	for <lists+devicetree@lfdr.de>; Wed, 10 Aug 2022 15:23:09 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232540AbiHJNXI (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 10 Aug 2022 09:23:08 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:57196 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232525AbiHJNXH (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 10 Aug 2022 09:23:07 -0400
Received: from mail-lj1-x22a.google.com (mail-lj1-x22a.google.com [IPv6:2a00:1450:4864:20::22a])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6C2341F623
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:23:06 -0700 (PDT)
Received: by mail-lj1-x22a.google.com with SMTP id j3so8908431ljo.0
        for <devicetree@vger.kernel.org>; Wed, 10 Aug 2022 06:23:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=d4prrLFCrLTlHXobcoINhgphbifssAA0ilNAL3uSNCA=;
        b=FhyZO2b8YOO++5+Viy0tTjCjPsTKbqa+CYVPVmpnZmHatDpHpYBa4dn4Y1otbXTVPE
         jJl4kABx+j8fMO6s33rOzPC1BEijFFPLEnE3CW85tvMtzpQqUDjq5UQB4BQ+5excAtoi
         xxXsBFkqPN+AVlSDDe1HqmPclB19faxFN9ThTM0UteLNcFgN7jOWK3mM8mnKLbyJw2sa
         splA3Zwpw2rwrOm30/lXExWwZoLH/01tyFha/T/DTZjcUa4C/O8pBoe0Z69cKWgrErqt
         4SextbQIqIzt8+bVM0OWw3KcOp/WVdvJxbY24RAejggKQNAtdi/Vb9Uu/FdDWwNngIcN
         jCEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=d4prrLFCrLTlHXobcoINhgphbifssAA0ilNAL3uSNCA=;
        b=Lz9vkPqMMYvKOc5t/Obi6SZyQMd4Y6flMbvOi1QTsvUZ3IpTb+4L6Bqo46vZGQTOTy
         JBdycfSOcPtC9iQm4MqyjaiyvNNjkD8D2ZmevFZDT6Xgf3+Y/1RBTu6RNEZRyFZ5GDG9
         SHX1OfAflrvfoTkisxf7fqR0ajp7cPSMG30M9BYiyettI9I8i9IyshbfaMlSWptFr/rR
         it0C2N2nnwLoodl/Y0Tk0mUPSquhWmgD1goY9lFwLa79NdkfKxmdd9B/H5qS9IQoEmeZ
         UlI90Pp6mbB0ItmK4YxsJqfWlzZjaJkG5HYjCQSi8xsfuRrq73DuCRlFgHsw2O7NXRBy
         MAqQ==
X-Gm-Message-State: ACgBeo2l/mEWMVmLgXskcbgzjSN4E8DMMH9GnhaW7xYm4bG3pW4Mb69s
        qP72CwyknfvFW7uL3ahPEoqn0zYXBgcdHRIc
X-Google-Smtp-Source: AA6agR77Q6pwgt1JtgGjj/1AyWCkh6kQpHrS7fCJU1v5vPm0ziaGvbYGvgFOAgiX7rd42vx6VWAyRw==
X-Received: by 2002:a2e:9810:0:b0:25e:7364:53c5 with SMTP id a16-20020a2e9810000000b0025e736453c5mr8969581ljj.216.1660137784767;
        Wed, 10 Aug 2022 06:23:04 -0700 (PDT)
Received: from [192.168.1.39] ([83.146.140.105])
        by smtp.gmail.com with ESMTPSA id 4-20020a05651c12c400b0025e4ca99066sm399488lje.139.2022.08.10.06.23.03
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 10 Aug 2022 06:23:04 -0700 (PDT)
Message-ID: <5b6ec913-039a-ab83-d99a-441b3704cffb@linaro.org>
Date:   Wed, 10 Aug 2022 16:23:02 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH] dt-bindings: mfd: sprd: Add bindings for ums512 global
 registers
Content-Language: en-US
To:     Cixi Geng <gengcixi@gmail.com>, lee@kernel.org, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, orsonzhai@gmail.com,
        baolin.wang@linux.alibaba.com, zhang.lyra@gmail.com
Cc:     devicetree@vger.kernel.org, linux-kernel@vger.kernel.org
References: <20220810130344.1488578-1-gengcixi@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220810130344.1488578-1-gengcixi@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/08/2022 16:03, Cixi Geng wrote:
> From: Chunyan Zhang <chunyan.zhang@unisoc.com>
> 
> Add bindings for Unisoc system global register which provide register map
> for clocks.
> 
> Signed-off-by: Chunyan Zhang <chunyan.zhang@unisoc.com>
> Signed-off-by: Cixi Geng <cixi.geng1@unisoc.com>

This was sent before - there was v6 of it, right? So please keep
versioning and add changelog explaining the differences.



Best regards,
Krzysztof
