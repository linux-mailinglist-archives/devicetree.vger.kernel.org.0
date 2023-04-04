Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 3CC566D582F
	for <lists+devicetree@lfdr.de>; Tue,  4 Apr 2023 07:49:59 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S233397AbjDDFt4 (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 4 Apr 2023 01:49:56 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40224 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S233378AbjDDFtz (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 4 Apr 2023 01:49:55 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id ED1DC1713
        for <devicetree@vger.kernel.org>; Mon,  3 Apr 2023 22:49:52 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id w9so125969157edc.3
        for <devicetree@vger.kernel.org>; Mon, 03 Apr 2023 22:49:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680587391;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=JhbCdT9uViCvxgZGTLdW1A3X+5uyHCIgkj6+Agoq/PU=;
        b=GABjsB7SO5+swqMsNBgbgzj8/c1XexfPB7NrGs0145uNdlLXN78d8RdA23Cwe2LN9d
         Lt+e4H7bagohhZb0smYhGMBzMbpHAfLVuR+DSLxHpqkz5p5xMHlrMNqYC5SzyITZP1MX
         NTLb403sF5MneADaJPYqivNb3lckBrNLfAHnzOLTp29zvqKjWp6PtSWez/miVnn2JmQG
         u+U8k5A5GZZjLG9/rhV/j/ZZEbbCCLbV0wIC3OV028MfFC8y+c4cg+J4ud/ONKH8jS3Q
         1cUjxTsD1aKJbzKJjFuZQFk9B6dGgQpDB4bUai3uwH6OZtwY03jNfFq1PQEQJHQIjDa+
         Jn/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680587391;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=JhbCdT9uViCvxgZGTLdW1A3X+5uyHCIgkj6+Agoq/PU=;
        b=mV8Rk5XTdI7p3Wt7ugSM3a8fsBvb1tIvO5nHy6PN5E88DfAE2BjefabW09pNf0VnjG
         tPrSS/c8tx38x5pxzNXxt2elyEW0Cr8rDm8WzmMbaW8lsQLdPkJoN/ekZvJQNkg5voPe
         fXTPOaFmP9V4WNzcP28T9yKHw7SyVZQpWuH/iFvoPBKjhNDmzAH0dq6USK5RoKy+d1EU
         b3EQMs2tCsx+JlTBroRCCG0Bifxvq4ERyzEMGwpnAORb4j0abzYhFCoVmxSN9Fk6C8m4
         VSZkPEF2ghKAPM/yaThfgQY0awg6rXpJ87Fz65Rhxt4NuNvZO+gHcMKEOMq59rsTfgxj
         S3Eg==
X-Gm-Message-State: AAQBX9fE9jk17e50GSpwhK1R7R3TqbdMt2CrhMTzExkVGdgFzPDVqX7/
        LV7bEo1JNz1THfl2KhGgX6SMZA==
X-Google-Smtp-Source: AKy350YhsGgi4eLKTmHCyWAzsKnDiHEA5ZPXwUO7ApJraQhmKVLZ40Id3WsjEOPRiFukJhpaLb+Nqw==
X-Received: by 2002:aa7:d703:0:b0:502:1d22:4890 with SMTP id t3-20020aa7d703000000b005021d224890mr1447046edq.6.1680587391436;
        Mon, 03 Apr 2023 22:49:51 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:233a:5c18:b527:381e? ([2a02:810d:15c0:828:233a:5c18:b527:381e])
        by smtp.gmail.com with ESMTPSA id v14-20020a50a44e000000b004bc15a440f1sm5410341edb.78.2023.04.03.22.49.50
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 03 Apr 2023 22:49:51 -0700 (PDT)
Message-ID: <409fff3c-9cdf-35e9-4982-38f4e1b50e8a@linaro.org>
Date:   Tue, 4 Apr 2023 07:49:50 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] dt-bindings: watchdog: alphascale-asm9260: convert to DT
 schema
Content-Language: en-US
To:     Om Parikh <hack3r-0m@proton.me>
Cc:     Wim Van Sebroeck <wim@linux-watchdog.org>,
        Guenter Roeck <linux@roeck-us.net>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Oleksij Rempel <linux@rempel-privat.de>,
        Olof Johansson <olof@lixom.net>,
        linux-watchdog@vger.kernel.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230403004138.326482-1-hack3r-0m@proton.me>
 <20230404022015.754177-1-hack3r-0m@proton.me>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230404022015.754177-1-hack3r-0m@proton.me>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-1.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 04/04/2023 04:21, Om Parikh wrote:
> Makes alphascale-asm9260 dt bindings adhere to the dt json-schema
> by replacing txt file with yaml file.
> 
> Signed-off-by: Om Parikh <hack3r-0m@proton.me>
> ---

Do not attach (thread) your patchsets to some other threads (unrelated
or older versions). This buries them deep in the mailbox and might
interfere with applying entire sets.

This is the same patch you already sent, so a resend? Sorry, I am not
going to review again. You got comments. If this is v2, then send a v2
with changelog.

Best regards,
Krzysztof

