Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id A63C26D902F
	for <lists+devicetree@lfdr.de>; Thu,  6 Apr 2023 09:10:24 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S235499AbjDFHKX (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Thu, 6 Apr 2023 03:10:23 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:53202 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S235835AbjDFHKR (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Thu, 6 Apr 2023 03:10:17 -0400
Received: from mail-ed1-x536.google.com (mail-ed1-x536.google.com [IPv6:2a00:1450:4864:20::536])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 821F9E55
        for <devicetree@vger.kernel.org>; Thu,  6 Apr 2023 00:09:55 -0700 (PDT)
Received: by mail-ed1-x536.google.com with SMTP id h8so147026942ede.8
        for <devicetree@vger.kernel.org>; Thu, 06 Apr 2023 00:09:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google; t=1680764984;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc:subject:date:message-id:reply-to;
        bh=yc9Xvq+z5mbuXb3hSjcOx0+2lF1uMWYl+pWLfV4JER0=;
        b=QkzsACok/1Sni8jj0r4LfW0kSqPlKfomfvcLFAqY/8+wPN2iAPUMQDvDsnpzZ2a8dl
         OrbTJ8DnxlvjZPg9tx/bjyMU7hMcYLjtBoYP/11PrtRgfxc496fOqRaL6j+nMjxbqRzc
         an9SU748kO3qMcNuNCBJVQwRCemtYT5umtRg0lxgFfjEbdvNm7lEQkgTkdrJ9ChFNp5L
         C9jtBUE6pmatQA7SBQ0CkGAbj1z04qFguKVND7e8o9aEjTYXC9xzT9xTSSHZjxQDeIoL
         XkyHWRrbpbrUJfjYuF9Jb0CsDTGSELl2YflsC85EDaC3SRBC2UER5idovmntKf26qU5K
         lnCQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680764984;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=yc9Xvq+z5mbuXb3hSjcOx0+2lF1uMWYl+pWLfV4JER0=;
        b=AnP3vuRIWg8euXi+hSvAEeHwuWtVmA2HVjWdcnm+SJ0zDHANHOaNinh3NUSbl5LdU1
         FAUIJVzGIS7ksueuuVqcn3fN776IhQe6pT2BbcaG19Y8hemlmfS3SbwcMaSAkekAI9H0
         RGFsIBF1Y1fwYNuX/HJdqrjxzhoAsjSTVhWhgdPa2dbhBychpIyvqasfzE1CJuzRnoNi
         1ZiWF3A7M5sq3WWLUkOAc1wg/voMV1Tf6TQRqS+45G2+A1BYAgSzBieTMivVM/ldoPQG
         kYykgvxFBZGTmpL2XUk4jyuuLLcBj/dMN2eAIO8ATkynCnstolDmCXf+ijwLR8wi7uHz
         xXUg==
X-Gm-Message-State: AAQBX9dhkhZsgOn9/U2C1q63DhRJ0j2Kd9hH+DXiXxighPic8414BBNX
        P01E9GUwnC9/m7iiKYAGMsareA==
X-Google-Smtp-Source: AKy350Zp1l1KeFsRGmVCa9OnDanG64NjDJaLJSZDT21j8lyW/hwaEqXRHjxJS3SKJj6dXAYUhstz2w==
X-Received: by 2002:a17:906:209d:b0:947:405a:955f with SMTP id 29-20020a170906209d00b00947405a955fmr5394149ejq.31.1680764984065;
        Thu, 06 Apr 2023 00:09:44 -0700 (PDT)
Received: from ?IPV6:2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed? ([2a02:810d:15c0:828:49e6:bb8c:a05b:c4ed])
        by smtp.gmail.com with ESMTPSA id q18-20020a1709063d5200b0093237bd4bc3sm401755ejf.116.2023.04.06.00.09.43
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 06 Apr 2023 00:09:43 -0700 (PDT)
Message-ID: <4c1b8ab9-ab03-639a-78e7-ca75131ecc81@linaro.org>
Date:   Thu, 6 Apr 2023 09:09:42 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:102.0) Gecko/20100101
 Thunderbird/102.9.0
Subject: Re: [PATCH] ASoC: dt-bindings: wm8904: Convert to dtschema
Content-Language: en-US
To:     Daniel Baluta <daniel.baluta@gmail.com>,
        Rob Herring <robh@kernel.org>
Cc:     Saalim Quadri <danascape@gmail.com>, devicetree@vger.kernel.org,
        krzysztof.kozlowski+dt@linaro.org, daniel.baluta@nxp.com,
        robh+dt@kernel.org, broonie@kernel.org,
        patches@opensource.cirrus.com, alsa-devel@alsa-project.org,
        linux-kernel@vger.kernel.org, lgirdwood@gmail.com
References: <20230405200341.4911-1-danascape@gmail.com>
 <168074344623.1301612.621743725976519280.robh@kernel.org>
 <CAEnQRZBCN6JrjvaJSD5dnuLXOUyx8Y9LOucY_Fwqcf4ZZLuwJg@mail.gmail.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <CAEnQRZBCN6JrjvaJSD5dnuLXOUyx8Y9LOucY_Fwqcf4ZZLuwJg@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit
X-Spam-Status: No, score=-1.6 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
        DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS autolearn=unavailable autolearn_force=no
        version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 06/04/2023 08:40, Daniel Baluta wrote:
> On Thu, Apr 6, 2023 at 4:24 AM Rob Herring <robh@kernel.org> wrote:
>>
>>
>> On Thu, 06 Apr 2023 01:33:41 +0530, Saalim Quadri wrote:
>>> Convert the WM8904 audio CODEC bindings to DT schema
>>>
>>> Signed-off-by: Saalim Quadri <danascape@gmail.com>
>>> ---
>>>  .../devicetree/bindings/sound/wlf,wm8904.yaml | 66 +++++++++++++++++++
>>>  .../devicetree/bindings/sound/wm8904.txt      | 33 ----------
>>>  2 files changed, 66 insertions(+), 33 deletions(-)
>>>  create mode 100644 Documentation/devicetree/bindings/sound/wlf,wm8904.yaml
>>>  delete mode 100644 Documentation/devicetree/bindings/sound/wm8904.txt
>>>
>>
>> Running 'make dtbs_check' with the schema in this patch gives the
>> following warnings. Consider if they are expected or the schema is
>> incorrect. These may not be new warnings.
>>
> So, these properties are present in some dts files! We need to
> evaluated if they are always expected
> or can be optional.

I assume the DTSes are tested when you submit new DT schema conversion...

Best regards,
Krzysztof

