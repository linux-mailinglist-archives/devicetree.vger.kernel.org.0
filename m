Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id E42CE6C9C50
	for <lists+devicetree@lfdr.de>; Mon, 27 Mar 2023 09:37:40 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S232642AbjC0Hhi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Mon, 27 Mar 2023 03:37:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:43146 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S232640AbjC0Hhf (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Mon, 27 Mar 2023 03:37:35 -0400
Received: from mail-wr1-x432.google.com (mail-wr1-x432.google.com [IPv6:2a00:1450:4864:20::432])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 4244E4EF1
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:36:52 -0700 (PDT)
Received: by mail-wr1-x432.google.com with SMTP id v1so7617397wrv.1
        for <devicetree@vger.kernel.org>; Mon, 27 Mar 2023 00:36:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679902609;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:from:to:cc:subject:date:message-id:reply-to;
        bh=NbYmGbS5uaBCRcMwyPZQrI6VMogdLbv4M+SG8lk+chs=;
        b=wg0cLRtGHOzjEqnn6wJzNGYyPEk33R5HZsMfaePIN5X0eiVdVpdFvDQ8JEL2He8pJO
         n5ya6PKRhQN/Ewi/PR+1J7nkFYcTEhevMdjfkiDfvTLYtsN8RvWs6wgWBwfnRQDldA9S
         pfkVZLtYllCfaCnihAzkkyxrxDsWoIhakvQqiyZ9a0aAiZVAMBaDqFrUFIimaAj90pVm
         u/IyC7go5tYf8uMRJNDk27tNmUxwUQ36z0Es2Q/Mmnbdg+k54WwCLu/dab7nxFakyXra
         xmDeDegoEXX5sSPBj+nghbQropkNAvw0woUyMGdTNbqTO1Rg1bKA4CdwXQDC7JUOO01J
         gmIA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679902609;
        h=content-transfer-encoding:in-reply-to:organization:references:to
         :content-language:subject:reply-to:from:user-agent:mime-version:date
         :message-id:x-gm-message-state:from:to:cc:subject:date:message-id
         :reply-to;
        bh=NbYmGbS5uaBCRcMwyPZQrI6VMogdLbv4M+SG8lk+chs=;
        b=kYnDRrHpe4G13qAMvrzUE250NtSON6sgPaZQxTdmBPTbVq2WpWlgMepcRVAgKepBYV
         iy15bxjfWf0s+MiJxmctW0x3bNxXYK1/fPvmCkhlAucvVIVe6JNlvLkIYTz75iD6rut7
         4eezQJdjR3sQAq8WEcfZFaqrP9RREJTcUvT78SC6jekqGFcabZDx/vaARLy62uEByQnU
         R31u/SHj0kOXnJJRADBppYB1bLXPhdjh98UYrnYDrw2g2NqRw73F1zSNrIl14Wsu94u8
         7zAlMKyoI9/3W7KrekKBy2nM0EagCEyPS0oYoqWmpJrqeTVJhulW2FEbuizdOEHnBKiD
         2UmA==
X-Gm-Message-State: AAQBX9ebTdr/0hLmgIRp1JhrU/kGREE+uDb5IlYkx258SxlmrBEf+ZVh
        vKozONypg4ivRAsyz+mkuV+AlQ==
X-Google-Smtp-Source: AKy350ZR+iZ8CU4+6lZ0dAb/tRTaCxmQCiUUBubE3HwF5ZsO/o1ChMh3bOjSEzu1DgEdtZg9H+j9yQ==
X-Received: by 2002:a5d:428c:0:b0:2d3:3cda:b3c6 with SMTP id k12-20020a5d428c000000b002d33cdab3c6mr8427206wrq.40.1679902609335;
        Mon, 27 Mar 2023 00:36:49 -0700 (PDT)
Received: from [192.168.7.111] (679773502.box.freepro.com. [212.114.21.58])
        by smtp.gmail.com with ESMTPSA id t3-20020a5d6903000000b002e105c017adsm872386wru.44.2023.03.27.00.36.48
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 27 Mar 2023 00:36:49 -0700 (PDT)
Message-ID: <d538eab9-a97a-25c4-f4a9-fe3f1e1ef449@linaro.org>
Date:   Mon, 27 Mar 2023 09:36:48 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.8.0
From:   Neil Armstrong <neil.armstrong@linaro.org>
Reply-To: neil.armstrong@linaro.org
Subject: Re: [PATCH 3/6] dt-bindings: display: panel-simple-dsi: allow vddio
 variant
Content-Language: en-US
To:     Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>,
        Sam Ravnborg <sam@ravnborg.org>,
        David Airlie <airlied@gmail.com>,
        Daniel Vetter <daniel@ffwll.ch>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Sumit Semwal <sumit.semwal@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Michael Srba <Michael.Srba@seznam.cz>,
        Harigovindan P <harigovi@codeaurora.org>,
        Bjorn Andersson <andersson@kernel.org>,
        dri-devel@lists.freedesktop.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
References: <20230326155425.91181-1-krzysztof.kozlowski@linaro.org>
 <20230326155425.91181-3-krzysztof.kozlowski@linaro.org>
Organization: Linaro Developer Services
In-Reply-To: <20230326155425.91181-3-krzysztof.kozlowski@linaro.org>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-0.2 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/03/2023 17:54, Krzysztof Kozlowski wrote:
> Few panels like Samsung s6e3fc2x01 and sofef00 use vddio-supply instead
> of power-supply (in DTS and Linux driver), so allow it to fix:
> 
>    sdm845-oneplus-enchilada.dtb: panel@0: 'power-supply' is a required property
> 
> Signed-off-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
> ---
>   .../display/panel/panel-simple-dsi.yaml       | 24 +++++++++++++++----
>   1 file changed, 20 insertions(+), 4 deletions(-)

<snip>

Reviewed-by: Neil Armstrong <neil.armstrong@linaro.org>
