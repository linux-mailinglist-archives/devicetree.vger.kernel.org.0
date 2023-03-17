Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E59976BE54D
	for <lists+devicetree@lfdr.de>; Fri, 17 Mar 2023 10:17:03 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230426AbjCQJRB (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Fri, 17 Mar 2023 05:17:01 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:50518 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229516AbjCQJRA (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Fri, 17 Mar 2023 05:17:00 -0400
Received: from mail-ed1-x52f.google.com (mail-ed1-x52f.google.com [IPv6:2a00:1450:4864:20::52f])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 782E7AF684
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:16:45 -0700 (PDT)
Received: by mail-ed1-x52f.google.com with SMTP id o12so17717276edb.9
        for <devicetree@vger.kernel.org>; Fri, 17 Mar 2023 02:16:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679044603;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=NDhJuFa9ztNNzJ386MEsmsZfgZE8+R1VRwAqONdfi3g=;
        b=CrYsG3TxlEscDin+jaLsbWYWoMPi5jUjoAvGRl1IzafmiX7Vy4QG1dr/PNciGg7oHN
         IBfsPPkBtRBkcgX5tin7o8/B+H1Bcqz8W7iXmmD4fU9H2jCtA1ch9/ZNZ8Id+JV8PxbO
         OnFtZ6MSfkM9p8qae+NslwfPuTFRZOu1LFyEtaUHsAtqJa5kL+/+SOuqfv6tXQ1ogjca
         2iEcVLp5V/Oa8/kYYPig+VI7mc1nXD2oQkE4Lje6/93/PHaNvVk6lVScfY4C9Xvs8cvX
         B/CHG/llxLL7xAcf2COwSlF8EEGSJ+Vb4OygsoZC67d49oEV0vLumQdmxC26Xl5TVIVT
         xg4w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679044603;
        h=content-transfer-encoding:in-reply-to:from:references:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=NDhJuFa9ztNNzJ386MEsmsZfgZE8+R1VRwAqONdfi3g=;
        b=rrJI7CCkcwjCHVaaEuKzciacL4vPWG/BrutEb7T4B1jMGQfgfu3gRdkN2VNbhhALyz
         yVDls+lAShwZkQ5zwWgzrsk7KufNpHi7OtkDnFCekG1OFv4WhB/NnxP/u/6aFDAFIh5G
         bwWt0u1NkqSI1PYFv3NtauPNFb0uMjN5qNvZPEeBMsBla9MsyfUP/Mi7TXk5sABqq0BF
         XI2pwakv5uAarjyWq8MMiABDisTfSIczVMX9iqVR/DvPN2trLT9yVtBwdRf1V5v/C7vW
         iSRqHJ0LDW2ul+T1uBL77NWOtYtlclcSLcyacI4Odk+DNEtRTz/pVVOs1UNsmJ07lE1d
         mtQg==
X-Gm-Message-State: AO0yUKVuwPvOiVJgJSNzT/YvHR8cZCriQCzWyEceK27uVtFA0L3+XrdI
        qJc4vv1+F+0ll2kX5gUVpzEPaw==
X-Google-Smtp-Source: AK7set/XnFwylHKPX1EbrO41LWhUKfHkR4YtY3lPOGskXOuSz9g+w1rCSC0Dpa03IrejO58GbpW+AQ==
X-Received: by 2002:a17:906:a0d2:b0:930:6d59:d1f8 with SMTP id bh18-20020a170906a0d200b009306d59d1f8mr2529781ejb.10.1679044603593;
        Fri, 17 Mar 2023 02:16:43 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:848a:1971:93e0:b465? ([2a02:810d:15c0:828:848a:1971:93e0:b465])
        by smtp.gmail.com with ESMTPSA id g18-20020a170906395200b008c979c74732sm725369eje.156.2023.03.17.02.16.42
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 17 Mar 2023 02:16:43 -0700 (PDT)
Message-ID: <58cbe88d-4ac3-c283-e16d-a0c84e04c850@linaro.org>
Date:   Fri, 17 Mar 2023 10:16:42 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH v2 0/2] ARM: dts: Add Tolino Vision
Content-Language: en-US
To:     Andreas Kemnade <andreas@kemnade.info>, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, arnd@arndb.de, olof@lixom.net,
        soc@kernel.org, shawnguo@kernel.org, s.hauer@pengutronix.de,
        kernel@pengutronix.de, festevam@gmail.com, linux-imx@nxp.com,
        marex@denx.de, max.krummenacher@toradex.com,
        devicetree@vger.kernel.org, linux-kernel@vger.kernel.org,
        linux-arm-kernel@lists.infradead.org
References: <20230317081618.2387407-1-andreas@kemnade.info>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230317081618.2387407-1-andreas@kemnade.info>
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

On 17/03/2023 09:16, Andreas Kemnade wrote:
> Add a basic device tree for the Tolino Vision Ebook reader.
> It is equipped with an i.MX6SL SoC.
> 

This is v2, so you need changelog describing changes against v1.

Best regards,
Krzysztof

