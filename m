Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from vger.kernel.org (vger.kernel.org [23.128.96.18])
	by mail.lfdr.de (Postfix) with ESMTP id E5E5E4AF14A
	for <lists+devicetree@lfdr.de>; Wed,  9 Feb 2022 13:19:45 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232761AbiBIMTF (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 9 Feb 2022 07:19:05 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:37742 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232966AbiBIMSw (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 9 Feb 2022 07:18:52 -0500
Received: from smtp-relay-internal-0.canonical.com (smtp-relay-internal-0.canonical.com [185.125.188.122])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6ADC3C1DF8E9
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 04:08:02 -0800 (PST)
Received: from mail-ej1-f70.google.com (mail-ej1-f70.google.com [209.85.218.70])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-0.canonical.com (Postfix) with ESMTPS id 5913F3F22B
        for <devicetree@vger.kernel.org>; Wed,  9 Feb 2022 12:07:55 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1644408475;
        bh=pRag9cOIM4CLzsxK+XeyiBU0JF+YtVMAHEpcyJclBbk=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=eutYFcrDeQWYaWKeSxfij60ntNujIsdOmJn6dmAGzbtYz/wyAbht+ifROc2jobVXm
         ZYCXHVMRSzc0aHSDRn+ElmFe7K/Cg5QxoPRs0zLGyMlwGAreTVXTTjCBpQOUPTsfHf
         PerN3rV2uSf3nrxD/RNVLUr5Hifrb1ygENinXEfQ239kt57BEC927j/m4LEUk1seWQ
         Ze+4idO4qkUQ5aNPISo5dFpfuqLjyCksb13JHu4irO+kZ0iJbrjJ9fGQLBC/fwKCEH
         kq/N7RaR/hgJM+sN2cEwoP2vz1FQFl1gDpOfsW1l5BssQIjeT3IMADW3w3QhFJV7eS
         h8DyV/liDHzrQ==
Received: by mail-ej1-f70.google.com with SMTP id h22-20020a1709060f5600b006b11a2d3dcfso1095470ejj.4
        for <devicetree@vger.kernel.org>; Wed, 09 Feb 2022 04:07:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=pRag9cOIM4CLzsxK+XeyiBU0JF+YtVMAHEpcyJclBbk=;
        b=Keqwt4rLOkttk98QEAjRIDHuGyECzowwdQfO91qblXpkcN4ZU6EVrHPco+Wkq32a0a
         cZ4opds7T/csrRP6R+DagAbkoylh6PfQmmoOORjN4nE1k1XPiGFLRA3unbbTyXthtDme
         FiLwu70jo/R+ADV5O2TJKfFNM5ljKDgAIlyXU4fqVxpOZVOzzh+zxifvx9vjEjiAxGyb
         6S8fEpF5zeAZcw8yBWZ5BSzDmiFdjJTHJtdN8VtRld6p+XNAc8I5Mb1AtoArLo7tZRuA
         SYBfdLcOarxxD9W8X+V/SiBIRS2mjcMA31g0w9XLqAJjGqaIVpQLiSr+JSY+KazPyoh/
         cbew==
X-Gm-Message-State: AOAM531c6jiOhD7jiQ/cAXOrXVBB4CQ1XEi94hCzavFAOiB3ev1vDK2i
        KEKQpXyqcWFCKU2bDcBA3G0ZqvhWxv0swvFfUDlqseZI393b+VVJyZwl3/vL+L67RARhJUe9khm
        DvItnSj/vkZRtB9+wod7jD1rEXj98Gk545Y37uFU=
X-Received: by 2002:a05:6402:38e:: with SMTP id o14mr2091378edv.414.1644408474769;
        Wed, 09 Feb 2022 04:07:54 -0800 (PST)
X-Google-Smtp-Source: ABdhPJzp9D9NxZvABqtfCoI3O1I7fzjAY50tR61mEZ09BQntiUDHsfbJQz2CU099/mXih6rck2X3sw==
X-Received: by 2002:a05:6402:38e:: with SMTP id o14mr2091370edv.414.1644408474596;
        Wed, 09 Feb 2022 04:07:54 -0800 (PST)
Received: from [192.168.0.94] (xdsl-188-155-168-84.adslplus.ch. [188.155.168.84])
        by smtp.gmail.com with ESMTPSA id g19sm3119597ejd.62.2022.02.09.04.07.53
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 09 Feb 2022 04:07:53 -0800 (PST)
Message-ID: <d4291c95-64dd-f860-da9a-0f11d44ecae3@canonical.com>
Date:   Wed, 9 Feb 2022 13:07:53 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH v2] ARM: dts: rk3288: fix a typo on crypto-controller
Content-Language: en-US
To:     Corentin Labbe <clabbe@baylibre.com>, heiko@sntech.de,
        robh+dt@kernel.org
Cc:     devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, linux-rockchip@lists.infradead.org
References: <20220209120355.1985707-1-clabbe@baylibre.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <20220209120355.1985707-1-clabbe@baylibre.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-4.4 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=unavailable autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 09/02/2022 13:03, Corentin Labbe wrote:
> crypto-controller had a typo, fix it.
> In the same time, rename it to just crypto
> 
> Signed-off-by: Corentin Labbe <clabbe@baylibre.com>
> ---
> Change since v1:
> - rename crypto-controller to crypto
> 
>  arch/arm/boot/dts/rk3288.dtsi | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>


Best regards,
Krzysztof
