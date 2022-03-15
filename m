Return-Path: <devicetree-owner@vger.kernel.org>
X-Original-To: lists+devicetree@lfdr.de
Delivered-To: lists+devicetree@lfdr.de
Received: from out1.vger.email (out1.vger.email [IPv6:2620:137:e000::1:20])
	by mail.lfdr.de (Postfix) with ESMTP id 046CA4D9A47
	for <lists+devicetree@lfdr.de>; Tue, 15 Mar 2022 12:22:29 +0100 (CET)
Received: (majordomo@vger.kernel.org) by vger.kernel.org via listexpand
        id S240084AbiCOLXi (ORCPT <rfc822;lists+devicetree@lfdr.de>);
        Tue, 15 Mar 2022 07:23:38 -0400
Received: from lindbergh.monkeyblade.net ([23.128.96.19]:39062 "EHLO
        lindbergh.monkeyblade.net" rhost-flags-OK-OK-OK-OK) by vger.kernel.org
        with ESMTP id S237382AbiCOLXh (ORCPT
        <rfc822;devicetree@vger.kernel.org>); Tue, 15 Mar 2022 07:23:37 -0400
Received: from smtp-relay-internal-1.canonical.com (smtp-relay-internal-1.canonical.com [185.125.188.123])
        by lindbergh.monkeyblade.net (Postfix) with ESMTPS id 3DF684F9D3
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 04:22:26 -0700 (PDT)
Received: from mail-ej1-f69.google.com (mail-ej1-f69.google.com [209.85.218.69])
        (using TLSv1.3 with cipher TLS_AES_256_GCM_SHA384 (256/256 bits)
         key-exchange X25519 server-signature RSA-PSS (2048 bits) server-digest SHA256)
        (No client certificate requested)
        by smtp-relay-internal-1.canonical.com (Postfix) with ESMTPS id 45C793F30F
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 11:22:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=canonical.com;
        s=20210705; t=1647343344;
        bh=ZR87jLnsJuZ+lD47i7OuEBcvzhkBsEEC6j8sgB7HSzg=;
        h=Message-ID:Date:MIME-Version:Subject:To:Cc:References:From:
         In-Reply-To:Content-Type;
        b=Y0RnfTNLurVxhyeZtnhk9g5/zeWdAQ31tNlBP1ZUEDMZU4xjmtAq6H+7LxrpX8rLn
         injhSXz+YVZ2Zo1r16uKlcQmwlyFlLPd16YkEfMCXupX3E16IbA1fHAW55G1Pz4iQy
         JAzycs0OxprIKQhB0oK7v5njkPuVRBgHnjPqQBzdic7fYHcKWFNNFNXnNwdQuMVw+K
         ADm7ug6KuY9CooWetzTxUT3BLfsCwPeUpAMK0KxPYFaFCLEQBDxI7EH2KlZCra5iod
         pjWwQOKbYfUkz1jVJXALAL7Ei9MyNgl5RERyLjAvNspglKkU+8g3g14RaQXaeQrxLw
         qMPEmS2yN4UzQ==
Received: by mail-ej1-f69.google.com with SMTP id 13-20020a170906328d00b006982d0888a4so9421571ejw.9
        for <devicetree@vger.kernel.org>; Tue, 15 Mar 2022 04:22:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=ZR87jLnsJuZ+lD47i7OuEBcvzhkBsEEC6j8sgB7HSzg=;
        b=laiEYKMW5x8KKGQi2DgQtL9ezsOFuPgU81hSDXn+FnJ3XkV+le1AjZwJbwgzJQWtiP
         hocKkjR1Yb5msTj65pUZrRZ98I8No8gzJlE27Bz+vEYHHUnDWmAg1H/sTv657vdMci+W
         Oa9j/wEV6N3t61xIEKU0iEy5KMD1XXyNzTOoc5dgbZGqdluzbTcyhckSidk/Axc4iWFc
         +UTU/SkLz4rA/PI5o0IG+2p87hvDuxfF6gcrxCBiUvwYKN2QHfUZltdrax03LrY33/S+
         QjDXKq1N0Ng2vIOZZ3sZl/a9LCAZjb+SV68lpcwPyf/SoX+gB8krYbIEXjHzgI7buqZA
         J4Kw==
X-Gm-Message-State: AOAM530c2DAdvVnvxpq2o8UUt6KcBOGsCXSVi0IyUZqZn5FAzx7n6dSh
        /wpIp5BUze8HA3Al50poq+wDMX7mPYZWh3KREgTWpSHV1Y4f9Xa6A/cox9WFKNFULfSDxq0HLhX
        zrzIi980uZWASEamERlFV2Qc8g2olhnZJZklvifY=
X-Received: by 2002:a17:906:9744:b0:6da:9e49:9fe3 with SMTP id o4-20020a170906974400b006da9e499fe3mr22399708ejy.319.1647343343944;
        Tue, 15 Mar 2022 04:22:23 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzDZjHpdMR3cdBSG8G8uQTY/SmwDksF/9hmIfn6WR742IkO9/4UxxVXNjzlphPFbHnqaOe1g==
X-Received: by 2002:a17:906:9744:b0:6da:9e49:9fe3 with SMTP id o4-20020a170906974400b006da9e499fe3mr22399691ejy.319.1647343343761;
        Tue, 15 Mar 2022 04:22:23 -0700 (PDT)
Received: from [192.168.0.155] (xdsl-188-155-174-239.adslplus.ch. [188.155.174.239])
        by smtp.googlemail.com with ESMTPSA id me17-20020a170906aed100b006db0dcf6746sm7942896ejb.216.2022.03.15.04.22.22
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 15 Mar 2022 04:22:23 -0700 (PDT)
Message-ID: <9ec3c26a-3b85-4bea-5a5b-de9ac570cfca@canonical.com>
Date:   Tue, 15 Mar 2022 12:22:22 +0100
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:91.0) Gecko/20100101
 Thunderbird/91.5.0
