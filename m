Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 1E6A4764063
	for <lists+devicetree@lfdr.de>; Wed, 26 Jul 2023 22:17:41 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S230232AbjGZURj (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 26 Jul 2023 16:17:39 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53080 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230122AbjGZURg (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 26 Jul 2023 16:17:36 -0400
Received: from mail-ej1-x62e.google.com (mail-ej1-x62e.google.com [IPv6:2a00:1450:4864:20::62e])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 7AB0A11B
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 13:17:35 -0700 (PDT)
Received: by mail-ej1-x62e.google.com with SMTP id a640c23a62f3a-98dfb3f9af6so14937266b.2
        for <devicetree@vger.kernel.org>; Wed, 26 Jul 2023 13:17:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1690402654; x=1691007454;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=TIw5M7YBct0ebCkuxRxGyVInX15QsjTBfpmn2gCjrlg=;
        b=HnznN/U58EK46QCHNToLfcrCIZZ7BbcFMYn/KG7ki5VIvImGrizBEW+JWdZ9ooH/T3
         RvBts02mBNI2iqWV1ktp7rzuoOYnQPbDEKki+1WfDgw39bASx98Ig4ApBkV0/35o1DEK
         9U56DZstCcYdFA2o6JnHlFTpkV2L/MR7jjBgFcZUxeJy8T73/EdT0L/7i4ltvpxNztcr
         XVmBrZ5GWen5uKnrTBXpOtyR2ry1ByvFbkDposXKzQaNMcjLfuodfXK/4RC/OOgztpV9
         d82VDOFteA3ZJ0NsBcar9Gu9RG7LQDmtIS/lMiAbPlW3WMlQIgGlZj6DUFh45+PIAr5R
         ZiJQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1690402654; x=1691007454;
        h=content-transfer-encoding:in-reply-to:references:cc:to:from
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=TIw5M7YBct0ebCkuxRxGyVInX15QsjTBfpmn2gCjrlg=;
        b=P7tG17Cdu4Diftt7B3sfv9EVxpkKwq8706kecDllfCfYG0jn6WhV+RSDFHGEhKvh+m
         MGFBKo/+rEhz9reh0J/RHAXEWFPROaF3HBG9g2r8ORS+mupKo22EoN2CPSAbjdRv1tjA
         PHGdIWh8w4dQdiyT64MFaaq8xM/zVI8VQND0ZJfJVBogm3jRPYn56EodDH/xTUWDlw+W
         boZ3ArcS+Bv6QjCuHthOx+cxvGZf0cp9i76JYJA6J6OONXVrBKVlff293U0XopB2QacD
         n2qka8aqj+4cThNu0L+aGmlKZ9X9nuEaM0qjxm/oXjFuak4PbFRFWNUzISfksfnphR8s
         xR0w==
X-Gm-Message-State: ABy/qLYxIzrGr0F2RU/LnUOHO2txFcOLHPc8z/A3e6m7Kh4fvLNUradY
        WW0aKFrUXXuLH1uVnb6Q39lc3g==
X-Google-Smtp-Source: APBJJlH/Z/+ouAQuj6hfTlPnr5EX2+fyovpgX5IPIN6FWgx+Vmn3c7YBaLt4rauRmEInXz3DL3/gdg==
X-Received: by 2002:a17:906:1006:b0:98e:2334:af12 with SMTP id 6-20020a170906100600b0098e2334af12mr185769ejm.45.1690402654001;
        Wed, 26 Jul 2023 13:17:34 -0700 (PDT)
Received: from [192.168.1.20] ([178.197.223.104])
        by smtp.gmail.com with ESMTPSA id lg23-20020a170906f89700b0098733a40bb7sm10060069ejb.155.2023.07.26.13.17.32
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 26 Jul 2023 13:17:33 -0700 (PDT)
Message-ID: <36ed5a07-dce2-f5be-bdc7-8c5b1c3c3829@linaro.org>
Date:   Wed, 26 Jul 2023 22:17:31 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.13.0
Subject: Re: [PATCH v2 1/4] dt-bindings: Add bindings for peci-npcm
Content-Language: en-US
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
To:     Iwona Winiarska <iwona.winiarska@intel.com>,
        openbmc@lists.ozlabs.org, devicetree@vger.kernel.org,
        linux-kernel@vger.kernel.org
Cc:     Avi Fishman <avifishman70@gmail.com>,
        Tomer Maimon <tmaimon77@gmail.com>,
        Patrick Venture <venture@google.com>,
        Nancy Yuen <yuenn@google.com>,
        Benjamin Fair <benjaminfair@google.com>,
        Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Conor Dooley <conor+dt@kernel.org>,
        Paul Menzel <pmenzel@molgen.mpg.de>,
        Tyrone Ting <warp5tw@gmail.com>
References: <20230726192740.1383740-1-iwona.winiarska@intel.com>
 <20230726192740.1383740-2-iwona.winiarska@intel.com>
 <6a9c250e-5192-909b-d60f-7b9888a23145@linaro.org>
In-Reply-To: <6a9c250e-5192-909b-d60f-7b9888a23145@linaro.org>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 26/07/2023 21:39, Krzysztof Kozlowski wrote:
> On 26/07/2023 21:27, Iwona Winiarska wrote:
>> From: Tomer Maimon <tmaimon77@gmail.com>
>>
>> Add device tree bindings for the peci-npcm controller driver.
>>
>> Signed-off-by: Tomer Maimon <tmaimon77@gmail.com>
>> Signed-off-by: Tyrone Ting <warp5tw@gmail.com>
>> Co-developed-by: Iwona Winiarska <iwona.winiarska@intel.com>
>> Signed-off-by: Iwona Winiarska <iwona.winiarska@intel.com>
>> ---
>> Changes v1 -> v2:
>>
>> * Renamed binding filename to match compatible (Krzysztof)
> 
> 
> Reviewed-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
>

Un-reviewed. Why testing the code before sending to LKML? Obviously not
needed.

Best regards,
Krzysztof

