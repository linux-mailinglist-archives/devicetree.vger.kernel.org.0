Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 319B452FDAB
	for <lists+devicetree@lfdr.de>; Sat, 21 May 2022 17:16:36 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S234927AbiEUPQe (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sat, 21 May 2022 11:16:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40804 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230321AbiEUPQd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sat, 21 May 2022 11:16:33 -0400
Received: from mail-lj1-x232.google.com (mail-lj1-x232.google.com [IPv6:2a00:1450:4864:20::232])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D39C148336
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:16:31 -0700 (PDT)
Received: by mail-lj1-x232.google.com with SMTP id s5so12489151ljd.10
        for <devicetree@vger.kernel.org>; Sat, 21 May 2022 08:16:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=OwTRfuiq4wbJs1UPblU1Ai6E4P1iaPJzr05lyZ6KhnI=;
        b=oSgokVp5OlVIODHY5N5GNj0wUk+aJ5aYIiEMK3jeSa+VyDPVQNPcGj9CwvZ3ttExBk
         DnXHylAt4l9zFP9k/nKa7EzFR2XqSNZ/zX7ImH22xypOxLN92StlP+AUW1y4grUbGAAK
         /iJweiiavumFe+PwqcI1jYGK/p/34sBU48dydF66oMBPSuV5QA9Y2bsbAsn20rPkkP6n
         h5ngZPcrMnhYKE7CxHm6MuiTeQYK5J7j0mgvF1eoHXcL6V3IYPReaBH1qCJ+tldIjDeG
         Zc6jVW/bKcRdUpdO6geFDs//HieMORaZjeTsiRAmCfgDQ1KY2KS4eJyoMsZ0vjltH/cE
         Ydmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=OwTRfuiq4wbJs1UPblU1Ai6E4P1iaPJzr05lyZ6KhnI=;
        b=QlGBlOSKPRikpO9yvu/u3h2mPrtnMl6204T7eyuhvJmsoBC0DdCMy/uSX0cJLfRGDO
         5OYiKvkXIFSLo9tBh54iez4Ved/9MYpjh1okQomMkPmWJG8pEnkycexluL2q2BY5Bi+9
         wHyNeQ/QfDkrkdeJWhOIQaHUAhqlJeASvZo4bFMMHohD15JxddtEfb5FnAKblin2gi4a
         ZFbVQWuNcZ/sNZsv2Cq9+cp+ya2X160cn4syTuQf7o4k5l3juZuiOQFYdP+S0+CaxcAg
         JrbspdFZyKbKbyE08j/IsdTIO3xoGNT7UeTwUZY8pxs79InpKjOSYqUcJ7Ts+hOtf00n
         L3/Q==
X-Gm-Message-State: AOAM533ZbuRuXJ3NcxzMjSpKKdPPDHJfmye2PbQN/uIYJn5eVb3TMHF+
        HVob9Om0Vo2VwyPNDYmFWafyaw==
X-Google-Smtp-Source: ABdhPJwTyVrUjRiZ6MmJtbI7Lw6764FySyF8c9QDeEnIXPLaSPyiRXtIVNCOVwYB8VU/JErfNiPF7g==
X-Received: by 2002:a2e:a4a6:0:b0:253:dfb7:d9 with SMTP id g6-20020a2ea4a6000000b00253dfb700d9mr3701379ljm.399.1653146190266;
        Sat, 21 May 2022 08:16:30 -0700 (PDT)
Received: from [192.168.0.17] (78-11-189-27.static.ip.netia.com.pl. [78.11.189.27])
        by smtp.gmail.com with ESMTPSA id dt8-20020a0565122a8800b00477cdd53190sm834182lfb.74.2022.05.21.08.16.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 21 May 2022 08:16:29 -0700 (PDT)
Message-ID: <f960933d-b19b-2ce2-f9a6-6610119fa56e@linaro.org>
Date:   Sat, 21 May 2022 17:16:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.8.1
Subject: Re: [PATCH 2/2] dt-bindings: i2c: dw: Add Intel's SoCFPGA I2C
 controller
Content-Language: en-US
To:     Dinh Nguyen <dinguyen@kernel.org>, jarkko.nikula@linux.intel.com
Cc:     andriy.shevchenko@linux.intel.com, mika.westerberg@linux.intel.com,
        robh+dt@kernel.org, krzk+dt@kernel.org, linux-i2c@vger.kernel.org,
        linux-kernel@vger.kernel.org, devicetree@vger.kernel.org
References: <20220518202217.85803-1-dinguyen@kernel.org>
 <20220518202217.85803-2-dinguyen@kernel.org>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220518202217.85803-2-dinguyen@kernel.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-3.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 18/05/2022 22:22, Dinh Nguyen wrote:
> The I2C pins on Intel's SoCFPGA platform are not connected to GPIOs and
> thus cannot be recovered by the standard GPIO method.
> 
> Document the "intel,socfpga-i2c" binding.
> 
> Signed-off-by: Dinh Nguyen <dinguyen@kernel.org>


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
