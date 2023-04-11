Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id D729D6DD219
	for <lists+devicetree@lfdr.de>; Tue, 11 Apr 2023 07:49:49 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229794AbjDKFts (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 11 Apr 2023 01:49:48 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:34678 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229946AbjDKFtp (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 11 Apr 2023 01:49:45 -0400
Received: from mail-ej1-x633.google.com (mail-ej1-x633.google.com [IPv6:2a00:1450:4864:20::633])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 1CDC530FC
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 22:49:20 -0700 (PDT)
Received: by mail-ej1-x633.google.com with SMTP id sh8so17395674ejc.10
        for <devicetree@vger.kernel.org>; Mon, 10 Apr 2023 22:49:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1681192158;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=vxeDgr55vqK9Nw6EqARoCAgzkY6/iCq/2nGHZU3lT+Y=;
        b=UU0RB4sf7TL3sE5mWdKr1STGDqwy506TZg46i4mdo9Aa9ZLvZblxVJPHw4XrtwYD13
         aW9s180Sef9eoZaJghCJRrCyuQlEOPVyy6qtEnNW5uBUDI4mR+A4K2g2zsiaEtIDlUW1
         PltOJNRkZDhDtc/AH5l/+Z8m64Ry01Li/xQFya02DAMlCPUP+wfAPO2lLCDEkmudnOUv
         4t92cLo7vha6J8xC3gHvC8Ws+NFUU7x+6BKr0Y5SO3WOiklXR+j3U0lEbcDeDPku42Po
         2sDMkqzy8EaI4YRUe62MZpwSP7i1NzlyBmQEnSO90k0fT+kOJjRkehM8iIuOJzePCKYj
         7xCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1681192158;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=vxeDgr55vqK9Nw6EqARoCAgzkY6/iCq/2nGHZU3lT+Y=;
        b=UKJiTekSeO+pEPVLgYMfBJdX4CvP/dZ+JEzf3PcOgpeWU01l2jHbGgqudw5zipr+2a
         tliswszhcfaNpskd+APp2j9XBxo0ns3/iFW95u/8GiPYm0oQ/hWLzpYhvicllPXYbTJb
         8r8h67oeDv3guEIkBBQvEuJ9U9XkSzmT/msQSRISfZD1PAfbye9E8alkEAe3fvvbrjGn
         5whOJ4KeHIrdoQljI5pHDjN9YZjN3ONJPdHURrpD76GhKIG9jfPaZIxvzaYvWoGgFNKg
         Par80jxGFQeGO1B5i6r3vQV8pY9sq+9QObkn0sg7QRHCUlz8szW1/hXiKQdIKAtBfujt
         gHIA==
X-Gm-Message-State: AAQBX9eltqJOL9ccihsnjJlmj6nQ+huVPriXeVeO0B9zMhEbnAPhFifd
        CsVuQMfwdkfY/wJT27lQGnYbGQ==
X-Google-Smtp-Source: AKy350YyS5Zhb8pkBcql1XreQOfj7fk82rri+z8xLfHUQnfogNIgxv2zgRSWTXeFQ7bpqjqMdccfqQ==
X-Received: by 2002:a17:907:a395:b0:94a:6e08:fec5 with SMTP id se21-20020a170907a39500b0094a6e08fec5mr6220735ejc.29.1681192158208;
        Mon, 10 Apr 2023 22:49:18 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:dad2:72b7:3626:af61? ([2a02:810d:15c0:828:dad2:72b7:3626:af61])
        by smtp.gmail.com with ESMTPSA id kq9-20020a170906abc900b0094a5edc82b3sm2513438ejb.162.2023.04.10.22.49.17
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 10 Apr 2023 22:49:17 -0700 (PDT)
Message-ID: <489c3051-702c-7aa1-8def-a02aafc4602b@linaro.org>
Date:   Tue, 11 Apr 2023 07:49:16 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.1
Subject: Re: [PATCH v3 1/2] dt-bindings: arm: amlogic: add Xiaomi Mibox 3
 binding
Content-Language: en-US
To:     Karl Chan <exkcmailist@inbox.lv>, linux-amlogic@lists.infradead.org
Cc:     robh+dt@kernel.org, krzysztof.kozlowski+dt@linaro.org,
        neil.armstrong@linaro.org, khilman@baylibre.com,
        jbrunet@baylibre.com, martin.blumenstingl@googlemail.com,
        devicetree@vger.kernel.org, linux-arm-kernel@lists.infradead.org,
        linux-kernel@vger.kernel.org, Karl Chan <exxxxkc@getgoogleoff.me>
References: <20230410193048.31084-1-exkcmailist@inbox.lv>
 <20230410193048.31084-2-exkcmailist@inbox.lv>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230410193048.31084-2-exkcmailist@inbox.lv>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.4 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 10/04/2023 21:30, Karl Chan wrote:
> From: "Karl Chan"  <exkcmailist@inbox.lv>
> 
> Add the board binding for the Xiaomi Mibox 3 Android Set-Top Box device.
> 
> Signed-off-by: Karl Chan <exxxxkc@getgoogleoff.me>

Your SoB does not match committer.

Best regards,
Krzysztof

