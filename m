Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D86496A048A
	for <lists+devicetree@lfdr.de>; Thu, 23 Feb 2023 10:12:40 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233844AbjBWJMi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 23 Feb 2023 04:12:38 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:41180 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233842AbjBWJMh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 23 Feb 2023 04:12:37 -0500
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 31C974ECEE
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:12:36 -0800 (PST)
Received: by mail-ed1-x52f.google.com with SMTP id b12so39679179edd.4
        for <devicetree@vger.kernel.org>; Thu, 23 Feb 2023 01:12:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=8u201wAnMMyK1J2VdH3tRl8blFsrXpgICjoZU678C2Y=;
        b=u0cbeBwWjvOlOpSDXCZWMGtsjZ4u3LMB4nqIBnsO5O3nVUU622A2v4GssCrLbLUmGX
         cwa+YVPOIy7fb1lJo7AHN7IrY43oETNcczP17W8Td07N8JGDmOZF7Wu+O0K+oHGaAaAM
         qiikM0fv67gQ63gWnQaB4GD1IVSnPcN/0R79ocx04Zx83Um+Sr8scn80eR1R2vuHCgem
         xtSubL1Y+tAuJ9YKEKDZLsmmMKIggVh3J2cNLtRTOvCwTpBSu14oFvyGRlpHYdPAouHH
         eehfTdI+WWZWDOfk6MEGRC+vdGppzy3nClFEsyOUi3mKi8282j+aEnkpjyMwms2sOdo1
         KsRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=8u201wAnMMyK1J2VdH3tRl8blFsrXpgICjoZU678C2Y=;
        b=zrP9zb3FrrkA52V51MtgD1omBTYKWbcqKF0C5Q9yebtT8n6Hl1y/MsB2CltuMCwMJ+
         xNfV1cne2oCZdOQIZngYqjfKcAvmyZLbUDL/4K2V1279HdAbKVJOm/bS44mVnCxZkezW
         RRQ5d++jamKNrQnjwbNMqM9W6yNaGLsjDhSaxSF1iA2o7exeHs8uqpY6rTEmAluo4/ZC
         SrrdoRMmoXjHaPl1qygyeit87ki+16Vf38P8lYpm14qqq90SToqcksMDedgFCCHtmvXA
         PIkL5giWUsd4z9Y5LWrw8shs5AHpdTQncTIydzFyS/wzhZURfIk1T8BT8HjvPhuDubvB
         tBrw==
X-Gm-Message-State: AO0yUKV1qNxt7ypfF5Hao/xlMQ0vS6Gfy4ihHuUYnMw10jRhaPPFlaGO
        D03KQXS1waVYXZi4qoVh/BjqFQ==
X-Google-Smtp-Source: AK7set94Jx234h8hmP2Z8gvIEPkwRmtx1FRCZipRBCcVhWfTll6/KY1aCpd5T/pzyKnTLl4F19zgsg==
X-Received: by 2002:a17:906:e2ca:b0:8b2:5e3e:3103 with SMTP id gr10-20020a170906e2ca00b008b25e3e3103mr23521741ejb.49.1677143554675;
        Thu, 23 Feb 2023 01:12:34 -0800 (PST)
Received: from [192.168.1.109] ([178.197.216.144])
        by smtp.gmail.com with ESMTPSA id u20-20020a17090657d400b008b1779ba3c1sm8916528ejr.115.2023.02.23.01.12.30
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 23 Feb 2023 01:12:32 -0800 (PST)
Message-ID: <319cb654-51f6-6241-802b-22ee0d5b0aab@linaro.org>
Date:   Thu, 23 Feb 2023 10:12:29 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
Subject: Re: [PATCH v1 RFC 1/3] dt-bindings: serial: amlogic,meson-uart: Add
 compatible string for G12A
Content-Language: en-US
To:     Martin Blumenstingl <martin.blumenstingl@googlemail.com>,
        linux-amlogic@lists.infradead.org, devicetree@vger.kernel.org
Cc:     linux-kernel@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        jirislaby@kernel.org, neil.armstrong@linaro.org,
        krzysztof.kozlowski+dt@linaro.org, robh+dt@kernel.org,
        gregkh@linuxfoundation.org,
        Christian Hewitt <christianshewitt@gmail.com>
References: <20230222210425.626474-1-martin.blumenstingl@googlemail.com>
 <20230222210425.626474-2-martin.blumenstingl@googlemail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230222210425.626474-2-martin.blumenstingl@googlemail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 22/02/2023 22:04, Martin Blumenstingl wrote:
> Amlogic G12A SoCs gained a new "divide XTAL by 2" bit. Everything else
> (we know about) is identical to the UART IP on GX (GXBB/GXL/GXM) SoCs.
> Add a new compatible string for this SoC so this new bit can be managed
> accordingly.
> 
> Signed-off-by: Martin Blumenstingl <martin.blumenstingl@googlemail.com>
> ---
> Why am I sending this as RFC? The last change in this series means
> that the resulting .dtbs are not compatible with old kernels anymore.
> My understanding is that this is fine and only the opposite case (using
> old .dtbs on new kernels) has to be supported (which is still the case
> with this series). I'd like to get some confirmation for this.

The other way around is also nice to have, because DTS is used in other
projects. You fixed here Linux kernel, but what about all other
out-of-tree kernels, BSDs, firmwares and bootloaders? Did you fix them
as well?

The question is whether the devices can be made compatible thus keeping
DTS working on older kernel. This commit suggests they are. Your DTS
commit is written in different tone - something was broken and is being
fixed.

Best regards,
Krzysztof

