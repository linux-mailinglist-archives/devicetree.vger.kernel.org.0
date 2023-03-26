Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 23F426C95D0
	for <lists+devicetree@lfdr.de>; Sun, 26 Mar 2023 16:50:21 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231671AbjCZOuT (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Sun, 26 Mar 2023 10:50:19 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:55016 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S231279AbjCZOuS (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Sun, 26 Mar 2023 10:50:18 -0400
Received: from mail-ed1-x535.google.com (mail-ed1-x535.google.com [IPv6:2a00:1450:4864:20::535])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id D6ABE8A79
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:49:28 -0700 (PDT)
Received: by mail-ed1-x535.google.com with SMTP id cn12so25881302edb.4
        for <devicetree@vger.kernel.org>; Sun, 26 Mar 2023 07:49:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1679842161;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=iT9B1aKF9yJ12QmOx1QgiryrgEw9qF6otzhh3qqptZk=;
        b=IXiwMi8o3JmSm95Jwv3M1jLx/L5NOcP7f9NB6Q5sLnJpgzEmAXhhzs3pG/X8OBcuZy
         TLAUsHroaaKoE67do67fCKspAhtbVkiQuxwUwoRATkoJE/U/pXxCh9fmBId2/jTxAs2g
         ywJLdKxTZm41YnM2iFqBmELADwCfioIUM6G2R+PBluY4gEaVyIVPjEMPzLyZPh0Qe6al
         Z+U3uojayhZiI8jWwxI13etksWA9PpuGf04U2tixb+ATJQdzzGECldSgqqO9F1ontwme
         gLL2Q0B3BYJorBodILde5RbSBYBH+kKV69SfMmhhLY93CgiVt9hCJ+2YqoMs/LAx6yQW
         g6jg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1679842161;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=iT9B1aKF9yJ12QmOx1QgiryrgEw9qF6otzhh3qqptZk=;
        b=H3C9THHycIBVlMwWS+lv8eEgulPBW0kbaUN72I7qn/yFn3WcfA2TG/9ygPL9m8DjU6
         TlaBPjQZjepa7OfuBfB8xBBDGvWgt12pE+t/jcDEUVwpq9m+m5sPUFc2xZ5rQCIJ7UwD
         fwYKkB0u4EaRnEYuKzGnPN5ZnkW3yqwAYwNbxjZ1nzU1p1Q8FdnQYvSfGlqrqMfKhRVe
         iRp/Exd+mOlqtVMjbvLwOPZ5xILDMswt1bff+ErJGkb/0GEmEUKY254jNtRa84SFIez7
         woUtkBKRFRB7QHEjYy9nZrGDDegqD9+Wc5yRxzS3HEfr4SjLswFTknRsSLbjk6HptIGT
         8mdg==
X-Gm-Message-State: AAQBX9enWgQ6RdnOLxSI4rOIxcmjsoa+nrvCl4v4Rcbov92EHBErHXOO
        830eRSVTqbDGCfmP50x0DT49tY3AOtgG347d3BE=
X-Google-Smtp-Source: AKy350ad6D065/wohSaDAKojWzAl2ktvz1jF7/iGTZwc4RKVWp1rzHxYPItKCoVoZGzRKeCEnp+AFA==
X-Received: by 2002:a05:6402:708:b0:502:4182:963e with SMTP id w8-20020a056402070800b005024182963emr1720975edx.26.1679842161115;
        Sun, 26 Mar 2023 07:49:21 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:eca3:3b8f:823b:2669? ([2a02:810d:15c0:828:eca3:3b8f:823b:2669])
        by smtp.gmail.com with ESMTPSA id lk8-20020a170906cb0800b009311c9d33d7sm12917378ejb.184.2023.03.26.07.49.20
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 26 Mar 2023 07:49:20 -0700 (PDT)
Message-ID: <7dc532c8-de85-8db2-ad48-5d6d717f6d52@linaro.org>
Date:   Sun, 26 Mar 2023 16:49:19 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] ASoC: dt-bindings: ak4458: Convert to dtschema
Content-Language: en-US
To:     Saalim Quadri <danascape@gmail.com>
Cc:     alsa-devel@alsa-project.org, broonie@kernel.org,
        daniel.baluta@nxp.com, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, linux-kernel@vger.kernel.org,
        robh+dt@kernel.org, shengjiu.wang@nxp.com
References: <4762f4a1-5e99-4e5a-72c0-9c4c61cdc856@linaro.org>
 <20230326125819.18986-1-danascape@gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20230326125819.18986-1-danascape@gmail.com>
Content-Type: text/plain; charset=UTF-8
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

On 26/03/2023 14:58, Saalim Quadri wrote:
>> allOf:
>> - if:
>>      properties:
>>        compatible:
>>          enum:
>>            - ak4458.....
>>  then:
>>    properties:
>>      dsd-path: false
> 
> Do we also require to add a descriptioon to explain the pins which will be selected based off on the value?

Description where? What pins?

> Or have you disabled it based on, that it is disabled for ak4458 codecs?

What is disabled? The driver indicates the property is valid only for
ak4497.



Best regards,
Krzysztof

