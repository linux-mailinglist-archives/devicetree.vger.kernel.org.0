Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id AF0CF571291
	for <lists+devicetree@lfdr.de>; Tue, 12 Jul 2022 08:54:35 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S231585AbiGLGye (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 12 Jul 2022 02:54:34 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39610 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S230198AbiGLGyd (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 12 Jul 2022 02:54:33 -0400
Received: from mail-lj1-x22c.google.com (mail-lj1-x22c.google.com [IPv6:2a00:1450:4864:20::22c])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 6855F201AE
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 23:54:32 -0700 (PDT)
Received: by mail-lj1-x22c.google.com with SMTP id c15so8847393ljr.0
        for <devicetree@vger.kernel.org>; Mon, 11 Jul 2022 23:54:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :references:from:in-reply-to:content-transfer-encoding;
        bh=urUrKVMVYGTDGtJ0Dl3rndrpyubQA/3iDSsW81NTYec=;
        b=onViLOKyO0dv+hocRQYnGsLHViqyrIX216Jo8gBHbYJgJy1daDUAgzEE0FCKZPvYm9
         8DzX6Z0vuvcDGAwx7qvfUDB4AxPFszBCuJQroipnEGEUDFayXAKdba4WpictuBFsVdeo
         whi1nO3TlzPA7PJpGwt7Fxkrd5ZS4FMVxMCm6/HoTqvkkqyTHtv2+P+b14wT/x6sezCU
         3LX5mg+d2ZbUsGGxI3fdzvwun3kMuI8+pNK9wj3/nXC8wiITUvE65cEFwEmfFJdhcwIa
         4msItYOfDk05Vw19QsdMO5VIz+8nWGtyNIs1kjt1/dfspw7hmWXUaQFt/nTN+JdQZ1I6
         JNfQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:references:from:in-reply-to
         :content-transfer-encoding;
        bh=urUrKVMVYGTDGtJ0Dl3rndrpyubQA/3iDSsW81NTYec=;
        b=XVTBchzTESHrqn0DRt0Y18NUuMACzH7UF/qd6orPK/+ZDSYjEjfSEFOgzkCPlRon6f
         d73rfl0ydLilbv3ajKCQJLkyLffMCZRdZmCIFNibSN4Z6RcStq5dp3LUEwK7QEUYJWHx
         43ZviLzmLqetLYPsyCMKY8a+HRmI/FDSWULexeWfrG+/AjKG4sUNL6CvBG8bNMNxWK/1
         L7CEjbG+7oSvBmXuWTWJpSEiyz9qlY6bj0UHTgPBmmMDNoGzSokhsmgksIstem8SOp8k
         dbtli/tEAMWmpcQ+P47JFCwhQYq9ZtGH6+gqto/leXONX5TB1gcnJ4e3A5nvJjZ1ZJl+
         U8UA==
X-Gm-Message-State: AJIora/R7LAQqBlf8d0+39d1SlFft58cf/uOYcEQoX95Crn8iu85MMez
        iYRsGpYTAqlPNSF1a7Jy7OvqFQ==
X-Google-Smtp-Source: AGRyM1tUVWLuXU8OAjG38GVfp96No5bspvpMmrkoPKiBbVUoCCUE39du3l7bR+IQMmVD2JbN9g1s5w==
X-Received: by 2002:a05:651c:224:b0:25d:6ddd:7770 with SMTP id z4-20020a05651c022400b0025d6ddd7770mr4079148ljn.104.1657608870768;
        Mon, 11 Jul 2022 23:54:30 -0700 (PDT)
Received: from [10.0.0.8] (fwa5cab-55.bb.online.no. [88.92.171.55])
        by smtp.gmail.com with ESMTPSA id z13-20020a056512376d00b0047f6b8c2127sm1996716lft.186.2022.07.11.23.54.29
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 11 Jul 2022 23:54:30 -0700 (PDT)
Message-ID: <9ba06c97-ee89-5597-6f66-2d31df60aab3@linaro.org>
Date:   Tue, 12 Jul 2022 08:54:28 +0200
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.11.0
Subject: Re: dt-schema non-array items property
Content-Language: en-US
To:     Sean Anderson <sean.anderson@seco.com>,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>
References: <f86cbb55-a548-537a-4108-46f10718c284@seco.com>
 <c853512b-859a-11ae-b933-c85fec7f9e36@linaro.org>
 <c7edff7f-f89e-3387-62ac-a915b4915580@seco.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <c7edff7f-f89e-3387-62ac-a915b4915580@seco.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE autolearn=ham
        autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 11/07/2022 16:44, Sean Anderson wrote:
>>>   should-work-but-doesnt-names:
>>>     $ref: "/schemas/types.yaml#/definitions/string-array"
>>>     minItems: 1
>>
>> You miss here maxItems, which is not correct (no upper limit). This is
>> why array type is expected.
> 
> Thanks, that fixes things. Where does this requirement come from? I don't
> see it in the meta-schemas/{items,string-array}.yaml.

Beginning (first lines) of string-array.yaml.


Best regards,
Krzysztof
