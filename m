Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 7CDAC59FB6C
	for <lists+devicetree@lfdr.de>; Wed, 24 Aug 2022 15:31:50 +0200 (CEST)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S238015AbiHXNbo (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Wed, 24 Aug 2022 09:31:44 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:40308 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S238072AbiHXNbl (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Wed, 24 Aug 2022 09:31:41 -0400
Received: from mail-lf1-x12d.google.com (mail-lf1-x12d.google.com [IPv6:2a00:1450:4864:20::12d])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 64BD574CE3
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:31:38 -0700 (PDT)
Received: by mail-lf1-x12d.google.com with SMTP id bq23so14967061lfb.7
        for <devicetree@vger.kernel.org>; Wed, 24 Aug 2022 06:31:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=linaro.org; s=google;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :from:to:cc;
        bh=hNOblAjzQPss5uIjK7CIcUxWXoh+ZrBt4vWK6T7S5ug=;
        b=a6n/B3eaDr8bRhySuhNp9KVnBbiC405cRocErVRb61ZzLygTRejH3tlr0bb1f62DzV
         DDf20V6o/PdxdkjyHVMis7p7KxfuEMvJ4WMMM02ytCEsj8uOroghMHMwVFoj38U5stgD
         51SCunmkkXPBELSisoIhJsmrAy25pLdm/Q43w0EKI7Yr6Dn4TUTsW8EPZANgPBMrGM2u
         IC+OOM80LhXg9uivRHEpmyn6J6vD6tQcwzAbi6Twjfup+a5GIwzwomtOLOAt0HGofm91
         43FMmlg1PTswV9f44Z5v0zU7Rz7O3MusvYpWjbIL5aodVArpNAabF7+IgSP+OENyElfd
         lh1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :x-gm-message-state:from:to:cc;
        bh=hNOblAjzQPss5uIjK7CIcUxWXoh+ZrBt4vWK6T7S5ug=;
        b=eY8nXvn/e3oY66H/v9GHfP+N43VsH5HVyB2+7JxX3HThoBZVnknjmrtfnfkU17PCm9
         LAIAOS7f9xQ5Fx3G8lLTYRAXA6KFfwI2xR4HwoQl/eMbiB3rrTWOQ2tgf3+Vx75zW95y
         KV4ItmIeoMdPc5EYl1mnoFh5+EJe0nmuECP3DULavYciaT9nwt6alkNiNBYl12FJFu71
         R8Put6E79ujsut5YnBXAngV0Oa6btpBg4KAYwxmDghuyksLFSFsyVv/C5jpA2+ioH9LC
         gPgz23M15+IxjTLQStbMTrdI3GyYcOwCmwtDBYIKhaJbmOh5Z914wE2+r1HLdfl9iODN
         1p7A==
X-Gm-Message-State: ACgBeo0Z1KHm4AICVtEBIsl0KAz3RDfU83cxfQR28Z+b1kFnwE+lMJA/
        0YrlaTWINXdwAVHLb6sr5kXKYw==
X-Google-Smtp-Source: AA6agR7O7xgC33QbqffNKkxID/6tyqnoANIAD84DmsgIHTe0aGYYMMouYv/9/h9KiXgjNjOJLE6OtA==
X-Received: by 2002:a19:654d:0:b0:492:f132:7963 with SMTP id c13-20020a19654d000000b00492f1327963mr3126891lfj.578.1661347896700;
        Wed, 24 Aug 2022 06:31:36 -0700 (PDT)
Received: from [10.243.4.185] ([193.94.200.84])
        by smtp.gmail.com with ESMTPSA id j24-20020ac253b8000000b0048b2cde8c08sm3025180lfh.244.2022.08.24.06.31.35
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 24 Aug 2022 06:31:36 -0700 (PDT)
Message-ID: <b1a72a39-e0f3-bb1c-56a9-50b7331f8cf8@linaro.org>
Date:   Wed, 24 Aug 2022 16:30:42 +0300
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.12.0
Subject: Re: [PATCH 2/4] dt-bindings: vendor-prefixes: Document Jadard
Content-Language: en-US
To:     Jagan Teki <jagan@edgeble.ai>, Rob Herring <robh+dt@kernel.org>,
        Krzysztof Kozlowski <krzysztof.kozlowski+dt@linaro.org>,
        Thierry Reding <thierry.reding@gmail.com>,
        Sam Ravnborg <sam@ravnborg.org>
Cc:     devicetree@vger.kernel.org
References: <20220823184242.3554472-1-jagan@edgeble.ai>
 <20220823184242.3554472-2-jagan@edgeble.ai>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>
In-Reply-To: <20220823184242.3554472-2-jagan@edgeble.ai>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
        DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,RCVD_IN_DNSWL_NONE,
        SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE,URIBL_BLOCKED
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 23/08/2022 21:42, Jagan Teki wrote:
> Jadard Technology Inc. manufactures and distributes chips
> from Shenzhen.
> 
> Add vendor prefix for it.


Acked-by: Krzysztof Kozlowski <krzysztof.kozlowski@linaro.org>


Best regards,
Krzysztof
