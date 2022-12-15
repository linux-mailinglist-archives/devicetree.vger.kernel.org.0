Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 6B29664D81B
	for <lists+devicetree@lfdr.de>; Thu, 15 Dec 2022 09:58:35 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S229566AbiLOI6d (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 15 Dec 2022 03:58:33 -0500
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:46276 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S229524AbiLOI6b (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 15 Dec 2022 03:58:31 -0500
Received: from mail-lf1-x132.google.com (mail-lf1-x132.google.com [IPv6:2a00:1450:4864:20::132])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 70C8F2CC90
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:58:30 -0800 (PST)
Received: by mail-lf1-x132.google.com with SMTP id b13so14617282lfo.3
        for <devicetree@vger.kernel.org>; Thu, 15 Dec 2022 00:58:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yWdeRDSeYB3DzBxHS75d7a4c1oXHvEh623J0a+DwoFQ=;
        b=w5zNFWuw4gd9gdJ7FdYaOucaCP8gGImeCTeXbA6hFRZH6OoJ40t/pCO4M7VlG/1sqE
         OkKIQDrWWa5GxkzlrawvdPD/Tik4n9ODuX6i48/hArZ5K3YSeG9qPNHn+SvpOuDIM/cz
         Y/2mn4XiJIeU41rrEOCfWteOe1xbVdFa+PgSGrkAAKmiG4+wN9A8We3I7+LZjj539WiP
         9YpU9aMRXGYjGhQ1nJiYiP4cpK2AJJsDSGA5N0Qi5+qeeqyG9Q1Ccs9OdMuHTE8S+HJN
         uCpBW+KMHDGvcx64/YE+MJ5PupCon4HH/k5TKgmkU8c8Drh/rDBGZbqNBRKDwxtdxysP
         uVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yWdeRDSeYB3DzBxHS75d7a4c1oXHvEh623J0a+DwoFQ=;
        b=bRyHoFeBEjpHbB0V0dPTjGoJjcsJTd7aLVPHc9wmC7D30wkxgxe1xt+M3r2r++co9Z
         /fY55vZT/JNGzNiXD9chhdz84/C0ZzssqVJcCGFVYrnG9dXRzXsLKVyIsSAc/p9+KcaP
         8p6VVRZwkOcHsXMp4WV1Vq5liQjAbFB7GZfoSbLExbCmKd3vDPl2fj1B3k6F5DVjd2qh
         6WNPJY0MOBZKVevYOkPIGL5WYoq4wMH1TzlOAp+cf4Z75He+nPG0x9RM2DkxTndgs7/i
         dSHBMO3NBMEZb+yFzrMyCWYV7Gag1j217iLeTJQD7IZUgzijPjEOSLXJ2zd3H6uKY8jR
         LIJg==
X-Gm-Message-State: ANoB5pkSsftXfwv+pGgJffzYc7NS3yH3q2Pl1a+0VzHXkXgKTnWX5V/X
        Y+obhT54Ah0umfb71y1YlcrO8g==
X-Google-Smtp-Source: AA0mqf5sup5h7VOVNlFqUdpxDsVaIkiJTuZWoo0xwOCFodsR5FjlJidzSFra/9u60kPjMJWBHmnYwQ==
X-Received: by 2002:a05:6512:3b8d:b0:4b5:b76e:3669 with SMTP id g13-20020a0565123b8d00b004b5b76e3669mr8227146lfv.27.1671094708867;
        Thu, 15 Dec 2022 00:58:28 -0800 (PST)
Received: from [192.168.0.20] (088156142067.dynamic-2-waw-k-3-2-0.vectranet.pl. [88.156.142.67])
        by smtp.gmail.com with ESMTPSA id d4-20020ac25444000000b004b55f60c65asm1100252lfn.284.2022.12.15.00.58.27
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 15 Dec 2022 00:58:28 -0800 (PST)
Message-ID: <505acb6e-24c4-45c7-7a54-1a77e3718fec@linaro.org>
Date:   Thu, 15 Dec 2022 09:58:27 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.5.1
Subject: Re: [PATCH v8 3/7] dt-bindings: arm: nuvoton: Add bindings for NPCM
 GFXI
Content-Language: en-US
To:     Marvin Lin <milkfafa@gmail.com>, mchehab@kernel.org,
        linux-media@vger.kernel.org, linux-kernel@vger.kernel.org,
        devicetree@vger.kernel.org
Cc:     openbmc@lists.ozlabs.org, avifishman70@gmail.com,
        tmaimon77@gmail.com, tali.perry1@gmail.com, venture@google.com,
        yuenn@google.com, benjaminfair@google.com, robh+dt@kernel.org,
        krzysztof.kozlowski+dt@linaro.org, kwliu@nuvoton.com,
        kflin@nuvoton.com
References: <20221214092636.810883-1-milkfafa@gmail.com>
 <20221214092636.810883-4-milkfafa@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20221214092636.810883-4-milkfafa@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 14/12/2022 10:26, Marvin Lin wrote:
> Add dt-bindings document for Graphics Core Information (GFXI) node. It
> is used by NPCM video driver to retrieve Graphics core information.
> 
> Signed-off-by: Marvin Lin <milkfafa@gmail.com>
> ---


Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>

Best regards,
Krzysztof