Subject: Re: [PATCH 1/2] dt-bindings: mfd: Add ChromeOS fingerprint binding
Content-Language: en-US
To:     Lee Jones <lee.jones@linaro.org>
Cc:     Stephen Boyd <swboyd@chromium.org>,
        Benson Leung <bleung@chromium.org>,
        linux-kernel@vger.kernel.org, chrome-platform@lists.linux.dev,
        Rob Herring <robh+dt@kernel.org>, devicetree@vger.kernel.org,
        Guenter Roeck <groeck@chromium.org>,
        Douglas Anderson <dianders@chromium.org>,
        Craig Hesling <hesling@chromium.org>,
        Tom Hughes <tomhughes@chromium.org>,
        Alexandru M Stan <amstan@chromium.org>
References: <20220314232214.4183078-1-swboyd@chromium.org>
 <20220314232214.4183078-2-swboyd@chromium.org>
 <e7f9466e-03c9-7754-0dc6-a04823d1047a@canonical.com>
 <YjB0JOKysPpg2KGF@google.com>
From:   Krzysztof Kozlowski <krzysztof.kozlowski@canonical.com>
In-Reply-To: <YjB0JOKysPpg2KGF@google.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-Spam-Status: No, score=-5.9 required=5.0 tests=BAYES_00,DKIMWL_WL_HIGH,
        DKIM_SIGNED,DKIM_VALID,DKIM_VALID_AU,DKIM_VALID_EF,NICE_REPLY_A,
        RCVD_IN_DNSWL_MED,SPF_HELO_NONE,SPF_PASS,T_SCC_BODY_TEXT_LINE
        autolearn=ham autolearn_force=no version=3.4.6
X-Spam-Checker-Version: SpamAssassin 3.4.6 (2021-04-09) on
        lindbergh.monkeyblade.net
Precedence: bulk
List-ID: <devicetree.vger.kernel.org>
X-Mailing-List: devicetree@vger.kernel.org

On 15/03/2022 12:10, Lee Jones wrote:
> On Tue, 15 Mar 2022, Krzysztof Kozlowski wrote:
> 
>> On 15/03/2022 00:22, Stephen Boyd wrote:
>>> Add a binding to describe the fingerprint processor found on Chromeboks
>>> with a fingerprint sensor.
>>>
>>> Cc: Rob Herring <robh+dt@kernel.org>
>>> Cc: <devicetree@vger.kernel.org>
>>> Cc: Guenter Roeck <groeck@chromium.org>
>>> Cc: Douglas Anderson <dianders@chromium.org>
>>> Cc: Craig Hesling <hesling@chromium.org>
>>> Cc: Tom Hughes <tomhughes@chromium.org>
>>> Cc: Alexandru M Stan <amstan@chromium.org>
>>> Signed-off-by: Stephen Boyd <swboyd@chromium.org>
>>> ---
>>>  .../bindings/mfd/google,cros-ec-fp.yaml       | 89 +++++++++++++++++++
>>>  1 file changed, 89 insertions(+)
>>>  create mode 100644 Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
>>>
>>> diff --git a/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
>>> new file mode 100644
>>> index 000000000000..05d2b2b9b713
>>> --- /dev/null
>>> +++ b/Documentation/devicetree/bindings/mfd/google,cros-ec-fp.yaml
>>> @@ -0,0 +1,89 @@
>>> +# SPDX-License-Identifier: (GPL-2.0-only OR BSD-2-Clause)
>>> +%YAML 1.2
>>> +---
>>> +$id: http://devicetree.org/schemas/mfd/google,cros-ec-fp.yaml#
>>
>> Why is this in the MFD directory? Is it really a Multi Function Device?
>> Description is rather opposite. You also did not CC MFD maintainer.
> 
> A lot of the ChromeOS Embedded Controller support used to be located
> in MFD.  There are still remnants, but most was moved to
> drivers/platform IIRC.
> 
> Please see: drivers/mfd/cros_ec_dev.c

Yes, I know, that part is a MFD. But why the fingerprint controller part
is MFD? To me it is closer to input device.

Best regards,
Krzysztof
